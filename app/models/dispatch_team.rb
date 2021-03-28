class DispatchTeam < ActiveRecord::Base
    has_many :dispatchers
    has_many :drivers
    has_many :loads, through: :dispatchers
end