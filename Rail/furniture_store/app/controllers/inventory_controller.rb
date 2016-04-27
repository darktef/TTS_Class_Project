class InventoryController < ApplicationController
  def all_products
  	@products = Product.all
  end

  def one_product
  	@product = Product.find(params[:id])
  end

  def by_category
  	@product = Product.where(category: params[:category])	
  end

  def all_category
  	@product = Product.group("category").count
  end

end
