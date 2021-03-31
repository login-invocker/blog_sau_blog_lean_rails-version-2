class Post < ApplicationRecord
    belongs_to :category
    validates_associated :category
    has_one :user
    validates :title,:content, presence: {message: "Không được để trống"}
end