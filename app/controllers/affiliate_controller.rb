class AffiliateController < ApplicationController
  layout 'affiliate'
  before_action :authenticate_affiliate!

  def index
  end
end