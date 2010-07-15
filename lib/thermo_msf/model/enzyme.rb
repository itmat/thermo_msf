module ThermoMSF
  module Model
    class Enzyme < Sequel::Model(:Enzymes)
        set_primary_key :EnzymeID
      # ruby style accessors
      def enzyme_id
        self.EnzymeID
      end
      def name
        self.Name
      end
      def abbreviation
        self.Abbreviation
      end
      def seperator
        self.Seperator
      end
      def non_seperator
        self.NonSeperator
      end
      def offset
        self.Offset
      end
      # associations
    end
  end
end
