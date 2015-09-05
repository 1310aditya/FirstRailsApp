class AddAgeToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :address, :text
    add_column :users, :mobile, :integer
    add_column :users, :is_player, :boolean
    add_column :users, :exp, :integer
    add_column :users, :desc, :text
    add_column :users, :min_bid, :integer
    add_column :users, :max_bid, :integer
    add_attachment :users, :image
  end
end
