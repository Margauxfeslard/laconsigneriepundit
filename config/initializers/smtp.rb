ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: ENV['la.consignerie01.gmail.com'],
  password: ENV['pihaxyzifqhmyrpo'],
  authentication: :login,
  enable_starttls_auto: true
}
