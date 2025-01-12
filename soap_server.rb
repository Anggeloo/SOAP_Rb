require 'sinatra'
require 'builder'

set :port, 4567

post '/soap' do
  # Process SOAP request
  request.body.rewind
  soap_request = request.body.read

  # Extract simple parameters (optional, you can use a full XML parser)
  if soap_request.include?('<name>')
    name = soap_request.match(/<name>(.*?)<\/name>/)[1]
  else
    name = 'World'
  end

  # Generate SOAP response
  builder do |xml|
    xml.instruct! :xml, version: "1.0", encoding: "UTF-8"
    xml.Envelope("xmlns:soap" => "http://schemas.xmlsoap.org/soap/envelope/") do
      xml.Body do
        xml.sayHelloResponse do
          xml.message "Hello, #{name}! Welcome to SOAP in Ruby."
        end
      end
    end
  end
end
