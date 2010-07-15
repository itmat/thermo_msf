module ThermoMSF
  module Model
    class ProcessingNode < Sequel::Model(:ProcessingNodes)
        set_primary_key :ProcessingNodeNumber
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def processing_node_id
        self.ProcessingNodeID
      end
      def processing_node_parent_number
        self.ProcessingNodeParentNumber
      end
      def node_name
        self.NodeName
      end
      def friendly_name
        self.FriendlyName
      end
      def major_version
        self.MajorVersion
      end
      def minor_version
        self.MinorVersion
      end
      def node_comment
        self.NodeComment
      end
      def node_guid
        self.NodeGUID
      end
      # associations
    end
  end
end
