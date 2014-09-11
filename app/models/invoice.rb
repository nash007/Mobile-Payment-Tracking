class Invoice < ActiveRecord::Base
	attr_accessible :amount	, :service_type , :organization , :bill_dueon , :service_details , :service_date , :vendor_email , :flag , :vendor_name
end
