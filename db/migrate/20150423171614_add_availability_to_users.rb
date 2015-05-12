class AddAvailabilityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :availability_start, :time
    add_column :users, :availability_end, :time
  end
end
