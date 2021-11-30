class AddAboutToVenues < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :about, :text
  end
end
