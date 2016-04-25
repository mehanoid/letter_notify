require 'notifier'

module LetterNotify
  class EmailInterceptor
    def self.delivering_email(message)
      Notifier.notify(
          title: "#{Rails.application.class.parent_name}: new email",
          message: <<-BODY.strip_heredoc,
                    from: #{message.from}
          to: #{message.to}
          subject: #{message.subject}
          BODY
      )
    end
  end
end