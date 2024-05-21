Class {
	#name : #MetaDataPrinterTests,
	#superclass : #TestCase,
	#category : #'Moose-Data-Printer-Tests'
}

{ #category : #'as yet unclassified' }
MetaDataPrinterTests >> expectedOutput [

	^ '{
	
	"modelName":"TestModel",
	"modelClass":"FamixJavaModel"
}
[{
	"FM3":"Famix-Java-Entities.Class",
	"id":1,
	"name":"ClassFamix",
	"isAbstract":false,
	"isClassSide":false,
	"isFinal":false,
	"isStub":false,
	"numberOfLinesOfCode":0
	}
]'
]

{ #category : #tests }
MetaDataPrinterTests >> testExportMetadataUsingPrinter [

	| model printer |
	model := FamixJavaModel named: 'TestModel'.
model newClassNamed: #ClassFamix.

	printer := FMJSONPrinter onString.

	model exportWithMetamodelUsingPrinter: printer.
	self assert: printer stream contents equals: self expectedOutput
]

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
