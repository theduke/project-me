class CreateWikiPages < ActiveRecord::Migration
  def change
    create_table :wiki_pages do |t|
      t.string :title
      t.text :body
      t.references :project

      t.timestamps
    end
    add_index :wiki_pages, :project_id
  end
end
