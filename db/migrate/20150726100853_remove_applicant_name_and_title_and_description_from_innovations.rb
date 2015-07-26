class RemoveApplicantNameAndTitleAndDescriptionFromInnovations < ActiveRecord::Migration
  def change
    remove_column :innovations, :applicant_name, :string
    remove_column :innovations, :title, :string
    remove_column :innovations, :description, :text
  end
end
