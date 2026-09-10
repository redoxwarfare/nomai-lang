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
#let ep = abbreviation("∅", "epenthetic")

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

#let vowels = "[aáāàâǎeéēèêěiíīìîǐoóōòôǒuúūùûǔ]"
#let vowels-regex = regex(vowels)
#let nucleus = vowels + "{1,3}|[yýȳỳŷ][mnlr]"
#let nucleus-regex = regex(nucleus)
#let a-regex = (
  N: regex("[áāàâǎ]"),
  H: regex("[aāàâǎ]"),
  M: regex("[aáàâǎ]"),
  L: regex("[aáāâǎ]"),
)
#let e-regex = (
  N: regex("[éēèêě]"),
  H: regex("[eēèêě]"),
  M: regex("[eéèêě]"),
  L: regex("[eéēêě]"),
)
#let i-regex = (
  N: regex("[íīìîǐ]"),
  H: regex("[iīìîǐ]"),
  M: regex("[iíìîǐ]"),
  L: regex("[iíīîǐ]"),
)
#let o-regex = (
  N: regex("[óōòôǒ]"), 
  H: regex("[oōòôǒ]"), 
  M: regex("[oóòôǒ]"), 
  L: regex("[oóōôǒ]"), 
)
#let u-regex = (
  N: regex("[úūùûǔ]"), 
  H: regex("[uūùûǔ]"), 
  M: regex("[uúùûǔ]"), 
  L: regex("[uúūûǔ]"), 
)
#let y-regex = (
  N: regex("[ýȳỳŷ]"),
  H: regex("[yȳỳŷ]"),
  M: regex("[yýỳŷ]"),
  L: regex("[yýȳŷ]"),
  all: regex("[yýȳỳŷ]"),
)
#let diphthongs = (
  "ae": "ai", "ao": "au",
  "áe": "ái", "áo": "áu",
  "āe": "āi", "āo": "āu",
  "àe": "ài", "ào": "àu",
  "ea": "ia", "ei": "ii", "eo": "io", "eu": "au", 
  "éa": "ía", "éi": "íi", "éo": "ío", "éu": "áu", 
  "ēa": "īa", "ēi": "īi", "ēo": "īo", "ēu": "āu", 
  "èa": "ìa", "èi": "ìi", "èo": "ìo", "èu": "àu", 
  "ie": "ia", "iu": "io", 
  "íe": "ía", "íu": "ío", 
  "īe": "īa", "īu": "īo", 
  "ìe": "ìa", "ìu": "ìo", 
  "oa": "ua", "oe": "oi", "ou": "uu",
  "óa": "úa", "óe": "ói", "óu": "úu",
  "ōa": "ūa", "ōe": "ōi", "ōu": "ūu",
  "òa": "ùa", "òe": "òi", "òu": "ùu",
  "ue": "ua", "ui": "oi", "uo": "ua", 
  "úe": "úa", "úi": "oi", "úo": "úa", 
  "ūe": "ūa", "ūi": "oi", "ūo": "ūa", 
  "ùe": "ùa", "ùi": "oi", "ùo": "ùa", 
)
#let long-e-o = (
  "ee": "ei", "ée": "éi", "ēe": "ēi", "èe": "èi", "êe": "êi", 
  "oo": "ou", "óo": "óu", "ōo": "ōu", "òo": "òu", "ôo": "ôu", 
)
#let long-e-o-regexes = long-e-o.keys().map(k => (k, regex(k))).to-dict()
#let tones = (
  "a": ("∅": "a", "H": "á", "M": "ā", "L": "à", "F": "â", "f": "ǎ"),
  "e": ("∅": "e", "H": "é", "M": "ē", "L": "è", "F": "ê", "f": "ě"),
  "i": ("∅": "i", "H": "í", "M": "ī", "L": "ì", "F": "î", "f": "ǐ"),
  "o": ("∅": "o", "H": "ó", "M": "ō", "L": "ò", "F": "ô", "f": "ǒ"),
  "u": ("∅": "u", "H": "ú", "M": "ū", "L": "ù", "F": "û", "f": "ǔ"),
  "y": ("∅": "y", "H": "ý", "M": "ȳ", "L": "ỳ", "F": "ŷ"),
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
    "F"
  } else if "ǎěǐǒǔ".contains(char) {
    "f"
  } else {none}
}
#let get-vowel-and-tone(s) = {
  s = s.match(nucleus-regex).text.first()
  (get-vowel(s), get-tone(s))
}
#let force-N-tone(segment) = {
  if segment != none {
    segment
    .replace(a-regex.N, "a")
    .replace(e-regex.N, "e")
    .replace(i-regex.N, "i")
    .replace(o-regex.N, "o")
    .replace(u-regex.N, "u")
    .replace(y-regex.N, "y")
  } else {segment}
}
#let force-H-tone(segment) = {
  if segment != none {
    segment
    .replace(a-regex.H, "á")
    .replace(e-regex.H, "é")
    .replace(i-regex.H, "í")
    .replace(o-regex.H, "ó")
    .replace(u-regex.H, "ú")
    .replace(y-regex.H, "ý")
  } else {segment}
}
#let force-M-tone(segment) = {
  if segment != none {
    segment
    .replace(a-regex.M, "ā")
    .replace(e-regex.M, "ē")
    .replace(i-regex.M, "ī")
    .replace(o-regex.M, "ō")
    .replace(u-regex.M, "ū")
    .replace(y-regex.M, "ȳ")
  } else {segment}
}
#let force-L-tone(segment) = {
  if segment != none {
    segment
    .replace(a-regex.L, "à")
    .replace(e-regex.L, "è")
    .replace(i-regex.L, "ì")
    .replace(o-regex.L, "ò")
    .replace(u-regex.L, "ù")
    .replace(y-regex.L, "ỳ")
  } else {segment}
}
#let force-ML-tone(segment) = {
  if segment != none {
    segment
    .replace("à", "ǎ")
    .replace("è", "ě")
    .replace("ì", "ǐ")
    .replace("ò", "ǒ")
    .replace("ù", "ǔ")
  }
}
#let FN-regex = regex("F[∅L]")
#let fN-regex = regex("f[∅L]")
#let LML-regex = regex("LM+L+")
#let multi-M-regex = regex("M+")
#let HN-regex = regex("H∅[LMH]")
#let LN-regex = regex("L∅+")
#let MN-regex = regex("M∅+")
#let fix-nuclei(word) = {
  let consonants = word.split(nucleus-regex)
  let nuclei = word.matches(nucleus-regex).map(match => match.text)
  let melody = (
    nuclei
    .map(nucleus => get-tone(nucleus.first())).join()
    .replace(FN-regex, "HL")
    .replace(fN-regex, "ML")
    .replace("fH", "MH")
    .replace("f", "L")
    .replace(LML-regex, match => {
      let delinked-Ls = match.text.split(multi-M-regex).last()
      match.text.replace(regex(delinked-Ls + "$"), delinked-Ls.replace("L", "M"))
    })
    .replace(HN-regex, match => "HH" + match.text.last())
    .replace(LN-regex, match => "L" + match.text.slice(1).replace("∅", "L"))
    .replace(MN-regex, match => "M" + match.text.slice(1).replace("∅", "M"))
  )
  if melody.clusters().len() != nuclei.len() {panic(word, nuclei, melody)}
  for (i, tone) in melody.clusters().enumerate() {
    let nucleus = nuclei.at(i)
    if tone == "L" {
      nuclei.at(i) = force-L-tone(nucleus.first()) + nucleus.clusters().slice(1).join()
    } else if tone == "M" {
      nuclei.at(i) = force-M-tone(nucleus.first()) + nucleus.clusters().slice(1).join()
    } else if tone == "H" {
      nuclei.at(i) = force-H-tone(nucleus.first()) + nucleus.clusters().slice(1).join()
    }
  }
  let new-word = ()
  (consonants, nuclei) = (consonants.rev(), nuclei.rev())
  while consonants.len() > 0 or nuclei.len() > 0 {
    if consonants.len() > 0 {
      new-word.push(consonants.pop())
    }
    if nuclei.len() > 0 {
      let nucleus = nuclei.pop().clusters()
      if nucleus.len() > 1 {
        nucleus.at(1) = force-N-tone(nucleus.at(1))
      }
      nucleus = nucleus.join()
      nucleus = diphthongs.at(nucleus, default: nucleus)
      new-word.push(nucleus)
    }
  }
  new-word = new-word.join()
  for (pattern, replacement) in long-e-o {
    new-word = new-word.replace(long-e-o-regexes.at(pattern), replacement)
  }
  new-word
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
  "b$": ("pỳm", "psè", "psỳl", "pè", "pỳl"),
  "t$": ("tym", "se", "syl", "te", "tyl"),
  "d$": ("tỳm", "sè", "sỳl", "tè", "tỳl"),
  "k$": ("kym", "ce", "cyl", "ke", "kyl"),
  "g$": ("kỳm", "cè", "cỳl", "kè", "kỳl"),
  "s$": ("sym", "se", "syl", "ske", "skyl"),
  "þyl$": ("łEm", "þylse", "þylsyl", "þylke", "þylkyl"),
  "þýl$": ("łEm", "þýlse", "þýlsyl", "þýlke", "þýlkyl"),
  "þȳl$": ("łEm", "þȳlsē", "þȳlsȳl", "þȳlkē", "þȳlkȳl"),
  "þỳl$": ("łEm", "þỳlsè", "þỳlsỳl", "þỳlkè", "þỳlkỳl"),
  "yl$": ("lEm", "ylse", "ylsyl", "ylke", "ylkyl"),
  "ýl$": ("lEm", "ýlse", "ýlsyl", "ýlke", "ýlkyl"),
  "ȳl$": ("lEm", "ȳlsē", "ȳlsȳl", "ȳlkē", "ȳlkȳl"),
  "ỳl$": ("lEm", "ỳlsè", "ỳlsỳl", "ỳlkè", "ỳlkỳl"),
  "l$": ("lym", "lse", "lsyl", "lke", "lkyl"),
  "$": ("m", "cè", "cỳl", "kè", "kỳl"),
)
#let dat-erg-endings = (
  "sq$": ("sqim", "sqir", "sqryl", "sqiC", "sqiCỳl"), 
  "r$": ("ràm", "tàr", "rỳl", "rkè", "rkỳl"), 
  "x$": ("xim", "xir", "xryl", "xke", "xkyl"), 
  "q$": ("qim", "qir", "qryl", "qit", "qtyl"), 
  "ǧ$": ("qìm", "qìr", "qrỳl", "qìC", "qCỳl"), 
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
#let ending-regexes = (abs-endings.keys() + dat-erg-endings.keys()).dedup().map(k => (k, regex(k))).to-dict()

