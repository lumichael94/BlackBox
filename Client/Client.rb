require 'socket'
hostname = '128.61.104.125'
port = 2000

@s = TCPSocket.open(hostname, port)

  line = @s.gets
  puts line.chop
  @s.puts 'NewConnection'

def receive
  while line = @s.gets
   puts line
   end
end


def give 
  while var = gets
   @s.puts var
   end
end

loop{
  thread1 = Thread.new{receive()}
  thread2 = Thread.new{give()}
  thread1.join
  thread2.join
   
}