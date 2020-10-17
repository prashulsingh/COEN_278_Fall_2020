class Compress
    def initialize( originalString )
        hashMap = Hash.new()
        i=0
        @array_of_strings = []
        @array_of_index = [] 
        originalString.split.each_with_index do |word,index| 
            if !hashMap.has_key?( word )
                hashMap[word] = i
                i=i+1
            end
            @array_of_index[ index ] = hashMap.fetch( word )
        end
    @array_of_strings = hashMap.keys
    end

    def printCompress
        print( @array_of_strings )
        puts()
        print( @array_of_index )
    end

    def getOriginal
        arr = []
        
        @array_of_index.each do |index|
              arr.push( @array_of_strings[ index ] )  
        end
    return arr.join(" ")
    end
end

# compress = Compress.new( 'i love you but do you love me' )

# compress.printCompress()

# print( compress.getOriginal() )