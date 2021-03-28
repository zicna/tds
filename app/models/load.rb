class Load < ActiveRecord::Base
    belongs_to :driver
    belongs_to :dispatch
    belongs_to :dispatch_team
end