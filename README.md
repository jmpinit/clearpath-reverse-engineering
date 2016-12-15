# ClearPath Motor USB Protocol Reverse Engineering

[ClearPath motors](https://www.teknic.com/products/clearpath-brushless-dc-servo-motors/) have a
debug port which can be used with Teknic's proprietary Windows software to change motor parameters
and view them live. It's really neat but it would be neater if the same operations could be done
programmatically and on other platforms.

## Tools

* `get_binary.rb` - parses the output from the "Dump view" of the
[Eltima Serial Port Monitor](http://www.eltima.com/products/serial-port-monitor/) application and
saves the equivalent binary data.
* `parse.rb` - reads binary file containing traffic between the
[ClearPath MSP](https://www.teknic.com/downloads/) and a motor and attempts to decode it.

## Dependencies

* Ruby 2.3.0p0 (other versions probably work but are untested)
