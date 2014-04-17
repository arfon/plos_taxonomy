require 'nokogiri'
require 'open-uri'
require 'json'

page = Nokogiri::HTML(open('http://www.plosone.org/taxonomy'))

output = {}

# Find all of the top level headings
page.css('h2').each do |subject_area|
  # Retrieve the subject area title
  
  area = subject_area.css('a').first.text.strip
  
  output[area] = []
  
  puts ""
  puts "**** Subject Area: #{area} ****"
  puts ""
  
  # Find the list of subjects within subject area
  
  subjects = subject_area.next_element
  subjects.css('li').each do |subject|
    subject = subject.text.strip
    puts subject
    output[area] << subject
  end
end

File.open('plos_taxonomy.json', 'w') {|f| f.write(JSON.pretty_generate(output)) }
