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
  "s[aáāà]t$": (
    abs: ("sat", "satym", "sase", "sasyl", "sate", "satyl"),  
    dat: ("saa", "saam", "saar", "saařyl", "saatè", "saatỳl"),  
    erg: ("seq", "seqim", "seqir", "seqryl", "seqit", "seqtyl"),  
  ), "s[eéēè]p$": (
    abs: ("sep", "sepỳm", "sepsè", "sepsỳl", "sepè", "sepỳl"),   
    dat: ("sfà", "sfàm", "sfàr", "sfrỳl", "sfàp", "sfàpỳl"),   
    erg: ("sfì", "sfìm", "sfìr", "sfrỳl", "sfìp", "sfìpỳl"),   
  ), "c[eéēè]p$": (
    abs: ("cep", "cepỳm", "cepsè", "cepsỳl", "cepè", "cepỳl"),   
    dat: ("cfà", "cfàm", "cfàr", "cfrỳl", "cfàp", "cfàpỳl"),   
    erg: ("cfì", "cfìm", "cfìr", "cfrỳl", "cfìp", "cfìpỳl"),   
  ), "[eéēè]t$": (
    abs: ("et", "etỳm", "esè", "esỳl", "etè", "etỳl"),  
    dat: ("eþ", "eþàm", "eþàr", "eþrỳl", "eþàt", "eþàtỳl"),  
    erg: ("ix", "ixìm", "ixìr", "ixrỳl", "ixìt", "ixìtỳl"),  
  ), "[oóōò]t$": (
    abs: ("ot", "otỳm", "osè", "osỳl", "otè", "otỳl"),  
    dat: ("oþ", "oþàm", "oþàr", "oþrỳl", "oþàt", "oþàtỳl"),  
    erg: ("ux", "uxìm", "uxìr", "uxrỳl", "uxìt", "uxìtỳl"),  
  ), "[aáāà]t$": (
    abs: ("ot", "otỳm", "osè", "osỳl", "otè", "otỳl"),  
    dat: ("oþ", "oþàm", "oþàr", "oþrỳl", "oþàt", "oþàtỳl"),  
    erg: ("ux", "uxìm", "uxìr", "uxrỳl", "uxìt", "uxìtỳl"),  
  ), "[eéēè]s$": (
    abs: ("es", "esym", "ese", "esyl", "eske", "eskyl"),  
    dat: ("er", "eràm", "etàr", "erỳl", "erkè", "erkỳl"),  
    erg: ("ix", "ixim", "ixir", "ixryl", "ixke", "ixkyl"),  
  ), "[oóōò]s$": (
    abs: ("os", "osym", "oso", "osyl", "osko", "oskyl"),  
    dat: ("or", "oràm", "otàr", "orỳl", "orkè", "orkỳl"),  
    erg: ("ux", "uxim", "uxir", "uxryl", "uxke", "uxkyl"),  
  ), "[eéēè]p$": (
    abs: ("ep", "epỳm", "epsè", "epsỳl", "epè", "epỳl"),  
    dat: ("ef", "efàm", "efàr", "efrỳl", "efàp", "efàpỳl"),  
    erg: ("if", "ifìm", "ifìr", "ifrỳl", "ifìp", "ifìpỳl"),  
  ), "[oóōò]p$": (
    abs: ("op", "opỳm", "opsè", "opsỳl", "opè", "opỳl"),  
    dat: ("of", "ofàm", "ofàr", "ofrỳl", "ofàp", "ofàpỳl"),  
    erg: ("uf", "ufìm", "ufìr", "ufrỳl", "ufìp", "ufìpỳl"),  
  ), "[aáāà]p$": (
    abs: ("ap", "apỳm", "apsè", "apsỳl", "apè", "apỳl"),  
    dat: ("af", "afàm", "afàr", "afrỳl", "afàp", "afàpỳl"),  
    erg: ("ef", "efìm", "efìr", "efrỳl", "efìp", "efìpỳl"),  
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
#let ret-ending(ending) = {
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
      [*anticausative verb*], [#{pfv + verb-ending}], [#{npfv + verb-ending}], [#{ret + ret-ending(verb-ending)}], table.cell(rowspan: 2)[#{pfv + ger-ending}], 
      [*causative verb*], [#{pfv + caus-ending}], [#{npfv + caus-ending}], [#{ret + ret-ending(caus-ending)}]
    )
  } else {
    (
      [*verb*], [#{pfv + verb-ending}], [#{npfv + verb-ending}], [#{ret + ret-ending(verb-ending)}], [#{pfv + ger-ending}], 
    )
  }
}
#let kinetic-melodies = (
  "∅H": "H",
  "∅M": "HL",
  "MH": "M",
  "LM": "ML",
)
#let decline-ptcp(stem, abs-ending, melody, kinetic) = {
  let (pattern, endings-dict) = ptcp-endings.pairs().find(((pattern, _)) => abs-ending.contains(regex(pattern)))
  if pattern == none {panic((stem, abs-ending, melody))}
  let combine-stem-ending(ending, case) = {
    let (modified-stem, modified-melody) = (stem, melody)
    if kinetic and case == "abs" {
      modified-melody = kinetic-melodies.at(melody)
      modified-stem = stem.replace(regex(nucleus), match => {
        let vowels = match.text.clusters()
        if get-tone(vowels.first()) == melody.first() {
          vowels.first() = tones.at(get-vowel(vowels.first())).at(modified-melody.first())
        }
        vowels.join()
      })
      if modified-stem == stem {panic(stem, abs-ending, melody, modified-melody, kinetic)}
    }
    let ending-contains-tones = ending.clusters().any(x => nucleus.contains(x) and get-tone(x) != "∅")
    if modified-melody.last() == "H" and ending-contains-tones {
      modified-stem = spread-H(stem)
    }

    ending = abs-ending.replace(regex(pattern), ending)
    ending = if modified-melody.last() == "L" {
      spread-L(ending)
    } else if modified-melody == "LM" {
      spread-M(ending)
    } else if modified-melody.last() == "H" and ending-contains-tones {
      spread-H(ending)
    } else {ending}

    [#{modified-stem + ending}]
  }
  for (case, endings) in endings-dict {
    endings-dict.at(case) = endings.map(ending => combine-stem-ending(ending, case))
  }
  ([*absolutive*], ..endings-dict.abs, [*dative*], ..endings-dict.dat, [*ergative*], ..endings-dict.erg)
}

