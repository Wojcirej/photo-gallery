class CreateAdmins < ActiveRecord::Migration[5.2]
  def change
    create_table :admins, id: :uuid do |t|
      ## Database authenticatable
      t.string :login, null: false
      t.string :email, null: false
      t.string :encrypted_password, null: false

      ## Recoverable
      t.string :reset_password_token
      t.datetime :reset_password_sent_at

      t.timestamps null: false
    end

    add_index :admins, :login, unique: true
    add_index :admins, :email, unique: true
    add_index :admins, :reset_password_token, unique: true
  end
end
