puts "Object name: "
object_name = gets.chomp

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

form = <<-form
<%= form_for @#{object_name} %>

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



<% end %>
form

puts form