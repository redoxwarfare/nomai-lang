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
#let nucleus = "[" + non-back-vowels + back-vowels + "]+|yýȳỳŷ"
#let tones = (
  "a": ("∅": "a", "H": "á", "M": "ā", "L": "à"),
  "e": ("∅": "e", "H": "é", "M": "ē", "L": "è"),
  "i": ("∅": "i", "H": "í", "M": "ī", "L": "ì"),
  "o": ("∅": "o", "H": "ó", "M": "ō", "L": "ò"),
  "u": ("∅": "u", "H": "ú", "M": "ū", "L": "ù"),
  "y": ("∅": "y", "H": "ý", "M": "ȳ", "L": "ỳ"),
  "A": ("∅": "A", "L": "À"),
)
#let get-vowel(char) = {
  if "aáāàâ".contains(char) {
    "a"
  } else if "eéēèê".contains(char) {
    "e"
  } else if "iíīìî".contains(char) {
    "i"
  } else if "oóōòô".contains(char) {
    "o"
  } else if "uúūùû".contains(char) {
    "u"
  } else if "yýȳỳŷ".contains(char) {
    "y"
  } else if "AÀ".contains(char) {
    "A"
  }
}
#let get-tone(char) = {
  if "aeiouyA".contains(char) {
    "∅"
  } else if "áéíóúý".contains(char) {
    "H"
  } else if "āēīōūȳ".contains(char) {
    "M"
  } else if "àèìòùỳÀ".contains(char) {
    "L"
  } else if "âêîôûŷ".contains(char) {
    "HL"
  }
}

#let abs-endings = (
  "sp$": ("spym", "spEs", "spEsyl", "spe", "spyl"),
  "lp$": ("lpym", "lpEs", "lpEsyl", "lpe", "lpyl"),
  "rp$": ("rpym", "rpEs", "rpEsyl", "rpe", "rpyl"),
  "st$": ("stym", "stEs", "stEsyl", "ste", "styl"),
  "lt$": ("ltym", "ltEs", "ltEsyl", "lte", "ltyl"),
  "rt$": ("rtym", "rtEs", "rtEsyl", "rte", "rtyl"),
  "sk$": ("skym", "skEs", "skEsyl", "skek", "skekyl"),
  "lk$": ("lkym", "lkEs", "lkEsyl", "lkek", "lkekyl"),
  "rk$": ("rkym", "rkEs", "rkEsyl", "rkek", "rkekyl"),
  "p$": ("pym", "pse", "psyl", "pe", "pyl"),
  "t$": ("tym", "se", "syl", "te", "tyl"),
  "k$": ("kym", "ce", "cyl", "ke", "kyl"),
  "s$": ("sym", "se", "syl", "ske", "skyl"),
  "l$": ("lym", "lse", "lsyl", "lke", "lkyl"),
  "yl$": ("lEm", "ylse", "ylsyl", "ylke", "ylkyl"),
  "$": ("m", "cè", "cỳl", "kè", "kỳl"),
)
#let dat-erg-endings = (
  "sq$": ("sqim", "sqir", "sqryl", "sqiC", "sqiCỳl"), 
  "r$": ("ràm", "tàr", "rỳl", "rkè", "rkỳl"), 
  "x$": ("xim", "xir", "xryl", "xke", "xkyl"), 
  "q$": ("qim", "qir", "qryl", "qit", "qtyl"), 
  "g$": ("qìm", "qìr", "qrỳl", "qìC", "qCỳl"), 
  "la$": ("lam", "lar", "larỳl", "lakè", "lakỳl"), 
  "là$": ("làm", "làr", "làrỳl", "làkè", "làkỳl"), 
  "li$": ("lim", "lir", "lirỳl", "likè", "likỳl"), 
  "lì$": ("lìm", "lìr", "lìrỳl", "lìkè", "lìkỳl"), 
  "sp$": ("spAm", "spAr", "spryl", "spAp", "spyl"), 
  "st$": ("stAm", "stAr", "stryl", "stAt", "styl"), 
  "sk$": ("skAm", "skAr", "skryl", "skAk", "skyl"), 
  "sf$": ("sfAm", "sfAr", "sfryl", "sfAp", "sfApỳl"), 
  "sþ$": ("sþam", "sþar", "sþryl", "sþat", "sþatỳl"), 
  "p$": ("pÀm", "pÀr", "prỳl", "pÀp", "pỳl"), 
  "t$": ("tÀm", "tÀr", "trỳl", "tÀt", "tỳl"), 
  "k$": ("kÀm", "kÀr", "krỳl", "kÀk", "kỳl"), 
  "f$": ("fÀm", "fÀr", "frỳl", "fÀp", "fÀpỳl"), 
  "þ$": ("þàm", "þàr", "þrỳl", "þàt", "þàtỳl"), 
  "z$": ("xìm", "xìr", "xrỳl", "xìC", "xìCỳl"), 
  "m$": ("mÀm", "mÀr", "mÀrỳl", "mÀk", "mÀkỳl"), 
  "n$": ("nÀm", "nÀr", "nÀrỳl", "nÀk", "nÀkỳl"), 
  "l$": ("lÀm", "lÀr", "lÀrỳl", "lÀk", "lÀkỳl"), 
  "$": ("m", "r", "řyl", "Cè", "Cỳl"),
)
#let spread-L(ending) = {
  ending.clusters().fold("", (acc, x) => {
    if nucleus.contains(x) and get-tone(x) == "∅" {
      acc + tones.at(x).at("L")
    } else {acc + x}
  })
}
#let spread-M(ending) = {
  ending.clusters().fold("", (acc, x) => {
    if nucleus.contains(x) and get-tone(x) == "L" {
      acc + tones.at(get-letter(x)).at("M")
    } else {acc + x}
  })
}

