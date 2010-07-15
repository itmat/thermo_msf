module ThermoMSF
  module Model
    class PeptideTerminalModificationDecoy < Sequel::Model(:PeptidesTerminalModifications_decoy)
        set_primary_key :
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def peptide_id
        self.PeptideID
      end
      def terminal_modification_id
        self.TerminalModificationID
      end
      # associations
    end
  end
end
