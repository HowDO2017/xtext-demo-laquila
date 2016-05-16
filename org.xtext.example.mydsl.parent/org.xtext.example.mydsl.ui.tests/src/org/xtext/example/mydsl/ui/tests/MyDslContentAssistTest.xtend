package org.xtext.example.mydsl.ui.tests

import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.xbase.junit.ui.AbstractContentAssistTest
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(XtextRunner)
@InjectWith(MyDslUiInjectorProvider)
class MyDslContentAssistTest extends AbstractContentAssistTest {

	@Test
	def void testEmptyProgram() {
		newBuilder.append("").assertProposal("Hello")
	}

	@Test
	def void testProposalForReferences() {
		newBuilder.append("Hello world! alias foo for ").
			assertProposal("world")
	}
}
