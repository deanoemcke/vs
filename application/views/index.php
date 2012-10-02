<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>vs!</title>

</head>

<body>

    <img src=<?=base_url("/images/graphic.png")?> />

    <div id="mainContainer">

    </div>


    <!-- Templates -->
    <script id="competitionRowTemplate" type="text/template">
        <a><%= name %></a>
    </script>

    <script id="competitionTemplate" type="text/template">
        <h1>Competition: <%= name %></h1>
    </script>

    <script id="gameRowTemplate" type="text/template">
        <%= date %> :: <%= name %>: <%= score %>
    </script>


    <script src=<?=base_url("/js/lib/json2.js")?>></script>
    <script src=<?=base_url("/js/lib/jquery-1.7.1.js")?>></script>
    <script src=<?=base_url("/js/lib/underscore.js")?>></script>
    <script src=<?=base_url("/js/lib/backbone.js")?>></script>
    
    <script src=<?=base_url("/js/vs.js")?>></script>
    <script src=<?=base_url("/js/models/competition.js")?>></script>
    <script src=<?=base_url("/js/models/competitionCollection.js")?>></script>
    <script src=<?=base_url("/js/models/game.js")?>></script>
    <script src=<?=base_url("/js/models/gameCollection.js")?>></script>

    <script src=<?=base_url("/js/views/competitionRow.js")?>></script>
    <script src=<?=base_url("/js/views/gameRow.js")?>></script>
    <script src=<?=base_url("/js/views/allCompetitionsView.js")?>></script>
    <script src=<?=base_url("/js/views/competitionView.js")?>></script>
    <script src=<?=base_url("/js/router.js")?>></script>


</body>
</html>