#let decline-stem(stem, mel, case, C: "k") = {
  let endings-dict = if case == "abs" {abs-endings} else {dat-erg-endings}
  let modified-stem = {
    if mel.last() == "L" {
      let stem1 = stem
        .replace(regex("q$"), "g")
        .replace(regex("x$"), "z")
      if mel == "HL" {
        stem1
        .replace(regex("â"), "á")
        .replace(regex("ê"), "é")
        .replace(regex("î"), "í")
        .replace(regex("ô"), "ó")
        .replace(regex("û"), "ú")
        .replace(regex("ŷ"), "ý")
      } else {
        stem1
        .replace(regex("à"), "ā")
        .replace(regex("è"), "ē")
        .replace(regex("ì"), "ī")
        .replace(regex("ò"), "ō")
        .replace(regex("ù"), "ū")
        .replace(regex("ỳ"), "ȳ")
      }
    } else {stem}
  }
  let declension = endings-dict.keys().find(d => modified-stem.ends-with(regex(d)))
  if declension == none {panic((stem, case))}
  let stem-last-vowel = stem.clusters().filter(char => vowels.contains(char)).last()
  let E = if (non-back-vowels.contains(stem-last-vowel)) {"e"} else {"o"}
  let modify-ending(ending) = {
    if ("L", "HL").contains(get-tone(stem-last-vowel)) or mel.last() == "L" {
      spread-L(ending)
    } else if mel == "LM" {
      spread-M(ending)
    } else {ending}
  }

  endings-dict.at(declension)
  .map(e => {
    modified-stem
    .replace(regex(declension), modify-ending(e))
    .replace("A", if case == "dat" {"a"} else if case == "erg" {"i"} else {"A"})
    .replace("À", if case == "dat" {"à"} else if case == "erg" {"ì"} else {"À"})
    .replace("C", C)
    .replace("E", E)
  })
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
    [*absolutive*], [#mel-a], stem-a, ..decline-stem(stem-a, mel-a, "abs"),
    [*dative*], [#mel-d], stem-d, ..decline-stem(stem-d, mel-d, "dat"),
    [*ergative*], [#mel-e], stem-e, ..decline-stem(stem-e, mel-e, "erg"),
  )
]
