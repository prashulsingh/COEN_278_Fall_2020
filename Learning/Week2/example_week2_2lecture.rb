#we cannot access the instance variables from outside the class, there is a way to access them

class Myclass
   def initialize
    @instanceVariable1 = 10
    @instanceVariable2 = 20
   end
end

#workaround to access instance variable, declare a variable that looks like instance variable

class Myclass1
    def initialize
     @instanceVariable1 = 10
     @instanceVariable2 = 20
    end
    def instanceVariable1
        @instanceVariable1
    end
    def instanceVariable1=(newValue)
        @instanceVariable1=newValue
        instanceVariable1
    end

end

obj = Myclass1.new()

#  declare a method instanceVariable1
 puts obj.instanceVariable1

 #for assignment we use similar stratergy
obj.instanceVariable1=20

puts obj.instanceVariable1


 #inbuild function attr_accessor :var does that
class Myclass2
    attr_accessor :instanceVariable1
    def initialize
        @instanceVariable1=10
    end
end
    
obj =Myclass2.new()

#directly access instance variable
puts obj.instanceVariable1

#Inheritance in Ruby

class Parent
    attr_accessor :var_parent
    def initialize
        @var_parent =10
    end
end

class Child < Parent
    def initialize
        super # use to initialize the parent constructor 
        @var_child=20
    end
end
 
obj = Child.new()
puts('---------------------')
print  obj.var_parent

#Money patching add methods to the existing class, concept is called Open Class

class OriginalClass
    def method1
        puts 'In method1'
    end
end

class OriginalClass #method 2 is added to Original class 
    def method2
        puts 'In Method 2'
    end
end

obj = OriginalClass.new()

obj.method1()

obj.method2()