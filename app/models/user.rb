class User < ApplicationRecord
    has many :pictures
    validates :name, presence: true
    validates :email, presence: true
end
