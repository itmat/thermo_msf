module ThermoMSF
  module Model
    class FastaFileProteinAnnotation < Sequel::Model(:FastaFilesProteinAnnotations)
        set_primary_key [:FastaFileID, :ProteinAnnotationID]
      # ruby style accessors
      def fasta_file_id
        self.FastaFileID
      end
      def protein_annotation_id
        self.ProteinAnnotationID
      end
      # associations
      many_to_one fasta_file, :key => :FastaFileID
      many_to_one protein_annotation, :key => :ProteinAnnotationID
    end
  end
end
