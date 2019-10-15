class CreateExpences < ActiveRecord::Migration[6.0]
  def change
    create_table :expences do |t|
      t.decimal :amount
      t.text :description
      t.date :date
      t.belongs_to :category_id, index: true, foreign_key: true
      t.integer :payment_mode_id
      t.boolean :inword
      t.string :invoice
      t.belongs_to :user_id, index: true, foreign_key: true

      t.timestamps
    end
  end
end
