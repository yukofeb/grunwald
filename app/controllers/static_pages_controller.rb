class StaticPagesController < ApplicationController
  def home
  end

  def bread
    @tue_status = Bread.where(name: "kiso_signup_status_on_tuesday").first
    @sat_status = Bread.where(name: "kiso_signup_status_on_saturday").first
  end

  def cafe
  end

  def office
  end

  def search_menus
    @cafemenu_url = params[:cafemenu_url]
    render
  end
end
