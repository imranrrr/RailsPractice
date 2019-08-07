class Emp < ActiveRecord::Base

has_many :users

validates :username, presence: true, length:{minimum: 4, maximum: 10}, uniqueness: true

VALID = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
validates :emial, presence: true, uniqueness: true,
           format:{with: VALID}


end
