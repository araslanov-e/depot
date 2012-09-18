# encoding: utf-8
class OrderNotifer < ActionMailer::Base
  default from: "Sam Ruby <depot@example.com>"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifer.received.subject
  #
  def received(order)
    @order = order

    mail to: order.email, subject: "Подтверждение заказа в Pragmatic Store"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_notifer.shipped.subject
  #
  def shipped(order)
    @order = order

    mail to: order.email, subject: "Заказ из Pragmatic Store отправлен"
  end
end
