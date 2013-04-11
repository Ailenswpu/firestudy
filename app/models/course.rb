#encoding : utf-8
class Course
  include Mongoid::Document
  include Mongoid::Timestamps
  #power the id
  include Mongoid::Slug


  field :title, type: String
  field :description, type: String
  field :category ,type: String
  slug  :title



  mount_uploader :avatar, ImageUploader
  mount_uploader :video, VideoUploader
  mount_uploader :doc, FileUploader

  CATEGORY = %w(编程 考研 英语 公务员 瑜伽)

end
