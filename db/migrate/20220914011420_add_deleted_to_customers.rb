class AddDeletedToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :is_delited, :boolean, default: false
  end
end
