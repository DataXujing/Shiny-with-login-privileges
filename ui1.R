

ui1<-tagList(
  
  div(id='login',
     
      wellPanel(
                textInput("username","Username"),
                passwordInput('password','Password'),
                br(),
                actionButton("Login","Log in"))),
  tags$style(type='text/css','#login{font-size:10px;position:absolute;bottom:400px;right:800px;}')
  
)


