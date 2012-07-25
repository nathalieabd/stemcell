class RackspaceAccountMetadata < ActiveRecord::Base
  belongs_to :user
  belongs_to :rackspace_region
  
  validates_uniqueness_of :user_id, :scope => [:rackspace_region_id], :message => "there can be only one rackspace account associated with a Stemcell user"

  attr_accessible :username, :api_access_key, :user_id, :rackspace_region_id
end
