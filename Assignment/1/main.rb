#!/usr/bin/env ruby

require_relative 'Problem1.rb'
require_relative 'Problem2.rb'
require_relative 'Problem3.rb'
require_relative 'Problem4.rb'
require_relative 'Problem5.rb'

puts "##########################################PROBLEM 1 ##########################################"

str =<<END_MARK
Facebook and its founder must release documents and electronic correspondence to a defense lawyer
whose client has fled from criminal charges that he falsely claimed a majority ownership in the social
media giant, a federal judge said Friday.
END_MARK


string = String.new()

print( string.count_occurence(str, "") ) # return number of occurrences for every word in a hash
puts();
str=%{three, three, three }
puts( string.count_occurence(str, "three") ) #. will return: 3
puts
puts "##########################################PROBLEM 2 ##########################################"

students = createStudent()
# get all students
puts("All Students") 
printS( students )
puts()
puts()
puts()
puts("Students with first Name as ->" + "Ken ")
printS( getStudentsByFirstName(students, "Ken") )
puts()
puts()
puts("Student by phone number 456734244")
printS( getStudentsByPhoneNumber(students, "456734244") )
puts
puts "##########################################PROBLEM 3 ##########################################"

compress = Compress.new( 'i love you but do you love me' )

compress.printCompress()
puts
puts( compress.getOriginal() )
puts
puts "##########################################PROBLEM 4 ##########################################"

puts ".merge"
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }

puts h1.merge(h2)
puts h1.merge(h2){|key, val1, val2| val2 - val1}
puts h1

puts "\n.merge!"
h1 = { "a" => 100, "b" => 200 }
h2 = { "b" => 254, "c" => 300 }

puts h1.merge!(h2){|key, val1, val2| val2 - val1}
puts h1
puts
puts "##########################################PROBLEM 5 ##########################################"

str =<<END_MARK
<%= simple_form_for @project do |f| %>
     <%f.input :name %>
    <%= f.input :description %>
    <h3>Tasks</h3>
    <div id='tasks'>
    <%= f.simple_fields_for :tasks do |task| %>
    <%= render 'task_fields', :f => task %>
    <% end %>
    <div class='links'>
    <%= link_to_add_association 'add task', f, :tasks %>
    </div>
    </div>
    <%= f.submit 'Save' >
   <% end %> 
END_MARK

webpage = Webpage.new(str)
puts( webpage.filter() )