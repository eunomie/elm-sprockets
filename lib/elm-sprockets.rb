require 'sprockets'

module ElmSprockets
  require 'elm-sprockets/elm_processor'

  Sprockets.register_mime_type 'text/elm', extensions: ['.elm', '.js.elm']
  Sprockets.register_transformer 'text/elm', 'application/javascript', ElmProcessor
  Sprockets.register_preprocessor 'text/elm', Sprockets::DirectiveProcessor.new(comments: ['--', ['{-', '-}']])
end