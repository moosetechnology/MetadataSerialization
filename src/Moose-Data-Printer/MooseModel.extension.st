Extension { #name : #MooseModel }

{ #category : #'*Moose-Data-Printer' }
MooseModel >> exportMetadataOn:aStream [

  aStream nextPutAll: 'hello'.
]

{ #category : #'*Moose-Data-Printer' }
MooseModel >> exportMetadataTo: aStream usingPrinter: aPrinter metadata: aMetadata [

	| printer |
	printer := FMJSONPrinter on: aStream.

	aStream nextPutAll: '{'.
	printer inProperty: 'modelName' do: [ printer primitive: self name ].
	aStream nextPutAll: ', '.
	printer
		inProperty: 'modelClass'
		do: [ printer primitive: self className ].
	aStream nextPut: $}.
	aStream cr
]

{ #category : #'*Moose-Data-Printer' }
MooseModel >> metadataHolder [
^ MooseModelMetadataHolder new model: self;
yourself 
]
