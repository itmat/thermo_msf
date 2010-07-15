module ThermoMSF
  module Model
    class AminoAcid < Sequel::Model(:AminoAcids)
        set_primary_key :AminoAcidID
      # ruby style accessors
      def amino_acid_id
        self.AminoAcidID
      end
      def amino_acid_name
        self.AminoAcidName
      end
      def one_letter_code
        self.OneLetterCode
      end
      def three_letter_code
        self.ThreeLetterCode
      end
      def monoisotopic_mass
        self.MonoisotopicMass
      end
      def average_mass
        self.AverageMass
      end
      def sum_formula
        self.SumFormula
      end
      # associations
    end
  end
end
