module ThermoMSF
  module Model
    class ProcessingNodeParameter < Sequel::Model(:ProcessingNodeParameters)
        set_primary_key [:ProcessingNodeNumber, :ParameterName]
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def parameter_name
        self.ParameterName
      end
      def friendly_name
        self.FriendlyName
      end
      def processing_node_id
        self.ProcessingNodeID
      end
      def intended_purpose
        self.IntendedPurpose
      end
      def purpose_details
        self.PurposeDetails
      end
      def hidden
        self.Hidden
      end
      def advanced
        self.Advanced
      end
      def category
        self.Category
      end
      def position
        self.Position
      end
      def parameter_value
        self.ParameterValue
      end
      def value_display_string
        self.ValueDisplayString
      end
      # associations
    end
  end
end
