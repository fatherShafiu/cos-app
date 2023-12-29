class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.integer :student_id
      t.integer :counselor_id

      t.timestamps
    end
  end
end
