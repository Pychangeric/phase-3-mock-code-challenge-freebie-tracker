class Freebie < ActiveRecord::Base
    belongs_to :dev, foreign_key: 'dev_id'
    belongs_to :company, foreign_key: 'company_id'
  
    def dev
      Dev.find(dev_id)
    end

    def print_details
        "#{dev.name} owns a #{item_name} from #{company.name}"
      end
  
    def company
      Company.find(company_id)
    end
  end
  