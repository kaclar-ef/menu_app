class CostsController < ApplicationController
  def new
    @cost = Cost.new
    @menu = Menu.find(params[:menu_id])
  end

  def create
    @menu = Menu.find(params[:menu_id])
    amount = Amount.where(weight_per_ten: params[:menu][:weight_per_ten]).first_or_initialize
    amount.save
    
    cost = Cost.new(menu_id: @menu.id, amount_id: amount.id, ingredient_id: params[:menu][:ingredient_id])

    if cost.save
      redirect_to new_menu_cost_path(@menu.id)
    else
      render "new"
    end
  end
  
end
