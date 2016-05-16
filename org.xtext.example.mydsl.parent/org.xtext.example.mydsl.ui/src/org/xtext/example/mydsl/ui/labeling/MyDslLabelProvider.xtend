/*
 * generated by Xtext 2.10.0-SNAPSHOT
 */
package org.xtext.example.mydsl.ui.labeling

import com.google.inject.Inject
import org.eclipse.emf.edit.ui.provider.AdapterFactoryLabelProvider
import org.eclipse.xtext.ui.label.DefaultEObjectLabelProvider
import org.xtext.example.mydsl.myDsl.Greeting
import org.xtext.example.mydsl.myDsl.GreetingReference

/**
 * Provides labels for EObjects.
 * 
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#label-provider
 */
class MyDslLabelProvider extends DefaultEObjectLabelProvider {

	@Inject
	new(AdapterFactoryLabelProvider delegate) {
		super(delegate);
	}

	// Labels and icons can be computed like this:
	
	def text(Greeting ele) {
		'Hello ' + ele.name
	}

	def text(GreetingReference ele) {
		'alias ' + ele.name
	}

//
//	def image(Greeting ele) {
//		'Greeting.gif'
//	}
}
