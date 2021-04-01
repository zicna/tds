class Load < ActiveRecord::Base
    belongs_to :driver
    belongs_to :dispatcher
    belongs_to :team
end