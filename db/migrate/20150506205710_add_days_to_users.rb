class AddDaysToUsers < ActiveRecord::Migration
  def change
    add_column :users, :sunday_start, :time
    add_column :users, :sunday_end, :time
    add_column :users, :monday_start, :time
    add_column :users, :monday_end, :time
    add_column :users, :tuesday_start, :time
    add_column :users, :tuesday_end, :time
    add_column :users, :wednesday_start, :time
    add_column :users, :wednesday_end, :time
    add_column :users, :thursday_start, :time
    add_column :users, :thursday_end, :time
    add_column :users, :friday_start, :time
    add_column :users, :friday_end, :time
    add_column :users, :saturday_start, :time
    add_column :users, :saturday_end, :time
  end
end
