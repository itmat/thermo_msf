module ThermoMSF
  module Model
    class PeptideAminoAcidModificationDecoy < Sequel::Model(:PeptidesAminoAcidModifications_decoy)
        set_primary_key :
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def peptide_id
        self.PeptideID
      end
      def amino_acid_modification_id
        self.AminoAcidModificationID
      end
      def position
        self.Position
      end
      # associations
    end
  end
end
