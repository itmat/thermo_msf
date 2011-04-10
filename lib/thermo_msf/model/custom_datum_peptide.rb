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
      many_to_one field, :key => :FieldID
      many_to_one peptide, :key => :PeptideID
    end
  end
end
