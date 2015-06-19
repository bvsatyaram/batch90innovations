class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:land, :login]

  def land
    redirect_to apply_path if user_signed_in?
  end

  def apply
    @innovation = current_user.innovation
    @innovation.final_submit = false
    @innovation.agree_terms = false
  end

  def login
  end
end
