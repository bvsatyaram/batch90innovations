class AddProjectDetailsToInnovations < ActiveRecord::Migration
  def change
    add_column :innovations, :project_name, :string
    add_column :innovations, :problem, :text
    add_column :innovations, :solution, :text
    add_column :innovations, :summary, :text
  end
end
