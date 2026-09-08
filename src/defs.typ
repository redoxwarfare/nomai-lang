#import "/.calepin/calepin.typ" as calepin
#import "@preview/eggs:0.9.0": *
#import abbreviations: abbreviation, abs, dat, erg, voc, def, prox, sg, pl, p1, p2, p3, incl, excl, n, m, f, non, appl, ptcp, rel, imp, comp, quot, rel, q

#let ndef = abbreviation("ndef", "indefinite article")
#let sgv = abbreviation("sgv", "singulative number")
#let col = abbreviation("col", "collective number")
#let pert = abbreviation("pert", "pertensive")
#let npfv = abbreviation("npfv", "imperfective aspect")
#let ret = abbreviation("ret", "retrospective aspect")
#let intr = abbreviation("intr", "intransitive verb")
#let agtv = abbreviation("agtv", "agentive verb")
#let exp = abbreviation("exp", "experiential verb")
#let intl = abbreviation("intl", "intentional verb")
#let lcm = abbreviation("lcm", "locomotive verb")
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

#let alphabet = "aáāàâceéēèêfiíīìîjklłmnoóōòôpqrřstþuúūùûwxyýȳỳŷ"
#let alphabet-key(word) = {
  lower(word).clusters().map(char => alphabet.position(char))
}

#let transcript(..entries) = {
  let format_entry(entry) = {
    if type(entry) == array {
      let (speaker, words) = entry
      strong[#upper(speaker):] + " " + words + parbreak()
    } else {entry}    
  }
  calepin.elements.card(entries.pos().map(format_entry).join())
}

#let translation(english, nomai, gloss) = calepin.elements.tabs[
  #calepin.elements.tab("English", active: true, english)
  #calepin.elements.tab("Nomai", nomai)
  #calepin.elements.tab("Gloss", gloss)
]

