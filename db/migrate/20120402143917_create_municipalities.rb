class CreateMunicipalities < ActiveRecord::Migration
  def self.up
    create_table :municipalities do |t|
      t.string :name
	  
	  t.belongs_to :state
	  
      t.timestamps
    end
  end

  def self.down
    drop_table :municipalities
  end
end
