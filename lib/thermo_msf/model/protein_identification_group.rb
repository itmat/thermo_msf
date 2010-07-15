module ThermoMSF
  module Model
    class ProteinIdentificationGroup < Sequel::Model(:ProteinIdentificationGroups)
        set_primary_key [:ProteinIdentificationGroupId, :ProcessingNodeNumber]
      # ruby style accessors
      def protein_identification_group_id
        self.ProteinIdentificationGroupId
      end
      def processing_node_number
        self.ProcessingNodeNumber
      end
      # associations
    end
  end
end
