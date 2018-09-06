require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @words = params[:words]
    raise @words
    "#{@words}"
  end
end
