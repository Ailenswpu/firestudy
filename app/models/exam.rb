#encoding : utf-8
class Exam
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :title, type: String
  field :score, type: Integer
  field :category, type: String

  slug :title

  has_many :questions,dependent: :destroy
end
