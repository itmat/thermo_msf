module ThermoMSF
  module Model
    class Chromatogram < Sequel::Model(:Chromatograms)
        set_primary_key [:FileID, :TraceType]
      # ruby style accessors
      def file_id
        self.FileID
      end
      def trace_type
        self.TraceType
      end
      def chromatogram
        self.Chromatogram
      end
      # associations
    end
  end
end
