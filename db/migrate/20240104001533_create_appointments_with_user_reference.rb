class CreateAppointmentsWithUserReference < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.datetime :date
      t.references :user, foreign_key: true
      # Add other appointment-related columns as needed

      t.timestamps
    end
  end
end
