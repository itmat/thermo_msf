module ThermoMSF
  module Model
    class TaxonomyName < Sequel::Model(:TaxonomyNames)
        set_primary_key :
      # ruby style accessors
      def taxonomy_id
        self.TaxonomyID
      end
      def name
        self.Name
      end
      def name_category
        self.NameCategory
      end
      # associations
    end
  end
end
