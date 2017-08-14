require 'sinatra'

#just to show result into /
get '/' do
	#does nothing john snow
end

#healthcheck return 200
get '/healthcheck' do
	status 200
end

#post to receive data and execute script
post '/v1/instances/create' do
	username = params[:username]
	password = params[:password]
	status 201
end

#example of multiple services and info
post '/v1/:service/info' do
	if params[:service] == "cloud"
		puts "cloud services info"
		status 200
	else
		puts "no service selected"
		status 501
	end
end
