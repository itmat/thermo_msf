module ThermoMSF
  module Model
    class SpectrumScore < Sequel::Model(:SpectrumScores)
        set_primary_key [:ProcessingNodeNumber, :SpectrumID, :ScoreID]
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def spectrum_id
        self.SpectrumID
      end
      def score_id
        self.ScoreID
      end
      def score
        self.Score
      end
      # associations
    end
  end
end
