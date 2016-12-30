class Mailer < ApplicationMailer
    default :from => 'contact@hptcg.pl'

    def contact_email(email)
        @email = email
        mail( :to => 'soanvig@gmail.com',
              :subject => @email.subject
        )
    end
end
