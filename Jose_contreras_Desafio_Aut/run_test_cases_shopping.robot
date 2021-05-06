***Settings***
Documentation   "automationpractice"
Library         SeleniumLibrary
Library         BuiltIn
Resource        Features.robot

**Test Cases***
Compra dos articulos en eCommerce Usuario sin Cuenta
    Abrir Pagina Principal
    Añadir al carrito de compra una blusa negra talla L
    Pulsar Botón "Continuar Comprando"
    Añadir al carrito un vestido de verano largo estampado, de talla S y cualquier color
    Pulsar Botón "Continuar Comprando" 2
    Ir a carrito de compra 
    Resumen Compra
    Crear Cuenta
    Confirmar Dirección
    Shipping
    Pago y confirmación de orden de compra
    Visitar historia de órdenes y descargar PDF
    Close Browser