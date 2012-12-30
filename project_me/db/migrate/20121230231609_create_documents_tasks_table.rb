class CreateDocumentsTasksTable < ActiveRecord::Migration
  def up
    create_table :documents_tasks, :id => false do |t|
        t.references :document
        t.references :task
    end
    add_index :documents_tasks, [:task_id]
  end

  def down
    drop_table :documents_tasks
  end
end
