#import "/.calepin/calepin.typ" as calepin

#set document(
  title: [Nomai: an _Outer Wilds_ fan language]
)
#metadata((title: "Home")) <website-metadata>

// #calepin.setup(
//   echo: true,
//   eval: true,
//   results: "verbatim",
//   fenced-chunks: true,
// )

#let target = sys.inputs.at("calepin-target", default: "paged")

#show: body => {
  if target == "html" {
    body
  } else {
    set page(columns: 2)
    body
  }
}

#title()

This is the documentation for *Nomai*, a fictional language spoken by the eponymous alien civilization from the video game #link("https://www.mobiusdigitalgames.com/outer-wilds.html")[_Outer Wilds_]. The documentation currently includes explanations of the language's phonology and grammar, and I am also planning to add a dictionary and glossed translations of Nomai messages from the game. Some familiarity with linguistic concepts is assumed, but brief explanations are also provided in the footnotes.

None of this is official content made by Mobius Digital. I am just a highly devoted fan who thought it would be fun to come up with some very detailed headcanon. It isn't the only take on a Nomai conlang; the other one I'm aware of is #link("https://kvkontin.github.io/nomai/home.html")[this collaborative effort], which served as a partial inspiration.

#calepin.elements.callout(kind: "caution", title: [Warning!])[
  If you haven't completed _Outer Wilds_ yet, I *strongly* recommend you do so before reading any further! Although I have done my best to keep major spoilers out of this documentation, the game is best experienced with as little prior knowledge as possible.
]
