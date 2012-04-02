class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :name
      t.datetime :birthdate
      t.string :email
      t.string :street_number
      t.string :colony
	  t.belongs_to :state
	  t.belongs_to :municipality

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
