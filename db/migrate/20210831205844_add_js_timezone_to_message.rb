class AddJsTimezoneToMessage < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :time_difference, :string, default: '0'
  end
end
