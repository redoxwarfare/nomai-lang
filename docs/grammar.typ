#set page(
  paper: "a4",
  numbering: "1",
)
#set text(
  // font: "Ubuntu Sans"
)

#align(
  center,
  [
    #title[Nomai: An _Outer Wilds_ fan conlang]
    #text[by redox]
  ]
)


#[
  = Preface
  Unraveling the mysteries of _Outer Wilds_ is a delight you can only experience once. If you haven't completed the base game yet, I _*strongly*_ recommend you do so before reading any further. If you have and are interested in an incredibly lengthy headcanon about the Nomai language, this document is for you. 

  = Introduction
  Nomai was a family of languages spoken by the Nomai, a nation of highly curious spacefaring mammalian herbivores. Throughout their recorded history, the Nomai species organized themselves into clans, communities of blood families committed to living alongside and supporting each other. The Nomai's ancestors were a group of nomadic clans who rejected the social hierarchy and regimented lifestyle of their sedentary kin and left the Nomai homeworld to explore the universe. Each Nomai clan traveled on a Vessel, a highly advanced spacecraft capable of warping across interstellar distances. Every 10 years, each clan would send an envoy to the Nomai homeworld to share their findings with the other clans; these gatherings were known as Festivals.
  
  Although speakers from different clans were often unable to understand one another, they could still communicate through a carefully-preserved logographic writing system. Additionally, a prestige variety was used to converse at Festivals. At the time Escall's clan became stranded in the Outer Wilds system, their native variety formed the basis of the Festivals' _lingua franca_, and so the remainder of the document will refer to that variety as "Festival Nomai".

  Typologically, Festival Nomai is strongly head-initial and topic-prominent, primarily using V2 word order in independent clauses. Verbs exhibit highly agglutinative morphology, noun incorporation, and a robust system of nonfinite verb forms. Nouns are also versatile and can both modify other nouns and act as predicates. Festival Nomai has an unusual morphosyntactic alignment which bears resemblance to a split-S alignment but with two distinct types of transitive verb. The language also makes extensive use of nonconcatenative morphology, distinguishing cases by changes in vowel and tone, and marking aspects by reduplication of the verb stem.

  = Phonology
  == Sound inventory
  The consonant phonemes are as follows:
  #table(
    columns: 6,
    align: center,
    table.header([], [labial], [dental], [alveolar], [lateral], [dorsal]),
    [nasal], [*m*], table.cell(colspan: 2)[*n* \[n\~ɲ\~ŋ\]], [], [],
    [stop], [*p*], table.cell(colspan: 2)[*t*], [], [*k*],
    [affricate], [], table.cell(colspan: 2)[*ts*], [*tɬ*], [*tɕ*],
    [fricative], [*f*], [*θ*], [*s*], [*ɬ*], [*ɕ*],
    [trill], [], table.cell(colspan: 2)[*r̥* *r*], [], [],
    [approximant], [*w* \[ẅ\]], table.cell(colspan: 2)[], [*l*], [*j*]
  )
  /n/ assimilates to \[ɲ\] before /ia io/ and to \[ŋ\] before /k/. Word-final stops are glottalized (e.g. /p/ becomes \[ˀp\~p̚\~ʔ\]). Additionally, /m n l r/ can be syllabic.

  The vowels are as follows:
  #table(
    columns: 4,
    align: center,
    table.header([], [front], [central], [back]),
    [close], [*i*], [*u* \[ʉ\]], [],
    [mid], [*e* \[e\~ɛ\]], [], [*o*],
    [open], table.cell(colspan: 2)[*a*], []
  )
  There are six diphthongs: *ua* \[ẅa\], *ia* \[ja\], *io* \[jo\], *au* \[aẅ\], *ai* \[aj\], and *oi* \[oj\]. Monophthongs and rising diphthongs (ua, ia, io) can be either short or long.

  The tone-bearing unit is the syllable. There are three level tonemes: high \/*H*\/, mid \/*M*\/, and low \/*L*\/. Additionally, syllables may be phonemically toneless \/*∅*\/, and a single syllable may contain the sequence \/*HL*\/.

  The rest of the document will use the following Romanization conventions:
  - \/aː eː iː oː uː\/ — \<aa ei ii ou uu\>
  - \/m̩ n̩ l̩ r̩\/ — \<ym yn yl yr\>
  - \/ts tɬ tɕ\/ — \<c tl q\>
  - \/θ ɬ r̥ ɕ\/ — \<þ ł ř x\>
  - \/H\/ and \[H\] — \<ó\>
  - \/L\/ and \[L\] — \<ò\>
  - \/HL\/ and \[HL\] — \<ô\>
  - \/M\/ — \<ō\>
  - \/∅\/ and \[M\] — \<o\>
  - long vowels and diphthongs will only indicate tone on the first vowel character

  == Phonotactics
  The following sound classes are defined for phonotactical purposes:
  #table(
    columns: 3,
    table.header([sound class], [abbrev.], [members]),
    [stop], [P], [p, t, k],
    [affricate], [A], [c, tl, q],
    [fricative], [F], [f, þ],
    [sibilant], [S], [s, x],
    [obstruent], [T], [P, A, F, S],
    [nasal], [N], [m, n],
    [voiced liquid], [Lv], [l, r],
    [voiceless liquid], [Lu], [ł, ř],
    [liquid], [L], [Lv, Lu],
    [semivowel], [W], [w, j],
    [short vowel], [Vs], [a, e, i, o, u],
    [long vowel], [Vl], [aa, ei, ii, ou, uu],
    [diphthong], [Vd], [ua, ia, io, au, ai, oi],
    [vowel], [V], [Vs, Vl, Vd],
  )

  The allowed onsets and rimes are as follows:
  #table(
    columns: 5,
    table.header([segment], [type], [peripheral], [medial], [example]),
    [∅], [onset], [✓], [], [_élt_ "hand"],
    [T], [onset], [✓], [✓], [_qáa_ "eye"],
    [N], [onset], [✓], [✓], [_nōu_ "knowledge"],
    [Lu], [onset], [✓], [✓], [_řúx_ "follow"],
    [S P/A/F], [onset], [✓], [✓], [_skát_ "fire"],
    [T Lv], [onset], [✓], [✓], [_frér_ "fall"],
    [L/W], [onset], [], [✓], [],
    [V], [rime], [✓], [✓], [_qáa_ "eye"],
    [V T/Lv], [rime], [✓], [✓], [_skát_ "fire"],
    [N/Lv], [rime], [✓], [✓], [_skátym_ "a fire"],
    [V N], [rime], [✓], [], [_sîm_ "at"],
    [V S/N/Lv T], [rime], [✓], [], [_élt_ "hand"],
  )

  = Nouns

  == Case

  == Article and number

  == Declension

  == Pronouns

  == Possession

  = Verbs

  == Aspect
  
  == Valency

  == Class
  
  == Voice

  == Person

  == Incorporation

  == Participles

  == Gerunds

  == Converbs

  == Modals and evidentials

  = Syntax
]