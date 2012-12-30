class TimeReport < ActiveRecord::Base
  belongs_to :task
  attr_accessible :started, :stopped
end
