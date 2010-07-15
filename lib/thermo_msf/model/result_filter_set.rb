module ThermoMSF
  module Model
    class ResultFilterSet < Sequel::Model(:ResultFilterSet)
        set_primary_key :
      # ruby style accessors
      def result_filter_set
        self.ResultFilterSet
      end
      # associations
    end
  end
end
