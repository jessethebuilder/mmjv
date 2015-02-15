require 'rubygems'
require 'nokogiri'
require 'open-uri'
#require 'restclient'

s = File.open('c:/users/jf/desktop/t.txt').read
r = /"url":"(http:\/\/weedmaps\.com\/dispensaries\/.*?)","name"/
urls = s.scan(r).flatten

emails = []



urls.each do |url|
  page = open(url.insert(4, 's')).read
  emails << $1 if page =~ /mailto:(.*?)"/
end

s = emails.join("\r\n")
File.open('c:/users/jf/desktop/california.txt', 'a+') do |f|
  f.write(s)
end


