class Project < ActiveRecord::Base
  has_many :tasks
  attr_accessible :description, :status, :title
end
