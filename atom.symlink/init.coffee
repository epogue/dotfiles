# Your init script
#
# Atom will evaluate this file each time a new window is opened. It is run
# after packages are loaded/activated and after the previous editor state
# has been restored.
#
# An example hack to make opened Markdown files always be soft wrapped:
#
# path = require 'path'
#
# atom.workspace.observeTextEditors (editor) ->
#   if path.extname(editor.getPath()) is '.md'
#     editor.setSoftWrapped(true)

atom.commands.add 'atom-text-editor', 'custom:cc': (e) ->
  editor = atom.workspace.getActiveTextEditor()
  buffer = editor.getBuffer()
  checkpoint = buffer.createCheckpoint()
  atom.commands.dispatch(e.currentTarget, 'editor:delete-line')
  atom.commands.dispatch(e.currentTarget, 'vim-mode:insert-above-with-newline')
  buffer.groupChangesSinceCheckpoint(checkpoint)
