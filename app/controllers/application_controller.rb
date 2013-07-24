class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :page_validation, :using_igb?, :trust?, :current_char
  private 
  def news
    if ! session["news"] or session["news"] < News.fresh.updated_at
      flash.now[:info] = News.fresh.text.html_safe
      session["news"] = Time.now
    end
  end
  def page_validation
    if params[:page].numeric? == false 
      params[:page] = 1
    elsif params[:page].to_i <= 0
      params[:page] = 1
    end
  end
  def using_igb?  
    if request.headers["HTTP_USER_AGENT"] =~ /EVE-IGB$/
      session[:igb] = true
    end
  end
  def trust?
    if request.headers["HTTP_EVE_TRUSTED"] == "Yes"
      @trust = true
    end
  end
  def current_char
    if using_igb?
      id = request.headers["HTTP_EVE_CHARID"]
      name = request.headers["HTTP_EVE_CHARNAME"]
      char = { id: id, name: name}
      session[:char] = char
      @char = char
    else
      return nil
    end
  end  
end

class String
  def numeric?
    Float(self) != nil rescue false
  end
end
