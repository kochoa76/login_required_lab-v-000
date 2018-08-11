class SessionsController < ApplicationController


  def new
  end

  def create
    if !params[:name] || params[:name].empty?
    redirect_to(controller: 'sessions', action: 'new')
    else
      session[:name] = params[:name]
    redirect_to controller: 'sessions', action: 'welcome'
    end
  end

  def welcome
    if !logged_in
      redirect_to controller: 'sessions', action: 'new'
    end
  end

  def destroy
   session.delete :name
   redirect_to controller: 'sessions', action: 'new'
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
