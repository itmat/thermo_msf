module ThermoMSF
  module Model
    class PeptideDecoy < Sequel::Model(:Peptides_decoy)
        set_primary_key :
      # ruby style accessors
      def processing_node_number
        self.ProcessingNodeNumber
      end
      def peptide_id
        self.PeptideID
      end
      def spectrum_id
        self.SpectrumID
      end
      def total_ions_count
        self.TotalIonsCount
      end
      def matched_ions_count
        self.MatchedIonsCount
      end
      def confidence_level
        self.ConfidenceLevel
      end
      def sequence
        self.Sequence
      end
      # associations
      many_to_one peptide, :key => :PeptideID
      many_to_one spectrum, :key => :SpectrumID
    end
  end
end
