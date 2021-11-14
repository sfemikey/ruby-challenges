require 'socket'

server = 'irc.libera.chat'
port   = 6667
socket = TCPSocket.open(server, port)

nickname = 'PnaymeBot21'
channel = '#hellohello_test123'

socket.puts "NICK #{nickname}"
socket.puts "USER #{nickname} 0 * #{nickname}"
socket.puts "JOIN #{channel}"
socket.puts "PRIVMSG #{channel} :Hello PnaymeBot21! Welcome Back!"

while message = socket.gets do
  puts message

  if message.match('^PING :')
    server = message.split(':').last
    puts "PONG #{server}"
    socket.puts "PONG #{server}"
  elsif message.match('How are you?')
    puts "PRIVMSG #{channel} :I'm great, thanks!"
    socket.puts "PRIVMSG #{channel} :I'm great, thanks!"
  end
end
