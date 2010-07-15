module ThermoMSF
  module Model
    class CustomDatumProtein < Sequel::Model(:CustomDataProteins)
        set_primary_key [:FieldID, :ProteinID]
      # ruby style accessors
      def field_id
        self.FieldID
      end
      def protein_id
        self.ProteinID
      end
      def field_value
        self.FieldValue
      end
      # associations
    end
  end
end
