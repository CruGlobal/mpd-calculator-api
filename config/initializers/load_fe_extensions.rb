Dir.glob(Rails.root.join('app','models','fe_extensions','*').to_s).each do |file|
  require file
end