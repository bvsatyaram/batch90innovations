class InnovationsController < ApplicationController
  before_action :authenticate_user!

  def update
    @innovation = current_user.innovation
    @innovation.update_attributes(innovation_params)
    redirect_to apply_path, notice: "Application form saved scuccessfully"
  end

private
  def innovation_params
    params.require(:innovation).permit(:applicant_name, :title, :description)
  end
end
