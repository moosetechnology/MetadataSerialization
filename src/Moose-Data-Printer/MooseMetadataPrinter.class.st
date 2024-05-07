Class {
	#name : #MooseMetadataPrinter,
	#superclass : #Object,
	#instVars : [
		'stream',
		'metadataHolder'
	],
	#category : #'Moose-Data-Printer'
}

{ #category : #'as yet unclassified' }
MooseMetadataPrinter class >> metadataHolder: aMooseModelMetatdataHolder [

	^ self new
		  metadataHolder: aMooseModelMetatdataHolder;
		  yourself
]

{ #category : #accessing }
MooseMetadataPrinter >> metadataHolder: anObject [

	metadataHolder := anObject
]

{ #category : #printing }
MooseMetadataPrinter >> printModel [

	stream nextPutAll: metadataHolder mooseModelName
]

{ #category : #printing }
MooseMetadataPrinter >> printModelOn: aStream [

stream:= aStream.
self printModel
]
