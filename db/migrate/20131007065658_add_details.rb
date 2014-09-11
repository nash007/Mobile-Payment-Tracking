class AddDetails < ActiveRecord::Migration
  def change
  	add_column :invoices , :vendor_email , :string
	add_column :invoices ,  :flag , :integer
  end
end
