class Article < ActiveRecord::Base

  belongs_to :user
  ratyrate_rateable 'link'
end
