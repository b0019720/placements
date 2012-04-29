<%@ page import="placements.Application" %>



<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'placement', 'error')} required">
	<label for="placement">
		<g:message code="application.placement.label" default="Placement" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="placement" name="placement.id" from="${placements.Placement.list()}" optionKey="id" required="" value="${applicationInstance?.placement?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'status', 'error')} required">
	<label for="status">
		<g:message code="application.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="status" name="status.id" from="${placements.Status.list()}" optionKey="id" required="" value="${applicationInstance?.status?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'student', 'error')} required">
	<label for="student">
		<g:message code="application.student.label" default="Student" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="student" name="student.id" from="${placements.Student.list()}" optionKey="id" required="" value="${applicationInstance?.student?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: applicationInstance, field: 'timeStamp', 'error')} ">
	<label for="timeStamp">
		<g:message code="application.timeStamp.label" default="Time Stamp" />
		
	</label>
	<g:textField name="timeStamp" value="${applicationInstance?.timeStamp}"/>
</div>

