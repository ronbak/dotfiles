(require 'boot.repl)

(swap! boot.repl/*default-dependencies*
       concat '[[cider/cider-nrepl "0.9.1"]
                [refactor-nrepl "1.1.0"]])

(swap! boot.repl/*default-middleware*
       conj
       'refactor-nrepl.middleware/wrap-refactor 
       'cider.nrepl/cider-middleware)


