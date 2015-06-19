# == Schema Information
#
# Table name: innovations
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  applicant_name :string
#  title          :string
#  description    :text
#  submitted_at   :datetime
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Innovation < ActiveRecord::Base
  belongs_to :user

  attr_accessor :final_submit, :agree_terms

  def submitted?
    self.submitted_at.present?
  end

  def submit!
    update_attribute(:submitted_at, Time.now)
  end
end
