module ThermoMSF
  module Model
    class PrecursorIonQuanResultEventSpectrum < Sequel::Model(:PrecursorIonQuanResultsEventSpectra)
        set_primary_key :
      # ruby style accessors
      def quan_result_id
        self.QuanResultID
      end
      def quan_spectrum_id
        self.QuanSpectrumID
      end
      # associations
    end
  end
end
