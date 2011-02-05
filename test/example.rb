require 'GoogleURL'

if ARGV.length < 1
  puts "USAGE:\n\t#{$0} [-e Expand] {http||https}<link>"
  exit
end

if ARGV[0] ==  "-e"
  puts GoogleURL::Expand.new(ARGV[1])
else
  puts GoogleURL::Shorting.new(ARGV[0])
end