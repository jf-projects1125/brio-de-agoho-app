class Admin::SalesController < AdminController
  def index
    @admin_sales = Sale.all
  end
end
