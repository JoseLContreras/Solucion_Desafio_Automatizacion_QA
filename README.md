# Desafio_previredQA
Solución Desafío Automatización QA

Automatización de pruebas para la página http://automationpractice.com/index.php

Automatización realizada con Robot Framework (https://robotframework.org/) Librerías Selenium y Python

https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html

Se requiere:
-Instalación Python
-Instalación pip
-Instalación Robot Framework (pip install robotframework)

-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

Solución de automatización está lista para una primera ejecución:

1- Los archivos que contiene la solución son:
	
run_test_cases_shopping.robot (archivo de partida y que contiene test cases en lenguaje a nivel negocio)
Resources.robot (Contiene Variables, para insertar parametros de manera global en los TCs)
Features.robot	(Contiene los "features" de los casos de prueba)

2- Ejecutar caso de prueba con el siguiente comando en consola:
	robot run_test_cases_shopping.robot
	
3- Clonar en carpeta local 

4- Dentro de la carpeta anterior, crear carpeta "Evidencia" donde se dejarán screenshots respectivos

5- Modificar la ruta de carpeta "Evidencia" para los screenshots en Línea Línea 17 archivo "Resources.robot"

-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------

A tener en cuenta:

1- En la carpeta quedarán archivos de salida:
	log.html
	report.html
	outout.xml

2- Se puede "limpiar" la carpeta "Evidencia" antes de cada ejecución

3- En archivo "Resources.robot" cambiar correo (línea 7), por cada ejecución. Aunque viene listo para una primera ejecución.


-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
Validaciones efectuadas

Seleccionar color del vestido de forma aleatoria (Línea 31, archivo "Resources.robot")

Validar que costo de despacho sea $2.00 (Línea 88 & 89 archivo "Resources.robot")

Validar los artículos en carrito sean “Blouse”, “Summer Dress” (Línea 31, archivo "Resources.robot")
