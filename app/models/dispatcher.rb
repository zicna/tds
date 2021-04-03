class Dispatcher <ActiveRecord::Base
    belongs_to :dispatch_team
    has_many :loads
    has_many :drivers, :through => :loads

    #validations on the model
    validates :username,    :presence => true,
                            :uniqueness => true
    validates :email,       :presence => true,
                            :uniqueness => true,
                            :format => {:with => /\w+@\w+\.\w+/}
    validates :password,    :presence => true
end