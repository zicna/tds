class Dispatcher <ActiveRecord::Base
    has_secure_password

    belongs_to :team
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