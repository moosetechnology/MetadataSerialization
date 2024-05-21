Class {
	#name : #MooseModelMetadataHolder,
	#superclass : #Object,
	#instVars : [
		'mooseModel'
	],
	#classInstVars : [
		'metadata',
		'mooseModel'
	],
	#category : #'Moose-Data-Printer'
}

{ #category : #accessing }
MooseModelMetadataHolder >> mooseModel: aMooseModel [
 mooseModel:= aMooseModel 
]

{ #category : #accessing }
MooseModelMetadataHolder >> mooseModelClassName [

	^ mooseModel className
]

{ #category : #accessing }
MooseModelMetadataHolder >> mooseModelName [
^ mooseModel name
	
]
