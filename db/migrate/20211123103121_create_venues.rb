class CreateVenues < ActiveRecord::Migration[6.0]
  def change
    create_table :venues do |t|
      t.string :contact_details
      t.string :address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
