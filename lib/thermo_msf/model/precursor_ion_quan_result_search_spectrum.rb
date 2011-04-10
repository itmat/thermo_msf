module ThermoMSF
  module Model
    class PrecursorIonQuanResultSearchSpectrum < Sequel::Model(:PrecursorIonQuanResultsSearchSpectra)
        set_primary_key :
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def quan_result_id
        self.QuanResultID
      end
      def search_spectrum_id
        self.SearchSpectrumID
      end
      # associations
      many_to_one quan_result, :key => :QuanResultID
      many_to_one search_spectrum, :key => :SearchSpectrumID
    end
  end
end
