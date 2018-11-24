# eqlogsnipper

EQ Log Snipper - Version 1

Aka. Infestation of p2002.com
github.com/gwenmorgana

Overview:
EQ Log Snipper (ELS) is an ASCII text log parsing program that will locate data based upon the search query and return the results to a separate file. It can efficiently process large documents and save the user time gathering relevant results and placing them
into an isolated file rather than have to view each search hit in a text processing program.


How to use:
(This program is written in Ruby and requires the Ruby library to be installed on your particular system.)
(You can get Ruby at https://www.ruby-lang.org/en/downloads/)

1.) Execute els.rb from the command prompt or click on the els.rb icon in your OS's GUI. Make sure the ELS program is in the directory with the text files that you want analyzed.

2.) The first prompt will ask you for the file name of the text log to be searched.

3.) The second prompt will ask for what you are searching for. For example, to pull the logs from a particular raid day, use the specified format. Nov 15

To find any mention of a particular user named Infestation, specify: Infestation

4.) Enter the name of the file in which you will output the matched data. Be careful not to overwrite important data, because this process will truncate (delete the contents entirely) of the filename you specify before populating the search results.

5.) Open the created file and enjoy the simplicity!
