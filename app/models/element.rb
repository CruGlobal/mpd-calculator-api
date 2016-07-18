class Element  < Fe::Element

  validates_length_of :label, maximum: 255


end