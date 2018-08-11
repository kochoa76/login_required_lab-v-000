class SecretsController < ApplicationController
  before_action :logged_in
  
    def show
      if !logged_in
        redirect_to controller: 'sessions', action:'new'
      end

    end



    private

    def logged_in
      if !params[:name] || params[:name] == ""
        redirect_to controller: 'sessions', action:'new'
      else
      session[:name] = params[:name]
      redirect_to welcome page
    end
  end 

end
