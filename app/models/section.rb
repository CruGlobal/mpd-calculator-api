class Section  < Fe::Pages

  validates_length_of :label, maximum: 200

end