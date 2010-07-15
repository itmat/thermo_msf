module ThermoMSF
  module Model
    class ProcessingNodeScore < Sequel::Model(:ProcessingNodeScores)
        set_primary_key :ScoreID
      # ruby style accessors
      def processing_node_id
        self.ProcessingNodeID
      end
      def score_id
        self.ScoreID
      end
      def score_name
        self.ScoreName
      end
      def friendly_name
        self.FriendlyName
      end
      def description
        self.Description
      end
      def format_string
        self.FormatString
      end
      def score_category
        self.ScoreCategory
      end
      def hidden
        self.Hidden
      end
      def is_main_score
        self.IsMainScore
      end
      # associations
    end
  end
end