#let back-vowels = "oóōòôuúūùû"
#let non-back-vowels = "aáāàâeéēèêiíīìî"
#let vowels = "[" + non-back-vowels + back-vowels +  "]"
#let nucleus = "[" + non-back-vowels + back-vowels + "]+|[yýȳỳŷ]"
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
  } else {none}
}
#let get-vowel-and-tone(s) = {
  s = s.match(regex(nucleus)).text.first()
  (get-vowel(s), get-tone(s))
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
  ending.clusters().reduce((acc, x) => {
    if nucleus.contains(x) and get-tone(x) == "∅" {
      acc + tones.at(x).at("L")
    } else {acc + x}
  })
}
#let spread-M(ending) = {
  ending.clusters().reduce((acc, x) => {
    if nucleus.contains(x) and get-tone(x) == "L" {
      acc + tones.at(get-vowel(x)).at("M")
    } else {acc + x}
  })
}
#let spread-H(ending) = {
  ending.clusters().reduce((acc, x) => {
    if nucleus.contains(x) and get-tone(x) == "∅" {
      acc + tones.at(get-vowel(x)).at("H")
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

#let noun(stems: (:), meanings: (), meanings-long: ()) = [
  #let (stem-a, mel-a) = stems.abs
  #let (stem-d, mel-d) = stems.dat
  #let (stem-e, mel-e) = stems.erg
  === noun
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

#let valencies = (
  "intr": "intransitive",
  "exp": "experiential",
  "intl": "intentional",
  "lcm": "locomotive",
  "ditr": "ditransitive",
)
#let caus-endings = (
  "eþ": "ixi", "éþ": "íxi", "ēþ": "īxī", "èþ": "ìxì",
  "oþ": "uxi", "óþ": "úxi", "ōþ": "ūxī", "òþ": "ùxì",
  "aþ": "exi", "áþ": "éxi", "āþ": "ēxī", "àþ": "èxì",
  "er": "ix", "ér": "íx", "ēr": "īx", "èr": "ìx",
  "or": "ux", "ór": "úx", "ōr": "ūx", "òr": "ùx",
  "e": "i", "é": "í", "ē": "ī", "è": "ì",
  "o": "u", "ó": "ú", "ō": "ū", "ò": "ù",
  "a": "e", "á": "é", "ā": "ē", "à": "è",
)
#let ptcp-endings = (
  "sat": ("sat", "saa", "seq"),
  "sát": ("sát", "sáa", "séq"),
  "sāt": ("sāt", "sāa", "sēq"),
  "sàt": ("sàt", "sàa", "sèq"),
  "qos": ("qos", "qor", "qux"),
  "qós": ("qós", "qór", "qúx"),
  "qōs": ("qōs", "qōr", "qūx"),
  "qòs": ("qòs", "qòr", "qùx"),
  "xos": ("xos", "xor", "xux"),
  "xós": ("xós", "xór", "xúx"),
  "xōs": ("xōs", "xōr", "xūx"),
  "xòs": ("xòs", "xòr", "xùx"),
  "sep": ("sep", "sfà", "xfì"),
  "sép": ("sép", "sfà", "xfì"),
  "sēp": ("sēp", "sfà", "xfì"),
  "sèp": ("sèp", "sfà", "xfì"),
  "cep": ("cep", "cfà", "qfì"),
  "cép": ("cép", "cfà", "qfì"),
  "cēp": ("cēp", "cfà", "qfì"),
  "cèp": ("cèp", "cfà", "qfì"),
  "et": ("et", "eþ", "ix"),
  "ét": ("ét", "éþ", "íx"),
  "ēt": ("ēt", "ēþ", "īx"),
  "èt": ("èt", "èþ", "ìx"),
  "ot": ("ot", "oþ", "ux"),
  "ót": ("ót", "óþ", "úx"),
  "ōt": ("ōt", "ōþ", "ūx"),
  "òt": ("òt", "òþ", "ùx"),
  "at": ("at", "aþ", "ex"),
  "át": ("át", "áþ", "éx"),
  "āt": ("āt", "āþ", "ēx"),
  "àt": ("àt", "àþ", "èx"),
  "es": ("es", "er", "ix"),
  "és": ("és", "ér", "íx"),
  "ēs": ("ēs", "ēr", "īx"),
  "ès": ("ès", "èr", "ìx"),
  "os": ("os", "or", "ux"),
  "ós": ("ós", "ór", "úx"),
  "ōs": ("ōs", "ōr", "ūx"),
  "òs": ("òs", "òr", "ùx"),
  "ep": ("ep", "ef", "if"),
  "ép": ("ép", "éf", "íf"),
  "ēp": ("ēp", "ēf", "īf"),
  "èp": ("èp", "èf", "ìf"),
  "op": ("op", "of", "uf"),
  "óp": ("óp", "óf", "úf"),
  "ōp": ("ōp", "ōf", "ūf"),
  "òp": ("òp", "òf", "ùf"),
  "ap": ("ap", "af", "ef"),
  "áp": ("áp", "áf", "éf"),
  "āp": ("āp", "āf", "ēf"),
  "àp": ("àp", "àf", "èf"),
)
#let ptcp-full-declensions = (
  "6": (
    abs: ("t", "tym", "se", "syl", "te", "tyl"),
    dat: ("a", "am", "ar", "ařyl", "at", "atyl"),
    erg: ("q", "qim", "qir", "qryl", "qit", "qtyl"),
  ), "7": (
    abs: ("s", "sym", "se", "syl", "ske", "skyl"),
    dat: ("r", "ràm", "tàr", "rỳl", "rkè", "rkỳl"),
    erg: ("x", "xim", "xir", "xryl", "xke", "xkyl"),
  ), "8": (
    abs: ("p", "pỳm", "psè", "psỳl", "pè", "pỳl"),
    dat: ("à", "àm", "àr", "rỳl", "àp", "àpỳl"),
    erg: ("ì", "ìm", "ìr", "rỳl", "ìp", "ìpỳl"),
  ), "1": (
    abs: ("t", "tỳm", "sè", "sỳl", "tè", "tỳl"),
    dat: ("þ", "þàm", "þàr", "þrỳl", "þàt", "þàtỳl"),
    erg: ("x", "xìm", "xìr", "xrỳl", "xìt", "xìtỳl"),
  ), "2": (
    abs: ("t", "tỳm", "sè", "sỳl", "tè", "tỳl"),
    dat: ("þ", "þàm", "þàr", "þrỳl", "þàt", "þàtỳl"),
    erg: ("x", "xìm", "xìr", "xrỳl", "xìt", "xìtỳl"),
  ), "3": (
    abs: ("s", "sym", "se", "syl", "ske", "skyl"),
    dat: ("r", "ràm", "tàr", "rỳl", "rkè", "rkỳl"),
    erg: ("x", "xim", "xir", "xryl", "xke", "xkyl"),
  ), "4": (
    abs: ("p", "pỳm", "psè", "psỳl", "pè", "pỳl"),
    dat: ("f", "fàm", "fàr", "frỳl", "fàp", "fàpỳl"),
    erg: ("f", "fìm", "fìr", "frỳl", "fìp", "fìpỳl"),
  ), "5": (
    abs: ("p", "pỳm", "psè", "psỳl", "pè", "pỳl"),
    dat: ("f", "fàm", "fàr", "frỳl", "fàp", "fàpỳl"),
    erg: ("f", "fìm", "fìr", "frỳl", "fìp", "fìpỳl"),
  ),
)
#let get-caus-ending(ending, pfv-stem) = {
  if ending.contains(regex("[yýȳỳ]")) {
    let stem-last-vowel = stem.clusters().filter(char => vowels.contains(char)).last()
    let E = tones.at(
      if (non-back-vowels.contains(stem-last-vowel)) {"e"}
      else {"o"}
    ).at(get-tone(stem-last-vowel))
    ending = ending.replace(regex("[yýȳỳ]"), E)
  }
  caus-endings.at(ending)
}
#let get-0-ending(ending) = {
  ending
  .replace(regex("[áāà]"), "a")
  .replace(regex("[éēè]"), "e")
  .replace(regex("[íīì]"), "i")
  .replace(regex("[óōò]"), "o")
  .replace(regex("[úūù]"), "u")
  .replace(regex("[ýȳỳ]"), "y")
}
#let get-H-ending(ending) = {
  ending
  .replace(regex("[aāà]"), "á")
  .replace(regex("[eēè]"), "é")
  .replace(regex("[iīì]"), "í")
  .replace(regex("[oōò]"), "ó")
  .replace(regex("[uūù]"), "ú")
  .replace(regex("[yȳỳ]"), "ý")
}
#let get-M-ending(ending) = {
  ending
  .replace(regex("[aáà]"), "ā")
  .replace(regex("[eéè]"), "ē")
  .replace(regex("[iíì]"), "ī")
  .replace(regex("[oóò]"), "ō")
  .replace(regex("[uúù]"), "ū")
  .replace(regex("[yýỳ]"), "ȳ")
}
#let get-L-ending(ending) = {
  ending
  .replace(regex("[aáā]"), "à")
  .replace(regex("[eéē]"), "è")
  .replace(regex("[iíī]"), "ì")
  .replace(regex("[oóō]"), "ò")
  .replace(regex("[uúū]"), "ù")
  .replace(regex("[yýȳ]"), "ỳ")
}
#let verb-table(pfv, npfv, ret, verb-ending, ger-ending, antic, caus) = {
  if antic != "none" and caus != "none" {
    let caus-ending = get-caus-ending(verb-ending, pfv)
    (
      [*anticausative verb*], [#{pfv + verb-ending}], [#{npfv + verb-ending}], [#{ret + get-L-ending(verb-ending)}], table.cell(rowspan: 2)[#{pfv + ger-ending}], 
      [*causative verb*], [#{pfv + caus-ending}], [#{npfv + caus-ending}], [#{ret + get-L-ending(caus-ending)}]
    )
  } else {
    (
      [*verb*], [#{pfv + verb-ending}], [#{npfv + verb-ending}], [#{ret + get-L-ending(verb-ending)}], [#{pfv + ger-ending}], 
    )
  }
}
#let decline-ptcps(stems, endings, class) = {
  let combine-stem-ending(stem, case) = {
    ptcp-full-declensions
    .at(class)
    .at(case)
    .map(e => [#{stem + endings.at(case).clusters().slice(0, -1).join() + e}])
  }
  (
    table.cell(rowspan: 3)[*perfective*], 
    [*absolutive*], ..combine-stem-ending(stems.pfv.at(1), "abs"),
    [*dative*], ..combine-stem-ending(stems.pfv.at(0), "dat"),
    [*ergative*], ..combine-stem-ending(stems.pfv.at(0), "erg"),
    table.cell(rowspan: 3)[*imperfective*], 
    [*absolutive*], ..combine-stem-ending(stems.npfv.at(1), "abs"),
    [*dative*], ..combine-stem-ending(stems.npfv.at(0), "dat"),
    [*ergative*], ..combine-stem-ending(stems.npfv.at(0), "erg"),
    table.cell(rowspan: 3)[*retrospective*], 
    [*absolutive*], ..combine-stem-ending(stems.ret.at(1), "abs"),
    [*dative*], ..combine-stem-ending(stems.ret.at(0), "dat"),
    [*ergative*], ..combine-stem-ending(stems.ret.at(0), "erg"),
  )
}

#let verb(stems: (:), endings: (:), class: none, antic: none, caus: none, meanings: (), meanings-long: ()) = {
  let class-desc = if type(class) == int [class #class] else [#class]
  class = str(class)
  let valency-desc = (antic, caus).filter(x => x in valencies).map(x => valencies.at(x)).join("/")
  let (_, verb-ending-tone) = get-vowel-and-tone(endings.verb)
  let (abs-ending, dat-ending, erg-ending) = ptcp-endings.at(endings.ptcp)
  (dat-ending, erg-ending) = (dat-ending, erg-ending).map(
    if verb-ending-tone == "∅" {get-0-ending}
    else if verb-ending-tone == "H" {get-H-ending}
    else if verb-ending-tone == "M" {get-M-ending}
    else if verb-ending-tone == "L" {get-L-ending}
  )
  [
    === verb
    #class-desc, #valency-desc
    #enum(..meanings-long)
    #parbreak()
    #table(
      columns: 5,
      table.header([], [*perfective*], [*imperfective*], [*retrospective*], [*gerund*]),
      ..verb-table(stems.pfv.at(0), stems.npfv.at(0), stems.ret.at(0), endings.verb, endings.ger, antic, caus)
    )
    #parbreak()
    #table(
      columns: 8,
      table.cell(rowspan: 2)[*aspect*], table.cell(rowspan: 2)[*participle case*], table.cell(colspan: 2)[*indefinite*], table.cell(colspan: 2)[*proximal*], table.cell(colspan: 2)[*definite*], [*col.*], [*sgv.*], [*sg.*], [*pl.*], [*sg.*], [*pl.*], 
      ..decline-ptcps(stems, (abs: abs-ending, dat: dat-ending, erg: erg-ending), class)
    )
  ]
}
