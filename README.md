# 🚀SOAP_Rb 

This repository demonstrates a simple implementation of a SOAP client-server architecture in Ruby. The code includes a SOAP server built using Sinatra and a SOAP client using the Savon gem.

## ✨Introduction 

This project demonstrates how to create a basic SOAP-based architecture in Ruby. The server is built with Sinatra and responds to SOAP requests. The client uses the Savon gem to make SOAP requests to the server.

## 🛠️Prerequisites 

Before running this project, ensure you have the following installed:

- Ruby (version 2.6 or newer recommended)
- Bundler (for managing gem dependencies)

## ⚙️Setup 

1. Clone the repository:
   ```bash
   git clone https://github.com/Anggeloo/SOAP_Rb.git
   cd SOAP_Rb
   ```

2. Install the dependencies:
   ```bash
   bundle install
   ```

## 📤Usage 

### Starting the Server

1. Navigate to the project directory.
2. Run the following command to start the server:
   ```bash
   ruby soap_server.rb
   ```
3. The server will run on `http://localhost:4567`.

### Running the Client

1. In another terminal, ensure the server is running.
2. Execute the client script:
   ```bash
   ruby soap_client.rb
   ```
3. The client will send a `sayHello` request to the server, and you will see the response in the terminal.

## 🗂️File Descriptions 

### `soap_server.rb`

- This file contains the SOAP server logic.
- Built using Sinatra, it listens for incoming SOAP requests on `/soap`.
- It processes requests and generates appropriate SOAP responses.

### `soap_client.rb`

- This file contains the SOAP client logic.
- It uses the Savon gem to send a `sayHello` SOAP request to the server.
- Displays the server's response in the terminal.

## 🖥️Example 

1. Start the server:
   ```bash
   ruby soap_server.rb
   ```
2. Run the client:
   ```bash
   ruby soap_client.rb
   ```
3. Example output in the terminal:
   ```
   Hello, Ruby! Welcome to SOAP in Ruby.
   ```