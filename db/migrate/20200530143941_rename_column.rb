class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :places_id, :place_id
  end
end
