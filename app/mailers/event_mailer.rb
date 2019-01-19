class EventMailer < ApplicationMailer

  def subscription(event, subscription)
    @email = subscription.user_email
    @name = subscription.user_name
    @event = event

    mail to: event.user.email, subject: "#{t('event_mailer.subscription.title')} #{event.title}"
  end

  def comment(event, comment, email)
    @event = event
    @comment = comment

    mail to: email, subject: "#{t('event_mailer.comment.title')} #{event.title}"
  end

  def photo(event, photo, email)
    @event = event
    @photo = photo

    mail to: email, subject: "#{t('event_mailer.photo.photo')} #{event.title}"
  end
end