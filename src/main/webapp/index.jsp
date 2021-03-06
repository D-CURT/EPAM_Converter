<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ page import="utils.Constants"%>

<html>
  <head>
      <title>index</title>
      <script type="text/javascript" src="content/JS/Scripts.js"></script>
  </head>
  <body>
  <%@include file="jsp/header.jsp"%>
  <hr>
      <c:if test="${error != null}">
          <p style="color: red">${error}</p>
      </c:if>
      <form action="converter" name="inputForm" method="post">
          <input id="serv" type="hidden" name="service" value="${service}">
          <input type="hidden" name="results" value="">
          <input type="text" name="inputValue" value="${inputValue}" title="input">
          <select name="from" title="selectFrom" id="">
              <option value="<%=Constants.KMH%>"><%=Constants.KMH%></option>
              <option value="<%=Constants.MPH%>"><%=Constants.MPH%></option>
              <option value="<%=Constants.KN%>"><%=Constants.KN%></option>
              <option value="<%=Constants.MS%>"><%=Constants.MS%></option>
          </select>
          to
          <select name="to" title="selectTo">
              <option value="<%=Constants.KMH%>"><%=Constants.KMH%></option>
              <option value="<%=Constants.MPH%>"><%=Constants.MPH%></option>
              <option value="<%=Constants.KN%>"><%=Constants.KN%></option>
              <option value="<%=Constants.MS%>"><%=Constants.MS%></option>
          </select>
          <input type="button" value="Convert" onclick="serviceTypeInitializer('conversion')">
          <br>


      </form>
  <%@include file="jsp/viewResults.jsp"%>
  </body>
</html>
