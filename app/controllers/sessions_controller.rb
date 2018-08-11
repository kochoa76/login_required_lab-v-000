class SessionsController < ApplicationController


  def new
  end

  def create
    return redirect_to(controller: 'sessions', action: 'new') if !params[:name] || params[:name].empty?
      session[:name] = params[:name]
      redirect_to controller: 'sessions', action: 'welcome'
    end
  end

  def welcome
    if !logged_in
      redirect_to '/login'
    end
  end

  private
  def logged_in
      if !params[:name] || params[:name] == ""

        redirect_to '/login'
      else
      session[:name] = params[:name]
    end
  end

end
