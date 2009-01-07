class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username, :within => 4..20
      t.string :email
      t.string :hashed_password
      t.string :salt
      t.integer :grade_id, :null => false, :default => 1
      t.integer :score, :null => false, :default => 30
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
