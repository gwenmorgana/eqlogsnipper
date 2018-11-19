# This file is to experiment with Regex 


parameter = false
File.open("explog2.txt", 'r') do |file| # change processed.txt to explog.txt for testing purposes...
  file.readlines.each do |line|
    #attr_reader :matches
    #TIMESTAMP = %r{\[(?<wday>.{3})\s(?<month>.{3})\s(?<day>[0-9]{2})\s(?<hour>[0-9]{2}):(?<min>[0-9]{2}):(?<sec>[0-9]{2})\s(?<year>[0-9]{4})\]\s?}

    if parameter == true && (line.match(/^  (.)/) || line.strip.empty?)
      parameter = false
    end

    parameter = true if line.match("Wed")

    puts line if parameter == true# ; puts "Line was processed" # outflow goes here...

  end
end
