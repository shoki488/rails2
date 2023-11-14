class ChangeAlldayOfChecks < ActiveRecord::Migration[6.1]
  def change
    change_column :checks, :allday, :boolean, default: false
  end
end
