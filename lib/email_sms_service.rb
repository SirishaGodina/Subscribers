class EmailSmsService
require 'httparty'
  EMAIL_SMS_SERVICE_URL = 'http://localhost:3000'
  def self.users
    HTTParty.get("#{EMAIL_SMS_SERVICE_URL}/users")
  end

  def self.create(user)
   response = HTTParty.post("#{EMAIL_SMS_SERVICE_URL}/users/create", :body => {:user => user})
  end

  def self.login(user)
   response = HTTParty.post("#{EMAIL_SMS_SERVICE_URL}/users/verify_to", :body => {:user => user})
  end
end