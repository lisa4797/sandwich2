require "sinatra"

get '/' do
	erb :sandwich_shop

end

post '/sandwich_choice' do
	sandwich = params[:sandwich]
	redirect '/final_order?sandwich=' + sandwich
end

get '/final_order' do	
	sandwich = params[:sandwich]
	erb :final, :locals => {:sandwich => sandwich}
end