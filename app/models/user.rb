class User < ApplicationRecord

  belongs_to :emp
	validates :title, presence: true, length: {minimum: 3, maximum: 10}
	validates :description, presence: true, length: {minimum: 10, maximum: 40}

end
