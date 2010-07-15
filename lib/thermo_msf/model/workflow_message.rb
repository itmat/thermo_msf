module ThermoMSF
  module Model
    class WorkflowMessage < Sequel::Model(:WorkflowMessages)
        set_primary_key :MessageID
      # ruby style accessors
      def message_id
        self.MessageID
      end
      def processing_node_id
        self.ProcessingNodeID
      end
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def time
        self.Time
      end
      def message_kind
        self.MessageKind
      end
      def message
        self.Message
      end
      # associations
    end
  end
end
