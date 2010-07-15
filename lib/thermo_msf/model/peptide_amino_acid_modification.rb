module ThermoMSF
  module Model
    class PeptideAminoAcidModification < Sequel::Model(:PeptidesAminoAcidModifications)
        set_primary_key [:ProcessingNodeNumber, :PeptideID, :AminoAcidModificationID, :Position]
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
