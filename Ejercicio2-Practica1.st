Object subclass: #Cancion
	instanceVariableNames: 'duracion nombre_cancion'
	classVariableNames: ''
	package: 'Ejercicio2-Practica1'!

!Cancion methodsFor: 'as yet unclassified' stamp: 'Fernando 10/4/2023 23:31'!
getDuracion
	^duracion! !

!Cancion methodsFor: 'as yet unclassified' stamp: 'Fernando 10/5/2023 21:24'!
getNombre
	^nombre_cancion ! !


!Cancion methodsFor: 'initialization' stamp: 'Fernando 10/5/2023 21:23'!
initialize: duracion_ingresada
	duracion := duracion_ingresada.! !

!Cancion methodsFor: 'initialization' stamp: 'Fernando 10/5/2023 21:23'!
setNombreCancion: nombre_ingresado
	nombre_cancion := nombre_ingresado.! !


Object subclass: #ReproductorMusical
	instanceVariableNames: 'lista_canciones repeticion aleatorio'
	classVariableNames: ''
	package: 'Ejercicio2-Practica1'!

!ReproductorMusical methodsFor: 'as yet unclassified' stamp: 'Fernando 10/6/2023 01:27'!
activarOrdenAleatorio
	aleatorio := true.! !

!ReproductorMusical methodsFor: 'as yet unclassified' stamp: 'Fernando 10/5/2023 21:42'!
duracionTotalDeReproduccion
	|total_reproducciones|
	total_reproducciones := 0.
	lista_canciones do: [ :cancion | total_reproducciones := total_reproducciones + cancion getDuracion].
	^total_reproducciones 
! !

!ReproductorMusical methodsFor: 'as yet unclassified' stamp: 'Fernando 10/4/2023 23:28'!
agregarCanciones: coleccion_canciones_ingresadas
	lista_canciones addAll: coleccion_canciones_ingresadas! !

!ReproductorMusical methodsFor: 'as yet unclassified' stamp: 'Fernando 10/4/2023 23:12'!
agregarCancion: cancion_ingresada
	lista_canciones add: cancion_ingresada.! !

!ReproductorMusical methodsFor: 'as yet unclassified' stamp: 'Fernando 10/6/2023 01:47'!
reproducir
	lista_canciones := aleatorio ifTrue: [lista_canciones shuffled].
	repeticion ifTrue: [ lista_canciones := lista_canciones, lista_canciones].
	lista_canciones do: [ :cancion | Transcript show: 'Reproduciendo ', cancion getNombre printString; cr ]. 
	! !


!ReproductorMusical methodsFor: 'initialization' stamp: 'Fernando 10/6/2023 01:28'!
initialize 
	lista_canciones := OrderedCollection new.
	aleatorio := false.
	repeticion := false.! !
