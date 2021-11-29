class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :artist_profils, :soudcloud, :soundcloud
  end
end
