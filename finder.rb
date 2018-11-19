# This file is to experiment with Regex
# [Tue Aug 21 14:36:19 2018] You feel different. - Example of log

parameter = false
File.open("explog2.txt", 'r') do |file| # change processed.txt to explog.txt for testing purposes...
  file.readlines.each do |line|


    if parameter == true && (line.match(//) || line.strip.empty?)
      parameter = false
    end

    parameter = true if line.match("Aug 09") # Now you can search for a particular date in the string.
# if the above condition is met, process these next 2 lines of code
    puts line if parameter == true
    puts "Line was processed" if parameter == true # ability to write to file goes here.
# from here i can include conditionals based on the log's results.

  end
end
