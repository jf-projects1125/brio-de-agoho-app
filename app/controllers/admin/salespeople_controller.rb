class Admin::SalespeopleController < AdminController
  before_action :set_admin_salesperson, only: %i[ show edit update destroy ]

  # GET /admin/salespeople or /admin/salespeople.json
  def index
    @admin_salespeople = Salesperson.order(name: :asc)
  end

  # GET /admin/salespeople/1 or /admin/salespeople/1.json
  def show
  end

  # GET /admin/salespeople/new
  def new
    @admin_salesperson = Salesperson.new
  end

  # GET /admin/salespeople/1/edit
  def edit
  end

  # POST /admin/salespeople or /admin/salespeople.json
  def create
    @admin_salesperson = Salesperson.new(admin_salesperson_params)

    respond_to do |format|
      if @admin_salesperson.save
        format.html { redirect_to admin_salespeople_path, notice: "Salesperson was successfully created." }
        format.json { render :show, status: :created, location: @admin_salesperson }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_salesperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/salespeople/1 or /admin/salespeople/1.json
  def update
    respond_to do |format|
      if @admin_salesperson.update(admin_salesperson_params)
        format.html { redirect_to admin_salespeople_path, notice: "Salesperson was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_salesperson }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_salesperson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/salespeople/1 or /admin/salespeople/1.json
  def destroy
    @admin_salesperson.destroy!

    respond_to do |format|
      format.html { redirect_to admin_salespeople_path, status: :see_other, notice: "Salesperson was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_salesperson
      @admin_salesperson = Salesperson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def admin_salesperson_params
      params.require(:salesperson).permit(:name, :status)
    end
end
