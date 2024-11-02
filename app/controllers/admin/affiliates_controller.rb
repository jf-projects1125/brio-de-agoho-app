class Admin::AffiliatesController < AdminController
  def index
    @admin_affiliates = Affiliate.all
  end

  def new
    @admin_affiliate = Affiliate.new
  end

  def show
    @affiliate = Affiliate.find(params[:id])

    if @affiliate.birthday.present?
      now = Time.now.utc.to_date
      @age = now.year - @affiliate.birthday.to_date.year

      if (now.month < @affiliate.birthday.to_date.month)
        @age = @age - 1
      end
    end
  end

  def create
    @admin_affiliate = Affiliate.new(admin_affiliate_params)

    respond_to do |format|
      if @admin_affiliate.save
        format.html { redirect_to admin_affiliates_url(@admin_affiliate), notice: "Affiliate was successfully created." }
        format.json { render :show, status: :created, location: @admin_affilliate }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_affilliate.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  def admin_affiliate_params
    params.require(:affiliate).permit(:fullname, :email, :password, :password_confirmation, :address, :mobile)
  end
end
