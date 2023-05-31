class Dev < ActiveRecord::Base
    has_many :freebies, foreign_key: 'dev_id'
    has_many :companies, through: :freebies

    def received_one?(item_name)
        freebies.exists?(item_name: item_name)
      end
    
      def give_away(dev, freebie)
        return unless freebies.include?(freebie) && freebie.dev == self
    
        freebie.update(dev: dev)
      end

      def freebies
        Freebie.where(dev_id: id)
      end
  
    def companies
      Company.joins(:freebies).where(freebies: { dev_id: self.id })
    end
  end
  