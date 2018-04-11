# Create a module called authentication - In seperate file, which has method authenticate_user
# Create a base class application and have the module authentication available inside the class, and also have 2 sub classes home and products for application
# Instantiate objects for home and product.
# home and product objects should be able to call method authenticate_user, which should be able to display message 'User Authenticated !!' when called from home object and 'You are not authenticated!!' message when called from product object.
require_relative 'appication1' 
class Application 
  include Authentication
 end
 class Home < Application
 end
 class Product < Application
 end
 a = Home.new
 a.authenticate_user(true)
 b = Product.new
 b.authenticate_user(false)
