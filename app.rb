require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @words = params[:user_phrase]
    "#{@words}"
  end
end
