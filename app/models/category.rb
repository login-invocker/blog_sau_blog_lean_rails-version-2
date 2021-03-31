class Category < ApplicationRecord
    has_many :posts
    validates :name, presence: {message: "Không được để trống"},  uniqueness: {message: "đã tồn tại"}
end