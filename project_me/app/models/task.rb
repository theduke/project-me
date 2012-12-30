class Task < ActiveRecord::Base
  belongs_to :project
  has_and_belongs_to_many :documents
  attr_accessible :description, :duedate, :status, :title
end
