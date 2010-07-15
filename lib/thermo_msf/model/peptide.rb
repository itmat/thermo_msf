module ThermoMSF
  module Model
    class Peptide < Sequel::Model(:Peptides)
        set_primary_key [:ProcessingNodeNumber, :PeptideID]
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
      def hidden
        self.Hidden
      end
      def sequence
        self.Sequence
      end
      def annotation
        self.Annotation
      end
      # associations
    end
  end
end
