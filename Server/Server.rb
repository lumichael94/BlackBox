require 'socket'                # Get sockets from stdlib

server = TCPServer.open(2000)   # Socket to listen on port 2000
@clientArray = Array::new

loop {                          # Servers run forever
  Thread.start(server.accept) do |client|
    @clientArray.push(client)
    client.puts('Hello, time is now, ' + Time.now.ctime) # Send the time to the client
 
  
  

while @line = client.gets
  puts @line # Prints whatever the client enters on the server's output
  
  
  @clientArray.each do |user| #broadcast to every client
    user.puts @line
  end
  
  
  
  if @line.chomp == 'eol'
    client.puts 'Closing the connection. Bye!'
    client.close
  end
end
end
}