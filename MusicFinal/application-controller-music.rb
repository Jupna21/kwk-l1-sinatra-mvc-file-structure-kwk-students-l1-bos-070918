require 'bundler'
Bundler.require
require_relative 'models/questions-music'

class MyApp < Sinatra::Base

 get'/' do
  erb :music_index
 end

# get '/questions' do
#   erb :questions
# end


 post  '/results' do
   answers = params.values
   
   if answers[0] == "1"
     erb :happy
   elsif answers[0] == "2" 
    erb :trappy
    elsif answers[0] == "3"
     erb :peaceful
   elsif answers[0] == "4" 
    erb :sad
  end
  
end
   
   
  # @total= 0
  # answers.each do |answer|
  #   @total += answer.to_i
  # end
  # puts @total

  # @genre = genre_chooser(@total)
  # if @genre == "Happy"
  #   erb :happy
  # elsif @genre == "Trappy"
  #   erb :trappy
  # elsif @genre == "Peaceful"
  #   erb :peaceful
  #   elsif @genre == "Sad"
  #   erb :sad
  # end

end
