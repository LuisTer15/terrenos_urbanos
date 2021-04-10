class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.string :name_lead
      t.string :email_lead
      t.string :phonenumber_lead
      t.text :message_lead
      t.string :property_code_lead

      t.timestamps
    end
  end
end
