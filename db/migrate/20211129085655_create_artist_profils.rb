class CreateArtistProfils < ActiveRecord::Migration[6.0]
  def change
    create_table :artist_profils do |t|
      t.string :artistname
      t.string :genre
      t.string :instagram
      t.string :bandcamp
      t.string :soudcloud
      t.string :youtube
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
