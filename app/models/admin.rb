class Admin < ActiveRecord::Base

  belongs_to :person, class_name: Fe::Person
  belongs_to :ministry

end