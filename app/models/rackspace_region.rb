class RackspaceRegion < ActiveRecord::Base
  has_many :rackspace_account_metadata
  has_many :users, :through => :rackspace_account_metadata
  
  accepts_nested_attributes_for :rackspace_account_metadata

  validates_uniqueness_of :name
  validates_presence_of :name, :host
  validates_format_of :name, :with => /[a-z]{2}/, :message => "expected two lowercase letters for the region code"
  attr_accessible :name, :host
end
