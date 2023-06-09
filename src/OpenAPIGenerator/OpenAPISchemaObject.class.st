Class {
	#name : #OpenAPISchemaObject,
	#superclass : #Object,
	#instVars : [
		'type',
		'title',
		'description'
	],
	#category : #'OpenAPIGenerator-Model'
}

{ #category : #'instance creation' }
OpenAPISchemaObject class >> for: aSchemaTypeString [

	aSchemaTypeString asLowercase = #string ifTrue: [ 
		^ OpenAPIStringSchemaObject new ].
	aSchemaTypeString asLowercase = #integer ifTrue: [ 
		^ OpenAPIIntegerSchemaObject new ].
	aSchemaTypeString asLowercase = #boolean ifTrue: [ 
		^ OpenAPIBooleanSchemaObject new ].
	aSchemaTypeString asLowercase = #array ifTrue: [ 
		^ OpenAPIArraySchemaObject new ].
	^ OpenAPIObjectSchemaObject new
]

{ #category : #accessing }
OpenAPISchemaObject class >> neoJsonMapping: mapper [

	mapper for: self do: [ :mapping | mapping mapInstVars: #( type title description ) ]
]

{ #category : #accessing }
OpenAPISchemaObject >> description [

	^ description
]

{ #category : #accessing }
OpenAPISchemaObject >> description: anObject [

	description := anObject
]

{ #category : #accessing }
OpenAPISchemaObject >> title [

	^ title
]

{ #category : #accessing }
OpenAPISchemaObject >> title: anObject [

	title := anObject
]

{ #category : #accessing }
OpenAPISchemaObject >> type [

	^ type
]

{ #category : #accessing }
OpenAPISchemaObject >> type: anObject [

	type := anObject
]
