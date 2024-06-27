<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>NINJAORO!!!</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  </head>
  
  <nav class=" navbar bg-dark ">
  <div class="container-fluid">
  
    <a class="navbar-brand text-warning mx-auto d-block " href="#">
      <img  src="https://media.giphy.com/media/v1.Y2lkPTc5MGI3NjExcnV6ZGw4cTRueWl1YjRtdWx3YnM4bW1sZGkycnd4aDBsajljc3hhbyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/kN79e1NI1QErC/giphy.gif" alt="Logo" width="300" height="100" class="d-inline-block align-text-top">
      <h1 class="titulo1 text-warning mx-auto d-block"> 웃   NINJA ORO  유</h1>
    </a>
   
  </div>
</nav>
  
  
  <body>
  
  <style>
  
  	
  	nav{
  	background-image: url("https://www.shutterstock.com/image-vector/falling-golden-poker-chips-tokens-600nw-1933775606.jpg");
  	
  	}
  	
  	
    body {
      background-image: url("https://www.shutterstock.com/image-vector/falling-golden-poker-chips-tokens-600nw-1933775606.jpg");
    }
    
     footer {
      background-image: url("https://www.shutterstock.com/image-vector/falling-golden-poker-chips-tokens-600nw-1933775606.jpg");
      padding: 20px 0; /* Espaciado interno */
      text-align: center; /* Texto centrado */
      color: white; /* Color de texto para el pie de página */
    }
    
    .card{
    background-color: #D5D8DC  ;
    border: #17202A 3px solid;
    }
    
    #inputt{
    background-color: #efb810  ;
    }
    
    .carousel-inner img {
      width: 10%; /* Tamaño a la mitad */
      margin: auto; /* Centra la imagen */
    }
    
    
  </style>
  
  
  	<div id="carouselExampleIndicators" class="carousel slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://images.ctfassets.net/m9t8fn3f4fre/DxxfB3HSWyyYCMKWQWE0E/e17d397f0b12feab4af4c682852eea2a/ninjacasino-Meta-Image.jpg" class="d-block w-50 	" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://www.masgamers.com/wp-content/uploads/2023/03/1-12.jpg" class="d-block w-50" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://assets.eldesconcierto.cl/2023/01/Captura-de-Pantalla-2023-01-10-a-las-13.20.00-1024x726.png" class="d-block w-50" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
  	
  	
  	
    <form action ="/Game/NinjaOro" method="post" class=" col-md-12  ">
      <div id="inputt" class="card">
        <div class="card-body">
          <h5 class=" counter card-title">Oro Disponible:
          <input class="card" type="text" style="background-color:transparent; " name="oro" value="<%=session.getAttribute("oro") %>">
          </h5>     
        </div>
      </div>
     </form>
 
  
  
  
    <div class="container">
  <div class="row">
    <div class="col-md-3">
      <div class="card">
        <img src="https://tinybeans.com/wp-content/uploads/2021/08/liberty-hill-farm.png?w=640" class="card-img-top" alt="...">
        <form action="/Game/NinjaOro" method ="post" class="card-body">
          <h5 class="card-title">1.-Granja</h5>
          <p class="card-text">Gana de 10 a 20 monedas de oro.</p>
          <input type="hidden" name="lugar" value="granja">
          <input type="submit" class="btn btn-warning" value = "Obten tu recompensa!" onclick="playSound()">
        </form>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card">
        <img src="https://t3.ftcdn.net/jpg/05/57/59/18/360_F_557591808_iq9AlpE8H3Al1keQ72GVaSkUzYGc2M2s.jpg" class="card-img-top" alt="...">
        <form action="/Game/NinjaOro" method ="post"class="card-body">
          <h5 class="card-title">2.-Caverna</h5>
          <p class="card-text">Gana de 5 a 10 monedas de oro.</p>
          <input type="hidden" name="lugar" value="caverna">
          <input type="submit" class="btn btn-warning" value = "Obten tu recompensa!">
        </form>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card">
        <img src="https://www.bhg.com/thmb/H9VV9JNnKl-H1faFXnPlQfNprYw=/1799x0/filters:no_upscale():strip_icc()/white-modern-house-curved-patio-archway-c0a4a3b3-aa51b24d14d0464ea15d36e05aa85ac9.jpg" class="card-img-top" alt="...">
        <form action="/Game/NinjaOro" method ="post"class="card-body">
          <h5 class="card-title">3.-Casa</h5>
          <p class="card-text">Gana de 2 a 5 monedas de oro.</p>
          <input type="hidden" name="lugar" value="casa">
          <input type="submit" class="btn btn-warning" value = "Obten tu recompensa!">
        </form>
      </div>
    </div>
    <div class="col-md-3">
      <div class="card">
        <img src="https://dfmas.df.cl/dfmas/site/artic/20220114/imag/foto_0000000820220114120403/enjoy.jpg" class="card-img-top" alt="...">
        <form action="/Game/NinjaOro" method ="post"class="card-body">
          <h5 class="card-title">4.-Casino</h5>
          <p class="card-text">Gana -50 0 a 50 monedas de oro.</p>
          <input type="hidden" name="lugar" value="casino">
          <input type="submit" class="btn btn-warning" value = "Obten tu recompensa!">
        </form>
      </div>
    </div>
  </div>
  
 <div  class="row mt-3">
     <div class="col-6 offset-3">
        <div class="p-4 border-black rounded bg-warning">
       <%  for (String mensajes : (ArrayList <String>) session.getAttribute("mensajes")){%>
         <h5 id="mensaje" class="text-center"><%=mensajes%></h5>
         <%} %>
       </div>
    </div>
 </div>
  
</div>


<audio id="myAudio">
  <source src="https://www.myinstants.com/es/instant/llegue-de-la-barberia-82254/?utm_source=copy&utm_medium=share" type="audio/mpeg">
</audio>




<footer>
  <div class="container">
    <p>¡Gracias por visitar NinjaOro!</p>
    <img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExN2M1eHNiejVpdG5jNG1jeHBpejkyMnV1aHh6bGpocmprcHFxdnpmMyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/Zaj8ggkt66BfoWsuUj/giphy.gif" alt="Regalo" width="100">
  </div>
</footer>

<script>
function playSound() {
   audio = document.getElementById("myAudio");
  audio.play();
}
</script>

<script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  </body>
</html>