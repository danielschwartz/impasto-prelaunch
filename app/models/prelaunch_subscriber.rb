class PrelaunchSubscriber < ActiveRecord::Base
  attr_accessible :artist, :birthdate, :email, :location, :name, :phone, :portfolio

  validates_presence_of :email, :message => 'Please enter your email address first.'
  validates_uniqueness_of :email, :message => 'That email is already on the list.'
  validates_format_of :email,
    :with => /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i,
    :message => 'That email address doesn\'t look right.'

  after_save :add_to_campaign_monitor, :if => :campaign_monitor_configured?

  private

  def add_to_campaign_monitor

    if artist
      list_id = PRELAUNCH_CONFIG[:campaign_monitor_artist_list_id]
    else
      list_id = PRELAUNCH_CONFIG[:campaign_monitor_user_list_id]
    end

    custom_fields = [
      { :Key => 'Phone', :Value => phone },
      { :Key => 'Portfolio', :Value => portfolio },
      { :Key => 'Birthdate', :Value => birthdate },
      { :Key => 'Location', :Value => location },
    ]

    CreateSend::Subscriber.add(list_id, email, name, custom_fields, true)
  end

  def campaign_monitor_configured?
    PRELAUNCH_CONFIG[:campaign_monitor_api_key].present?
  end
end
