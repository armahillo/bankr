class CreateBankrItems < ActiveRecord::Migration[6.0]
  def change
    create_table :bankr_items do |t|
      t.string :name
      t.references :bankr_base_item, null: false, foreign_key: true
      t.references :bankr_bank, null: false, foreign_key: true

      t.index [:base_item_id, :bank_id], unique: true
      t.timestamps
    end
  end
end
