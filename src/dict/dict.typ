#import "/.calepin/calepin.typ" as calepin
#import "../defs.typ": *

#set document(
  title: [Dictionary]
)
#metadata((title: "Dictionary")) <website-metadata>

#{
  let entries = (
    yaml("nouns.yml").map(n => (fix-nuclei(n.stems.abs.at(0)), noun(..n)))
    + yaml("verbs.yml").map(v => (fix-nuclei(v.stems.pfv.at(0) + v.endings.verb), verb(..v)))
    + yaml("other.yml").map(w => (w.lemma, other-word(..w)))
  ).sorted(key: ((lemma, _)) => alphabet-key(lemma))
  let lemmas = entries.map(((lemma, _)) => lemma).dedup().map(lemma => [
    = #lemma
    #entries.filter(entry => entry.at(0) == lemma).map(((_, entry-content)) => entry-content).join()
  ])
  lemmas.join()
}
