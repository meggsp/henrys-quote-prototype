class QuoteMailer < ActionMailer::Base
  #default from: "from@example.com"
    default to: "meggsp@gmail.com"

                def contact_email(name, email, body)
                  @name = name
                  @email = email
                  @body = body`enter code here`

                  mail(from: email, subject: 'Contact Request')
                end
end
