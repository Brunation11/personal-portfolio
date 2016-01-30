class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.string :technologies, null: false
      t.string :future_plans
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
