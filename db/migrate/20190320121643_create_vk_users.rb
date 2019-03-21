class CreateVkUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :vk_users do |t|
      t.integer :vk_uid
      t.string  :vk_first_name
      t.string  :vk_last_name
      t.string  :vk_token
      t.date    :vk_bdate

      t.timestamps
    end
  end
end
