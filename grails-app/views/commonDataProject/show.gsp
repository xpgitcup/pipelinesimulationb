
<%@ page import="cn.edu.cup.commondata.CommonDataProject" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'commonDataProject.label', default: 'CommonDataProject')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-commonDataProject" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-commonDataProject" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list commonDataProject">
			
				<g:if test="${commonDataProjectInstance?.project}">
				<li class="fieldcontain">
					<span id="project-label" class="property-label"><g:message code="commonDataProject.project.label" default="Project" /></span>
					
						<span class="property-value" aria-labelledby="project-label"><g:link controller="keyWord" action="show" id="${commonDataProjectInstance?.project?.id}">${commonDataProjectInstance?.project?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${commonDataProjectInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="commonDataProject.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${commonDataProjectInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commonDataProjectInstance?.dataId}">
				<li class="fieldcontain">
					<span id="dataId-label" class="property-label"><g:message code="commonDataProject.dataId.label" default="Data Id" /></span>
					
						<span class="property-value" aria-labelledby="dataId-label"><g:fieldValue bean="${commonDataProjectInstance}" field="dataId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${commonDataProjectInstance?.items}">
				<li class="fieldcontain">
					<span id="items-label" class="property-label"><g:message code="commonDataProject.items.label" default="Items" /></span>
					
						<g:each in="${commonDataProjectInstance.items}" var="i">
						<span class="property-value" aria-labelledby="items-label"><g:link controller="commonDataItem" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:commonDataProjectInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${commonDataProjectInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
