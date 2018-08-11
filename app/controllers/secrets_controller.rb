class SecretsController < ApplicationController
  before_action :logged_in

    def show
      redirect_to controller: 'sessions', action: 'new' unless session[:name]
      end

    end



    private

    def logged_in

      if params[:name]== ""
        redirect_to controller: 'sessions', action: 'new'
      else
      session[:name] = params[:name]
    end
  end

end
