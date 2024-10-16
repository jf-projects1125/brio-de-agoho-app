class Admin::BuyersController < AdminController
  def index
    @admin_sales = Sale.all
  end
end
