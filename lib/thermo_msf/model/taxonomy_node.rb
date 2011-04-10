module ThermoMSF
  module Model
    class TaxonomyNode < Sequel::Model(:TaxonomyNodes)
        set_primary_key :TaxonomyID
      # ruby style accessors
      def taxonomy_id
        self.TaxonomyID
      end
      def parent_taxonomy_id
        self.ParentTaxonomyID
      end
      def taxonomy_rank
        self.TaxonomyRank
      end
      def left_node_index
        self.LeftNodeIndex
      end
      def right_node_index
        self.RightNodeIndex
      end
      # associations
      many_to_one taxonomy, :key => :TaxonomyID
      many_to_one parent_taxonomy, :key => :ParentTaxonomyID
    end
  end
end
