class Mailer < ApplicationMailer
    default :from => 'no-reply@hptcg.eu'

    def contact_email(email)
        @email = email
        mail( :to => 'soanvig@gmail.com',
              :subject => @email.subject
        )
    end
end
