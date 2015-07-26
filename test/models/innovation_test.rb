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

require 'test_helper'

class InnovationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
