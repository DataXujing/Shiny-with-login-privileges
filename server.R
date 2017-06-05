

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  Logged<-F;
  my_username<-'xujing'      
  my_password<-"xujing";
  
  USER<-reactiveValues(Logged=Logged)
  
  observe({
    if (USER$Logged==F)
    {
     if(!is.null(input$Login)) 
     {
       if(input$Login>0)
       {
         if(input$username==my_username & input$password==my_password)
         {
          
          
             output$page<-renderUI({ui2})  
         
         }
       }
     }
    }
    
    
  })
  
  output$page<-renderUI({
    if(USER$Logged==F)
    {
      div(class="outer",do.call(bootstrapPage,c("",ui1)))                  
      #do.call() 是告诉list一个函数，然后list里的所有元素来执行这个函数。
    }
    else
      ui2
  })
  
#--------------------------------------------------------------------------
  
  
  output$distPlot <- renderPlot({
    x    <- faithful[, 2]  # Old Faithful Geyser data
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  
})