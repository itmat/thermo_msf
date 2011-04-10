module ThermoMSF
  module Model
    class CustomDatumSpectrum < Sequel::Model(:CustomDataSpectra)
        set_primary_key [:FieldID, :SpectrumID]
      # ruby style accessors
      def field_id
        self.FieldID
      end
      def spectrum_id
        self.SpectrumID
      end
      def field_value
        self.FieldValue
      end
      # associations
      many_to_one field, :key => :FieldID
      many_to_one spectrum, :key => :SpectrumID
    end
  end
end
