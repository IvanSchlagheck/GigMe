class AddGigEndToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :gig_end, :time
  end
end
