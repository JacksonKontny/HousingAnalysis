library(MASS)
full.model= lm(
  VALUE~ABL30 +
    ABL50 +
    ABL80 + 
    ABLMED +
    Age1 + 
    Age2 +
    Age3 +
    Age4 +
    APLMED +
    # Assited +
    B40s50s +
    B60s70s +
    B80s +
    B90s +
    B2000s +
    B2010s +
    Bed1 +
    Bed2 +
    Bed3 +
    Bed4 +
    Bed5 +
    Bed7 +
    Bed7 +
    Bed8 +
    census2 +
    census3 +
    census4 +
    GL30 +
    GL50 +
    GL80 +
    GLMED +
    IPOV +
    L30 +
    L50 +
    L80 +
    LMED +
    metro2 +
    metro3 +
    metro4 +
    metro5 +
    metro9 +
    MInadequate +
    OTHERCOST +
    PER +
    SInadequate +
    struc1 +
    struc2 +
    struc3 +
    struc4 +
    struc5 +
    struc6 +
    tenure1 +
    tenure2 +
    tenure3 +
    TOTSAL +
    UTILITY +
    ZINC2 +
    ZSMHC,
  data=thads
)
model = step(full.model, direction='both')
