class SecretsController < ApplicationController
  before_action :logged_in

    def show
      if !logged_in 
        
    end



    private

    def logged_in

      if params[:name]== "" || params[:name]==nil 
        redirect_to controller: 'sessions', action: 'new'
      else
      session[:name] = params[:name]
    end
  end

end
