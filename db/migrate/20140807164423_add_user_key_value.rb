class AddUserKeyValue < ActiveRecord::Migration
  def change
    create_table :user_key_values do |t|
      t.string :key
      t.string :value
      t.integer :user_id
      t.timestamps
    end
  end
end