class Type < ActiveRecord::Base
  attr_accessible :name

  has_many :galleries

  validates_presence_of :name

  default_scope :order => "name ASC"

end
