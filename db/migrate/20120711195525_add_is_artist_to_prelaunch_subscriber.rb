class AddIsArtistToPrelaunchSubscriber < ActiveRecord::Migration
  def change
    add_column :prelaunch_subscribers, :artist, :boolean
  end
end
