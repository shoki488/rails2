class Change < ActiveRecord::Migration[6.1]
  def change
    change_column :checks, :memo, :text_area
  end
end
