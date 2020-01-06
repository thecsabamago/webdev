<?php 

$conn=mysqli_connect("localhost", "web", "pass", "filmek"); 
mysqli_query($conn, "set names utf8"); 
$result = mysqli_query($conn, "select count(*) as darab from film "); 

$sor = mysqli_fetch_assoc($result); 
$darab = $sor['darab']; 

$vel = rand(1, $darab) - 1; 
$result = mysqli_query($conn, "Select * from film LIMIT {$vel}, 1" ); 
$sor = mysqli_fetch_assoc($result);
$cim= $sor['cim'];
$evszam= $sor['evszam'];
$boritokep= $sor['boritokep'];
$leiras= $sor['leiras'];
?><!DOCTYPE html>

<html>
<head>
    <link rel="stylesheet" href="style.css"/> 
    <title>Random Movie Generator </title>
    <meta name="description" content="Find your favorite films with our Random Movie Generator" />
    <script type="text/javascript">
        function megjelenit()
        {
            let regi = document.getElementById('popup_gomb_szoveg');
            let uj = document.getElementById('gombnyomas_utani_tartalom');

            regi.style.display = 'none';
            uj.style.display = 'block';

           
        }

        window.setTimeout(function() {
            document.getElementById('popup-container').style.display = 'flex';
        }, 3000);
    </script>
</head>
    <body>
        <div id="page-container">
            
            
            
            <main>  
                <div id="poster-block"> 
                    <div> <img src="img/Joker.jpg"/> </div>
                    <div> <img src="img/Spy.jpg"/> </div>
                    <div> <img src="img/Star_wars.jpg"/> </div>
                    <div> <img src="img/TheGodfather.jpg"/> </div>
                    <div> <img src="img/SevenSamurai.jpg"/> </div>
                    <div> <img src="img/Inception.jpg"/> </div>
                    <div> <img src="img/TheFellowshipoftheRing.jpg"/> </div>
                    <div> <img src="img/TheGoodtheBadandtheUgly.jpg"/> </div>
                    <div> <img src="img/PulpFiction.jpg"/> </div>
                    <div> <img src="img/ForrestGump.jpg"/> </div>
<div> <img src="img/TheGodfatherII.jpg"/> </div>
<div> <img src="img/TheShawshankRedemption.jpg"/> </div>
</div>



</main>



</div> 
<div id="popup-container">
    <div id="popup">
        <div id="popup_gomb_szoveg">
            <img id="banner" src="img/banner.png" />
            <div id="poup_elso_banner_utan">
                <h1>Welcome to our homepage!</h1>
                <p> Try it the movie generator! <p>
                <button onclick="megjelenit()"> Let's get started! </button>
            </div>
        </div>
        <div id="gombnyomas_utani_tartalom">
            <div id="popup-block"> 
                <img id="pop_up_picture" src="img/<?= $boritokep ?>"/>

                <div id="pop_up-Leiras">

                    <div id="title"><?= $cim ?></div> 
                    <p id="year"> <?= $evszam ?></p>
                
                    <p id="description"><?= $leiras ?></p>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>