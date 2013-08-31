class AddSidAndNameToUsers < ActiveRecord::Migration
  def change
  	add_column :users,  :sid, :string
  	add_column :users,  :name, :string
  end
end
