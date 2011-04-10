module ThermoMSF
  module Model
    class AminoAcidModificationAminoAcid < Sequel::Model(:AminoAcidModificationsAminoAcids)
        set_primary_key [:AminoAcidModificationID, :AminoAcidID]
      # ruby style accessors
      def amino_acid_modification_id
        self.AminoAcidModificationID
      end
      def amino_acid_id
        self.AminoAcidID
      end
      # associations
      many_to_one amino_acid_modification, :key => :AminoAcidModificationID
      many_to_one amino_acid, :key => :AminoAcidID
    end
  end
end
