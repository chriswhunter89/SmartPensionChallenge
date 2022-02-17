require './lib/log_data'

puts "\nPlease enter the name of your file:"
file = gets.chomp
log_data = LogData.new("./#{file}")

puts "\nParsing file .."
log_data.parse

puts "\nTotal number of page views:"
log_data.page_views

puts "\nTotal number of unique page views:"
log_data.unique_page_views