#let verb(stems: (:), endings: (:), class: none, antic: none, caus: none, kinetic: false, meanings: (), meanings-long: ()) = [
  #let class-desc = if type(class) == int [class #class] else [#class]
  #let valency-desc = (antic, caus).filter(x => x in valencies).map(x => valencies.at(x)).join("/")
  === verb
  #class-desc, #valency-desc
  #enum(..meanings-long)
  #parbreak()
  #let (pfv-stem, pfv-mel) = stems.pfv
  #let (npfv-stem, npfv-mel) = stems.npfv
  #let (ret-stem, ret-mel) = stems.ret
  #table(
    columns: 5,
    table.header([], [*perfective*], [*imperfective*], [*retrospective*], [*gerund*]),
    ..verb-table(pfv-stem, npfv-stem, ret-stem, endings.verb, endings.ger, antic, caus)
  )
  #parbreak()
  #table(
    columns: 8,
    table.cell(rowspan: 2)[*aspect*], table.cell(rowspan: 2)[*participle case*], table.cell(colspan: 2)[*indefinite*], table.cell(colspan: 2)[*proximal*], table.cell(colspan: 2)[*definite*], [*col.*], [*sgv.*], [*sg.*], [*pl.*], [*sg.*], [*pl.*], 
    table.cell(rowspan: 3)[*perfective*], ..decline-ptcp(pfv-stem, endings.ptcp, pfv-mel, kinetic),
    table.cell(rowspan: 3)[*imperfective*], ..decline-ptcp(npfv-stem, endings.ptcp, npfv-mel, kinetic),
    table.cell(rowspan: 3)[*retrospective*], ..decline-ptcp(ret-stem, ret-ending(endings.ptcp), ret-mel, false),
  )
]
