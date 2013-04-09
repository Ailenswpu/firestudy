#encoding : utf-8
class Course
  include Mongoid::Document
  include Mongoid::Timestamps
  #power the id
  include Mongoid::Slug


  field :title, type: String
  field :description, type: String
  slug  :title



  mount_uploader :avatar, FileUploader
  mount_uploader :video, VideoUploader
  mount_uploader :doc, VideoUploader

end
