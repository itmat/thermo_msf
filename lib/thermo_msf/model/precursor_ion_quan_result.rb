module ThermoMSF
  module Model
    class PrecursorIonQuanResult < Sequel::Model(:PrecursorIonQuanResults)
        set_primary_key :
      # ruby style accessors
      def quan_channel_id
        self.QuanChannelID
      end
      def quan_result_id
        self.QuanResultID
      end
      def mass
        self.Mass
      end
      def charge
        self.Charge
      end
      def area
        self.Area
      end
      def retention_time
        self.RetentionTime
      end
      # associations
    end
  end
end
