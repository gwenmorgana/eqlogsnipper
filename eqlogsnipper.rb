# This file is to experiment with Regex
# [Tue Aug 21 14:36:19 2018] You feel different. - Example of log

# adding basic prompt commands...
# Program information.
puts "EQ Log Snipper v1 - By Richard Grady"

# establish a variable that loads the log file to be analyzed
print "Please enter the name of the EQ Log to be searched (testing - use moo.txt in local directory): "
baselog = $stdin.gets.chomp

# establish a variable that tells the program what to search for
puts "EQ Log Example - [Tue Aug 21 14:36:19 2018] You feel different."
print "Please enter a search parameter: "
search = $stdin.gets.chomp

# establish a variable to name the file containing the search results
print "Please choose a name for your output text file (testing - use cow.txt for output file): "
filename = $stdin.gets.chomp

target = open(filename, 'w')
target.truncate(0)


parameter = false
File.open(baselog, 'r') do |file| # variable obtained via $stdin
  file.readlines.each do |line|


    if parameter == true && (line.match(//) || line.strip.empty?) # Prior entry using Caret was getting everything after the correct value - This is now corrected.
      parameter = false
    end

    parameter = true if line.match(search) # Now you can search for a particular date in the string. - Or hell, whatever you want!
# if the above condition is met, process these next 2 lines of code
# console output silenced by commenting line below
    #puts line if parameter == true
    # from here i can include conditionals based on the log's results.

    target.write(line) if parameter == true



  end
end
