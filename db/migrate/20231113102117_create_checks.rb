class CreateChecks < ActiveRecord::Migration[6.1]
  def change
    unless table_exists?(:checks)
    create_table :checks do |t|
      t.string :title
      t.date :startday
      t.date :finishday
      t.boolean :allday, null:false, default: false
      t.text :memo

      t.timestamps
    end
    end
  end
end
