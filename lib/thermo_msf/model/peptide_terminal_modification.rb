module ThermoMSF
  module Model
    class PeptideTerminalModification < Sequel::Model(:PeptidesTerminalModifications)
        set_primary_key [:ProcessingNodeNumber, :PeptideID, :TerminalModificationID]
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
      many_to_one peptide, :key => :PeptideID
      many_to_one terminal_modification, :key => :TerminalModificationID
    end
  end
end
