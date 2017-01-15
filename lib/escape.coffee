DOT = '[DOT]'
DOLLAR = '[DOLLAR]'

@escapeKey = (key) ->
  key
  .replace /\./g, DOT
  .replace /\$/g, DOLLAR

@unescapeKey = (key) ->
  key
  .replace /\[DOT\]/g, '.'
  .replace /\[DOLLAR\]/g, '.'

@validKey = (key) ->
  key and key.indexOf(DOT) < 0 and key.indexOf(DOLLAR) < 0
