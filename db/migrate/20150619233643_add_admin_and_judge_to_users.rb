class AddAdminAndJudgeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :judge, :boolean, default: false
  end
end
