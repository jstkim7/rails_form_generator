puts "Object count: "
object_count = gets.chomp.to_i
objects = []

puts "Object names: "
object_count.times do
  objects << gets.chomp
end

puts "Number of fields: "
field_count = gets.chomp.to_i
fields = []
field_type = []

puts "Field names and types"

field_count.times do
  puts "Name: "
  fields << gets.chomp
  puts "Type: "
  field_type << gets.chomp
end

form = <<-FUCK
fwefewf #{f}
FUCK

puts form