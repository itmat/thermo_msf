module ThermoMSF
  module Model
    class SpectrumHeader < Sequel::Model(:SpectrumHeaders)
        set_primary_key :SpectrumID
      # ruby style accessors
      def spectrum_id
        self.SpectrumID
      end
      def mass_peak_id
        self.MassPeakID
      end
      def scan_event_id
        self.ScanEventID
      end
      def last_scan
        self.LastScan
      end
      def first_scan
        self.FirstScan
      end
      def retention_time
        self.RetentionTime
      end
      def hidden
        self.Hidden
      end
      def scan_numbers
        self.ScanNumbers
      end
      def charge
        self.Charge
      end
      def mass
        self.Mass
      end
      def creating_processing_node_number
        self.CreatingProcessingNodeNumber
      end
      def unique_spectrum_id
        self.UniqueSpectrumID
      end
      # associations
    end
  end
end
