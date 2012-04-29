<%@ page import="placements.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'application', 'error')} ">
	<label for="application">
		<g:message code="student.application.label" default="Application" />
		
	</label>
	<g:textField name="application" value="${studentInstance?.application}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'courseCode', 'error')} ">
	<label for="courseCode">
		<g:message code="student.courseCode.label" default="Course Code" />
		
	</label>
	<g:textField name="courseCode" value="${studentInstance?.courseCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'notes', 'error')} ">
	<label for="notes">
		<g:message code="student.notes.label" default="Notes" />
		
	</label>
	<g:textField name="notes" value="${studentInstance?.notes}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="student.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${placements.Student.list()}" optionKey="id" required="" value="${studentInstance?.student?.id}" class="many-to-one"/>
</div>

