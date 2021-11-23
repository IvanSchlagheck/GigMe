class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.date :starts_at
      t.date :ends_at
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
