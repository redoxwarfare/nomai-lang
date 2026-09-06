#import "/.calepin/calepin.typ" as calepin
#import "../defs.typ": *

#set document(
  title: [Dictionary]
)
#metadata((title: "Dictionary")) <website-metadata>

// #calepin.setup(
//   echo: true,
//   eval: true,
//   results: "verbatim",
//   fenced-chunks: true,
// )

#yaml("nouns.yml").map(
  n => [
    == #n.prinparts.abs.at(0)
    #noun(..n)
  ]
).fold(none, (acc, x) => acc + x)
