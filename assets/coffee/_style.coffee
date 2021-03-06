class Styling

  constructor: ->
    @binding()

  binding: ->
    me = @
    $(window).on "resize scroll", ->
      me.navigationScroll($(@))
      return
    return

  leftinit: -> 
    return $(".navigation").offset().left

  navigationScroll: ($this) ->
    $posx = 0 - $this.scrollLeft()
    $(".navigation").css
      "margin-left": $posx
    return
