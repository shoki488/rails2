class ChangeStringMemoOfChecks < ActiveRecord::Migration[6.1]
  def change
    change_column :checks, :memo, :string
  end
end
