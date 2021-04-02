class Driver < ActiveRecord::Base
    has_many :loads
    has_many :dispatchers, :through => :loads
    belongs_to :team
end