Class {
	#name : #MetaDataPrinterTests,
	#superclass : #TestCase,
	#category : #'Moose-Data-Printer-Tests'
}

{ #category : #'as yet unclassified' }
MetaDataPrinterTests >> testPrinter [

	| printer metadataHolder myModel |
	myModel := FamixJavaModel new.
	metadataHolder := MooseModelMetadataHolder new
		                  mooseModel: myModel;
		                  yourself.
	printer := MooseMetadataPrinter metadataHolder: metadataHolder.

	self assert: metadataHolder mooseModelName equals: myModel name
]

{ #category : #'as yet unclassified' }
MetaDataPrinterTests >> testwriter [

	| printer resultString |
	printer := MooseMetadataPrinter new.
	resultString := String streamContents: [ :stream |
		                printer printModelOn: stream.].
	self assert: resultString equals: 'hello'
]
