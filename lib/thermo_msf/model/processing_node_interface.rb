module ThermoMSF
  module Model
    class ProcessingNodeInterface < Sequel::Model(:ProcessingNodeInterfaces)
        set_primary_key :
      # ruby style accessors
      def processing_node_id
        self.ProcessingNodeID
      end
      def interface_kind
        self.InterfaceKind
      end
      def interface_name
        self.InterfaceName
      end
      # associations
      many_to_one processing_node, :key => :ProcessingNodeID
    end
  end
end
