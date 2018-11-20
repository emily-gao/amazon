class ProductsController < ApplicationController

  def index
    unless params[:q]
      params[:q] = {} # defaults
      params[:q][:created_at_gt] = 30.days.ago
      params[:q][:created_at_lt] = Time.zone.tomorrow
    end
    @products_query = Product.ransack(params[:q])
    @products = @products_query.result(distinct: true)
      .includes(:department, :promotion)
      .page(params[:page]).per(params[:limit])
  end

end
