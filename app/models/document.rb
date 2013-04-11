#encoding : utf-8
class Document
  include Mongoid::Document
  include Mongoid::Timestamps
  #power the id
  include Mongoid::Slug
  field :name, type: String
  slug  :name

  mount_uploader :doc, FileUploader
end
