
# Common procedures and functions.
#

# Write a line in the log.
def pb_write_log(line, modname)
	if $pb_log_enabled && $pb_log_enabled == true
		begin
			file = File.open($pb_log_file, "a")
			file.puts "[#{Time.now.to_s} - #{modname} - #{ENV['USER']}] #{line}"
			file.close
		rescue
		end
	end
end

# Is the machine a Windows box?
def iswindows?()
	if RUBY_PLATFORM.downcase.include?("win") != true && RUBY_PLATFORM.downcase.include?("mingw") != true
		return false
	else
		return true
	end
end

# Check if running user is root, or has permission.
def haspermission()
	if !$protected_mode || $protected_mode != true
		return true
	else
		if iswindows?() == false && Process.euid == 0
			return true
		elsif iswindows?() == true
			return true
		else
			return false
		end
	end
end

# Puts and print with colors for Unix-like systems.
def title(string)
	if !$text_color || $text_color != true
		puts string
	elsif iswindows?() == false
		puts "\e[1m\e[40m\e[33m" + string + "\e[0m" # Yellow, bold, on_black.
	else
		puts string
	end
end
def warning(string)
	if !$text_color || $text_color != true
		print string
	elsif iswindows?() == false
		print "\e[1m\e[31m" + string + "\e[0m" # Red, bold.
	else
		print string
	end
end

# Default gets, command execution implemented.
def gets_pb()
	comm = true
	while comm == true
		ln = gets
		if ln[0] == "!"
			ln[0] = ""
			system(ln.chomp)
			puts "---"
			print "   -> "
			comm = true
		else
			comm = false
			return ln
		end
	end
end

