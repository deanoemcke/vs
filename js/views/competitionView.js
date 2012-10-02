Vs.CompetitionView = Backbone.View.extend({

    template : _.template($('#competitionTemplate').html()),   

    initialize: function () {
        $mainPage = $("#mainContainer");
    },

    render: function() {

        $mainPage.html(this.template(this.model.toJSON()));
        this.collection.each(this._renderRow);
        return this;
    },

    _renderRow: function(game) {
        var cr = new Vs.GameRow({model: game});
        $mainPage.append(cr.render().el);
    }

});