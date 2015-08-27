require_relative "models/model.rb"
require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  post '/results' do
    molly=Drug.new("Molly is a psychoactive drug of the substituted methylenedioxyphenethylamine and substituted amphetamine classes of drugs.","You would take it by a tablet, or inhaling crushed powder.","The street price 80-200$ per gram.","The deathrate is 50-80 people yearly.","https://upload.wikimedia.org/wikipedia/commons/7/7e/Ecstasy_monogram.jpg")
    
    if params[:drug] == "molly"
      @drug=molly
    end



    erb :results
  end

end