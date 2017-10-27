require_relative 'user'
require_relative 'purchase'
require_relative 'users_collection'
require_relative 'purchases_collection'
require_relative 'api_processor'
require_relative 'data_storage'

class Calculator
  attr_reader :data, :api_processor

  def initialize(api_processor = ApiProcessor.new)
    @api_processor = api_processor
    @data = @api_processor.get_data
  end

  def total_spend(email)
    user = @data.users_collection.get_user_by_email(email)
    purchases = @data.purchases_collection.get_purchases_by_user_id(user.id)
    sum = 0
    purchases.map { |purchase| sum += purchase.spend.to_f }
    sum
  end

  def average_spend(email)

  end

  def most_loyal


  end

  def highest_value


  end

  def most_sold

  end
end