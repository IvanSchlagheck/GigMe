class AddRequirementsToVenues < ActiveRecord::Migration[6.0]
  def change
    add_column :venues, :requirements, :text
  end
end
