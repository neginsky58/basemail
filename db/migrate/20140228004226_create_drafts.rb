class CreateDrafts < ActiveRecord::Migration
  def change
    create_table :drafts do |t|
      t.string :to
      t.string :subject
      t.text :body
      t.attachment :file

      t.timestamps      
    end
  end
end
