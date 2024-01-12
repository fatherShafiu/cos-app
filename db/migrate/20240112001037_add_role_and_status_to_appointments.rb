class AddRoleAndStatusToAppointments < ActiveRecord::Migration[7.1]
  def change
    add_column :appointments, :role, :string
    add_column :appointments, :status, :string
  end
end
