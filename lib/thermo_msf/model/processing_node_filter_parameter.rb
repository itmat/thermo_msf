module ThermoMSF
  module Model
    class ProcessingNodeFilterParameter < Sequel::Model(:ProcessingNodeFilterParameters)
        set_primary_key [:ProcessingNodeNumber, :FilterParameterName]
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def filter_parameter_name
        self.FilterParameterName
      end
      def filter_module_type_id
        self.FilterModuleTypeID
      end
      def filter_module_number
        self.FilterModuleNumber
      end
      def processing_node_id
        self.ProcessingNodeID
      end
      def filter_parameter_value
        self.FilterParameterValue
      end
      # associations
    end
  end
end
