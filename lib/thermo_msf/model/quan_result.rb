module ThermoMSF
  module Model
    class QuanResult < Sequel::Model(:QuanResults)
        set_primary_key [:QuanResultID, :SpectrumID]
      # ruby style accessors
      def quan_result_id
        self.QuanResultID
      end
      def spectrum_id
        self.SpectrumID
      end
      def height
        self.Height
      end
      def area
        self.Area
      end
      def start_time
        self.StartTime
      end
      def end_time
        self.EndTime
      end
      def start_peak_time
        self.StartPeakTime
      end
      def start_peak_intensity
        self.StartPeakIntensity
      end
      def end_peak_time
        self.EndPeakTime
      end
      def end_peak_intensity
        self.EndPeakIntensity
      end
      # associations
    end
  end
end
