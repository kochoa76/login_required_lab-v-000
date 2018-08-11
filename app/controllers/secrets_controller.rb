class SecretsController < ApplicationController
  before_action :logged_in

    def show
      if !logged_in
      redirect_to controller: 'sessions', action: 'new'
    end



    private

    def logged_in

      if params[:name]== "" || params[:name]==nil
        redirect_to controller: 'sessions', action: 'new'
    end
  end

end
