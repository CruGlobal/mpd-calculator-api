module Fe
  # prefix for database tables
  mattr_accessor :table_name_prefix
  self.table_name_prefix = ''

  mattr_accessor :answer_sheet_class
  self.answer_sheet_class = 'Budget'

  mattr_accessor :from_email
  self.from_email = 'help@cru.org'

  mattr_accessor :never_reuse_elements
  self.never_reuse_elements = true

  mattr_accessor :date_format
  self.date_format = 'dd/mm/yy'
end