class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def antiflood (not_now = false)
    antiflood = 5 # in seconds
    time = Time.new.to_i

    if session[:antiflood].nil?
      session[:antiflood] = time
      true
    else
      if session[:antiflood] + antiflood < time
        session[:antiflood] = time
        true
      else
        warning = 'Nie możesz teraz wykonać tej akcji. Poczekaj ' + antiflood.to_s + ' sekund'
        not_now ? flash[:warning] = warning : flash.now[:warning] = warning
        session[:antiflood] = time
        false
      end
    end
  end
end
