require 'elasticsearch/model'

class Profile < ActiveRecord::Base


  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks
end
Profile.__elasticsearch__.create_index!
Profile.import
