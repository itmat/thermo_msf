module ThermoMSF
  module Model
    class FileInfo < Sequel::Model(:FileInfos)
        set_primary_key :FileID
      # ruby style accessors
      def file_id
        self.FileID
      end
      def file_name
        self.FileName
      end
      def file_time
        self.FileTime
      end
      def file_size
        self.FileSize
      end
      def physical_file_name
        self.PhysicalFileName
      end
      def file_type
        self.FileType
      end
      # associations
      many_to_one file, :key => :FileID
    end
  end
end
