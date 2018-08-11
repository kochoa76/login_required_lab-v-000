class SecretsController < ApplicationController
  before_action :logged_in

    def show
      if !logged_in
        redirect_to '/login'
      


      end

    end



    private

    def logged_in
    return head(:forbidden) unless session.include? :name
    end

end
