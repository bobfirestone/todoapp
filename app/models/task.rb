class Task < ActiveRecord::Base
  # attr_accessible :item, :description, :priority
  validates_presence_of :item, :priority
  default_scope :order => 'tasks.priority DESC'
end
