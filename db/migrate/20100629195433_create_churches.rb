class CreateChurches < ActiveRecord::Migration
  def self.up
    create_table :churches do |t|
      t.string		:name
      t.string		:church_type
      t.text		:description
      t.text		:history
      t.string		:country
      t.string		:photo_file_name
      t.string		:photo_content_type
      t.integer		:photo_file_size
      t.timestamps
    end
  end

  def self.down
    drop_table :churches
  end
end
