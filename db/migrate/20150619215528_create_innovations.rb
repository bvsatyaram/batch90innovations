class CreateInnovations < ActiveRecord::Migration
  def change
    create_table :innovations do |t|
      t.references :user, index: true, foreign_key: true
      t.string :applicant_name
      t.string :title
      t.text :description
      t.datetime :submitted_at

      t.timestamps null: false
    end
  end
end
