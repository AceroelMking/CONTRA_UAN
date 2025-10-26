[![Android CI](https://github.com/android-fis-uan/android-sample-project/actions/workflows/android.yml/badge.svg)](https://github.com/android-fis-uan/android-sample-project/actions/workflows/android.yml)

# ROLES DEL PROYECTO:
PROGRAMADOR DE MECÁNICAS: CRISTIAN DARIO Y EYDER ACERO
DISEÑO DE ESCENARIOS Y PERSONAJES EN PIXEL ART: EYDER ACERO

# HISTORIA DEL VIDEOJUEGO
Una serie de estudiantes con intenciones maliciosas de destruir la universidad Antonio Nariño planifica una serie de acontecimientos con el fin destruir para siempre la institución, dos héroes que en antaño fueron estudiantes de esta universidad son convocados por el coordinador de la facultad de sistemas para detener a estos estudiantes y que no les sea posible concretar el plan que tienen en mente.
¿Podrán nuestros héroes salvar a la institución? 

# MECÁNICAS Y NIVELES
El juego de inicio contará con dos niveles por el tiempo que se tiene para desarrollarlo y contará con una serie de enemigos y dos protagonistas, cada uno con un arma distinta(escopeta, pistola), las mecánicas que se desean implementar son saltar, correr, disparar, daño, y 3 vidas por nivel, con la posibilidad de agregar algún otro, los escenarios del videojuego serán mostrados en la segunda entrega por temas de tiempo.
Se plantean cuatro tipos de enemigos base, el primero simplemente corre hacia adelante, si toca al jugador lo elimina, spawnea fuera de cámara en puntos específicos del nivel, solo requiere de un disparo para eliminarlo; el segundo está quieto y dispara en rafagas hacia el jugador, aparece en partes específicas del nivel, no spawnea de repente, solo requiere de un disparo para eliminarlo; el tercero está oculto (en este modo no se puede eliminar) y aparece para disparar al jugador (en este modo si se puede eliminar), aparece en partes específicas del nivel, solo requiere de un disparo para eliminarlo; el cuarto es un cañón que dispara en rafagas hacia el jugador, está inmovil y aparece en partes específicas del nivel, (apunta y dispara entre 0°-180°,  215°- 325° tiene dos puntos ciegos), requiere de varios disparos para ser eliminado.  

# SEGUNDA ENTREGA
Para la segunda entrega del proyecto se mostrarán los escenarios del videojuego, se planea implementar la interfaz gráfica como lo es el menú de inicio el cual solo será uno con la posibilidad de tener una pantalla de puntaje, también se pondrá la barra de vida del personaje con algunas animaciones iniciales.

# TERCERA ENTREGA
En la tercera entrega ya se espera tener toda la parte de las mecánicas del videojuego de manera funcional en los dos escenarios del mismo, todo el tema de arte se realizará en pixel art y se espera sea un juego de 8 o 16 bits  para móvil.
# HERRAMIENTAS
Godot es un motor de videojuegos de código abierto, gratuito y multiplataforma, creado por desarrolladores argentinos, que permite crear juegos en 2D y 3D para diversas plataformas como PC, móviles y web. Su sistema se basa en una arquitectura de árbol de nodos organizada en escenas, donde cada nodo añade funcionalidad a los objetos del juego. Es una herramienta popular para desarrolladores independientes por su facilidad de uso, su modelo de licencia permisiva y una comunidad de apoyo activa. 
Características principales:
Gratuito y de Código Abierto: No tiene costos de licencias ni regalías, ya que es liberado bajo la licencia MIT. 
Multiplataforma: Permite desarrollar juegos para diferentes plataformas y sistemas operativos. 
Arquitectura de Nodos y Escenas: La estructura de Godot está basada en nodos que forman una jerarquía en forma de árbol, y cada proyecto se organiza en escenas. 
Soporte 2D y 3D: Es capaz de crear tanto juegos bidimensionales como tridimensionales, ofreciendo herramientas para renderización, físicas, sonidos e inteligencia artificial. 
Lenguaje de Scripting: Utiliza su propio lenguaje, llamado GDScript, que es similar a Python y fácil de aprender, aunque también soporta otros lenguajes
Aquí se desarrollara el juego
Android Studio es el Entorno de Desarrollo Integrado (IDE) oficial para crear aplicaciones en Android. Proporciona un conjunto completo de herramientas, como un editor de código, un emulador rápido, y un sistema de compilación flexible, todo basado en la tecnología de IntelliJ IDEA, para que los desarrolladores puedan diseñar, escribir, probar y depurar aplicaciones para todos los dispositivos Android. 
Aquí se importará para android.
Pixilart Es un software para crear los personajes y escenarios del videojuego en pixel art.

# MENÚ DE INICIO Y PERSONAJES (solo single player)
<<<<<<< HEAD
![avance](/docs/images/INTERFAS_INICIO.png)
# PROTAGONISTA
![avance](/docs/images/sprites_correr_personaje.png)
![avance](/docs/images/personaje_1_1_1.png)
![avance](/docs/images/personaje_1_2.png)
![avance](/docs/images/personaje_1_3.png)
![avance](/docs/images/personaje_1_4.png)
![avance](/docs/images/personaje_1_5.png)
![avance](/docs/images/personaje_1_6.png)
![avance](/docs/images/personaje_1_7.png)
# PROYECTILES-BARRIL
![avance](/docs/images/BARRIL.jpeg)
# FONDOS
![avance](/docs/images/arbol_1 (1).png)
![avance](/docs/images/fondo.png)
# ENEMIGO 1
# BOSS FINAL: (lanza barriles similar a Donkey Kong)

=======
![sprites](/docs/images/INTERFAS_INICIO.png)
# PROTAGONISTA
![sprites](/docs/images/sprites_correr_personaje.png)
# PROYECTILES
Trae la fisica del motor de juegos
![sprites](/docs/images/barril.png)
# BLOQUES
Permite colicionar con los mismos
![sprites](/docs/images/block_1.png)
![sprites](/docs/images/block_2.png)
![sprites](/docs/images/block_3.png)
# FONDOS
![sprites](/docs/images/fondo.png)
![sprites](/docs/images/arbol_1.png)
>>>>>>> f73d95c77a33e6bada930cbbc7b40e27271c6475

# POSDATA: Todo lo que se vio a continuación está sujeto a cambios con la evolución del videojuego.
# BOCETO
A continuación se observan pruebas y reconocimiento de la interfaz de godot, así como un primer juego de prueba.
![avance](docs/images/b1.png)
![avance](docs/images/b2.png)
![avance](docs/images/b3.png)

# AVANCES
El personaje principal se mueve derecha, izquierda y salta (ya posee la mecanica de doble salto); tiene animaciones respectivas
Coliciona con los objetos pero aun no resive daño de los proyectiles
![avance](docs/images/a1.png)
![avance](docs/images/a2.png)
![avance](docs/images/a3.png)
![avance](docs/images/ag.webm)

