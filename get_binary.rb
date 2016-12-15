inputFile = ARGV[0]
outputFile = ARGV[1]

if inputFile.nil? || outputFile.nil? then
  print 'usage: get_binary.rb <input file> <output file>'
  exit
end

data = File.open(inputFile, 'rb').read

hexlines = data.lines.select { |line| line.match(/^\s+([a-f0-9]{2}\s)+/) }
hexdata = (hexlines.map { |line| line.scan(/[a-f0-9]{2}/) }).flatten
bytes = hexdata.map { |h| h.to_i(16) }
binarydata = bytes.pack('c*')

outfile = File.new(outputFile, 'w')
outfile.puts(binarydata)
outfile.close

print 'wrote ', outputFile, "\n"
