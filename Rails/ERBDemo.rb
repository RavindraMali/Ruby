<% title = "ERM Demo Page" %>
<% content = "Ravindra Mali " %>

<html>
    <head> 
        <title> <%= title %></title>
    </head>
<body>
       <h2> <%= content %> </h2>
</body>
</html>

=begin
pcs200@pcs200-desktop:~/Desktop/ROR/Rails$ erb ERBDemo.rb
OUTPUT 

<html>
    <head> 
        <title> ERM Demo Page</title>
    </head>
<body>
       <h2> Ravindra Mali  </h2>
</body>
</html>
=end