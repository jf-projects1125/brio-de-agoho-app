class ApplicationController < ActionController::Base
  def after_sign_in_path_for scope
    affiliate_path
  end

  def after_sign_out_path_for scope
    new_affiliate_session_path
  end
end
