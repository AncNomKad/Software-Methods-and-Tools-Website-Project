class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def compare
    @ships = Ship.all
    @ship1 = Ship.find(params[:format])
    @ship = Ship.find(params[:format])
  end

  def showroom
    @ships = Ship.all
     @all_ship_classes = Ship.ship_classes
    if params[:ship_classes] == nil and session[:ship_classes] == nil
      session[:ship_classes] = @all_ship_classes
    elsif params[:ship_classes] != nil
      session[:ship_classes] = params[:ship_classes]
    end    
   if params[:sort] == nil and session[:sort] == nil
      session[:sort] = "id"
    elsif params[:sort] != nil
    session[:sort] = params[:sort]
    end 

    @ships = Ship.sort_by(session[:ship_classes], session[:sort])

    @ships = Ship.all
    @names = Ship.pluck('ship_label')
  end

  def info
    @users = User.all
  end

  def ship
    @ships = Ship.all
    @ship = Ship.find(params[:format])
  end

end
