class AddNameToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :mobile, :integer
    add_column :users, :gender, :string
    add_column :users, :dob, :integer
  end
end
