class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :room
      t.string :location
      t.integer :budget
      t.integer :time_frame
      t.boolean :sustainability
      t.text :description
      t.string :img_url
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
