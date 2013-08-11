require 'sinatra/base'
require 'haml'

require_relative 'domain/generates_passphrase'

class PassGen < Sinatra::Base

  get '/' do
    phrase, style = GeneratesPassphrase.new(params[:style]).run
    haml :index, locals: {
      passphrase:   phrase,
      chosen_style: style,
    }
  end

  get '/passphrase' do
    phrase, style = GeneratesPassphrase.new(params[:style]).run
    haml :index, locals: {
      passphrase:   phrase,
      chosen_style: style,
    }
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

