# class for processing logfile data
class LogData
  attr_reader :filepath

  def initialize(filepath)
    @logfile = filepath
  end

  # method to parse logfile data into hash format for querying
  def parse
    logfile_array = File.readlines(@logfile)
    mapped_log_array = logfile_array.map { |line| line.split(' ') }
    @parsed_data = mapped_log_array.group_by(&:first).map{ |page, array| [page, array.map(&:last)] }.to_h
  end

  # method to print a sorted list of all web pages along with their associated page views
  def page_views
    sorted_parsed_data = @parsed_data.sort_by { |_key, value| value.length }.reverse
    sorted_parsed_data.each { |key, value| puts "#{key} #{value.length} views" }
  end

  # method to print a sorted list of all web pages along with their associated unique page views
  def unique_page_views
    sorted_parsed_data = @parsed_data.sort_by { |_key, value| value.uniq.length }.reverse
    sorted_parsed_data.each { |key, value| puts "#{key} #{value.uniq.length} unique views" }
  end
end
