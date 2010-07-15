module ThermoMSF
  module Model
    class CustomDatumField < Sequel::Model(:CustomDataFields)
        set_primary_key :FieldID
      # ruby style accessors
      def field_id
        self.FieldID
      end
      def guid
        self.Guid
      end
      def display_name
        self.DisplayName
      end
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def data_type
        self.DataType
      end
      def data_target
        self.DataTarget
      end
      def data_target_for_display
        self.DataTargetForDisplay
      end
      def version
        self.Version
      end
      def show_data_in_results
        self.ShowDataInResults
      end
      def writable
        self.Writable
      end
      def read_data_in_results
        self.ReadDataInResults
      end
      def format
        self.Format
      end
      # associations
    end
  end
end
