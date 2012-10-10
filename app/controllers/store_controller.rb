# encdoing: utf-8
class StoreController < ApplicationController

  skip_before_filter :authorize # Пропустить фильтр

  def index
    if params[:set_locale]
      redirect_to store_url(locale: params[:set_locale])
    else
      @products = Product.order(:title)
      @cart = current_cart
    end
  end
end
