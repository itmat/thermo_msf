module ThermoMSF
  module Model
    class SchemaInfo < Sequel::Model(:SchemaInfo)
        set_primary_key :Version
      # ruby style accessors
      def version
        self.Version
      end
      def kind
        self.Kind
      end
      def date
        self.Date
      end
      def software_version
        self.SoftwareVersion
      end
      def comment
        self.Comment
      end
      # associations
    end
  end
end
