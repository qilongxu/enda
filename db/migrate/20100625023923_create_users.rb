class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
	t.integer	:church_id
	t.integer	:group_id
	t.string	:first_name
	t.string	:last_name
	t.string	:email, 	:default => "", :null => false
	t.string	:encrypted_password, :limit => 128, :default => "", :null => false
	t.string	:password_salt, 	:default => "", :null => false
	t.string	:reset_password_token
	t.string	:remember_token
	t.string	:remember_created_at
	t.integer	:sign_in_count
	t.datetime	:current_sign_in_at
	t.datetime	:last_sign_in_at
	t.string	:current_sign_in_ip
	t.string	:last_sign_in_ip	
      t.timestamps
    end
    
    add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  end

  def self.down
    drop_table :users
  end
end
