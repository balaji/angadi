# campaign.rb
# model for campaign
class Campaign < ActiveRecord::Base
  self.primary_key = 'id'

  def self.active
    Campaign.where('start_time <= ? AND end_time >= ?',
                   Time.current, Time.current)
  end
end
