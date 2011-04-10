module ThermoMSF
  module Model
    class ProteinAnnotation < Sequel::Model(:ProteinAnnotations)
        set_primary_key :ProteinAnnotationID
      # ruby style accessors
      def protein_annotation_id
        self.ProteinAnnotationID
      end
      def protein_id
        self.ProteinID
      end
      def description_hash_code
        self.DescriptionHashCode
      end
      def description
        self.Description
      end
      def taxonomy_id
        self.TaxonomyID
      end
      # associations
      many_to_one protein, :key => :ProteinID
      many_to_one taxonomy, :key => :TaxonomyID
    end
  end
end
