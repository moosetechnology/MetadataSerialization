Extension { #name : #MooseModel }

{ #category : #'*Moose-Data-Printer' }
MooseModel >> exportMetadataOn:aStream [

  aStream nextPutAll: 'hello'.
]

{ #category : #'*Moose-Data-Printer' }
MooseModel >> exportTo: aStream usingPrinter: aPrinter [
	"self exportMetadatatoStreamusingPrinter"
	self exportMetadataOn:aStream.

	self
		exportWithMetamodel: self metamodel
		to: aStream
		usingPrinter: aPrinter
]

{ #category : #'*Moose-Data-Printer' }
MooseModel >> metadataHolder [
^ MooseModelMetadataHolder new model: self;
yourself 
]
