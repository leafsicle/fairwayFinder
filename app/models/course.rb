class Course < ApplicationRecord
  has_many :holes, :dependent => :delete_all

end
