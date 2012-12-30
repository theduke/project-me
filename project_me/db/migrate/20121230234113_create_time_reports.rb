class CreateTimeReports < ActiveRecord::Migration
  def change
    create_table :time_reports do |t|
      t.datetime :started
      t.datetime :stopped
      t.references :task

      t.timestamps
    end
    add_index :time_reports, :task_id
  end
end