#let decline-stem(stem, melody, case, C: "k") = {
  let endings-dict = if case == "abs" {abs-endings} else {dat-erg-endings}
  let modified-stem = stem
  if melody.last() == "L" {
    if case == "abs" {
      modified-stem = modified-stem
      .replace(ending-regexes.at("p$"), "b")
      .replace(ending-regexes.at("t$"), "d")
      .replace(ending-regexes.at("k$"), "g")
    } else {
      modified-stem = modified-stem
      .replace(ending-regexes.at("q$"), "ǧ")
      .replace(ending-regexes.at("x$"), "z")
    }
  }
  if stem.matches(nucleus-regex).len() == 1 and melody == "ML" {
    modified-stem = force-ML-tone(modified-stem)
  }
  let declension = endings-dict.keys().find(d => modified-stem.ends-with(ending-regexes.at(d)))
  if declension == none {panic(stem, case)}
  let stem-last-vowel = get-vowel(stem.clusters().filter(char => vowels.contains(char)).last())
  let E = tones.at(if ("ou".contains(stem-last-vowel)) {"o"} else {"e"}).at(melody.last())
  let A = if case == "dat" {"a"} else if case == "erg" {"i"} else {"A"}
  let À = if case == "dat" {"à"} else if case == "erg" {"ì"} else {"À"}

  endings-dict.at(declension)
  .map(ending => {
    modified-stem.replace(regex(declension), ending)
    .replace("A", A).replace("À", À).replace("C", C).replace("E", E)
  })
  .map(fix-nuclei)
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
    [*absolutive*], [#mel-a], fix-nuclei(stem-a), ..decline-stem(stem-a, mel-a, "abs"),
    [*dative*], [#mel-d], fix-nuclei(stem-d), ..decline-stem(stem-d, mel-d, "dat"),
    [*ergative*], [#mel-e], fix-nuclei(stem-e), ..decline-stem(stem-e, mel-e, "erg"),
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
  "": "",
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
  "t": ("t", "þ", "x"),
  "es": ("es", "er", "ix"),
  "és": ("és", "ér", "íx"),
  "ēs": ("ēs", "ēr", "īx"),
  "ès": ("ès", "èr", "ìx"),
  "os": ("os", "or", "ux"),
  "ós": ("ós", "ór", "úx"),
  "ōs": ("ōs", "ōr", "ūx"),
  "òs": ("òs", "òr", "ùx"),
  "s": ("s", "r", "x"),
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
  "p": ("p", "f", "f"),
)
#let ptcp-irregular-endings = (
  "ús": ("ús", "ór", "úx"),
  "át": ("át", "áa", "éq"),
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
  ), "sá": (
    abs: ("t", "tym", "se", "syl", "te", "tyl"),
    dat: ("a", "am", "ar", "ařyl", "atè", "atỳl"),
    erg: ("q", "qim", "qir", "qryl", "qit", "qtyl"),
  ), "qúr": (
    abs: ("s", "sym", "se", "syl", "ske", "skyl"),
    dat: ("r", "ràm", "tàr", "rỳl", "rkè", "rkỳl"),
    erg: ("x", "xim", "xir", "xryl", "xke", "xkyl"),
  ),
)
#let get-caus-ending(ending, pfv-stem) = {
  if ending == none {
    ending
  } else {
    if ending.contains(y-regex.all) {
      let stem-last-vowel = get-vowel(pfv-stem.matches(vowels-regex).last().text)
      let E = tones.at(
        if ("ou".contains(stem-last-vowel)) {"e"}
        else {"o"}
      ).at(get-vowel-and-tone(ending).at(1))
      ending = ending.replace(y-regex.all, E)
    }
    caus-endings.at(ending)
  }
}
#let verb-table(pfv, npfv, ret, verb-ending, ger-ending, antic, caus) = {
  let antic-verb = (pfv + verb-ending, npfv + verb-ending, ret + force-L-tone(verb-ending)).map(fix-nuclei).map(word => [#word])
  if antic != "none" and caus != "none" {
    let caus-ending = get-caus-ending(verb-ending, pfv)
    let caus-verb = (pfv + caus-ending, npfv + caus-ending, ret + force-L-tone(caus-ending)).map(fix-nuclei).map(word => [#word])
    (
      [*anticausative verb*], ..antic-verb,
      table.cell(rowspan: 2)[#{fix-nuclei(pfv + ger-ending)}], 
      [*causative verb*], ..caus-verb,
    )
  } else {
    (
      [*verb*], ..antic-verb, [#{fix-nuclei(pfv + ger-ending)}], 
    )
  }
}
#let decline-ptcp(stems, endings, class) = {
  let combine-stem-ending(stem, case) = {
    ptcp-full-declensions
    .at(class)
    .at(case)
    .map(e => stem + endings.at(case).clusters().slice(0, -1).join() + e)
    .map(fix-nuclei)
  }
  (
    [*absolutive*], ..combine-stem-ending(stems.at(1), "abs"),
    [*dative*], ..combine-stem-ending(stems.at(0), "dat"),
    [*ergative*], ..combine-stem-ending(stems.at(0), "erg"),
  )
}

#let verb(stems: (:), endings: (:), class: none, antic: none, caus: none, meanings: (), meanings-long: ()) = {
  let class-desc = if type(class) == int [class #class] else [irregular]
  let valency-desc = (antic, caus).filter(x => x in valencies).map(x => valencies.at(x)).join("/")
  let (_, verb-ending-tone) = if endings.verb != none {get-vowel-and-tone(endings.verb)} else {(none, none)}
  let (abs-ending, dat-ending, erg-ending) = if type(class) == int {
    ptcp-endings.at(endings.ptcp)
  } else {
    ptcp-irregular-endings.at(endings.ptcp)
  }
  (dat-ending, erg-ending) = (dat-ending, erg-ending).map(
    if verb-ending-tone == "∅" {force-N-tone}
    else if verb-ending-tone == "H" {force-H-tone}
    else if verb-ending-tone == "M" {force-M-tone}
    else if verb-ending-tone == "L" {force-L-tone}
    else {x => x}
  )
  let (ret-abs-ending, ret-dat-ending, ret-erg-ending) = (abs-ending, dat-ending, erg-ending).map(force-L-tone)
  class = str(class)
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
      table.header(
        table.cell(rowspan: 2, colspan: 2)[],
        table.cell(colspan: 2)[*indefinite*],
        table.cell(colspan: 2)[*proximal*],
        table.cell(colspan: 2)[*definite*],
        [*col.*], [*sgv.*],
        [*sg.*], [*pl.*],
        [*sg.*], [*pl.*],
      ),
      table.cell(rowspan: 3)[*perfective participle*], 
      ..decline-ptcp(stems.pfv, (abs: abs-ending, dat: dat-ending, erg: erg-ending), class), 
      table.cell(rowspan: 3)[*imperfective participle*], 
      ..decline-ptcp(stems.npfv, (abs: abs-ending, dat: dat-ending, erg: erg-ending), class), 
      table.cell(rowspan: 3)[*retrospective participle*], 
      ..decline-ptcp(stems.ret, (abs: ret-abs-ending, dat: ret-dat-ending, erg: ret-erg-ending), class), 
    )
  ]
}

#let other-word(lemma: none, part: none, meanings: (), meanings-long: (), tables: ()) = [
  === #part
  #enum(..meanings-long)
  #if tables.len() > 0 [
    #parbreak()
    #tables.map(t => {
      table(
        columns: t.header.len(),
        table.header(..t.header.map(x => [*#x*])),
        ..t.cells.map(x => [#x])
      )
    }).join()
  ]
]
