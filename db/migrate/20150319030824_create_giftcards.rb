class CreateGiftcards < ActiveRecord::Migration
  def change
    create_table :giftcards do |t|
      t.string :title
      t.text :message
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
