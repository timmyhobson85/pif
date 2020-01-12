class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :subject
      t.text :message
      t.integer :to_id
      t.integer :user_id

      t.timestamps
    end
  end
end
