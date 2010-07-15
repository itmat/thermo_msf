module ThermoMSF
  module Model
    class ReporterIonQuanResultSearchSpectrum < Sequel::Model(:ReporterIonQuanResultsSearchSpectra)
        set_primary_key :
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def spectrum_id
        self.SpectrumID
      end
      def search_spectrum_id
        self.SearchSpectrumID
      end
      # associations
    end
  end
end
