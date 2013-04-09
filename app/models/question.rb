#encoding : utf-8
class Question
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Slug

  field :title, type: String
  field :answer, type: String
  field :option, type: String
  field :exam_id, type: String

  slug :title

  belongs_to :exam
end
