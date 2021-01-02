class CreateBankrBanks < ActiveRecord::Migration[6.0]
  def change
    create_table :bankr_banks do |t|
      t.string :name
      t.string :short_name

      t.timestamps
    end
  end
end
