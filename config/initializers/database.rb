db_config = YAML::load(File.read("#{Rails.root}/config/database.yml"))
 
mongo = db_config[Rails.env]
MongoMapper.connection = Mongo::Connection.new(mongo['hostname'])
MongoMapper.database = mongo['database']
