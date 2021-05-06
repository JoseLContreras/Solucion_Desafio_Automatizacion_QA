**Settings***
Resource    Resources.robot    

***Keywords***
Abrir Pagina Principal
    Open Browser    ${testUrl}      ${Browser}
    Maximize Browser Window

Añadir al carrito de compra una blusa negra talla L
    Scroll Element Into View    xpath=//*[@id="homefeatured"]/li[2]/div/div[2]/h5/a
    Click Element   xpath=//*[@id="homefeatured"]/li[2]/div/div[2]/div[2]/a[2]/span
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]/div/div/div[3]/p[7]/button[4]
    Scroll Element Into View    xpath=//*[@id="product_payment_logos"]/div/img
    Select From List By Label   group_1   L   
    Click Element   xpath=//*[@id="color_11"]
    Click Element   xpath=//*[@id="add_to_cart"]/button/span

Pulsar Botón "Continuar Comprando"
    Wait Until Element Is Visible   xpath=//*[@id="layer_cart"]/div[1]/div[1]/h2
    Scroll Element Into View    xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span
    Click Element   xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span
    Click Element   xpath=//*[@id="header_logo"]/a/img

Añadir al carrito un vestido de verano largo estampado, de talla S y cualquier color
    Wait Until Element Is Visible   xpath=//*[@id="homefeatured"]/li[5]/div/div[2]/h5/a
    Scroll Element Into View    xpath=//*[@id="homefeatured"]/li[5]/div/div[2]/h5/a
    Click Element   xpath=//*[@id="homefeatured"]/li[5]/div/div[2]/div[2]/a[2]/span
    Wait Until Element Is Visible   xpath=//*[@id="short_description_content"]/p
    Scroll Element Into View    xpath=//*[@id="wishlist_button"]
    #elegir color aleatoriamente random 
    Evaluate  random.choice($colors)  random  
    Click Element   xpath=//*[@id="add_to_cart"]/button/span

Pulsar Botón "Continuar Comprando" 2
    Wait Until Element Is Visible   xpath=//*[@id="layer_cart"]/div[1]/div[1]/h2
    Scroll Element Into View    xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span
    Click Element   xpath=//*[@id="layer_cart"]/div[1]/div[2]/div[4]/span/span

Ir a carrito de compra
    Wait Until Element Is Visible   xpath=//*[@id="header_logo"]/a/img
    Click Element   xpath=//*[@id="header"]/div[3]/div/div/div[3]/div/a

Resumen Compra
    Wait Until Element Is Visible   xpath=//*[@id="cart_summary"]/thead/tr/th[1]
    Scroll Element Into View    xpath=//*[@id="center_column"]/p[2]/a[1]/span
    Capture Page Screenshot   C:/Users/Jose.Contreras/Desktop/Automatizaciones/desafio_automatizacion_qa/Jose_contreras_Desafio_Aut/Evidencia/carrito.png
    Click Element   xpath=//*[@id="center_column"]/p[2]/a[1]/span

Crear Cuenta
    Wait Until Element Is Visible   xpath=//*[@id="create-account_form"]/h3
    Scroll Element Into View    xpath=//*[@id="newsletter_block_left"]/h4
    Input Text  xpath=//*[@id="email_create"]   ${Usuario}
    Click Element   xpath=//*[@id="SubmitCreate"]/span
    Wait Until Element Is Visible   xpath=//*[@id="account-creation_form"]/div[1]/div[5]
    Click Element   xpath=//*[@id="id_gender1"]
    Input Text  xpath=//*[@id="customer_firstname"]   ${Nombres}
    Input Text  xpath=//*[@id="customer_lastname"]   ${Apellidos}
    Input Text  xpath=//*[@id="passwd"]   ${Password}
    Input Text  xpath=//*[@id="firstname"]  ${Nombres}
    Input Text  xpath=//*[@id="lastname"]   ${Apellidos}
    Input Text  xpath=//*[@id="address1"]   ${Direccion}
    Input Text  xpath=//*[@id="city"]       ${Ciudad}
    Click Element   xpath=//*[@id="uniform-id_state"]
    Select From List By Label   id_state    Alabama
    Input Text  xpath=//*[@id="postcode"]   ${POBOX}
    Input Text  xpath=//*[@id="phone_mobile"]   ${Fono}
    Input Text  xpath=//*[@id="alias"]          ${Alias}
    Capture Page Screenshot   C:/Users/Jose.Contreras/Desktop/Automatizaciones/desafio_automatizacion_qa/Jose_contreras_Desafio_Aut/Evidencia/crearcuenta.png
    Click Element   xpath=//*[@id="submitAccount"]/span

Confirmar Dirección
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]/form/div/div[1]/div[1]/p/label
    Scroll Element Into View    xpath=//*[@id="newsletter_block_left"]/h4
    Capture Page Screenshot   C:/Users/Jose.Contreras/Desktop/Automatizaciones/desafio_automatizacion_qa/Jose_contreras_Desafio_Aut/Evidencia/direccion.png
    Click Element   xpath=//*[@id="center_column"]/form/p/button/span

Shipping
    Wait Until Element Is Visible   xpath=//*[@id="form"]/div/div[2]/div[1]/div/div/table/tbody/tr/td[3]
    Page Should Contain     $2.00
    Scroll Element Into View    xpath=//*[@id="newsletter_block_left"]/h4
    Capture Page Screenshot   C:/Users/Jose.Contreras/Desktop/Automatizaciones/desafio_automatizacion_qa/Jose_contreras_Desafio_Aut/Evidencia/shipping.png
    Select checkbox     xpath=//*[@id="cgv"]
    Click Element   xpath=//*[@id="form"]/p/button/span

Pago y confirmación de orden de compra
    Wait Until Element Is Visible   xpath=//*[@id="cart_summary"]/thead/tr/th[4]
    Scroll Element Into View    xpath=//*[@id="newsletter_block_left"]/h4
    Page Should Contain     Blouse
    Page Should Contain     Printed Summer Dress
    Click Element   xpath=//*[@id="HOOK_PAYMENT"]/div[1]/div/p/a
    Wait Until Element Is Visible   xpath=//*[@id="center_column"]/h1
    Scroll Element Into View    xpath=//*[@id="newsletter_block_left"]/h4
    Capture Page Screenshot   C:/Users/Jose.Contreras/Desktop/Automatizaciones/desafio_automatizacion_qa/Jose_contreras_Desafio_Aut/Evidencia/orden.png
    Click Element   xpath=//*[@id="cart_navigation"]/button/span
    Wait Until Element Is Visible   xpath=//*[@id="columns"]/div[1]/span[2]
    Page Should Contain     Order confirmation
    Scroll Element Into View    //*[@id="newsletter_block_left"]/h4
    Click Element   //*[@id="center_column"]/p/a

Visitar historia de órdenes y descargar PDF
    Wait Until Element Is Visible   xpath=//*[@id="order-list"]/thead/tr/th[1]
    Page Should Contain     Order history
    Scroll Element Into View    xpath=//*[@id="newsletter_block_left"]/h4
    Capture Page Screenshot   C:/Users/Jose.Contreras/Desktop/Automatizaciones/desafio_automatizacion_qa/Jose_contreras_Desafio_Aut/Evidencia/On_back_order.png
    Click Element   xpath=//*[@id="order-list"]/tbody/tr/td[1]/a
    Scroll Element Into View    xpath=//*[@id="order-list"]/thead/tr/th[1]
    Click Link   xpath=//*[@id="order-list"]/tbody/tr/td[6]/a






    


