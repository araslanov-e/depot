# encdoing: utf-8
class StoreController < ApplicationController

  skip_before_filter :authorize # Пропустить фильтр

  def index
    @products = Product.order(:title)
    @cart = current_cart
  end
end
