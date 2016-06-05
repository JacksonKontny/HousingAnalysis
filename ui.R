shinyUI(fluidPage(
  titlePanel("Predicting Home Price"),
  sidebarLayout(
    sidebarPanel(
      h3("CSC 465"),
      p("By: Jackson Kontny, Thomas Nuegyn, Daniel Glownia"),
      br()
      #img(src = "house-011.jpg", height = 72, width = 72),
      #"shiny is a product of ", 
      #span("RStudio", style = "color:blue")
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
      p("Can the 31 parameters selected be used to successfully predict housing value with a confidence interval greater than ",
        strong("80%"),
        "?"),
      
      
      br(),
      h2("Dependent variable"),
      p("Can the 31 parameters selected be used to successfully predict housing value with a confidence interval greater than ",
        strong("80%"),
        "?"),
      
      
      br(),
      h2("Quantitative vs. Qualitative"),
      p("Can the 31 parameters selected be used to successfully predict housing value with a confidence interval greater than ",
        strong("80%"),
        "?"),
      
      
      br(),
      h2("Research question"),
      p("Can the 31 parameters selected be used to successfully predict housing value with a confidence interval greater than ",
        strong("80%"),
        "?"),
      
      
      br(),
      h2("Research question"),
      p("Can the 31 parameters selected be used to successfully predict housing value with a confidence interval greater than ",
        strong("80%"),
        "?"),
      
      
      br(),
      h2("Research question"),
      p("Can the 31 parameters selected be used to successfully predict housing value with a confidence interval greater than ",
        strong("80%"),
        "?"),
      
      
      br(),
      h2("Research question"),
      p("Can the 31 parameters selected be used to successfully predict housing value with a confidence interval greater than ",
        strong("80%"),
        "?")
    )
  )
  ))