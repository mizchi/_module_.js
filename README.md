# \_module\_.js

\_module\_.js is namespace manager inspired by typescript.

## FEATURES

- auto namespace initializer
- hack "_module_" of global
- allow using global namespace

## WHY

I hate require.js.

It is too ugly to use for me because of catching module by argument order.
If we take care of namespace scope thoroughly, we can use global namespace.

## HOW TO USE

```html
<sciprt src="_module_.js"></sciprt>
```

```coffee
# You don't have to initialize nested namespace.
_module_ "App.View", ->
  class @Base

# arguments return namespace object
# splited by dot
_module_ "App.View", (App, View) ->
  class @MyView extends View.Base

# you can access object via namespace
myview = new App.View.MyView
```
