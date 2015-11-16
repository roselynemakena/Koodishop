class CreateKoodishopAdmins < ActiveRecord::Migration
  def change
    create_table :koodishop_admins do |t|
      t.string :koodishop_admin_name
      t.string :koodishop_admin_picture

      t.timestamps null: false
    end
  end
end
