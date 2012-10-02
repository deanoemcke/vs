Vs.GameRow = Backbone.View.extend({

	template : _.template($('#gameRowTemplate').html()),            
    tagName : "li",

    initialize: function () {
    },

    events : {

    },

    render: function() {

        $(this.el).html(this.template(this.model.toJSON()));
        return this;
    }

});