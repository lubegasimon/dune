This test generates documentation using odoc for a library:

  $ dune build @doc
          odoc .bar.objs/byte/bar.odocl
  Starting link
          odoc .foo_byte.objs/byte/foo_byte.odocl
  Starting link
          odoc .foo.objs/byte/foo.odocl
  Starting link
          odoc .foo.objs/byte/foo2.odocl
  Starting link
          odoc .foo.objs/byte/foo3.odocl
  Starting link
  $ ls -R _build/default/_doc/_odoc
  pkg
  
  _build/default/_doc/_odoc/pkg:
  bar
  foo
  
  _build/default/_doc/_odoc/pkg/bar:
  page-index.odoc
  page-index.odocl
  
  _build/default/_doc/_odoc/pkg/foo:
  page-index.odoc
  page-index.odocl
  $ dune runtest
  <!DOCTYPE html>
  <html xmlns="http://www.w3.org/1999/xhtml">
    <head>
      <title>index</title>
      <link rel="stylesheet" href="./odoc.css"/>
      <meta charset="utf-8"/>
      <meta name="viewport" content="width=device-width,initial-scale=1.0"/>
    </head>
    <body>
      <main class="content">
        <div class="by-name">
        <h2>OCaml package documentation</h2>
        <ol>
        <li><a href="bar/index.html">bar</a></li>
        <li><a href="foo/index.html">foo</a></li>
        </ol>
        </div>
      </main>
    </body>
  </html>

  $ dune build @foo-mld
  {0 foo index}
  {1 Library foo}
  This library exposes the following toplevel modules:
  {!modules:Foo Foo2}
  {1 Library foo.byte}
  The entry point of this library is the module:
  {!module-Foo_byte}.

  $ dune build @bar-mld
  {0 bar index}
  {1 Library bar}
  The entry point of this library is the module:
  {!module-Bar}.
