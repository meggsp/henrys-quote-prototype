class CustomerMailer < ActionMailer::Base
  default from: "meggsp@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.signup_confirmation.subject
  #
  def signup_confirmation(customer)

    @mail = email
    @password = password
    @customer = Customer
    @greeting = "Hi"

    mail to: "meggsp@gmail.com", subject: "New Customer Confirmation"
  end
end
