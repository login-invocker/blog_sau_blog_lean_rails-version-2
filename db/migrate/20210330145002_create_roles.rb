class CreateRoles < ActiveRecord::Migration[6.1]
  def change
    create_table :roles do |t|
      t.integer :user_id
      t.string :role_name

      t.timestamps
    end
  end
end
