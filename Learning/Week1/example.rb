
# we can  make the file executable by providing '!# <path to ruby bin folder'

#difference between '' and ""

puts 'love \n you '

#escape characters are interpreted in "" quotes
puts "love \n you"

#Using variables in print statements
a = 4
puts "Hello value of a is #{a}"

# %Q{} can be treated as ""
puts %Q{ Hello value of a is #{a} }


# %q{} can be treated as ''

#also {} can be substituted with any thing like () or // we need to pair them up

puts %Q( Hello value of a is #{a} )
puts %Q/ Hello value of a is #{a} /


# .compareTo in java , <=> in ruby

print "abc" <=> "abd"

# use of ! after the function assign it , 
# String a ="abd"
# a = a.toLowerCase()
#in ruby 

a ="ABD"
a.downcase 
puts a  # value of a is not changed'
a.downcase! 
puts a # value of a is changed

#map is like streams in Java

a =[1,2,3,4,5]
a.map!{|x| x*2} # ! is used to assign the double value back to a , otherwise a is not changed
puts a 


#use of inject , v1 is current value , v2 is the a[i]
puts a.inject{
    |v1,v2|  v1+v2
}
#same as 

totalSum = 0 
a.each{ |x| totalSum+=x}
puts totalSum

#find the largest length of a string in string array

b =["love","i","you"]

puts b.inject{
    |v1,v2|
    if( v1.length > v2.length )
        v1
    else 
        v2
    end

}

#  behavioural programming example, equivalent to Lambda in Java

x = def method1(x1)
    puts x1
end

puts x


# x will contain the method , which can be passed to other methods 
# how to call the x 

method( x ).call(40)

