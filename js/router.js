
$(function () {

    //define the route and function maps for this router
    Vs.Router = Backbone.Router.extend({

        routes: {

            "competition" : "showAllCompetitions",
            "competition/:id" : "showCompetition",
            "*other"    : "showCompetition"
        },

        //constructor
        initialize : function () {

        },

        showCompetition: function(id) {

            //show competition view
            var competition = new Vs.Competition();

            competition.fetch({
                data: { id: id},
                success: function(model, response)  {

                    //fetch the latest 10 games for this competition
                    var games = new Vs.GameCollection();

                    games.fetch({
                        data: { competition_id: id},
                        success: function(collection, response)  {
                            console.log(collection);
                            Vs.competitionView = new Vs.CompetitionView({model: model, collection: response});
                            Vs.competitionView.render();
                        },
                        error: function(collection, response) {
                            console.log(response);
                        }
                    });

                },
                error: function(model, response) {
                    console.log(response);
                }
            });

           

            
        },

        showAllCompetitions: function() {

            var competitions = new Vs.CompetitionCollection();

            competitions.fetch({
                success: function(collection, response)  {
                    console.log(response);
                    Vs.all_competitions_view = new Vs.AllCompetitionsView({collection: collection});
                    Vs.all_competitions_view.render();
                },
                error: function(collection, response) {
                    console.log(response);
                }
            });
        }

    });

    // Initiate the router
    Vs.router = new Vs.Router();

    // Start Backbone history a necessary step for bookmarkable URL's
    Backbone.history.start();

});
