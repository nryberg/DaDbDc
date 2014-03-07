class Upload
  include MongoMapper::Document

  mount_uploader :schema, SchemaUploader


end
