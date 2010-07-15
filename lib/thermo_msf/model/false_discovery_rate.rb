module ThermoMSF
  module Model
    class FalseDiscoveryRate < Sequel::Model(:FalseDiscoveryRates)
        set_primary_key [:ProcessingNodeNumber, :ConfidenceLevel]
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def confidence_level
        self.ConfidenceLevel
      end
      def true_count
        self.TrueCount
      end
      def false_count
        self.FalseCount
      end
      def target
        self.Target
      end
      # associations
    end
  end
end
