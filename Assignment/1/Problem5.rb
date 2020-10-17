  
class Webpage
    attr_accessor :template

    def initialize(str)
        @template = str
    end
    
    def filter
        newStr = ""
        @template.split("\n").each do |line|
            tempLine = line.strip
            # ^<% starts with % ans %>$ ends with  , similary ^% means start of string contains %s
            if !( ( tempLine.match?(/^<%/) and tempLine.match?(/%>$/) ) or tempLine.match?(/^%/) )
                newStr << line + "\n"
            end
        end
    return newStr
    end
end
# str =<<END_MARK
# <%= simple_form_for @project do |f| %>
#      f.input :name %>
#     <%= f.input :description %>
#     <h3%>Tasks</h3>
#     <div id='tasks'>
#     <%= f.simple_fields_for :tasks do |task| %>
#     <%= render 'task_fields', :f => task %>
#     <% end %>
#     <div class='links'>
#     <%= link_to_add_association 'add task', f, :tasks %>
#     </div>
#     </div>
#     <%= f.submit 'Save' >
#    <% end %> 
# END_MARK

# webpage = Webpage.new(str)
# print( webpage.filter() )