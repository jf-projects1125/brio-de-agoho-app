class SalesController < ApplicationController
  def new
    @ref_code = params[:ref_code]
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)

    respond_to do |format|
      if @sale.save
        format.html { redirect_to sales_message_path, notice: "Sale was successfully created." }
        format.json { render :show, status: :created, location: @sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sale.errors, status: :unprocessable_entity }
      end
    end
  end

  def message
  end

  private
  def sale_params
    params.require(:sale).permit(:firstname, :lastname, :contact_no, :email, :affiliate_id, :status)
  end

end