class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.belongs_to :patient, index: true
      t.belongs_to :doctor, index: true

      t.timestamps
    end
  end
end
