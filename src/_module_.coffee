root = window ? global ? this
root._module_ = (ns, f, context = root) =>
  context ?= root
  hist = []
  for name in ns.split('.')
    unless context[name]?
      context[name] = {}
    context = context[name]
    hist.push context
  f.apply context, hist

root._include_ = (target, ns) ->
  for key, val of ns
    target[key] = val
  ns
