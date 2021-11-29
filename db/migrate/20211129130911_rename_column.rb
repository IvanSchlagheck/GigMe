class RenameColumn < ActiveRecord::Migration[6.0]
  def change
    change_table :events do |t|
      t.rename :starts_at, :start_time
      t.rename :ends_at, :end_time
  end
end
