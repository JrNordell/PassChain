#!/usr/bin/env ruby



  puts "Hi, what\'s your name"

  name = gets.chomp

 puts "Hello, #{name}"


puts "Would you like to store or update your password? (s/u/abort)"

bool = gets.chomp

  if bool == "s"
    bool = "y"
    while bool == "y"
      puts"\nOkay, #{name}, what is your password?"
      pass = gets.chomp
      puts "Your password is #{pass}, correct? (y/n)"
      bool = gets.chomp
      if bool == 'y'
        out_file = File.new("#{name}.txt", "w")
        out_file.puts(pass)
        bool = "n"
      else
        puts "Try again"
        bool = "y"
      end
    end
  elsif bool == "u"
    out_file = File.open("#{name}.txt", "w+")
    while bool == "u"
      puts "What is your password?"
      pass = gets.chomp
      if pass == out_file.gets
        bool = "a"
        puts "Success!"
        puts "Enter your new password"
        pass = gets.chomp
        out_file.puts(pass)
        puts "Your password (#{name}) has been stored, have a good day :)"
      else
        puts "That password was incorrect, try again."
      end
    end
  else
    puts "Ok, have a good day :)"
  end
