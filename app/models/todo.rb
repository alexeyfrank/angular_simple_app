class Todo < ActiveRecord::Base
  attr_accessible :finished, :title

  #validates :title, length: { minimum: 8 }
end
