class Student
    def initialize( firstname, lastname, phonenumber)
        @firstname = firstname
        @lastname = lastname
        @phonenumber = phonenumber
    end
    def getfirstName
        return @firstname
    end
    def getLastName
        return @lastname
    end
    def getPhoneNumber
        return @phonenumber
    end
end


def createStudent()
    students =  Array.new( 4 )
    students[0] = Student.new("John","LastnameJohn", "123456789")
    students[1] = Student.new("Ken","Lastnameken", "456734244")
    students[2] = Student.new("Marisa","lastnamemarisa", "443234567")
    students[3] = Student.new("Ken","Kenlastname", "456734244")
    return students
end

def getStudentsByFirstName( students, firstname="" )
    result = []
    if firstname.empty?
        print "First name is empty"
    end

    students.each do |student|
        if student.getfirstName() == firstname
            result.push( student )  
        end
    end  
    return result
end

def getStudentsByLastName( students, lastname="" )
    result = []
    if lastname.empty?
        print "Last name is empty"
    end

    students.each do |student|
        if student.getLastName() == lastname
            result.push( student )  
        end
    end  
    return result
end    

def getStudentsByPhoneNumber( students, phonenumber ="" )
    result = []
    if phonenumber.empty?
        print "Phone name is empty"
    end

    if !phonenumber.match( /^[0-9()-]+$/) || phonenumber.length > 10
        print "Invalid Phone number"
        return
    end

    students.each do |student|
        if student.getPhoneNumber() == phonenumber
            result.push( student )  
        end
    end  
    return result
end    


def printS(students)
    print("FirstName\tLastName\tPhone Number\n")
    students.each do |student|
        puts(student.getfirstName() + "\t\t" + student.getLastName() + "\t" + student.getPhoneNumber() )
    end
end



    