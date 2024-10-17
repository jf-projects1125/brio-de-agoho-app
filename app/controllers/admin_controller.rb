class AdminController < ApplicationController
  layout 'admin'
  before_action :authenticate_admin!

  def index
    @pending = Sale.pending.count
    @paid = Sale.paid.count
  end
end