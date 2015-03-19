class MigrationName < ActiveRecord::Migration
  def change
    add_column :giftcards, :user_id, :integer
  end
end
