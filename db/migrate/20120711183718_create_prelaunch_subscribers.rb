class CreatePrelaunchSubscribers < ActiveRecord::Migration
  def change
    create_table :prelaunch_subscribers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :portfolio
      t.date :birthdate
      t.string :location

      t.timestamps
    end
  end
end
