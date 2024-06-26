Extension { #name : #MooseModel }

{ #category : #'*Moose-Data-Printer' }
MooseModel >> exportMetadataOn:aStream [

  aStream nextPutAll: 'hello'.
]

{ #category : #'*Moose-Data-Printer' }
MooseModel >> exportMetadataUsingPrinter: aPrinter metadata: aMetadata [

	aPrinter
		printEntityOpener;
		inProperty: 'metadata' do: [
			aPrinter printEntityOpener
				inProperty: 'modelName' do: [ aPrinter primitive: self name ];
				printEntitySeparator;
				inProperty: 'modelClass'
				do: [ aPrinter primitive: self className ];
				printEntityCloser ];
		printEntitySeparator;
		printEntityLineBreak;
		inProperty: 'entities' 
		do: [ self exportWithMetamodelUsingPrinter: aPrinter ];
		printEntityCloser;
		printEntityLineBreak
]

{ #category : #'*Moose-Data-Printer' }
MooseModel >> metadataHolder [
^ MooseModelMetadataHolder new model: self;
yourself 
]
