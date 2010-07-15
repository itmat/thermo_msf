module ThermoMSF
  module Model
    class ScanEvent < Sequel::Model(:ScanEvents)
        set_primary_key :ScanEventID
      # ruby style accessors
      def scan_event_id
        self.ScanEventID
      end
      def ms_level
        self.MSLevel
      end
      def polarity
        self.Polarity
      end
      def scan_type
        self.ScanType
      end
      def ionization
        self.Ionization
      end
      def mass_analyzer
        self.MassAnalyzer
      end
      def activation_type
        self.ActivationType
      end
      # associations
    end
  end
end
