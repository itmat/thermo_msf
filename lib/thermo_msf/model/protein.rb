module ThermoMSF
  module Model
    class Protein < Sequel::Model(:Proteins)
        set_primary_key :ProteinID
      # ruby style accessors
      def protein_id
        self.ProteinID
      end
      def sequence
        self.Sequence
      end
      def sequence_hash_code
        self.SequenceHashCode
      end
      # associations
    end
  end
end
