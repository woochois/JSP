<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ tag dynamic-attributes="attrMap" %>

<%@ attribute name="attr1" %>
<%@ attribute name="attr2" %>
 

<h1>tag7</h1>
${attr1}, ${attr2} <br />
${attrMap.attr3} <br />
${attrMap.attr1} <br />
${attrMap.attr2}