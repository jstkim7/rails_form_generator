puts "Object name: "
object_name = gets.chomp

puts "Number of fields: "
field_count = gets.chomp.to_i
fields = []
field_types = []

puts "Field names and types"
field_count.times do
  puts "Name: "
  fields << gets.chomp
  puts "Type: "
  field_types << gets.chomp
end

field_strings = []

fields.each_with_index do |f, i|
  field_strings << <<-fs
<p>
  <%= f.label :#{fields[i]} %></br>
  <%= f.#{field_types[i]} :#{fields[i]} %>
</p>
fs
end

form = <<-form
<%= form_for @#{object_name} do |f| %>

<p>
<% if @#{object_name}.errors.any? %>
  This form contains <%= pluralize(@#{object_name}.errors.count, "error")%>.

  <ul>
  <%= @#{object_name}.errors.full_messages.each do |msg| %>
    <li><%= msg %></li>
  <% end %>
  </ul>
<% end %>
</p>

#{field_strings.join("\n")}
<p>
  <%= f.submit %>
</p>

<% end %>
form

puts form