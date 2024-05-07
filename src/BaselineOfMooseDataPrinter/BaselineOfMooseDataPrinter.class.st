Class {
	#name : #BaselineOfMooseDataPrinter,
	#superclass : #Object,
	#category : #BaselineOfMooseDataPrinter
}

{ #category : #baselines }
BaselineOfMooseDataPrinter >> baseline: spec [

	<baseline>
	spec for: #common do: [
		spec
			package: 'Moose-Data-Printer';
			package: 'Moose-Data-Printer-Tests' with: [ spec requires: 'Moose-Data-Printer' ]]
]
