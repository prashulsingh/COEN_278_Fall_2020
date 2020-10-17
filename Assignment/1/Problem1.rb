
class String
        def count_occurence( str, string="" )
                result = Hash.new
                #regex for all words
                str.split(/\W+/).each do | word |
                        if result[ word ] 
                                result[ word ] +=1
                        else
                                result[ word ] =1
                        end
                end

                if !string.empty?
                        temp = Hash.new
                        temp[ string ] = result[ string ]
                        return temp
                end             
        return result
        end  
end                                               


# # str =<<END_MARK
# # Facebook and its founder must release documents and electronic correspondence to a defense lawyer
# # whose client has fled from criminal charges that he falsely claimed a majority ownership in the social
# # media giant, a federal judge said Friday.
# # END_MARK

# # # str=%{three, three, three}

# # # str.each_char{ |ch| print(ch,"_")} 

# # print( count_occurence(str, "three") )

# # print()

# print( )