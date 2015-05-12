class AddAvailableToEvents < ActiveRecord::Migration
  def change
    add_column :events, :available, :integer
  end
end
