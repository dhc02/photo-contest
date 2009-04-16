class CreateEntries < ActiveRecord::Migration
  def self.up
    create_table :entries do |t|
      t.string :title
      t.string :photog
      t.string :photog_link
      t.text :desc
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_uploaded_at
      t.timestamps
    end
  end
  
  def self.down
    drop_table :entries
  end
end
