class AddStateIdToCity < ActiveRecord::Migration[7.0]
  def change
    add_reference :cities, :state, null: false, foreign_key: true
  end
end
