#!/usr/bin/env ruby
require 'net/http'
require 'json'
require 'cgi'

def print_book(position, title)
  puts "#{position}: #{title}"
end

def create_request(url)
  uri = URI(url)
  params = { q: ARGV.join('+') }
  uri.query = URI.encode_www_form(params)
  uri
end

def process_request_result (result)
  object = JSON.parse(result)
  if object["items"]
    puts "Books for 'Alice in wonderland':"
    object["items"].each_with_index do |item, index|
      print_book index+1, CGI.unescapeHTML(item["volumeInfo"]["title"])
    end
  else
    puts "No books found for #{ARGV.join(' ')} "
  end
end


# main
uri = create_request('https://www.googleapis.com/books/v1/volumes')
result = Net::HTTP.get_response(uri)
if result.is_a?(Net::HTTPSuccess)
  process_request_result result.body
else
  puts "Sorry, there was an error while retrieving books."
end

