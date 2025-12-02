<!DOCTYPE html>

<%@page import="model.FileModel"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.Dao"%>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hook</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/shorthandcss@1.1.1/dist/shorthand.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:200,300,400,500,600,700,800,900&display=swap" />
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css" />
    <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
</head>

<body class="bg-black muli">
    <nav class="w-100pc flex flex-column md-flex-row md-px-10 py-5 bg-black">
        <div class="flex justify-between">
            <a href="#" class="flex items-center p-2 mr-4 no-underline">
                <img class="max-h-l2 w-auto" src="assets/images/logo.png" />
            </a>
            <a data-toggle="toggle-nav" data-target="#nav-items" href="#"
                class="flex items-center ml-auto md-hidden indigo-lighter opacity-50 hover-opacity-100 ease-300 p-1 m-3">
                <i data-feather="menu"></i>
            </a>
        </div>
        <div id="nav-items" class="hidden flex sm-w-100pc flex-column md-flex md-flex-row md-justify-end items-center">
            <a href="RelativeHome.jsp" class="fs-s1 mx-3 py-3 indigo no-underline hover-underline">Home</a>
            <a href="ViewPatientsList.jsp" class="fs-s1 mx-3 py-3 indigo no-underline hover-underline">View Patient's List</a>
            <a href="ViewPFiles.jsp" class="fs-s1 mx-3 py-3 indigo no-underline hover-underline">View Patient's Report</a>
            <a href="index.html" class="fs-s1 mx-3 py-3 indigo no-underline hover-underline">Sign Out</a>
        </div>
    </nav>
   

    <!-- hero section -->
    <section id="home" class="min-h-100vh flex justify-start items-center">
        <div class="mx-5 md-mx-l5">
            <div>
                <h1 class="white fs-l3 lh-2 md-fs-xl1 md-lh-1 fw-900 ">Patient Report Encrypted</h1>
                
 
                <%
                
                List<FileModel> files=Dao.getPatientList();
                
                %>
              
                
                </tr>
                 <table class="w3-table w3-blue" style="width:1150px;text-align: center;font-size: 16px;" border="1";"><thead>
<tr style="color:#FFF;">

<th>File Id</th>
<th>User Id</th>
<th>Encrypt Download</th>
<th>Decrypt Download</th>

</tr></thead>

                
                <%
                
               for(FileModel f: files){%>
            	   <tr>
            	   <tr style="color: white;">
            	   <td><%=f.getFileId() %></td>
            	<td><%=f.getUid() %>
            	<td><a href="FileDownload?fid=<%=f.getFileId()%>">Download</a></td>
            		<td><a href="FileDecryptDownload?fid=<%=f.getFileId()%>&&userid=<%=session.getAttribute("email")%>">Download Decypted File</a></td>
            	   </tr>
             <% }
                
                %>
              
                
                
                </table>
                
                </div>
                </div>
                </section>
                </body>
                </html>