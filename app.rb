require_relative 'config/environment'
require_relative 'models/model.rb' 

class App < Sinatra::Base

  get '/' do
    erb :equality_form
  end

  post '/' do
    @myresult = equality_quiz_question1(params[:question1])
    @myresult = equality_quiz_question2(params[:question2])
    @myresult = equality_quiz_question3(params[:question3])
    erb :results
  end 
end 
