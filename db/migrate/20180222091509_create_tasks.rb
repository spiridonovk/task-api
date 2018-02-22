class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :name
      t.text :status
      t.references :project, foreign_key: true, null: true

      t.timestamps
    end
  end
end
