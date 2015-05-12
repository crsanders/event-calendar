class AddDateToEvent < ActiveRecord::Migration
  def change
    add_column :events, :event, :datetime
  end
end
