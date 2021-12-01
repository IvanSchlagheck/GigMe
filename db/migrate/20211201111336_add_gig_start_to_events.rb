class AddGigStartToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :gig_start, :time
  end
end
