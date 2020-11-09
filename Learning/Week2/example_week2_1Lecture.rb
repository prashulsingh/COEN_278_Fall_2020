#hashmap 

map ={ "firstname" => 'Yuan' , "lastname" => 'Wang'}

puts map.has_key?("firstname")

map.each_value{
    |key| puts "\n" + key
}

map.each_key{
    |value| puts "\n" + value
}

map.each{
    |key,value| print key + " " + value
}

#variable number of arguments same as int .. a 

def multipleParamExample( a, *b )
    puts a 
    print b
end

multipleParamExample(5,6,7,8,9)
puts "\nmultiple parameter"
multipleParamExample(5,6,7)


# like Java Ruby is pass by value
def checkPassByValueOrReference( x )
    x = x + 4
    return 9
end

x = 4 
checkPassByValueOrReference( x )
puts( x )

# usage of keyword yield in ruby, used to execute the code block , we can pass it to the method and yield executes that block

def one_yield
    yield
end
  
def multiple_yields
    5.times{yield}
end
  
one_yield { puts "one yield" }
  
multiple_yields { puts "multiple yields" }

#class concept, same as java, @<variable_name , but instance variable are not accesible outside the class
# in java we have 'this' , in ruby we have self keyword
class ClassName
    def initialize()
        @variable1 =10        
    end
    def returnObject()
        return self
    end
end

obj = ClassName.new()
puts obj.returnObject()
# obj.variable1 # error , obj can only call methods

#we can also over ride the method of the preexisting classes.


print 5.class # class is integer 

print 5.times {puts 'Ruby '} #times is a method in Integer class 

# overriding times class

class Integer
    def times()
        i = self # this contains 5
        while i >= 0 
            yield
            puts('---------------')
            i = i-1
        end
    end
end

print 5.times {puts 'Ruby '} #times is a method in Integer class 
