class Page < ActiveRecord::Base
  belongs_to :user
  attr_accessible :name, :url
end