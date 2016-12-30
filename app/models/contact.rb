class Contact
    include ActiveModel::Model

    attr_accessor :name, :email, :gender, :subject, :message

    validates :name, :allow_blank => true, length: { minimum: 2, maximum: 35 }
    validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
    validates :gender, :allow_blank => true, acceptance: { accept: %w{M K} }
    validates :subject, presence: true, length: { minimum: 5, maximum: 50 }
    validates :message, presence: true, length: { minimum: 5, maximum: 1000 }
end