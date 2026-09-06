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

#let back-vowels = "oóōòôuúūùû"
#let non-back-vowels = "aáāàâeéēèêiíīìî"
#let vowels = "[" + non-back-vowels + back-vowels +  "]"
#let tones = (
  "aáāàâ": (n: "a", h: "á", m: "ā", l: "à"),
  "eéēèê": (n: "e", h: "é", m: "ē", l: "è"),
  "iíīìî": (n: "i", h: "í", m: "ī", l: "ì"),
  "oóōòô": (n: "o", h: "ó", m: "ō", l: "ò"),
  "uúūùû": (n: "u", h: "ú", m: "ū", l: "ù"),
  "yýȳỳŷ": (n: "y", h: "ý", m: "ȳ", l: "ỳ"),
)
#let abs-endings = (
  "sp$": ("sp", "spym", "spEs", "spEsyl", "spe", "spyl"),
  "lp$": ("lp", "lpym", "lpEs", "lpEsyl", "lpe", "lpyl"),
  "rp$": ("rp", "rpym", "rpEs", "rpEsyl", "rpe", "rpyl"),
  "st$": ("st", "stym", "stEs", "stEsyl", "ste", "styl"),
  "lt$": ("lt", "ltym", "ltEs", "ltEsyl", "lte", "ltyl"),
  "rt$": ("rt", "rtym", "rtEs", "rtEsyl", "rte", "rtyl"),
  "sk$": ("sk", "skym", "skEs", "skEsyl", "skek", "skekyl"),
  "lk$": ("lk", "lkym", "lkEs", "lkEsyl", "lkek", "lkekyl"),
  "rk$": ("rk", "rkym", "rkEs", "rkEsyl", "rkek", "rkekyl"),
  "p$": ("p", "pym", "pse", "psyl", "pe", "pyl"),
  "t$": ("t", "tym", "se", "syl", "te", "tyl"),
  "k$": ("k", "kym", "ce", "cyl", "ke", "kyl"),
  "s$": ("s", "sym", "se", "syl", "ske", "skyl"),
  "l$": ("l", "lym", "lse", "lsyl", "lke", "lkyl"),
  "yl$": ("yl", "lEm", "ylse", "ylsyl", "ylke", "ylkyl"),
  "$": ("", "m", "cè", "cỳl", "kè", "kỳl"),
)
#let dat-erg-endings = (
  "sq$": ("sq", "sqim", "sqir", "sqryl", "sqiC", "sqiCỳl"), 
  "r$": ("r", "ràm", "tàr", "rỳl", "rkè", "rkỳl"), 
  "x$": ("x", "xim", "xir", "xryl", "xke", "xkyl"), 
  "q$": ("q", "qim", "qir", "qryl", "qit", "qtyl"), 
  "g$": ("q", "qìm", "qìr", "qrỳl", "qìC", "qCỳl"), 
  "la$": ("la", "lam", "lar", "larỳl", "lakè", "lakỳl"), 
  "là$": ("là", "làm", "làr", "làrỳl", "làkè", "làkỳl"), 
  "li$": ("li", "lim", "lir", "lirỳl", "likè", "likỳl"), 
  "lì$": ("lì", "lìm", "lìr", "lìrỳl", "lìkè", "lìkỳl"), 
  "p$": ("p", "pÀm", "pÀr", "prỳl", "pÀp", "pỳl"), 
  "t$": ("t", "tÀm", "tÀr", "trỳl", "tÀt", "tỳl"), 
  "k$": ("k", "kÀm", "kÀr", "krỳl", "kÀk", "kỳl"), 
  "f$": ("f", "fÀm", "fÀr", "frỳl", "fÀp", "fÀpỳl"), 
  "þ$": ("þ", "þàm", "þàr", "þrỳl", "þàt", "þàtỳl"), 
  "z$": ("x", "xìm", "xìr", "xrỳl", "xìC", "xìCỳl"), 
  "m$": ("m", "mÀm", "mÀr", "mÀrỳl", "mÀk", "mÀkỳl"), 
  "n$": ("n", "nÀm", "nÀr", "nÀrỳl", "nÀk", "nÀkỳl"), 
  "l$": ("l", "lÀm", "lÀr", "lÀrỳl", "lÀk", "lÀkỳl"), 
  "$": ("", "m", "r", "řyl", "Cè", "Cỳl"),
)
#let get-A(case, low) = {
  if case == "dat" {
    if low {"à"} else {"a"}
  } else if case == "erg" {
    if low {"ì"} else {"i"}
  } else {
    if low {"À"} else {"A"}
  }
}

#let decline-stem(stem, case, C: "k") = {
  let endings-dict = if case == "abs" {abs-endings} else {dat-erg-endings}
  let declension = endings-dict.keys().find(d => stem.ends-with(regex(d)))
  if declension == none {panic((stem, case))}
  let stem-last-vowel = stem.clusters().filter(char => vowels.contains(char)).last()
  let E = if (non-back-vowels.contains(stem-last-vowel)) {"e"} else {"o"}

  //get raw phonemes
  let forms = {
    endings-dict.at(declension)
    .map(e => (
      stem
      .replace(regex(declension), e)
      .replace("À", get-A(case, true))
      .replace("A", get-A(case, false))
      .replace("C", C)
      .replace("E", E)
    ))
  }
  //correct tones
  forms
}

#let noun(prinparts: (:), meanings: (), meanings-long: ()) = [
  #let (stem-a, mel-a) = prinparts.abs
  #let (stem-d, mel-d) = prinparts.dat
  #let (stem-e, mel-e) = prinparts.erg
  *noun*
  #enum(..meanings-long)
  #parbreak()
  #table(
    columns: 8,
    table.cell(rowspan: 2)[*case*], table.cell(rowspan: 2)[*stem melody*], table.cell(colspan: 2)[*indefinite*], table.cell(colspan: 2)[*proximal*], table.cell(colspan: 2)[*definite*], [*col.*], [*sgv.*], [*sg.*], [*pl.*], [*sg.*], [*pl.*], 
    [*absolutive*], [#mel-a], ..decline-stem(stem-a, "abs"),
    [*dative*], [#mel-d], ..decline-stem(stem-d, "dat"),
    [*ergative*], [#mel-e], ..decline-stem(stem-e, "erg"),
  )
]
