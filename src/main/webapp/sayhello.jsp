<%-- Document : sayhello Created on : 08/02/2021, 23:08:15 Author : viter --%>

    <%@page contentType="text/html" pageEncoding="UTF-8" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
            <!DOCTYPE html>
            <html>

            <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>SayHello.jsp</title>
            </head>

            <body>
                <style type="text/css">
                    header {
                        text-align: center;
                        background-color: aliceblue;
                        color: #000000;

                    }

                    footer {
                        background-color: aliceblue;
                        text-align: center;
                        color: #000000;
                    }
                </style>

                <header>
                    <tittle>
                        <h2>Tarefa Hello Word No Heroku</h2>
                    </tittle>
                </header>
                <jsp:useBean id="myBean" class="hello.MessageBean" />
                <h1>Aplicativo HelloWorld</h1>
                <% String lang=request.getParameter("lang"); %>
                    <h2>
                        <jsp:setProperty name="myBean" property="lang" value="<%=lang%>" />
                        <jsp:getProperty name="myBean" property="msg" />, <%=request.getParameter("nome")%>!
                    </h2>
                    <jsp:getProperty name="myBean" property="msg2" />
                    <jsp:getProperty name="myBean" property="aut" />
                    <footer>
                        <h2>Desenvolvimento de aplicações corpororativas</h2>
                    </footer>
            </body>

            </html>