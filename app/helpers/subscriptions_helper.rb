module SubscriptionsHelper
  def current_user_subscriber?
    @event.subscriptions.where(user_id: current_user).present?
  end
end
