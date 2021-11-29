class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.references :review_giver, foreign_key: { to_table: :users }
      t.references :review_receiver, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
