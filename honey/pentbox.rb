#!/usr/bin/env ruby




# $protected_mode variable defines if protected mode is activated or not.
#
# Protected mode protects you against "script kiddies" and "lammers". They
# can't run dangerous modules without root privileges.
#
# Recommended for public computers!!
#
# Default -> true
$protected_mode = true

# $text_color variable.
# When true, titles and warnings will be colorful,
# else it will be with default colors.
#
# Default -> true
$text_color = true

###########################

##### Loading time
dir = File.dirname(__FILE__)
require dir + "/lib/pb_proced_lib.rb" # Common procedures and functions.


#####



srand(Time.now.to_i)
banner = rand(4)



# Thanks to Cowsay for the ASCII Art ;-)
case banner
	when 0
		puts "                                     .::!!!!!!!:. "
		puts "  .!!!!!:.                        .:!!!!!!!!!!!! "
		puts "  ~~~~!!!!!!.                 .:!!!!!!!!!UWWW$$$ "
		puts "      :$$NWX!!:           .:!!!!!!XUWW$$$$$$$$$P "
		puts "      $$$$$##WX!:      .<!!!!UW$$$$   $$$$$$$$# "
		puts "      $$$$$  $$$UX   :!!UW$$$$$$$$$   4$$$$$* "    
		puts "      ^$$$B  $$$$      $$$$$$$$$$$$   d$$R* "
		puts "        **$bd$$$$      '*$$$$$$$$$$$o+#  "
		puts "             ****          ******* "          
	when 1
		puts "         __"
		puts "        U00U|.'@@@@@@`."
		puts "        |__|(@@@@@@@@@@)"
		puts "             (@@@@@@@@)"
		puts "             `YY~~~~YY'"
		puts "              ||    ||"
	when 2
		puts "             .__."
		puts "             (oo)____"
		puts "             (__)    )--*"
		puts "                ||--|| "
	end


sleep(0.25)
option1 = ""

while option1 != "5"
	module_exec = true
	puts ""
	puts "1- Honeypot"
	puts ""
	puts "0- Exit"
	puts ""
	print "   -> "
	option1 = gets_pb.chomp
	puts ""

	case option1
		when "1"
			require "#{dir}/tools/network/honeypot.rb"
			Network_pb::Honeypot_pb.new()
				
		else
			module_exec = false
			puts ""
			puts "Invalid option."
			puts ""
			end
		
		
	end
	



			
				