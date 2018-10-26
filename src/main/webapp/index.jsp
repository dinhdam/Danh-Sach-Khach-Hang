<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 10/26/2018
  Time: 10:42 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>CustomerList</title>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
            integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
            crossorigin="anonymous">

      <!-- Optional theme -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
            integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
            crossorigin="anonymous">

      <!-- Latest compiled and minified JavaScript -->
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
              integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
              crossorigin="anonymous"></script>
      <style>
          img{
              width:50px;

          }
          .wrapper{
              width:55%;
              margin:0 auto;
          }
      </style>
  </head>
  <body>
 <%
    class Customer{
      private String name;
      private String DateOfBirth;
      private String address;
      private String picture;
      public Customer(){
      }
      public Customer(String name , String DateOfBirth, String address){
          this.name= name;
          this.DateOfBirth= DateOfBirth;
          this.address = address;
          this.picture = "<img src='/imgs/default_customer.jpeg'>";
      }

      public String toString(){
          return "<tr>\n" +
                  "             <td>"+this.name+"</td>\n" +
                  "             <td>"+this.DateOfBirth+"</td>\n" +
                  "             <td>"+this.address+"</td>\n" +
                  "             <td>"+this.picture+"</td>\n" +
                  "         </tr>";

      }
  }
 %>
  <%
      ArrayList<Customer> customerArrayList = new ArrayList<Customer>();
      Customer customer1 = new Customer("An","20.04.1993","Lao Cai");
      Customer customer2 = new Customer("Toan","15.12.1993","Bac Giang");
      Customer customer3 = new Customer("Khanh","20.03.1993","Ha Noi");
      Customer customer4 = new Customer("Bach","03.01.1993","Ha Noi");
      customerArrayList.add(customer1);
      customerArrayList.add(customer2);
      customerArrayList.add(customer3);
      customerArrayList.add(customer4);

  %>
 <div class="wrapper">
     <table class="table table-hover">
        <tr>
             <th><p>Tên</p></th>

             <th><p> Ngày Sinh</p></th>

             <th> <p>Địa Chỉ</p></th>

             <th><p>Ảnh Đại Diện</p></th>
        </tr>

         <%
             for(Customer user : customerArrayList){
                out.print(user);
             }
         %>
     </table>
 </div>
  </body>
</html>
