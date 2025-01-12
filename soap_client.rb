require 'savon'

# Create a SOAP client pointing to the server
client = Savon.client(wsdl: nil, endpoint: 'http://localhost:4567/soap', namespace: 'http://schemas.xmlsoap.org/soap/envelope/')

# Make a request to the `sayHello` method
response = client.call(:say_hello, message: { name: "Ruby" })

# Show the answer
puts response.body[:say_hello_response][:message]
