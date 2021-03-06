class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.integer		:church
      t.integer		:user	#as for leader
      t.string		:name
      t.text		:description
      t.string		:logo_file_name
      t.string		:logo_content_type
      t.integer		:logo_file_size
      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
