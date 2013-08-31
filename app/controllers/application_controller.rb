class ApplicationController < ActionController::Base
  after_filter :store_location

  def set_my_language
    if session[:mylanguage]
      puts 'mylanguage is set to ' + session[:mylanguage]
    end
    session[:mylanguage]='My Language Value'
    redirect_to :back
  end

  private
  def store_location
    session[:return_to] = request.fullpath
  end

  def clear_stored_location
    session[:return_to] = nil
  end

  def redirect_back_or_to(alternate)
    redirect_to(session[:return_to] || alternate)
    clear_stored_location
  end

  protect_from_forgery

  def after_sign_in_path_for(resource)
    sign_in_url = url_for(:action => 'new', :controller => 'sessions', :only_path => false, :protocol => 'http')
    if request.referer == sign_in_url
      super
    else
      stored_location_for(resource) || request.referer || root_path
    end
  end

end
