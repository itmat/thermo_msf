require 'thermo_msf/model'

module ThermoMSF
  class Base
    attr_reader :msf, :fname
    def initialize(msf_filepath)
      @fname = msf_filepath
      @DB = @msf = Sequel.sqlite(msf_filepath)
    end
    # Access the models
    def amino_acid_modification
      ThermoMSF::Model::AminoAcidModification
    end
    def amino_acid_modification_amino_acid
      ThermoMSF::Model::AminoAcidModificationAminoAcid
    end
    def amino_acid
      ThermoMSF::Model::AminoAcid
    end
    def chromatogram
      ThermoMSF::Model::Chromatogram
    end
    def custom_datum_field
      ThermoMSF::Model::CustomDatumField
    end
    def custom_datum_peptide
      ThermoMSF::Model::CustomDatumPeptide
    end
    def custom_datum_protein
      ThermoMSF::Model::CustomDatumProtein
    end
    def custom_datum_spectrum
      ThermoMSF::Model::CustomDatumSpectrum
    end
    def enzyme
      ThermoMSF::Model::Enzyme
    end
    def enzyme_cleavage_specificity
      ThermoMSF::Model::EnzymeCleavageSpecificity
    end
    def false_discovery_rate
      ThermoMSF::Model::FalseDiscoveryRate
    end
    def fastum_file
      ThermoMSF::Model::FastumFile
    end
    def fastum_file_protein_annotation
      ThermoMSF::Model::FastumFileProteinAnnotation
    end
    def file_info
      ThermoMSF::Model::FileInfo
    end
    def mas_peak_relation
      ThermoMSF::Model::MasPeakRelation
    end
    def mas_peak
      ThermoMSF::Model::MasPeak
    end
    def peptide_score
      ThermoMSF::Model::PeptideScore
    end
    def peptide_score_decoy
      ThermoMSF::Model::PeptideScoreDecoy
    end
    def peptide
      ThermoMSF::Model::Peptide
    end
    def peptide_amino_acid_modification
      ThermoMSF::Model::PeptideAminoAcidModification
    end
    def peptide_amino_acid_modification_decoy
      ThermoMSF::Model::PeptideAminoAcidModificationDecoy
    end
    def peptide_protein
      ThermoMSF::Model::PeptideProtein
    end
    def peptide_terminal_modification
      ThermoMSF::Model::PeptideTerminalModification
    end
    def peptide_terminal_modification_decoy
      ThermoMSF::Model::PeptideTerminalModificationDecoy
    end
    def peptide_decoy
      ThermoMSF::Model::PeptideDecoy
    end
    def precursor_ion_quan_result
      ThermoMSF::Model::PrecursorIonQuanResult
    end
    def precursor_ion_quan_result_event_spectrum
      ThermoMSF::Model::PrecursorIonQuanResultEventSpectrum
    end
    def precursor_ion_quan_result_search_spectrum
      ThermoMSF::Model::PrecursorIonQuanResultSearchSpectrum
    end
    def processing_node_filter_parameter
      ThermoMSF::Model::ProcessingNodeFilterParameter
    end
    def processing_node_interface
      ThermoMSF::Model::ProcessingNodeInterface
    end
    def processing_node_parameter
      ThermoMSF::Model::ProcessingNodeParameter
    end
    def processing_node_score
      ThermoMSF::Model::ProcessingNodeScore
    end
    def processing_node
      ThermoMSF::Model::ProcessingNode
    end
    def processing_node_spectrum
      ThermoMSF::Model::ProcessingNodeSpectrum
    end
    def protein_annotation
      ThermoMSF::Model::ProteinAnnotation
    end
    def protein_identification_group
      ThermoMSF::Model::ProteinIdentificationGroup
    end
    def protein_score
      ThermoMSF::Model::ProteinScore
    end
    def protein
      ThermoMSF::Model::Protein
    end
    def quan_result
      ThermoMSF::Model::QuanResult
    end
    def reporter_ion_quan_result
      ThermoMSF::Model::ReporterIonQuanResult
    end
    def reporter_ion_quan_result_search_spectrum
      ThermoMSF::Model::ReporterIonQuanResultSearchSpectrum
    end
    def result_filter_set
      ThermoMSF::Model::ResultFilterSet
    end
    def scan_event
      ThermoMSF::Model::ScanEvent
    end
    def schema_info
      ThermoMSF::Model::SchemaInfo
    end
    def spectrum
      ThermoMSF::Model::Spectrum
    end
    def spectrum_header
      ThermoMSF::Model::SpectrumHeader
    end
    def spectrum_score
      ThermoMSF::Model::SpectrumScore
    end
    def taxonomy_name
      ThermoMSF::Model::TaxonomyName
    end
    def taxonomy_node
      ThermoMSF::Model::TaxonomyNode
    end
    def workflow_info
      ThermoMSF::Model::WorkflowInfo
    end
    def workflow_message
      ThermoMSF::Model::WorkflowMessage
    end
  end
end
