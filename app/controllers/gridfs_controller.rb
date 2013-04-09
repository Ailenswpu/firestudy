#encoding : utf-8
require 'mongo'
class GridfsController < ActionController::Metal

  def serve
    gridfs_path = env["PATH_INFO"].gsub("/uploads/", "")
    database = Mongoid::Config.sessions[:default]['database']
    begin
      gridfs_file = Mongo::GridFileSystem.new(Mongo::DB.new(database, Mongo::Connection.new("localhost"))).open(gridfs_path, 'r')
      self.response_body = gridfs_file.read
      self.content_type = gridfs_file.content_type
    rescue Exception => e
      self.status = :file_not_found
      Rails.logger.debug { "#{e}" }
      self.content_type = 'text/plain'
      self.response_body = ''
      raise e
    end
  end
end
