This test generates documentation for non-hidden modules only using odoc for a library:

  $ dune build @doc
  $ ls -R _build/default/_doc/_html
  foo
  highlight.pack.js
  index.html
  odoc.css
  
  _build/default/_doc/_html/foo:
  index.html

