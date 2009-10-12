# vartotojas_spec.rb
require 'rubygems'
require 'spec'
require 'user'
 
describe User do
	it "should let create new user" do
		User.new("admin", "pass").should be_instance_of(User)
	end
   
	it "shoould have username and password" do
		admin_account = User.new("admin", "pass")
		admin_account.username.should == "admin"
		admin_account.password.should == "pass"

		user_account = User.new("username1", "pass1")
		user_account.username.should == "username1"
		user_account.password.should == "pass1"
  end

	it "should let change username and password" do
		admin_account2 = User.new("admin","pass") 		
		admin_account2.username = "admin2"
		admin_account2.username.should == "admin2"
		admin_account2.password = "newpass"
		admin_account2.password.should == "newpass"
	end

	it "can have name and lastname" do
		account = User.new("account1","randompass")
		account.name = "John"
		account.name.should == "John"
		account.lastname = "Steward"
		account.lastname.should == "Steward"
	end
end