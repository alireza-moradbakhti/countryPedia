<?php
include_once "controller/search.php";
include_once "controller/getLastCountries.php";
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>CountryPedia . Home</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/album/">

    <!-- Bootstrap core CSS -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>
    <!-- Custom styles for this template -->
    <link href="album.css" rel="stylesheet">
  </head>
  <body>
    <?php include_once "view/header.php"; ?>

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1>What's this?</h1>
      <p class="lead text-muted">Let's learn about the World and Countries and their Caltures or religions or Languages and etc. have a look and increase your knowledge about the World and its countries. Have Fun!!</p>
      <div class="col-6 mx-auto mt-5">
      <form method="get">
      <div class="row">
          <div class="col-9">
            <input type="text" style="border-radius:50px;" class="form-control" value="<?=(!empty($_GET['search'])) ? $_GET['search'] : ''; ?>" id="search" name="search" placeholder="Enter a country name." />
          </div>
          <div class="col-3">
            <button type="submit" style="border-radius:50px;" class="btn btn-primary form-control">Search</button>
          </div>
        </div>
        
        </form>
      </div>
    </div>
  </section>

  <div class="album py-5 bg-light">
    <div class="container">
      <?php include_once "view/content.php"; ?>
    </div>
  </div>

</main>

<footer class="text-muted">
  <div class="container">
    <p class="float-right">
      <a href="#">Back to top</a>
    </p>
    <p>This Project is Belong to Alireza Moradbakhti for Database project</p>
    <p>have any suggestions? , you can find my Email in the header :)</p>
  </div>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="bootstrap/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script></body>
</html>
