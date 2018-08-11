class SecretsController < ApplicationController
  before_action :logged_in

    def show
      if session[:name] != params[:name]
        redirect_to controller: 'sessions', action: 'new'
      end
    end



  

end
