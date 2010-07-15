module ThermoMSF
  module Model
    class WorkflowInfo < Sequel::Model(:WorkflowInfo)
        set_primary_key :
      # ruby style accessors
      def workflow_name
        self.WorkflowName
      end
      def workflow_description
        self.WorkflowDescription
      end
      def workflow_state
        self.WorkflowState
      end
      def workflow_start_date
        self.WorkflowStartDate
      end
      def workflow_template
        self.WorkflowTemplate
      end
      def user
        self.User
      end
      def workflow_guid
        self.WorkflowGUID
      end
      def machine_guid
        self.MachineGUID
      end
      def machine_name
        self.MachineName
      end
      def merge_similar_identification_results
        self.MergeSimilarIdentificationResults
      end
      def is_valid
        self.IsValid
      end
      def version
        self.Version
      end
      # associations
    end
  end
end
