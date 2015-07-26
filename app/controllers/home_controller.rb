class HomeController < ApplicationController
  before_action :authenticate_user!,
    except: [:land, :login, :challenge, :judging_criteria, :application_process, :team, :faq]

  def land
    if user_signed_in?
      if current_user.admin?
        redirect_to admin_path
      elsif current_user.judge?
        redirect_to judge_path
      else
        redirect_to apply_path 
      end
    else
      render layout: "land"
    end
  end

  def challenge
    
  end

  def judging_criteria
    
  end

  def application_process
    
  end

  def team
    
  end

  def faq
    
  end

  def apply
    @innovation = current_user.innovation
    @innovation.final_submit = false
    @innovation.agree_terms = false
  end

  def login
  end

  def admin
    deny_access! unless current_user.admin?
    @innovations = Innovation.all
    @users = User.where(id: @innovations.pluck(:user_id)).group_by(&:id)
  end

  def judge
    deny_access! unless current_user.judge?
    @innovations = Innovation.submitted
  end
end
