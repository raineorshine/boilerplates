/** Extend Backbone.View with a default render function that relies on build() to produce an s-exp representing the view. */
Backbone.View = Backbone.View.extend({
	render: function() {
		$(this.el).empty().append(create(this.build()));
		this.trigger("rendered");
		return this;
	},
	build: function() {
		return null;
	}
});

