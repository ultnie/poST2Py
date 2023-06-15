package su.nsk.iae.post.generator.py.common.statement

import su.nsk.iae.post.generator.py.common.ProcessGenerator
import su.nsk.iae.post.generator.py.common.ProgramGenerator
import su.nsk.iae.post.generator.py.common.StateGenerator
import su.nsk.iae.post.generator.py.common.StatementListGenerator
import su.nsk.iae.post.poST.Statement
import su.nsk.iae.post.poST.StopProcessStatement

import static extension su.nsk.iae.post.generator.py.common.util.GeneratorUtil.*

class StopProcessStatementGenerator extends IStatementGenerator {
	
	new(ProgramGenerator program, ProcessGenerator process, StateGenerator state, StatementListGenerator context) {
		super(program, process, state, context)
	}
	
	override checkStatement(Statement statement) {
		return statement instanceof StopProcessStatement
	}
	
	override generateStatement(Statement statement) {
		val s = statement as StopProcessStatement
		//return '''�IF s.process !== null��program.generateProcessEnum(s.process.name)��ELSE��process.generateEnumName��ENDIF� := �generateStopConstant�;'''
		return '''�IF s.process !== null��program.generateProcessStop(s.process.name)��ELSE��process.generateStop��ENDIF�'''
	}
	
}