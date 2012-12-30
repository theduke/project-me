class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :title
      t.string :description
      t.string :path
      t.string :mimeType
      t.boolean :public

      t.timestamps
    end
  end
end
