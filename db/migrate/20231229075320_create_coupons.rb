class CreateCoupons < ActiveRecord::Migration[7.0]
  def change
    create_table :coupons do |t|
      t.string :name
      t.float :discount
      t.date :first_date
      t.date :last_date
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
