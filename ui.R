shinyUI(fluidPage(
  titlePanel("Predicting Home Price"),
  p("By: Jackson Kontny, Thomas Nuegyn, Daniel Glownia"),
  br(),
  sidebarLayout(
    navlistPanel(
      tabPanel("First"),
      tabPanel("Second"),
      tabPanel("Third")
    ),
    mainPanel(
      h2("Data Source"),
      p("Our model used inputs from the U.S. Department of Housing 
        and Urban Development’s (HUD) Housing Affordability Data System (HADS), 
        an aggregate dataset comprised of data from the American Housing Survey,
        the Millennial Housing Commission (MHC), various metropolitan data sources,
        and separate analysis variables computed by HUD and MHC analysts.  
        HADS was developed to help policy makers and statisticians work 
        together to better understand housing affordability.", 
        em("incredibly easy"), 
        " to build interactive web applications with R."),
      br(),
      p("To view the data source and the variables: ",
        a("Housing Data", 
          href = "https://www.huduser.gov/portal/datasets/hads/hads.html")),
      
      
      br(),
      h2("Research question"),
      p("Can the 31 parameters selected be used to successfully predict housing value with a confidence interval greater than ",
        strong("80%"),
        "?"),
      
      
      br(),
      h2("Independent variables"),
      
      
      br(),
      h2("Dependent Variable"),
      
      
      br(),
      h2("Quantitative vs. Qualitative"),
      
      
      br(),
      h2("Correlation and Scatter plots"),
      
      
      br(),
      h2("The search for a model"),
      
      
      br(),
      h2("Transformations"),
      
      
      br(),
      h2("Checking of assumptions"),
      
      br(),
      h2("Model validation"),
      
      br(),
      h2("Prediction"),
      fluidRow(
        
        column(1, 
               numericInput("num", 
                            label = h5("Numeric input"), 
                            value = 1)),   
        
        column(1, 
               numericInput("num", 
                            label = h5("Numeric input"), 
                            value = 1)),   
        
        column(1, 
               numericInput("num", 
                            label = h5("Numeric input"), 
                            value = 1)),   
        
        column(1, 
               numericInput("num", 
                            label = h5("Numeric input"), 
                            value = 1))  
      ),
      
      br(),
      h2("Conclusion"),
      p("Since the Department of Housing and Urban Development did not include the 
        date of each observation in the data set, our prediction does not take into 
        account of the seasonal variation in the real estate market.  Below was the 
        actual fluctuation of the median sales price in Chicago for a 2-bedroom.  
        Median prices ranged from $115,000 to $158,000.")
    )
  )
  ))