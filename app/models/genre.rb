class Genre < ActiveRecord::Base
  has_many :stories
end
