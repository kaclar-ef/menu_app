class MenusController < ApplicationController
  def index
    @menus = Menu.all
  end

  def new
    @menu = Menu.new
  end

  def create
    @menu = Menu.new(menu_params)
    if @menu.save
      redirect_to menus_path
    else
      render "new"
    end
  end
  

  def show
  end

  def edit
    @menu = Menu.find(params[:id])
  end

  private
  def menu_params
    params.require(:menu).permit(:name, :menu_type_id, :color_id)
  end
  
end
