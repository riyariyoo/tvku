var Styling;

Styling = (function() {
  function Styling() {
    this.binding();
  }

  Styling.prototype.binding = function() {
    var me;
    me = this;
    $(window).scroll(function() {
      me.navigationScroll($(this));
    });
  };

  Styling.prototype.leftinit = function() {
    return $(".navigation").offset().left;
  };

  Styling.prototype.navigationScroll = function($this) {
    var $posx;
    $posx = 0 - $this.scrollLeft();
    $(".navigation").css({
      "margin-left": $posx
    });
  };

  return Styling;

})();

$(function() {
  var styling;
  styling = new Styling;
});
