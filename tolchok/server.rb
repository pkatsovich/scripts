#!/usr/bin/ruby
require 'socket'
SIZE = 1024 * 1024 * 10

TCPSocket.open('127.0.0.1', 12345) do |socket| 
  File.open('/tmp/testfile', 'rb') do |file|
      while chunk = file.read(SIZE)
      socket.write(chunk)
    end
  end
end
