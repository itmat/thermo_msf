module ThermoMSF
  module Model
    class MassPeakRelation < Sequel::Model(:MassPeakRelations)
        set_primary_key [:MassPeakID, :RelatedMassPeakID]
      # ruby style accessors
      def mass_peak_id
        self.MassPeakID
      end
      def related_mass_peak_id
        self.RelatedMassPeakID
      end
      # associations
      many_to_one mass_peak, :key => :MassPeakID
      many_to_one related_mass_peak, :key => :RelatedMassPeakID
    end
  end
end
