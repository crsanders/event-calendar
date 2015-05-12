class Event < ActiveRecord::Base
    belongs_to :user
    validates :name, presence: true, length: { maximum: 50 }
    validates :date, presence: true
    validates :time, presence: true
    validates :description, presence: true
end
