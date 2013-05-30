require 'open-uri'
require 'hpricot'
require 'rubygems'

@url = "https://www.archlinux.org"

open(@url, "User-Agent" => "Ruby/#{RUBY_VERSION}") do |f|

	@response = f.read
end

doc = Hpricot(@response)
puts doc

#(doc/"/html/body/div[2]/div[3]/div[2]/h3/span").each do |pkg|
	#puts "#{pkg.text.gsub(/"
#end

