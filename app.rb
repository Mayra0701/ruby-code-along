require_relative 'config/environment'

class App < Sinatra::Base
    
    get '/' do
        erb :index
    end

    post '/' do
    @user ={
    name: "#{params["fname"]} #{params["lname"]}",
    picture_url: "#{params["img"]}",
    birthday: "#{params["bday"]}",
    email: "#{params["email"]}"
    }
    erb :dashboard

    end


end