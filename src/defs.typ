#import "/.calepin/calepin.typ" as calepin
#import "@preview/eggs:0.9.0": *
#import abbreviations: abbreviation, abs, dat, erg, voc, def, prox, sg, pl, p1, p2, p3, incl, excl, n, m, f, non, appl, ptcp, rel, imp, comp, quot, rel, q

#let ndef = abbreviation("ndef", "indefinite article")
#let sgv = abbreviation("sgv", "singulative number")
#let col = abbreviation("col", "collective number")
#let pert = abbreviation("pert", "pertensive")
#let npfv = abbreviation("npfv", "imperfective aspect")
#let ret = abbreviation("ret", "retrospective aspect")
#let ntr = abbreviation("ntr", "intransitive verb")
#let exp = abbreviation("exp", "experiential verb")
#let ntl = abbreviation("ntl", "intentional verb")
#let ditr = abbreviation("ditr", "ditransitive verb")
#let advs = abbreviation("advs", "adversative voice")
#let ger = abbreviation("ger", "gerund")
#let proh = abbreviation("proh", "prohibitive")
#let abil = abbreviation("abil", "abilitive")
#let perm = abbreviation("perm", "permissive")
#let nec = abbreviation("nec", "necessitative")
#let jus = abbreviation("jus", "jussive")
#let dub = abbreviation("dub", "dubitative")
#let infr = abbreviation("infr", "inferential")
#let pot = abbreviation("pot", "potential")
#let rpt = abbreviation("rpt", "reportative")
#let vis = abbreviation("vis", "visual")
#let aud = abbreviation("aud", "auditory")

#let transcript(..entries) = {
  let format_entry(entry) = {
    if type(entry) == array {
      let (speaker, words) = entry
      strong[#upper(speaker):] + " " + words + parbreak()
    } else {entry}    
  }
  calepin.elements.card(entries.pos().map(format_entry).fold([], (acc, x) => acc + x))
}

#let translation(english, nomai, gloss) = calepin.elements.tabs[
  #calepin.elements.tab("English", active: true, english)
  #calepin.elements.tab("Nomai", nomai)
  #calepin.elements.tab("Gloss", gloss)
]
