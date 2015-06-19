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

require 'test_helper'

class InnovationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
