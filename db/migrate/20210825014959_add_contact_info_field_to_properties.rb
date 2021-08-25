class AddContactInfoFieldToProperties < ActiveRecord::Migration[5.2]
  def change
    add_column :properties, :contact_info, :text
  end
end
