class Admin < ActiveRecord::Base

  belongs_to :person
  belongs_to :ministry

end