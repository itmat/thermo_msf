module ThermoMSF
  module Model
    class FastumFileProteinAnnotation < Sequel::Model(:FastaFilesProteinAnnotations)
        set_primary_key [:FastaFileID, :ProteinAnnotationID]
      # ruby style accessors
      def fasta_file_id
        self.FastaFileID
      end
      def protein_annotation_id
        self.ProteinAnnotationID
      end
      # associations
    end
  end
end
