class CreateCrewmembers < ActiveRecord::Migration[5.2]
  def change
    create_table :crewmembers do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email

      t.timestamps
    end
  end
end
