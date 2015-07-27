# == Schema Information
#
# Table name: innovations
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  submitted_at :datetime
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  project_name :string
#  problem      :text
#  solution     :text
#  summary      :text
#

class Innovation < ActiveRecord::Base
  belongs_to :user

  scope :submitted, -> { where.not(submitted_at: nil) }

  attr_accessor :final_submit, :agree_terms

  def submitted?
    self.submitted_at.present?
  end

  def submit!
    update_attribute(:submitted_at, Time.now)
  end
end
