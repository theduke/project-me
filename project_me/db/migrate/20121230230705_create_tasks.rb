class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.datetime :duedate
      t.string :status
      t.references :project

      t.timestamps
    end
    add_index :tasks, :project_id
  end
end
