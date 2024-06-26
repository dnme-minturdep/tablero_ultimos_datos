#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

tagList(dashboardPage(title = "ULTIMOS DATOS DEL TURISMO EN ARGENTINA",
                       
                       dashboardHeader(
                         title = div(icon('chart-line'),"ULTIMOS DATOS DEL TURISMO EN ARGENTINA"), titleWidth = 600,
                         tags$li(a(
                         href = 'https://www.yvera.tur.ar/sinta/',
                         img(src = 'https://tableros.yvera.tur.ar/recursos/logo_sinta.png',
                             height = "30px"),
                         style = "padding-top:10px; padding-bottom:10px;"),
                         class = "dropdown")
                         
                         ),
    dashboardSidebar(disable = TRUE),
    dashboardBody(
        tags$head(includeHTML("/srv/DataDNMYE/login_shiny/ultimos-datos.html"))
        ,
        fluidRow(column(4, valueBoxOutput("box_ti_receptivo",width = "100%")),
                 column(4, valueBoxOutput("box_evyth_viajeros", width = "100%")),
                 column(4, valueBoxOutput("box_eoh_viajeros", width = "100%"))
                        
    ),
    fluidRow(column(4, valueBoxOutput("box_eoh_pernoctes",width = "100%")),
             column(4, valueBoxOutput("box_empleo_hyr", width = "100%")),
             column(4, valueBoxOutput("box_emae_hyr", width = "100%"))
             
    ),
    fluidRow(column(4, valueBoxOutput("box_conectividad_cab",width = "100%")),
             column(4, valueBoxOutput("box_conectividad_int", width = "100%")),
             column(4, valueBoxOutput("box_tur_mundo", width = "100%"))
             
    ), 
    fluidRow(width = 12,
             h5("        Aquí puede acceder al último ", 
                tags$a(href="https://biblioteca.yvera.tur.ar/coyuntura.html", 
                       target = '_blank', 
                       "Informe Mensual de Estadísticas de Turismo (IMET)"))
    ),
    tags$head(
        # Include our custom CSS
        includeCSS("styles.css")
    ))),
    
    tags$footer(includeHTML("/srv/shiny-server/recursos/shiny_footer.html")))
    



