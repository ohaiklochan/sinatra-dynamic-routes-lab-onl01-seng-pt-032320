require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end
  
  get '/square/:number' do
    @result = params[:number].to_i*params[:number].to_i
    "#{@result}"
  end
  
  get '/say/:number/:phrase' do
    @product = ""
    @number = params[:number].to_i
    @saying = params[:phrase]
    @number.times do
      @product += @saying
      @product += "\n"
    end
    "#{@product}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5'do
    

end