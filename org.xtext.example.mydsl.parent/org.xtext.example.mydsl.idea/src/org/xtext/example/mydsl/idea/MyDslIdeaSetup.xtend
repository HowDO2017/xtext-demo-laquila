/*
 * generated by Xtext 2.10.0-SNAPSHOT
 */
package org.xtext.example.mydsl.idea

import org.eclipse.xtext.ISetup
import org.eclipse.xtext.idea.extensions.EcoreGlobalRegistries

class MyDslIdeaSetup implements ISetup {

	override createInjectorAndDoEMFRegistration() {
		EcoreGlobalRegistries.ensureInitialized
		new MyDslStandaloneSetupIdea().createInjector
	}

}
