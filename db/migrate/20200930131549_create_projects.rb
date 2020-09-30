class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.float :target
      t.date :due_date

      t.timestamps
    end
  end
end
