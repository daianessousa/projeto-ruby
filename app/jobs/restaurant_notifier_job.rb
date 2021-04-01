class RestaurantNotifierJob < ApplicationJob
  queue_as :default

  def perform(customer_id)
    sleep 5
    user = User.find(costumer_id)
    puts 'HELLO FROM SIDEKIQ'
    puts 'Pedido criado por #{user.email}'
  end
end
