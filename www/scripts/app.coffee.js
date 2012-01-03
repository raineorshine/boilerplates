(function() {
  var build;
  build = function() {
    return ["#page", []];
  };
  $(function() {
    return Creatable.render(build());
  });
}).call(this);
