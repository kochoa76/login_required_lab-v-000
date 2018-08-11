class SecretsController < ApplicationController
  before_action :logged_in

    def show
    end



    private

    def logged_in
      if !params[:name] || params[:name] == ""
        redirect_to controller: 'sessions', action: 'new'
      else
      session[:name] = params[:name]
    end
  end

end
