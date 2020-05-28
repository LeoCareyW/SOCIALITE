class AddCoordinatesToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :ip_address, :string, default: "24.29.18.175"
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
  end
end
