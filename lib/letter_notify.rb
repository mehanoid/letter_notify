require "letter_notify/email_interceptor"
ActionMailer::Base.register_interceptor(LetterNotify::EmailInterceptor)