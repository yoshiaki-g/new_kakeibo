class CreateFixedcosts < ActiveRecord::Migration[6.0]
  def change
    create_table :fixedcosts do |t|
      t.string     :name, null: false
      t.date       :year_month  ,null: false
      t.integer    :value       ,null: false
      t.string     :description
      t.references :user             ,null: false,  foreign_key: true
      t.timestamps
    end
  end
end
