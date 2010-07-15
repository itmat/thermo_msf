module ThermoMSF
  module Model
    class PeptideScore < Sequel::Model(:PeptideScores)
        set_primary_key [:ProcessingNodeNumber, :PeptideID, :ScoreID]
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def peptide_id
        self.PeptideID
      end
      def score_id
        self.ScoreID
      end
      def processing_node_id
        self.ProcessingNodeID
      end
      def score_value
        self.ScoreValue
      end
      # associations
    end
  end
end
