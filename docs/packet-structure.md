# Packet Parts

| Index | Meaning                                      |
| ----- | -------------------------------------------- |
| 0     | 4 bit address then 4 bit mask                |
| 1     | frame length                                 |
| 2     | command or extension                         |
| ...   | data                                         |
| end   | checksum (((256 - packet_sum) % 256) & 0x7f) |

## Header Bit Mask

| Bit  | Meaning       |
| ---- | ------------- |
| 0..2 | packet type   |
| 3    | high priority |

# Packet Types

| Code | Meaning                        |
| ---- | ------------------------------ |
| 0    | command                        |
| 1    | command response               |
| 2    | error detected                 |
| 3    | low priority extension (frame) |

Frames of these types do not honor flow control:

| Code | Meaning                       |
| ---- | ----------------------------- |
| -4   | attention request (interrupt) |
| -3   | set address                   |
| -2   | event trigger (like "go")     |
| -1   | high priority extension       |
