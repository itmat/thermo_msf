module ThermoMSF
  module Model
    class CustomDatumPeptide < Sequel::Model(:CustomDataPeptides)
        set_primary_key [:FieldID, :PeptideID]
      # ruby style accessors
      def field_id
        self.FieldID
      end
      def peptide_id
        self.PeptideID
      end
      def field_value
        self.FieldValue
      end
      # associations
    end
  end
end
