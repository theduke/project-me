class Document < ActiveRecord::Base
  attr_accessible :description, :mimeType, :path, :public, :title
end
