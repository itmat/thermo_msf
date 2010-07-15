module ThermoMSF
  module Model
    class MasPeak < Sequel::Model(:MassPeaks)
        set_primary_key :MassPeakID
      # ruby style accessors
      def mass_peak_id
        self.MassPeakID
      end
      def charge
        self.Charge
      end
      def intensity
        self.Intensity
      end
      def mass
        self.Mass
      end
      def scan_numbers
        self.ScanNumbers
      end
      def file_id
        self.FileID
      end
      # associations
    end
  end
end
