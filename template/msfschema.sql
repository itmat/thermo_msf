  CREATE TABLE [AminoAcidModifications] (
	[AminoAcidModificationID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[ModificationName] [varchar] (250) COLLATE NOCASE NOT NULL ,
	[DeltaMass] [double] NULL ,
	[Substitution] [varchar] (50) COLLATE NOCASE NULL ,
	[LeavingGroup] [varchar] (50) COLLATE NOCASE NULL ,	
	[Abbreviation] [varchar] (50) COLLATE NOCASE NOT NULL ,
	[PositionType] [int] NOT NULL ,
	[IsActive] [bit] NULL ,
	[DeltaAverageMass] [double] NULL, 
	[UnimodAccession] [long] NULL, 
	[IsSubstitution] [bool] DEFAULT 0 NOT NULL, 
	UNIQUE (
		[ModificationName],
		[PositionType]
	),
	UNIQUE (
		[Abbreviation],
		[PositionType]
	)
);
CREATE TABLE [AminoAcidModificationsAminoAcids] (
	[AminoAcidModificationID] [int] NOT NULL ,
	[AminoAcidID] [int] NOT NULL ,	
	PRIMARY KEY ( [AminoAcidModificationID], [AminoAcidID] )
);
CREATE TABLE [AminoAcids] (
	[AminoAcidID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[AminoAcidName] [varchar] (50) COLLATE NOCASE NOT NULL ,
	[OneLetterCode] [char] (1) NULL ,
	[ThreeLetterCode] [char] (3) COLLATE NOCASE UNIQUE NULL ,
	[MonoisotopicMass] [double] NOT NULL ,
	[AverageMass] [double] NOT NULL ,
	[SumFormula] [varchar] (50) COLLATE NOCASE NULL
);
CREATE TABLE Chromatograms (	
	[FileID] [int] NOT NULL,
	[TraceType] [int] NOT NULL,
	[Chromatogram] [binary] NOT NULL,
	PRIMARY KEY (		
		[FileID],
		[TraceType] 
		)
);
CREATE TABLE CustomDataFields (	
	[FieldID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[Guid] [varchar] (50) COLLATE NOCASE NOT NULL,
	[DisplayName][varchar](50) COLLATE NOCASE NOT NULL,
	[ProcessingNodeNumber] [int] NOT NULL,
	[DataType][int] NOT NULL,
	[DataTarget][int] NOT NULL,
	[DataTargetForDisplay][int] NOT NULL,
	[Version][double] NOT NULL,
	[ShowDataInResults][bool],
	[Writable][bool],
	[ReadDataInResults][bool],
[Format][varchar](20)
);
CREATE TABLE CustomDataPeptides (
	[FieldID] [int] NOT NULL,
	[PeptideID] [int] NOT NULL,
	[FieldValue] [variant],
    PRIMARY KEY (		
                [FieldID],
                [PeptideID] 
                 )
);
CREATE TABLE CustomDataProteins (
	[FieldID] [int] NOT NULL,
	[ProteinID] [int] NOT NULL,
	[FieldValue] [variant],
    PRIMARY KEY (		
                [FieldID],
                [ProteinID] 
                 )
);
CREATE TABLE CustomDataSpectra (
	[FieldID] [int] NOT NULL,
	[SpectrumID] [int] NOT NULL,
	[FieldValue] [variant],
    PRIMARY KEY (		
                [FieldID],
                [SpectrumID] 
                 )
);
CREATE TABLE [Enzymes] (
	[EnzymeID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[Name] [varchar] (25) UNIQUE COLLATE NOCASE NOT NULL ,
	[Abbreviation] [varchar] (5) COLLATE NOCASE NOT NULL ,
	[Seperator] [varchar] (10) COLLATE NOCASE NOT NULL ,
	[NonSeperator] [varchar] (10) COLLATE NOCASE NOT NULL ,
	[Offset] [int] NOT NULL
);
CREATE TABLE [EnzymesCleavageSpecificities] (
	[EnzymeID] [int] NOT NULL ,
	[Specificity] [int] NOT NULL ,
    PRIMARY KEY (EnzymeID, Specificity)
);
CREATE TABLE FalseDiscoveryRates (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[ConfidenceLevel] [smallint] NOT NULL ,
	[TrueCount] [int] NOT NULL,
	[FalseCount] [int] NOT NULL,
	[Target] [double] NOT NULL,
	PRIMARY KEY (		
		[ProcessingNodeNumber],
		[ConfidenceLevel] 
		)
);
CREATE TABLE [FastaFiles] (
	[FastaFileID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[FileName] [varchar] (256) UNIQUE COLLATE NOCASE NOT NULL ,
	[State] [int] NOT NULL ,
	[VirtualFileName] [varchar] (256) COLLATE NOCASE NOT NULL ,
	[FileSize] [bigint] NOT NULL ,
	[FileTime] [bigint] NOT NULL ,
	[NumberOfProteins] [bigint] NULL ,
	[NumberOfAminoAcids] [bigint] NULL ,
	[FileHashCode] [bigint] NULL ,
	[Hidden] [bit] NOT NULL ,
	[IsSrfImport] [bit] NOT NULL ,
	[IsScheduledForDeletion] [bit] DEFAULT 0 NOT NULL 
);
CREATE TABLE [FastaFilesProteinAnnotations] (
	[FastaFileID] [int] NOT NULL ,
	[ProteinAnnotationID] [int] NOT NULL ,
	PRIMARY KEY (
		[FastaFileID],
		[ProteinAnnotationID]	
	)
);
CREATE TABLE [FileInfos] (	
	[FileID] [int] PRIMARY KEY NOT NULL ,
	[FileName] [varchar] (2048) COLLATE NOCASE NOT NULL ,	
	[FileTime] [datetime] NOT NULL ,
	[FileSize] [bigint] NOT NULL ,
	[PhysicalFileName] [varchar] (2048) COLLATE NOCASE NOT NULL ,
	[FileType] [smallint] NOT NULL 
);
CREATE TABLE [MassPeakRelations] (	
	[MassPeakID] [int] NOT NULL,
	[RelatedMassPeakID] [int] NOT NULL,
	PRIMARY KEY (		
		[MassPeakID],
		[RelatedMassPeakID] 
		)
);
CREATE TABLE [MassPeaks] (	
	[MassPeakID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	[Charge] [smallint] NULL ,
	[Intensity] [double] NULL ,
	[Mass] [double] NULL ,
	[ScanNumbers] [varchar](1000) NULL,
	[FileID] [int] NULL,
	UNIQUE(Charge, Mass, ScanNumbers, FileID)
);
CREATE TABLE [PeptideScores] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[PeptideID] [int] NOT NULL ,
	[ScoreID] [int] NOT NULL ,
	[ProcessingNodeID] [int] NULL ,
	[ScoreValue] [double] NOT NULL ,	
	PRIMARY KEY (		
		[ProcessingNodeNumber],
		[PeptideID],
		[ScoreID]
	)
);
CREATE TABLE [PeptideScores_decoy] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[PeptideID] [int] NOT NULL ,
	[ScoreID] [int] NOT NULL ,
	[ProcessingNodeID] [int] NULL ,
	[ScoreValue] [double] NOT NULL 
);
CREATE TABLE [Peptides] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[PeptideID] [int] NOT NULL ,
	[SpectrumID] [int] NOT NULL ,
	[TotalIonsCount] [smallint] NOT NULL ,
	[MatchedIonsCount] [smallint] NOT NULL ,
	[ConfidenceLevel] [smallint] NOT NULL ,
	[Hidden] [bit] DEFAULT 0 NOT NULL ,
	[Sequence] [varchar] (1024) COLLATE NOCASE NULL,	
	[Annotation] [varchar] (1024) COLLATE NOCASE NULL ,
	PRIMARY KEY (		
		[ProcessingNodeNumber],
		[PeptideID] 
		)
);
CREATE TABLE [PeptidesAminoAcidModifications] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[PeptideID] [int] NOT NULL ,
	[AminoAcidModificationID] [int] NOT NULL ,
	[Position] [int] NOT NULL ,
	PRIMARY KEY ( 		
		[ProcessingNodeNumber],
		[PeptideID],
		[AminoAcidModificationID],
		[Position]
		)
);
CREATE TABLE [PeptidesAminoAcidModifications_decoy] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[PeptideID] [int] NOT NULL ,
	[AminoAcidModificationID] [int] NOT NULL ,
	[Position] [int] NOT NULL 
);
CREATE TABLE [PeptidesProteins] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[PeptideID] [int] NOT NULL ,
	[ProteinID] [int] NOT NULL ,
	PRIMARY KEY (		
		[ProcessingNodeNumber],
		[PeptideID],
		[ProteinID]
		)
);
CREATE TABLE [PeptidesTerminalModifications] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[PeptideID] [int] NOT NULL ,
	[TerminalModificationID] [int] NOT NULL ,
	PRIMARY KEY (		
		[ProcessingNodeNumber],
		[PeptideID],
		[TerminalModificationID]
		)
);
CREATE TABLE [PeptidesTerminalModifications_decoy] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[PeptideID] [int] NOT NULL ,
	[TerminalModificationID] [int] NOT NULL 
);
CREATE TABLE [Peptides_decoy] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[PeptideID] [int] NOT NULL ,
	[SpectrumID] [int] NOT NULL ,
	[TotalIonsCount] [smallint] NOT NULL ,
	[MatchedIonsCount] [smallint] NOT NULL ,
	[ConfidenceLevel] [smallint] NOT NULL ,
	[Sequence] [varchar] (1024) COLLATE NOCASE NULL	
);
CREATE TABLE [PrecursorIonQuanResults] (
	[QuanChannelID][int] NOT NULL,
	[QuanResultID][int] NOT NULL,
	[Mass] [double] NOT NULL ,
	[Charge] [int] NOT NULL ,
	[Area] [double] NULL ,
	[RetentionTime] [double] NULL
);
CREATE TABLE [PrecursorIonQuanResultsEventSpectra] (
	[QuanResultID] [int] NOT NULL ,
	[QuanSpectrumID][int] NOT NULL
);
CREATE TABLE [PrecursorIonQuanResultsSearchSpectra] (
	[ProcessingNodeNumber] [int] NOT NULL ,
	[QuanResultID] [int] NOT NULL ,
	[SearchSpectrumID] [int] NULL 
);
CREATE TABLE [ProcessingNodeFilterParameters] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[FilterParameterName] [varchar] (50) COLLATE NOCASE NOT NULL ,
	[FilterModuleTypeID] [int] NOT NULL ,
	[FilterModuleNumber] [int] NOT NULL ,			
	[ProcessingNodeID] [int] NOT NULL ,
	[FilterParameterValue] [double] NOT NULL ,
	PRIMARY KEY ( [ProcessingNodeNumber], [FilterParameterName])
);
CREATE TABLE [ProcessingNodeInterfaces] (
	[ProcessingNodeID] INTEGER NOT NULL,
	[InterfaceKind] [int] NOT NULL,
	[InterfaceName] [varchar] (256) NOT NULL
);
CREATE TABLE [ProcessingNodeParameters] (	
	[ProcessingNodeNumber] [int] NOT NULL ,
	[ParameterName] [varchar] (50) COLLATE NOCASE NOT NULL ,
	[FriendlyName] [varchar](256) COLLATE NOCASE NOT NULL,	
	[ProcessingNodeID] [int] NOT NULL , 
	[IntendedPurpose] [int] NOT NULL, 
	[PurposeDetails] [varchar] (1024) COLLATE NOCASE NOT NULL, 
	[Hidden] [bit] NOT NULL, 
	[Advanced] [bit] NOT NULL, 
	[Category] [varchar] (50)  COLLATE NOCASE NOT NULL, 
	[Position] [int] NOT NULL, 
	[ParameterValue] [varchar] (50) COLLATE NOCASE NOT NULL ,
	[ValueDisplayString] [varchar] (1024) COLLATE NOCASE NOT NULL,
	PRIMARY KEY ( [ProcessingNodeNumber], [ParameterName] )
);
CREATE TABLE [ProcessingNodeScores] (
	[ProcessingNodeID] [int] NOT NULL ,
	[ScoreID]INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[ScoreName] [varchar] (50) COLLATE NOCASE NOT NULL ,		
	[FriendlyName] [varchar](256) COLLATE NOCASE NOT NULL,
	[Description] [varchar](1024) COLLATE NOCASE NOT NULL,
	[FormatString] [varchar](64) COLLATE NOCASE NOT NULL,
	[ScoreCategory] [int] NOT NULL,
	[Hidden] [bit] NOT NULL,
	[IsMainScore] [bit] NOT NULL,
	UNIQUE ([ProcessingNodeID], [ScoreName])
);
CREATE TABLE [ProcessingNodes] (	
	[ProcessingNodeNumber] [int] PRIMARY KEY NOT NULL ,
	[ProcessingNodeID] [int] NOT NULL ,
	[ProcessingNodeParentNumber] [varchar] (36) COLLATE NOCASE NOT NULL ,
	[NodeName] [varchar] (128) COLLATE NOCASE NULL ,
	[FriendlyName] [varchar](256) COLLATE NOCASE NOT NULL,
	[MajorVersion] [int] NOT NULL ,
	[MinorVersion] [int] NOT NULL ,
	[NodeComment] [varchar] (256) COLLATE NOCASE NULL ,
	[NodeGUID] [varchar] (36) COLLATE NOCASE NOT NULL	
);
CREATE TABLE ProcessingNodesSpectra (	
	[SendingProcessingNodeNumber] [int] NOT NULL,
	[SpectrumID] [int] NOT NULL,
	PRIMARY KEY (		
		[SendingProcessingNodeNumber],
		[SpectrumID] 
		)
);
CREATE TABLE [ProteinAnnotations] (
	[ProteinAnnotationID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[ProteinID] [int] NOT NULL ,
	[DescriptionHashCode] [bigint] NOT NULL ,
	[Description] [text] NOT NULL,
	[TaxonomyID] [int] NOT NULL
);
CREATE TABLE [ProteinIdentificationGroups] (
	[ProteinIdentificationGroupId] [int] NOT NULL,
	[ProcessingNodeNumber] [int] NOT NULL,	
	PRIMARY KEY (
		[ProteinIdentificationGroupId],
		[ProcessingNodeNumber] 		
	)
);
CREATE TABLE [ProteinScores] (	
	[ProcessingNodeNumber] [int] NOT NULL,
	[ProteinID] [int] NOT NULL ,
	[ProteinIdentificationGroupID] [int] NOT NULL ,
	[ProteinScore] [double] NOT NULL ,
	[Coverage] [int] DEFAULT 0 NOT NULL ,
	PRIMARY KEY ( 		
		[ProcessingNodeNumber],
		[ProteinID]
	)
);
CREATE TABLE [Proteins] (
	[ProteinID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[Sequence] [text] NOT NULL ,
	[SequenceHashCode] [bigint] NOT NULL
);
CREATE TABLE [QuanResults] (
	[QuanResultID] [int] NOT NULL ,	
	[SpectrumID] [int] NOT NULL ,
	[Height] [double] NULL ,
	[Area] [double] NULL ,
	[StartTime] [double] NULL ,
	[EndTime] [double] NULL ,
	[StartPeakTime] [double] NULL ,
	[StartPeakIntensity] [double] NULL ,
	[EndPeakTime] [double] NULL ,
	[EndPeakIntensity] [double] NULL ,
	PRIMARY KEY (
		[QuanResultID],		
		[SpectrumID]
		)
);
CREATE TABLE [ReporterIonQuanResults] (
	[ProcessingNodeNumber] [int] NOT NULL ,
	[QuanChannelID] [int] NOT NULL ,	
	[SpectrumID] [int] NOT NULL ,
	[Mass] [double] NOT NULL ,
	[Height] [double] NULL ,
	PRIMARY KEY (
		[ProcessingNodeNumber],
		[QuanChannelID],		
		[SpectrumID]
		)
);
CREATE TABLE [ReporterIonQuanResultsSearchSpectra] (
	[ProcessingNodeNumber] [int] NOT NULL ,
	[SpectrumID] [int] NOT NULL ,
	[SearchSpectrumID] [int] NULL 
);
CREATE TABLE [ResultFilterSet](
	[ResultFilterSet][text] NOT NULL
);
CREATE TABLE [ScanEvents] (
	[ScanEventID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[MSLevel] [tinyint] NOT NULL ,
	[Polarity] [tinyint] NOT NULL ,
	[ScanType] [tinyint] NOT NULL ,
	[Ionization] [tinyint] NOT NULL ,
	[MassAnalyzer] [tinyint] NOT NULL ,
	[ActivationType] [tinyint] NOT NULL ,
	UNIQUE (
		[MSLevel],
		[Polarity],
		[ScanType],
		[Ionization],
		[MassAnalyzer],		
        [ActivationType]
	)
);
CREATE TABLE [SchemaInfo] (
    [Version] [int] PRIMARY KEY NOT NULL,
	[Kind] [varchar] (32) NOT NULL,	
	[Date] [datetime] NOT NULL,
	[SoftwareVersion] [varchar] (64) NOT NULL,
	[Comment] [text] NOT NULL
);
CREATE TABLE Spectra (	
	[UniqueSpectrumID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL ,
	[Spectrum] [binary] NOT NULL,
	[SpectrumHashCode] [bigint] NULL
);
CREATE TABLE [SpectrumHeaders] (	
	[SpectrumID] [INTEGER] PRIMARY KEY NOT NULL ,
	[MassPeakID] [int] NULL ,
	[ScanEventID] [int] NULL ,
	[LastScan] [int] NULL ,
	[FirstScan] [int] NULL ,
	[RetentionTime] [double] NULL ,
	[Hidden] [bit] DEFAULT 0 NOT NULL ,	
	[ScanNumbers] [varchar](1000) NULL ,
	[Charge] [smallint] NULL ,
	[Mass] [double] NULL,
	[CreatingProcessingNodeNumber] [int] NOT NULL,	
	[UniqueSpectrumID] [int] DEFAULT 0 NOT NULL
);
CREATE TABLE SpectrumScores (	
	[ProcessingNodeNumber] [int] NOT NULL,
	[SpectrumID] [int] NOT NULL,
	[ScoreID] [int] NOT NULL,
	[Score] [double] NOT NULL,
	PRIMARY KEY (		
		[ProcessingNodeNumber],
		[SpectrumID],
		[ScoreID]
		)
);
CREATE TABLE [TaxonomyNames] (  
	[TaxonomyID] INTEGER NOT NULL ,
	[Name] [varchar](1024) COLLATE NOCASE NULL ,
	[NameCategory] INTEGER NOT NULL ,	
	UNIQUE (
		TaxonomyID,
		Name,
		NameCategory
	)
);
CREATE TABLE [TaxonomyNodes] (
	[TaxonomyID] INTEGER PRIMARY KEY NOT NULL ,
	[ParentTaxonomyID] INTEGER NOT NULL ,
	[TaxonomyRank] INTEGER NOT NULL ,
	[LeftNodeIndex] INTEGER NOT NULL ,
	[RightNodeIndex] INTEGER NOT NULL,
	UNIQUE (TaxonomyID)
);
CREATE TABLE [WorkflowInfo] (
	[WorkflowName] [varchar] (256) COLLATE NOCASE NOT NULL ,
	[WorkflowDescription] [varchar] (256) COLLATE NOCASE NOT NULL ,
	[WorkflowState] [int] DEFAULT 0 NOT NULL ,
	[WorkflowStartDate] [datetime] NOT NULL ,
	[WorkflowTemplate] [varchar] (256) NOT NULL ,
	[User] [varchar] (256) COLLATE NOCASE NOT NULL ,	
	[WorkflowGUID] [varchar] (36) COLLATE NOCASE NOT NULL ,
	[MachineGUID] [varchar] (36) COLLATE NOCASE NOT NULL ,
	[MachineName] [varchar] (256) COLLATE NOCASE NOT NULL,	
	[MergeSimilarIdentificationResults] [bit] NOT NULL,
	[IsValid] [bit] NOT NULL,	
	[Version] [int] NOT NULL	
);
CREATE TABLE [WorkflowMessages] (	
	[MessageID] INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	[ProcessingNodeID] [int] NOT NULL ,
	[ProcessingNodeNumber] [int] NOT NULL ,	
	[Time] [bigint] NOT NULL ,
	[MessageKind] [int] NOT NULL ,
	[Message] [varchar] (1024) COLLATE NOCASE NOT NULL 	
);
CREATE INDEX IX_CustomDataPeptides_PeptideID ON [CustomDataPeptides]
(
	[PeptideID]	
);
CREATE INDEX [IX_CustomDataProteins_ProteinID] ON [CustomDataProteins] 
											(
												[ProteinID] ASC
											);
CREATE INDEX [IX_CustomDataSpectra_SpectrumID] ON [CustomDataSpectra] 
											(
												[SpectrumID] ASC
											);
CREATE INDEX [IX_FastaFilesProteinAnnotations_ProteinAnnotationID] ON [FastaFilesProteinAnnotations] 
(
	[ProteinAnnotationID] ASC
);
CREATE INDEX [IX_PeptidesProteins_PeptideID] ON [PeptidesProteins] 
											(
												[PeptideID]	
											);
CREATE INDEX [IX_PrecursorIonQuanResultsEventSpectra_QuanResultID] ON [PrecursorIonQuanResultsEventSpectra] 
											(
												[QuanResultID] ASC
											);
CREATE INDEX [IX_PrecursorIonQuanResultsSearchSpectra_QuanResultID] ON [PrecursorIonQuanResultsSearchSpectra] 
											(
												[QuanResultID] ASC
											);
CREATE INDEX [IX_PrecursorIonQuanResultsSearchSpectra_SearchSpectrumID] ON [PrecursorIonQuanResultsSearchSpectra] 
											(
												[SearchSpectrumID] ASC
											);
CREATE INDEX [IX_PrecursorIonQuanResults_QuanResultID_QuanChannelID] 
											ON [PrecursorIonQuanResults] 
											(
												[QuanResultID],
												[QuanChannelID]
											);
CREATE INDEX [IX_ProteinAnnotations_ProteinID_DescriptionHashCode] ON [ProteinAnnotations]
(
	[ProteinID],
	[DescriptionHashCode]
);
CREATE INDEX [IX_ProteinAnnotations_TaxonomyID] ON [ProteinAnnotations]
(
	[TaxonomyID]
);
CREATE INDEX [IX_Proteins_SequenceHashCode] ON [Proteins] 
(
	[SequenceHashCode] ASC
);
CREATE INDEX [IX_QuanResults_SpectrumID] ON [QuanResults] 
											(
												[SpectrumID] ASC
											);
CREATE INDEX [IX_ReporterIonQuanResultsSearchSpectra_SearchSpectrumID] ON [ReporterIonQuanResultsSearchSpectra] 
											(
												[SearchSpectrumID]	
											);
CREATE INDEX [IX_ReporterIonQuanResults_ProcessingNodeNumber_SpectrumID] ON [ReporterIonQuanResults] 
											(
												[ProcessingNodeNumber],[SpectrumID]	
											);
CREATE INDEX [IX_SpectrumHeaders_MassPeakID] ON [SpectrumHeaders] 
(
	[MassPeakID] ASC	
);
CREATE INDEX [IX_SpectrumScores_SpectrumID] ON [SpectrumScores] 
											(
												[SpectrumID] ASC
											);
CREATE INDEX [IX_SpectrumScores_SpectrumID_ProcessingNodeNumber] ON [SpectrumScores] 
											(	
												[SpectrumID] ASC,
												[ProcessingNodeNumber] ASC
											);
CREATE INDEX [IX_TaxonomyNames_TaxonomyID] ON [TaxonomyNames] 
(
	[TaxonomyID] ASC
);
CREATE INDEX [IX_TaxonomyNodes_LeftNodeIndex_RightNodeIndex] ON [TaxonomyNodes]
(
	[LeftNodeIndex], [RightNodeIndex] ASC
);
