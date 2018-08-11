class SessionsController < ApplicationController


  def new
  end

  def create

    if params[:name]== ""
    redirect_to(controller: 'sessions', action: 'new')
    else
      logged_in
      session[:name] = params[:name]
    redirect_to controller: 'sessions', action: 'welcome'
    end
  end

  def welcome
    redirect_to controller: 'sessions', action: 'new' unless session[:name]
  end

  def destroy
   session.delete :name
   redirect_to controller: 'sessions', action: 'new'
 end

  private
    def logged_in
      if params[:name] == ""
      redirect_to controller: 'sessions', action: 'new'
      else
      session[:name] = params[:name]
    end
  end

end
