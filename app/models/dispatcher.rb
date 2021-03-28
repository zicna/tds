class Dispatcher <ActiveRecord::Base
    belongs_to :dispatch_team
    has_many :loads
    has_many :drivers, :through => :loads
end