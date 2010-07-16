module ThermoMSF
  module Model
    class FastaFile < Sequel::Model(:FastaFiles)
        set_primary_key :FastaFileID
      # ruby style accessors
      def fasta_file_id
        self.FastaFileID
      end
      def file_name
        self.FileName
      end
      def state
        self.State
      end
      def virtual_file_name
        self.VirtualFileName
      end
      def file_size
        self.FileSize
      end
      def file_time
        self.FileTime
      end
      def number_of_proteins
        self.NumberOfProteins
      end
      def number_of_amino_acids
        self.NumberOfAminoAcids
      end
      def file_hash_code
        self.FileHashCode
      end
      def hidden
        self.Hidden
      end
      def is_srf_import
        self.IsSrfImport
      end
      def is_scheduled_for_deletion
        self.IsScheduledForDeletion
      end
      # associations
    end
  end
end
