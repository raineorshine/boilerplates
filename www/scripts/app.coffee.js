(function() {
  var build, render;
  build = function() {
    return ["#page", []];
  };
  render = function() {
    return document.body.appendChild(create(build()));
  };
  $(function() {
    return render();
  });
}).call(this);
