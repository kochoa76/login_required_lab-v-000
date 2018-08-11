class SessionsController < ApplicationController


  def new
  end

  def create
  end

  def welcome
    if logged_in
      redirect_to controller: 'secrets', action: 'show'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end 
end
