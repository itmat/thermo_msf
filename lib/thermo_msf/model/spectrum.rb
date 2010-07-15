module ThermoMSF
  module Model
    class Spectrum < Sequel::Model(:Spectra)
      set_primary_key :UniqueSpectrumID
      # ruby style accessors
      def unique_spectrum_id
        self.UniqueSpectrumID
      end
      def spectrum
        self.Spectrum
      end
      def spectrum_hash_code
        self.SpectrumHashCode
      end
      # associations
    end
  end
end
