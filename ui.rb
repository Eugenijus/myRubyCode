#!/usr/bin/ruby -w
# ui.rb

require "user_manager"
require "auto_manager"
  
class Ui
  attr_reader :um, :am
  
  def initialize()
      @um = User_manager.new
      @am = Auto_manager.new
      run
  end
    
  def run
      i = 1
      while i!=0 do
        j = meniu1()
        if !(j>0) then
          i = 0
        end
        
        while j>0 do
          case j
          when 1
            j = meniu2()
          when 2
            j = meniu3()
          when 3
            @um.print_users
            j = 0 
          else
            j = 0
          end #end of case
        end #end of while
      end #end of while
      puts "Bye!"
    end #end of run
    
    #Console
    #1.Create user
    #2.Login
    #3.Print all users
    #0.Exit
    def meniu1
      puts "1.Create user\n2.Login\n3.Print all users\n0.Exit"
      n = gets.to_i
      if !(n>0 && n<4) then
        n = -1 #out of bounds error
      end
      return n;
    end
    
    #Creates a new User
    #Console Meniu2
    #Username:
    #Password:
    #Name:
    #Lastname:
    def meniu2
      u = get_console_string("Username:")
      p = get_console_string("Password:")
      n = get_console_string("Name:")
      l = get_console_string("Lastname:")
      
      usr = @um.add_user(u,p,n,l)

      if usr == nil
        puts "Error: User already exists";
        return -1;
      end
      print "Successfuly created User: "
      puts usr.username
      return 0;
    end
    
    #Login
    #Console Meniu3
    #Username:
    #Password:
    def meniu3
      u = get_console_string("Username:")
      p = get_console_string("Password:")
      
      if check_login_info(u,p) == -1
        return -1;
      end
      meniu4
    end
    
    def check_login_info(username, password)
      usr = @um.find_user(username)
      if usr != nil
        if usr.password == password
          return 0;
        end
      end
      puts "Error: wrong username or password!"
      return -1
    end
    
    #User is loged in, Main Meniu
    #Console Meniu4
    def meniu4
      puts "1.Edit Your info"
      puts "2.Autos"
      puts "3.Customers"
      puts "0.Exit"
      n = gets.to_i
      return 0; 
    end
    
    def edit_meniu(manager_type)
      
      puts ""
      puts "1.Add"
      puts "2.Edit"
      puts "3.Delete"
      puts "0.Exit"
      
      n = gets.to_i
      return 0;      
    end
    
    def add_meniu
      
    end
    
    def delete_meniu(i)
      if get_manager(i)!= nil then
        
      end
    end
    
    def get_manager(i)
      case i
      when 1:
        return @um
      when 2:
        return @am
      when 3:
        return 0
      else
        return -1        
      end
    end
    
    def get_console_string(msg)
      puts msg
      str = ""
      str = gets
      str.chomp!
      return str
    end
end