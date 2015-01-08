class Docs

  constructor: ->
    @ajaxPop()

  ajaxPop: ->
    $.ajax
      url: "assets/data/data.json"
      contentType: "application/json"
      dataType: "json"
      type: "GET"
      cache: off
      success: (res) ->
        tmpl = Handlebars.compile($("[data-template='pop']").html())
        html = tmpl 
          data: res
        $("[data-render='pop']").html html
        return
    return