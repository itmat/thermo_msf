module ThermoMSF
  module Model
    class PeptideScoreDecoy < Sequel::Model(:PeptideScores_decoy)
        set_primary_key :
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
