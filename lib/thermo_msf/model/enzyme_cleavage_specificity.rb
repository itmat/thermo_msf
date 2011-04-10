module ThermoMSF
  module Model
    class EnzymeCleavageSpecificity < Sequel::Model(:EnzymesCleavageSpecificities)
        set_primary_key [:EnzymeID, :Specificity]
      # ruby style accessors
      def enzyme_id
        self.EnzymeID
      end
      def specificity
        self.Specificity
      end
      # associations
      many_to_one enzyme, :key => :EnzymeID
    end
  end
end
