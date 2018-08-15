class User < ApplicationRecord
  has_many :word_lists, dependent: :destroy
  has_many :lessons, dependent: :destroy
  has_many :results, through: :lessons
  has_many :active_relationships, class_name: Relationship.name,
    foreign_key: "follower_id",
    dependent: :destroy
  has_many :passive_relationships, class_name: Relationship.name,
    foreign_key: "followed_id",
    dependent: :destroy
end
