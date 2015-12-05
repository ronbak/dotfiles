(require 'boot.repl)

(swap! boot.repl/*default-dependencies*
       concat '[[cider/cider-nrepl "0.9.1"]
                [refactor-nrepl "1.1.0"]
                [org.clojure/tools.nrepl "0.2.11"]])

(swap! boot.repl/*default-middleware*
       conj
       'cider.nrepl/cider-middleware
       'refactor-nrepl.middleware/wrap-refactor 
       )


