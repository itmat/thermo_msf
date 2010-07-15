module ThermoMSF
  module Model
    class AminoAcidModification < Sequel::Model(:AminoAcidModifications)
        set_primary_key :AminoAcidModificationID
      # ruby style accessors
      def amino_acid_modification_id
        self.AminoAcidModificationID
      end
      def modification_name
        self.ModificationName
      end
      def delta_mass
        self.DeltaMass
      end
      def substitution
        self.Substitution
      end
      def leaving_group
        self.LeavingGroup
      end
      def abbreviation
        self.Abbreviation
      end
      def position_type
        self.PositionType
      end
      def is_active
        self.IsActive
      end
      def delta_average_mass
        self.DeltaAverageMass
      end
      def unimod_accession
        self.UnimodAccession
      end
      def is_substitution
        self.IsSubstitution
      end
      # associations
    end
  end
end
