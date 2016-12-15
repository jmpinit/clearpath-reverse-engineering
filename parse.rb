require 'colorize'
require './params'

COMMAND = 0x80
REPLY = 0x90

inputFile = ARGV[0]

if inputFile.nil? then
  print 'usage: get_binary.rb <input file> <output file>'
  exit
end

# unpack into 8 bit unsigned integer array
data = File.open(inputFile, 'rb').read.unpack('C*')

# Calculates the checksum for a message.
# Sum of the message bytes and checksum modulo 256 must equal zero.
def checksum(message)
  total = message.inject { |t, v| (t + v) % 256 }
  return (256 - total) & 0x7f
end

def header(message)
  if message.length < 1 then
    raise 'message too short'
  end

  return message[0]
end

def length(message)
  if message.length < 2 then
    raise 'message too short'
  end

  return message[1]
end

def body(message)
  if message.length < 3 then
    raise 'message too short'
  end

  return message[2..-2]
end

def bytesToStr(bytes)
  return (bytes.map { |v| v.to_s(16) }).join(' ')
end



# print data.map { |v| v.to_s(16) }

unrecognizedCount = 0
checksumErrorCount = 0
lineNo = 0

while data.length > 3
  # 3 for header, length, checksum fields
  message = data.shift(length(data) + 3)

  chk = checksum(message[0..-2]) 
  puts "message is #{bytesToStr(message)}"
  puts "\tchecksum is #{chk}"

  if chk != message[-1] then
    checksumErrorCount += 1

    puts ("\tchecksum mismatch on line #{lineNo}: " + bytesToStr(message)).red
    puts "\t\t#{chk.to_s(16)} calculated but read #{message[-1].to_s(16)}".yellow
    puts "\t\tdiff is #{(chk - message[-1]) % 0x100}".yellow
  end

  commands = {
    0 => 'MN_CMD_GET_PARAM0', # Get a parameter from bank 0  (0-255)
    1 => 'MN_CMD_SET_PARAM0', # Set a parameter from bank 0  (0-255)
    2 => 'MN_CMD_GET_PARAM1', # Get parameter from bank 1
    3 => 'MN_CMD_SET_PARAM1', # Set parameter from bank 1 (256-511)
    4 => 'MN_CMD_NODE_STOP', # Stop node motion (aka Stim Cancel)
    5 => 'MN_CMD_NET_ACCESS', # Set net access level
    6 => 'MN_CMD_USER_ID', # Get/Set the user ID
    7 => 'MN_CMD_CHK_BAUD_RATE', # Get OK for proposed baud rate
    8 => 'MN_CMD_ALERT_CLR', # Clear non-serious Alert reg bits
    9 => 'MN_CMD_ALERT_LOG', # Read, clear & mark epoch of Alert log
    10 => 'MN_CMD_PLA', # PLA setup and inspection
    11 => 'MN_CMD_GET_PARAM2', # Get a parameter from bank 2 (512-639)
    12 => 'MN_CMD_SET_PARAM2', # Set a parameter from bank 2 (512-639)
    16 => 'MN_CMD_COMMON_END', # Node specific cmds can start here
    80 => 'ASUM_CMD', # Run an ASUM command (send data to app proc)
  }

  if message[0] == COMMAND then
    cmd = message[2]

    if commands.key?(cmd) then
      puts "\trecognized command: #{commands[cmd]}".blue

      if cmd >= 0 || cmd <= 3 then
        paramIndex = message[3]

        if (cmd >= 2) then
          paramIndex += 0x100
        end

        if PARAMS.key?(paramIndex) then
          puts "\tparameter: #{PARAMS[paramIndex]}".blue
        else
          puts "\tunrecognized parameter: #{paramIndex.to_s(16)}".red
        end
      end
    else
      puts "\tunrecognized command: #{cmd.to_s(16)}".red
      unrecognizedCount += 1
    end
  elsif message[0] == REPLY then
      puts "\trecognized reply".blue
  else
    puts "\tunexpected header byte: #{message[0].to_s(16)}".blue
  end

  lineNo += 1
end

puts ""
puts "-------- summary --------"

puts "#{checksumErrorCount} checksum errors"
puts "#{unrecognizedCount} commands unrecognized"
