class InnovationsController < ApplicationController
  before_action :authenticate_user!

  def update
    @innovation = current_user.innovation
    @innovation.update_attributes(innovation_params)
    if params[:innovation][:final_submit] == true.to_s
      @innovation.submit!
      flash[:notice] = "Application submitted successfully"
    else
      flash[:notice] = "Application saved successfully"
    end
    redirect_to apply_path
  end

private
  def innovation_params
    params.require(:innovation).permit(:applicant_name, :title, :description)
  end
end
