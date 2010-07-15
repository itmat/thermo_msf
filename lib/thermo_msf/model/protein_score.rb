module ThermoMSF
  module Model
    class ProteinScore < Sequel::Model(:ProteinScores)
        set_primary_key [:ProcessingNodeNumber, :ProteinID]
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def protein_id
        self.ProteinID
      end
      def protein_identification_group_id
        self.ProteinIdentificationGroupID
      end
      def protein_score
        self.ProteinScore
      end
      def coverage
        self.Coverage
      end
      # associations
    end
  end
end
