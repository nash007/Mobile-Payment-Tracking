class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :amount
      t.string :service_type
      t.string :organization
      t.date :bill_dueon
      t.text :service_details
      t.date :service_date

      t.timestamps
    end
  end
end
