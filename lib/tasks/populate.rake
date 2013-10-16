namespace :db do
  desc "Fill in default user account"
  task populate: :environment do
    puts "RAILS_ENV is #{::Rails.env}"
    u = User.new(email: "test@example.com", password: "mypassword")
    u.save!(validate: false)
    puts "Created #{u.email} with password #{u.password}"
  end
end
