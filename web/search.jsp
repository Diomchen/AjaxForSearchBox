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

            xmlHttp = createXmlHttp();//使用一个xmlHttp的对象
            var url = "search?keyword="+escape(content.value);//escape是防止中文传输出错
            xmlHttp.open("GET",url,true);//true表示JavaScript脚本会在send()方法之后继续执行，而不会等待来自服务器的响应

        }



        xmlHttp.onreadystatechange = callBack;
        xmlHttp.send(null);

        function createXmlHttp(){
            var xmlHttp;
            if(window.XMLHttpRequest){
                xmlHttp = new XMLHttpRequest();
            }
            if(window.ActiveXObject){
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
                if(!xmlHttp){
                    xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
                }
            }
            return xmlHttp;
        }

        function callBack(){
            if(xmlHttp.readyState == 4){
                if(xmlHttp.status == 200){
                    var result = xmlHttp.responseText;
                    var json = eval("("+result+")");
                }
                else if(xmlHttp.status == 404){

                }
                else if(xmlHttp.status == 500){

                }
            }

        }

    </script>
</head>
<body>
    <div id="search-body">
        <input type="search" name="search" id="search-box" onkeyup="getMoreContents()"/>
        <button  id="search-button" >Search</button>
    </div>
</body>
</html>
