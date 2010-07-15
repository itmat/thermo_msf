module ThermoMSF
  module Model
    class ReporterIonQuanResult < Sequel::Model(:ReporterIonQuanResults)
        set_primary_key [:ProcessingNodeNumber, :QuanChannelID, :SpectrumID]
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def quan_channel_id
        self.QuanChannelID
      end
      def spectrum_id
        self.SpectrumID
      end
      def mass
        self.Mass
      end
      def height
        self.Height
      end
      # associations
    end
  end
end
