shinyUI(fluidPage(
  titlePanel("Predicting Home Price"),
  sidebarLayout(
    sidebarPanel(
      h3("CSC 465"),
      p("By: Jackson Kontny, Thomas Nuegyn, Daniel Glownia"),
      br()
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
      p(" AGE1 --  Age of head of household"),
      p( "APLMED -- Median Income Adjusted for # of Persons"),
      p("BEDRMS --# of Bedrooms in unit"),
      p(" BUILT --  Year unit was built"),
      p("IPOV-- Poverty Income"),
      p("METRO3 -- Central City / Suburban Status"),
      p("NUNITS -- # of units in building"),
      p("PER -- # of persons in household"),
      p("ROOMS -- # of rooms in unit"),
      p("STRUCTURETYPE -- Recoded structure type "),
      p("ZINC2 -- Household Income "),
      p("ZSMHC -- Monthly housing costs "),
      
      
      br(),
      h2("Dependent Variable"),
      p("We selected VALUE as our dependent variable.  From Table 1, VALUE is 
        the current market value of the unit in the survey.  We were interested 
        in predicting unit market value for practical purposes. "),
      
      br(),
      h2("Model Prediction"),
      p("In 2013, for a typical 2-bedroom, 6 rooms unit, 26-year-old tenant’s income at $70,746, built in the 70s, monthly utility bill at $40:
        At 95% level of confident 
        Predicted value = $131,929 
        [$111,942,  $150,885]"),
      
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