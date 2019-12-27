# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :text
#  name       :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
  belongs_to :user 
  has_many :comments, dependent: :delete_all
  has_many :post_tag_relations
  has_many :tags, through: :post_tag_relations
  
  validates :name,presence: true, length: {maximum: 10}
  validates :title,presence: true, length: {maximum: 30}
  validates :body,presence: true, length: {maximum: 1000}
end
