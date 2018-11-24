
#---------------------------
# New Code Revisions and Features - Branch 2 added named "Feature-Revisions"
require "./searchparam.rb"

# This line tests integration of the searchparam module.
puts Searchparam::SEARCHLIMITER







#------------------------
# [Tue Aug 21 14:36:19 2018] You feel different. - Example of log

# adding basic prompt commands...
# Program information.
puts "EQ Log Snipper v1 - by Infestation of p2002.com"
puts "github.com/gwenmorgana"

# establish a variable that loads the log file to be analyzed
print "Please enter the name of the EQ Log to be searched: "
baselog = $stdin.gets.chomp

# establish a variable that tells the program what to search for
puts "EQ Log Example - [Tue Aug 21 14:36:19 2018] You feel different."
print "Please enter a search parameter: "
search = $stdin.gets.chomp

# establish a variable to name the file containing the search results
puts "Warning: Output file will be truncated!"
print "Please choose a name for your output text file: "
filename = $stdin.gets.chomp

# file system prep, open output file and flag to allow writing of data.
target = open(filename, 'w')
# deletes the data out of the target file.
target.truncate(0)

# file processing logic
parameter = false
# new feature - displaying the number of results matched!
total_results = 0


File.open(baselog, 'r') do |file| # variable obtained via $stdin
  file.readlines.each do |line|

# need to beef up the regex, future editions need the ability to search special characters
    if parameter == true && (line.match(//) || line.strip.empty?) # Prior entry using Caret was getting everything after the correct value - This is now corrected.
      parameter = false
    end

    parameter = true if line.match(search) # Now you can search for a particular date in the string. - Or hell, whatever you want!
# if the above condition is met, process these next 2 lines of code
# console output silenced by commenting line below
    #puts line if parameter == true
    # from here i can include conditionals based on the log's results.
# this line will write the matching data contained in the search variable into the file specified in the target variable
    target.write(line) if parameter == true
# record counter toggles with each condition met.
    total_results += 1 if parameter == true
  end

end
# display the number of results to the console.
puts "#{total_results} results have been found and exported into #{filename}"
# Adding a 'pause' so the prompt window closing doesn't mask the result info from the enduser.
puts "Press ANY key to close this program."
$stdin.gets
