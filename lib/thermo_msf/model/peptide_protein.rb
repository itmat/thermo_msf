module ThermoMSF
  module Model
    class PeptideProtein < Sequel::Model(:PeptidesProteins)
        set_primary_key [:ProcessingNodeNumber, :PeptideID, :ProteinID]
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def peptide_id
        self.PeptideID
      end
      def protein_id
        self.ProteinID
      end
      # associations
      many_to_one peptide, :key => [:ProcessingNodeNumber,:PeptideID]
      many_to_one protein, :key => :ProteinID 
    end
  end
end
