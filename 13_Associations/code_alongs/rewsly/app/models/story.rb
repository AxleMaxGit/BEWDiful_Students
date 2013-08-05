class Story < ActiveRecord::Base
  validates :headline, :content, :presence => true
end
