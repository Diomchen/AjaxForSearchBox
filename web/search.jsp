<%--
  Created by IntelliJ IDEA.
  User: Shuhan Chen
  Date: 2018/10/12
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
    <style type="text/css">
        #search-body{
            position: absolute;
            top: 40%;
            left: 38%;
        }

        #search-box{
            width: 300px;
            height: 30px;
            border: 1px solid #000000;
            border-radius: 3px;
        }
    </style>

    <script type="text/javascript">
        var xmlHttp;
        function getMoreContents() {
            var content = document.getElementById('search-box');
            if(content.value == ""){
                return ;
            }
        }

        xmlHttp = createXmlHttp();
        alert(xmlHttp);

        function createXmlHttp(){
            var xmlHttp;
            if(window.XMLHttpRequest){
                xmlHttp = new XMLHttpRequest();
            }
            if(window.ActiveXObject){
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                if(!xmlHttp){
                    xmlHttp = new ActiveXObject("Msxml.XMLHTTP");
                }
            }
        }

        // function

    </script>
</head>
<body>
    <div id="search-body">
        <input type="search" name="search" id="search-box" onkeyup="getMoreContents()"/>
        <button  id="search-button" >Search</button>
    </div>
</body>
</html>
