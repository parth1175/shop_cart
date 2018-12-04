 module Spree::NavBarHelper
#   @home = @home
#
#   # This is just a temporary statement to remind me to use @home

    def n(nav)
      nav.name
    end

   def p(nav)
     nav.path
   end

   # def name(element)
   #   @nav_stuff[element][0]
   # end

   def get_nav_stuff()
      return @nav_stuff
   end
# this does not do anything


   def nav_elements(nav_e)
     @nav_stuff = Hash.new
     nav_e.all.each do |e|
       @nav_stuff[e.name] = [e.name, e.path, e.idattrib, e.id]
     end
     return @nav_stuff
     # the end hash is stored in the @nav_stuff varible

     # next-step
     # convert the hash to a string here and then find a way to send that string hash out
   end

end






#class Navi_bar






  # def initialize(nav_e)
  #   @nav_stuff = Hash.new
  #   nav_e.all.each do |e|
  #     @nav_stuff[e.name] = [e.name, e.path, e.idattrib, e.id]
  #   end
  # end
# this process cannot be done here









#   def initialize(nav_e)
#     @nav_stuff = nav_e
#     #the main goal of this is just to store the hash in an instance variable
#   end
#
#
#   def get_nav_stuff()
#      return @nav_stuff.to_s
#   end
#
# end
