class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string "first_name", :limit => 25
      t.string "last_name", :limit => 25
      t.string "email", :default => '', :null =>  false
      t.string "password", :limit => 25

      t.timestamps
    end
  end
end
