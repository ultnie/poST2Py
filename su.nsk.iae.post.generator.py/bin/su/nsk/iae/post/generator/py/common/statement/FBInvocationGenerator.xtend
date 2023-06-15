package su.nsk.iae.post.generator.py.common.statement

import su.nsk.iae.post.generator.py.common.ProgramGenerator
import su.nsk.iae.post.generator.py.common.ProcessGenerator
import su.nsk.iae.post.generator.py.common.StateGenerator
import su.nsk.iae.post.generator.py.common.StatementListGenerator
import su.nsk.iae.post.poST.Statement
import su.nsk.iae.post.poST.FBInvocation

class FBInvocationGenerator extends IStatementGenerator {
	
	new(ProgramGenerator program, ProcessGenerator process, StateGenerator state, StatementListGenerator context) {
		super(program, process, state, context)
	}
	
	override checkStatement(Statement statement) {
		return statement instanceof FBInvocation
	}
	
	override generateStatement(Statement statement) {
		val s = statement as FBInvocation
		return '''�s.fb.name�(�context.generateParamAssignmentElements(s.args)�)'''
	}
	
}