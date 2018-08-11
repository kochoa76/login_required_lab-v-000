class SessionsController < ApplicationController


  def new
  end

  def create
    if !params[:name] || params[:name]==""
      redirect_to '/login'
    else
      session[:name] = params[:name]
      redirect_to '/welcome'
    end
  end 

  def welcome
    if logged_in
      redirect_to controller: 'secrets', action: 'show'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end
end
