class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :username
      t.string :email
      t.boolean :is_admin
      t.integer :organization
      t.string :password_digest

      t.timestamps
    end
  end
end
