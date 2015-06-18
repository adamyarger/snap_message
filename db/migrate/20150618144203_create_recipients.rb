class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.integer :message_id
      t.integer :user_id, index: true
      t.boolean :read, default: false

      t.timestamps null: false
    end
  end
end
