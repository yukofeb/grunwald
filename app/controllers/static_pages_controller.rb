class StaticPagesController < ApplicationController
  def home
  end

  def bread
    @tue_status = Bread.where(name: "kiso_signup_status_on_tuesday").first
    @sat_status = Bread.where(name: "kiso_signup_status_on_saturday").first
  end

  def cafe
    @menus = Cafemenu.select(:name).uniq
  end

  def office
  end

  def search_menus
    @menus = Cafemenu.select(:name).uniq
  end

  def result
    @menus = Cafemenu.where(name: params[:name])
  end

  def open
  end
end
