model_references= {}
# CREATE INDEX IX_CustomDataPeptides_PeptideID ON [CustomDataPeptides]
# (
#   [PeptideID]
# ); #Can't reconstruct this. The FK index does not match the PK of the table, hence it is not used

model_references[:CustomDataPeptides] = [:Peptides, :PeptideID, :PeptideID]

# CREATE INDEX [IX_CustomDataProteins_ProteinID] ON [CustomDataProteins]
#                       (
#                         [ProteinID] ASC
#                       );
# Ditto
model_references[:CustomDataProteins] = [:Proteins, :ProteinID, :ProteinID]

# CREATE INDEX [IX_CustomDataSpectra_SpectrumID] ON [CustomDataSpectra]
#                       (
#                         [SpectrumID] ASC
#                       );
# Ditto

# CREATE INDEX [IX_FastaFilesProteinAnnotations_ProteinAnnotationID] ON [FastaFilesProteinAnnotations]
# (
#   [ProteinAnnotationID] ASC
# );
# CREATE INDEX [IX_PeptidesProteins_PeptideID] ON [PeptidesProteins]
#                       (
#                         [PeptideID]
#                       );
# CREATE INDEX [IX_PrecursorIonQuanResultsEventSpectra_QuanResultID] ON [PrecursorIonQuanResultsEventSpectra]
#                       (
#                         [QuanResultID] ASC
#                       );
# CREATE INDEX [IX_PrecursorIonQuanResultsSearchSpectra_QuanResultID] ON [PrecursorIonQuanResultsSearchSpectra]
#                       (
#                         [QuanResultID] ASC
#                       );
# CREATE INDEX [IX_PrecursorIonQuanResultsSearchSpectra_SearchSpectrumID] ON [PrecursorIonQuanResultsSearchSpectra]
#                       (
#                         [SearchSpectrumID] ASC
#                       );
# CREATE INDEX [IX_PrecursorIonQuanResults_QuanResultID_QuanChannelID]
#                       ON [PrecursorIonQuanResults]
#                       (
#                         [QuanResultID],
#                         [QuanChannelID]
#                       );
# CREATE INDEX [IX_ProteinAnnotations_ProteinID_DescriptionHashCode] ON [ProteinAnnotations]
# (
#   [ProteinID],
#   [DescriptionHashCode]
# );
# CREATE INDEX [IX_ProteinAnnotations_TaxonomyID] ON [ProteinAnnotations]
# (
#   [TaxonomyID]
# );
# CREATE INDEX [IX_Proteins_SequenceHashCode] ON [Proteins]
# (
#   [SequenceHashCode] ASC
# );
# CREATE INDEX [IX_QuanResults_SpectrumID] ON [QuanResults]
#                       (
#                         [SpectrumID] ASC
#                       );
# CREATE INDEX [IX_ReporterIonQuanResultsSearchSpectra_SearchSpectrumID] ON [ReporterIonQuanResultsSearchSpectra]
#                       (
#                         [SearchSpectrumID]
#                       );
# CREATE INDEX [IX_ReporterIonQuanResults_ProcessingNodeNumber_SpectrumID] ON [ReporterIonQuanResults]
#                       (
#                         [ProcessingNodeNumber],[SpectrumID]
#                       );
# CREATE INDEX [IX_SpectrumHeaders_MassPeakID] ON [SpectrumHeaders]
# (
#   [MassPeakID] ASC
# );
# CREATE INDEX [IX_SpectrumScores_SpectrumID] ON [SpectrumScores]
#                       (
#                         [SpectrumID] ASC
#                       );
# CREATE INDEX [IX_SpectrumScores_SpectrumID_ProcessingNodeNumber] ON [SpectrumScores]
#                       (
#                         [SpectrumID] ASC,
#                         [ProcessingNodeNumber] ASC
#                       );
# CREATE INDEX [IX_TaxonomyNames_TaxonomyID] ON [TaxonomyNames]
# (
#   [TaxonomyID] ASC
# );
# CREATE INDEX [IX_TaxonomyNodes_LeftNodeIndex_RightNodeIndex] ON [TaxonomyNodes]
# (
#   [LeftNodeIndex], [RightNodeIndex] ASC
# );
