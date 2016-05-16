package org.xtext.example.mydsl.ui.tests

import org.eclipse.xtext.junit4.InjectWith
import org.eclipse.xtext.junit4.XtextRunner
import org.eclipse.xtext.xbase.junit.ui.AbstractContentAssistTest
import org.junit.Test
import org.junit.runner.RunWith
import org.eclipse.xtext.junit4.ui.AbstractOutlineTest
import org.xtext.example.mydsl.ui.internal.MydslActivator

@RunWith(XtextRunner)
@InjectWith(MyDslUiInjectorProvider)
class MyDslOutlineTest extends AbstractOutlineTest {

	override protected getEditorId() {
		MydslActivator.ORG_XTEXT_EXAMPLE_MYDSL_MYDSL
	}

	@Test
	def void testOutline() {
		'''
			Hello world!
			alias foo for world
		'''.assertAllLabels(
			'''
				test
				  Hello world
				  alias foo
			'''
		)
	}
}
