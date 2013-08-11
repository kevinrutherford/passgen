require 'sinatra/base'
require 'haml'

require_relative 'domain/generates_passphrase'

class PassGen < Sinatra::Base

  get '/' do
    phrase = GeneratesPassphrase.new(params[:style]).run
    haml :index, locals: {
      passphrase: phrase
    }
  end

  get '/passphrase' do
    phrase = GeneratesPassphrase.new(params[:style]).run
    haml :index, locals: {
      passphrase: phrase
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

