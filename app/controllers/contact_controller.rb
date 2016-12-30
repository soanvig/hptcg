class ContactController < ApplicationController
    def form
        @contact = Contact.new
        render 'contact'
    end

    def mail
        @contact = Contact.new(mail_params)
        if antiflood
            if @contact.valid?
                Mailer.contact_email(@contact).deliver
                flash.now[:success] = 'Email został wysłany pomyślnie.'
            else
                flash.now[:error] = 'Email nie mógł zostać wysłany z powodu błędów.'
            end
        end
        render 'contact'
    end

    private
    def mail_params
        params.require(:email).permit(:name, :gender, :email, :subject, :message)
    end
end
