package su.nsk.iae.post.generator.py.common.statement

import su.nsk.iae.post.generator.py.common.ProcessGenerator
import su.nsk.iae.post.generator.py.common.ProgramGenerator
import su.nsk.iae.post.generator.py.common.StateGenerator
import su.nsk.iae.post.generator.py.common.StatementListGenerator
import su.nsk.iae.post.poST.ExitStatement
import su.nsk.iae.post.poST.Statement

class ExitStatementGenerator extends IStatementGenerator {
	
	new(ProgramGenerator program, ProcessGenerator process, StateGenerator state, StatementListGenerator context) {
		super(program, process, state, context)
	}
	
	override checkStatement(Statement statement) {
		return statement instanceof ExitStatement
	}
	
	override generateStatement(Statement statement) {
		return '''break'''
	}
	
}