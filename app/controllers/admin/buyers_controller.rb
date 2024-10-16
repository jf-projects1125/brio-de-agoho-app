class Admin::BuyersController < AdminController
  def index
    @admin_buyers = Sale.all
  end

  def edit
    @admin_buyer = Sale.find(params[:id])
  end

  def update
    @admin_buyer = Sale.find(params[:id])

    respond_to do |format|
      if @admin_buyer.update(admin_sale_params)
        format.html { redirect_to admin_buyers_path, notice: "Sales was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_buyer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_buyer.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def admin_sale_params
    params.require(:sale).permit(:salesperson)
  end
end
