class SecretsController < ApplicationController
  before_action :logged_in

    def show
    end



    private

    def logged_in
      raise params.inspect
      if !params[:name] || params[:name].empty?
        redirect_to controller: 'sessions', action: 'new'
      else
      session[:name] = params[:name]
    end
  end

end
