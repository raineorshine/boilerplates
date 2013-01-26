app.get '/', (req, res) ->
  viewData =
    title: 'TITLE'
    bootstrap:
      view: 'index'
      data: {}

  render req, res, viewData
