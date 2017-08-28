module.exports = DraganddropExample =
  meta: {
      'name': 'draganddrop-example',
      'shortDescription': 'Example exercises for the drag-and-drop content type',
      'description': 'Example exercises for the drag-and-drop content type',
      'author': 'Markku Riekkinen',
      'license': 'MIT',
      'version': '0.3.0',
      'url': '',
      'teaserContent': [],
      'contents': {},
  }
  
  namespace: 'draganddrop-example'
  contentTypeNamespace: 'draganddrop'
  packageType: 'content'

  getDir: () ->
    __dirname

  register: (handlers) ->
    handlers.contentPackages['draganddrop-example'] = DraganddropExample
    handlers.contentTypes.draganddrop.installedContentPackages.push(DraganddropExample)
    
    # Delegate the autodiscovery of exercises to the content type
    handlers.contentTypes.draganddrop.registerContentPackage(DraganddropExample, __dirname)

