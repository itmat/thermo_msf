module ThermoMSF
  module Model
    class ProcessingNodeSpectrum < Sequel::Model(:ProcessingNodesSpectra)
        set_primary_key [:SendingProcessingNodeNumber, :SpectrumID]
      # ruby style accessors
      def sending_processing_node_number
        self.SendingProcessingNodeNumber
      end
      def spectrum_id
        self.SpectrumID
      end
      # associations
      many_to_one spectrum, :key => :SpectrumID
    end
  end
end
