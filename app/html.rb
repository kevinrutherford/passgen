require 'sinatra/base'

class PassGen < Sinatra::Base
  get '/' do
    'Hello PassGen!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

