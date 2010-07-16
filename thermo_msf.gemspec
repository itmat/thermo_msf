# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{thermo_msf}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Angel Pizarro"]
  s.date = %q{2010-07-16}
  s.description = %q{A parser for Thermo Finnegan's Proteome Discoverer MSF file format, which is based on SQLite3}
  s.email = %q{angel@upenn.edu}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/thermo_msf.rb",
     "lib/thermo_msf/base.rb",
     "lib/thermo_msf/model.rb",
     "lib/thermo_msf/model/amino_acid.rb",
     "lib/thermo_msf/model/amino_acid_modification.rb",
     "lib/thermo_msf/model/amino_acid_modification_amino_acid.rb",
     "lib/thermo_msf/model/chromatogram.rb",
     "lib/thermo_msf/model/custom_datum_field.rb",
     "lib/thermo_msf/model/custom_datum_peptide.rb",
     "lib/thermo_msf/model/custom_datum_protein.rb",
     "lib/thermo_msf/model/custom_datum_spectrum.rb",
     "lib/thermo_msf/model/enzyme.rb",
     "lib/thermo_msf/model/enzyme_cleavage_specificity.rb",
     "lib/thermo_msf/model/false_discovery_rate.rb",
     "lib/thermo_msf/model/fastum_file.rb",
     "lib/thermo_msf/model/fastum_file_protein_annotation.rb",
     "lib/thermo_msf/model/file_info.rb",
     "lib/thermo_msf/model/mas_peak.rb",
     "lib/thermo_msf/model/mas_peak_relation.rb",
     "lib/thermo_msf/model/peptide.rb",
     "lib/thermo_msf/model/peptide_amino_acid_modification.rb",
     "lib/thermo_msf/model/peptide_amino_acid_modification_decoy.rb",
     "lib/thermo_msf/model/peptide_decoy.rb",
     "lib/thermo_msf/model/peptide_protein.rb",
     "lib/thermo_msf/model/peptide_score.rb",
     "lib/thermo_msf/model/peptide_score_decoy.rb",
     "lib/thermo_msf/model/peptide_terminal_modification.rb",
     "lib/thermo_msf/model/peptide_terminal_modification_decoy.rb",
     "lib/thermo_msf/model/precursor_ion_quan_result.rb",
     "lib/thermo_msf/model/precursor_ion_quan_result_event_spectrum.rb",
     "lib/thermo_msf/model/precursor_ion_quan_result_search_spectrum.rb",
     "lib/thermo_msf/model/processing_node.rb",
     "lib/thermo_msf/model/processing_node_filter_parameter.rb",
     "lib/thermo_msf/model/processing_node_interface.rb",
     "lib/thermo_msf/model/processing_node_parameter.rb",
     "lib/thermo_msf/model/processing_node_score.rb",
     "lib/thermo_msf/model/processing_node_spectrum.rb",
     "lib/thermo_msf/model/protein.rb",
     "lib/thermo_msf/model/protein_annotation.rb",
     "lib/thermo_msf/model/protein_identification_group.rb",
     "lib/thermo_msf/model/protein_score.rb",
     "lib/thermo_msf/model/quan_result.rb",
     "lib/thermo_msf/model/reporter_ion_quan_result.rb",
     "lib/thermo_msf/model/reporter_ion_quan_result_search_spectrum.rb",
     "lib/thermo_msf/model/result_filter_set.rb",
     "lib/thermo_msf/model/scan_event.rb",
     "lib/thermo_msf/model/schema_info.rb",
     "lib/thermo_msf/model/spectrum.rb",
     "lib/thermo_msf/model/spectrum_header.rb",
     "lib/thermo_msf/model/spectrum_score.rb",
     "lib/thermo_msf/model/taxonomy_name.rb",
     "lib/thermo_msf/model/taxonomy_node.rb",
     "lib/thermo_msf/model/workflow_info.rb",
     "lib/thermo_msf/model/workflow_message.rb",
     "lib/thermo_msf/zip_spectrum.rb",
     "test/helper.rb",
     "test/test_thermo_msf.rb",
     "thermo_msf.gemspec"
  ]
  s.homepage = %q{http://github.com/itmat/thermo_msf}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A parser for Thermo MSF files}
  s.test_files = [
    "test/helper.rb",
     "test/test_thermo_msf.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 2.11.1"])
      s.add_runtime_dependency(%q<sequel>, [">= 3.13.0"])
      s.add_runtime_dependency(%q<bindata>, ["~> 1.2.0"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4.1"])
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.8"])
    else
      s.add_dependency(%q<shoulda>, [">= 2.11.1"])
      s.add_dependency(%q<sequel>, [">= 3.13.0"])
      s.add_dependency(%q<bindata>, ["~> 1.2.0"])
      s.add_dependency(%q<nokogiri>, ["~> 1.4.1"])
      s.add_dependency(%q<activesupport>, [">= 2.3.8"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 2.11.1"])
    s.add_dependency(%q<sequel>, [">= 3.13.0"])
    s.add_dependency(%q<bindata>, ["~> 1.2.0"])
    s.add_dependency(%q<nokogiri>, ["~> 1.4.1"])
    s.add_dependency(%q<activesupport>, [">= 2.3.8"])
  end
end
