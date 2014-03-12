class QuoteMailer < ActionMailer::Base
  default from: "meggsp@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.customer_mailer.signup_confirmation.subject
  #
  def quote_confirmation
    @greeting = "Hi"

    mail to: "meggsp@gmail.com", subject: "New Quote Confirmation"
  end
end
