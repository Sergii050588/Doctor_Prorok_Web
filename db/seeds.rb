unless User.count == 1
  admin = User.new(email: "dr.fint", password: ENV['SUPERADMIN_PASSWORD'],
                  password_confirmation:ENV['SUPERADMIN_PASSWORD'])

  admin.save
  admin.errors.each { |e| p e }
end
