#import "@preview/eggs:0.9.0": *
#import abbreviations: abbreviation, abs, dat, erg, def, prox, sg, pl, p1, p2, p3, n, m, f, appl
#show: eggs

#let ndef = abbreviation("ndef", "indefinite article")
#let sgv = abbreviation("sgv", "singulative number")
#let col = abbreviation("col", "collective number")
#let npfv = abbreviation("npfv", "imperfective aspect")
#let ret = abbreviation("ret", "retrospective aspect")
#let ntr = abbreviation("ntr", "intransitive verb")
#let exp = abbreviation("exp", "experiential verb")
#let ntl = abbreviation("ntl", "intentional verb")
#let ditr = abbreviation("ditr", "ditransitive verb")
#let advs = abbreviation("advs", "adversative voice")

#set page(
  paper: "a4",
  numbering: "1",
)
#set heading(
  numbering: "1.",
)
// #set text(
//   font: "Ubuntu Sans Mono"
// )

#align(
  center,
  [
    #title[Nomai: An _Outer Wilds_ fan conlang]
    #text[by redox]
  ]
)

= Preface
Unraveling the mysteries of _Outer Wilds_ is a delight you can only experience once. If you haven't completed the base game yet, I _*strongly*_ recommend you do so before reading any further. If you have and are interested in an incredibly lengthy headcanon about the Nomai language, this document is for you. 

= Introduction
Nomai was a family of languages spoken by the Nomai, a nation of highly curious spacefaring mammalian herbivores. Throughout their recorded history, the Nomai species organized themselves into clans, communities of blood families committed to living alongside and supporting each other. The Nomai's ancestors were a group of nomadic clans who rejected the social hierarchy and regimented lifestyle of their sedentary kin and left the Nomai homeworld to explore the universe. Each Nomai clan traveled on a Vessel, a highly advanced spacecraft capable of warping across interstellar distances. Every 10 years, each clan would send an envoy to the Nomai homeworld to share their findings with the other clans; these gatherings were known as Festivals.

Although speakers from different clans were often unable to understand one another, they could still communicate through a carefully-preserved logographic writing system. Additionally, a prestige variety was used to converse at Festivals. At the time Escall's clan became stranded in the Outer Wilds system, their native variety formed the basis of the Festivals' _lingua franca_, and so the remainder of the document will refer to that variety as "Festival Nomai".

Typologically, Festival Nomai is strongly head-initial and topic-prominent, primarily using V2 word order in independent clauses. Verbs exhibit highly agglutinative morphology, noun incorporation, and a robust system of nonfinite verb forms. Nouns are also versatile and can both modify other nouns and act as predicates. Festival Nomai has an unusual morphosyntactic alignment which bears resemblance to a split-S alignment but with two distinct types of transitive verb. The language also makes extensive use of nonconcatenative morphology and both lexical and grammatical tone.

#pagebreak()
= Phonology
== Sound inventory
Festival Nomai distinguishes 18 consonants, 5 monophthongs, and 6 diphthongs.

#figure(caption: "Festival Nomai consonant phonemes.")[
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
]
/n/ assimilates to \[ɲ\] before /ia io/ and to \[ŋ\] before /k/. Word-final stops are glottalized (e.g. /p/ becomes \[ˀp\~p̚\~ʔ\]). Additionally, /m n l r/ can be syllabic.

#figure(caption: "Festival Nomai vowel phonemes.")[
  #table(
    columns: 4,
    align: center,
    table.header([], [front], [central], [back]),
    [close], [*i*], [*u* \[ʉ\]], [],
    [mid], [*e* \[e\~ɛ\]], [], [*o*],
    [open], table.cell(colspan: 2)[*a*], []
  )
]
The diphthongs are *ua* \[ẅa\], *ia* \[ja\], *io* \[jo\], *au* \[aẅ\], *ai* \[aj\], and *oi* \[oj\]. Monophthongs and rising diphthongs (ua, ia, io) can be either short or long.

The tone-bearing unit is the syllable. There are three level tonemes: high \/*H*\/, mid \/*M*\/, and low \/*L*\/. Additionally, syllables may be phonemically toneless \/*∅*\/, and a single syllable may bear the sequence \/*HL*\/.

== Orthography
Like all varieties of Nomai from across the spacefaring period, Festival Nomai was written in the Nomai logography. However, the input methods for Nomai staves continued to use the Nomai alphabet, the writing system of Classical Nomai. This leads to two possible Romanization schemes: a phonetic scheme that reflects the pronunciation of the spoken language, and a phonemic scheme that reflects native spelling and underlying morphophonological processes. This document will primarily represent Nomai words with the phonetic scheme in italics, but when it is more convenient to do so, it will use the phonemic scheme in angle brackets (ex: _xēi_ \<zée\> "root").

In the phonemic scheme, consonants are either light or heavy, corresponding to unvoiced and voiced consonants in Classical Nomai, and syllabic nuclei are either unstressed or stressed, corresponding to Classical Nomai's stress-accent. Festival Nomai no longer exhibits voicing or stress contrasts at the phonetic level, but instead encodes the same phonemic information through tone contrasts.

#figure(caption: "Toneme assignment based on syllable onset and nucleus.")[
  #table(
    columns: 3,
    table.header([], [*+stress*], [*-stress*]),
    [*light onset*], [/H/ (_pá_ \<pá\>)], [/∅/ (_pa_ \<pa\>)],
    [*heavy onset*], [/M/ (_pā_ \<bá\>)], [/L/ (_pà_ \<ba\>)],
  )
]

#figure(caption: "Correspondence of phonemic and phonetic Romanization schemes for consonants.")[
  #table(
    columns: 4,
    table.header([phonetic], [light], [heavy], [value]),
    [_m_], [], [\<m\>], [\[m\]],
    [_n_], [], [\<n\>], [\[n\]],
    [_p_], [\<p\>], [\<b\>], [\[p\]],
    [_t_], [\<t\>], [\<d\>], [\[t\]],
    [_k_], [\<k\>], [\<g\>], [\[k\]],
    [_c_], [\<c\>], [\<ds\>], [\[ts\]],
    [_tl_], [\<tl\>], [\<dl\>], [\[tɬ\]],
    [_q_], [\<q\>], [\<ǧ\>], [\[tɕ\]],
    [_f_], [\<f\>], [\<v\>], [\[f\]],
    [_þ_], [\<þ\>], [\<ð\>], [\[θ\]],
    [_x_], [\<x\>], [\<z\>], [\[ɕ\]],
    [_s_], [\<s\>], [], [\[s\]],
    [_ł_], [\<ł\>], [], [\[ɬ\]],
    [_l_], [], [\<l\>], [\[l\]],
    [_ř_], [\<ř\>], [], [\[r̥\]],
    [_r_], [], [\<r\>], [\[r\]],
    [_w_], [], [\<w\>], [\[ẅ\]],
    [_j_], [], [\<j\>], [\[j\]],
  )
]

#figure(caption: "Correspondence of phonemic and phonetic Romanization schemes for vowels and syllabic consonants.")[
  #table(
    columns: 3,
    table.header([phonetic], [phonemic], [value]),
    [_a_], [\<a\>], [\[a\]],
    [_à_], [\<a\>], [\[a˩\]],
    [_ā_], [\<á\>], [\[a˧\]],
    [_á_], [\<á\>], [\[a˥\]],
    [_â_], [\<á_h\>], [\[a˥˩\]],
    [_aa_], [\<aa\>], [\[aː\]],
    [_àa_], [\<aa\>], [\[aː˩\]],
    [_āa_], [\<áa\>], [\[aː˧\]],
    [_áa_], [\<áa\>], [\[aː˥\]],
    [_ei_], [\<ee\>], [\[eː\]],
    [_ou_], [\<oo\>], [\[oː\]],
    [_ym_], [\<ym\>], [\[m̩\]],
    [_yn_], [\<yn\>], [\[n̩\]],
    [_yl_], [\<yl\>], [\[l̩\]],
    [_yr_], [\<yr\>], [\[r̩\]],
  )
]

== Phonotactics
#figure(caption: "Phonotactical sound classes.")[
  #table(
    columns: 3,
    table.header([sound class], [abbrev.], [members]),
    [stop], [P], [_p, t, k_],
    [affricate], [A], [_c, tl, q_],
    [fricative], [F], [_f, þ_],
    [sibilant], [S], [_s, x_],
    [obstruent], [T], [P, A, F, S],
    [nasal], [N], [_m, n_],
    [voiced liquid], [Lv], [_l, r_],
    [voiceless liquid], [Lu], [_ł, ř_],
    [liquid], [L], [Lv, Lu],
    [semivowel], [W], [_w, j_],
    [short vowel], [Vs], [_a, e, i, o, u_],
    [long vowel], [Vl], [_aa, ei, ii, ou, uu_],
    [diphthong], [Vd], [_ua, ia, io, au, ai, oi_],
    [vowel], [V], [Vs, Vl, Vd],
  )
]

#figure(caption: "Allowed onsets and rimes.")[
  #table(
    columns: 5,
    table.header([segment], [type], [peripheral], [medial], [example]),
    [∅], [onset], [✓], [], [_élt_ "hand"],
    [T], [onset], [✓], [✓], [_qáa_ "eye"],
    [N], [onset], [✓], [✓], [_nōu_ "knowledge"],
    [Lu], [onset], [✓], [✓], [_řúx_ "follow"],
    [S P/F/Lu], [onset], [✓], [✓], [_skát_ "fire"],
    [T Lv], [onset], [✓], [✓], [_frér_ "fall"],
    [L/W], [onset], [], [✓], [_píjòu_ "moon"],
    [V], [rime], [✓], [✓], [_qáa_ "eye"],
    [V T/Lv], [rime], [✓], [✓], [_skát_ "fire"],
    [N/Lv], [rime], [✓], [✓], [_kylþóþ_ "injure"],
    [V N], [rime], [✓], [], [_sîm_ "at"],
    [V S/Lv T], [rime], [✓], [], [_élt_ "hand"],
  )
]

Tones are realized according to the following rules:
+ if preceded by /L/ in the same word, /M/ spreads rightward, delinking following /L/, until meeting a word boundary or /H/
+ /H/ spreads to any immediately following /∅/ syllable unless it is the last tone in a noun phrase or prepositional phrase
+ /L/ spreads rightwards into /∅/ syllables, crossing word boundaries
+ /M/ spreads rightwards into /∅/ syllables, crossing word boundaries
+ all remaining /∅/ syllables are realized as \[M\]

#pagebreak()
= Nouns
Nomai nouns are an open class and include words that might be considered adjectives in other languages. They inflect for case, article, and number. Any series of consecutive nouns with the same case, article, and number acts as a single noun phrase, where the first noun is the head (also called a "substantive noun") and the other nouns are modifiers (also called "attributive nouns").

== Case and alignment
Nomai distinguishes three morphological cases:

- *absolutive*: undergoers of change, unintentional causes of events, instruments, prepositional objects
- *dative*: receivers; experiencers of sensations, feelings, and thoughts; destinations
- *ergative*: intentional initiators of events

In the classical period, before the first Vessels departed the Nomai homeworld, the distinction between absolutive causes and ergative causes was strictly tied to perceived animacy. For example, "The rain washed the stain off" would assign the absolutive case to "the rain", but "Iris washed the stain off with a cloth" would assign the ergative case to "Iris" and the absolutive case to "a cloth". However, by the time of Festival Nomai, speakers had blurred the lines between "intentional" and "unintentional" causes, often using the ergative case to emphasize prominent inanimate nouns.

All nouns have separate stems for each case. The stems differ in their final syllables according to a somewhat predictable system of vowel/consonant mutation and melody alternation, but learners typically memorize all three stems when learning a noun.

#figure(caption: "Final vowel mutation in case stems.")[
  #table(
    columns: 3,
    table.header([*ABS*], [*DAT*], [*ERG*]),
    [\<a\>], [\<a\>], [\<e\>],
    [\<e\>], [\<e\>], [\<i\>],
    [\<i\>], [\<e\>], [\<i\>],
    [\<o\>], [\<o\>], [\<u\>],
    [\<u\>], [\<o\>], [\<u\>],
  )
]

#figure(caption: "Final coda mutation in case stems. <ø> indicates no coda.")[
  #table(
    columns: 3,
    table.header([*ABS*], [*DAT*], [*ERG*]),
    [\<p\>], [\<b\>], [\<b\>],
    [\<t\>], [\<d\>], [\<ǧ\>],
    [\<k\>], [\<g\>], [\<ǧ\>],
    [\<b\>], [\<v\>], [\<v\>],
    [\<d\>], [\<ð\>], [\<z\>],
    [\<g\>], [\<∅\>], [\<z\>],
    [\<t\>], [\<∅\>], [\<q\>],
    [\<p, k\>], [\<∅\>], [\<∅\>],
    [\<s\>], [\<r\>], [\<x\>],
    [\<∅\>], [\<m, n\>], [\<m, n\>],
    [\<l\>], [\<l\>], [\<l\>],
  )
]

#figure(caption: "Common patterns of case stem melody alternation.")[
  #table(
    columns: 2,
    table.header([*ABS*], [*DAT/ERG*]),
    [/H.∅/, /H.H/], [/∅.H/],
    [/H.L/], [/∅.M/],
    [/M.M/], [/M.H/],
    [/M.L/], [/L.M/],
  )
]

#figure(caption: "Example nouns and their case stems.")[
  #table(
    columns: 6,
    table.header([], [*"seed"*], [*"fact"*], [*"eye"*], [*"fruit"*], [*"dark"*]),
    [*ABS*], [_pīt_ \<bít\>], [_łék_ \<łék\>], [_qáa_ \<qáa\>], [_ómàs_ \<ómas\>], [_píol_ \<píol\>],
    [*DAT*], [_pīa_ \<bía\>], [_łêk_ \<łégh\>], [_qân_ \<qánh\>], [_omār_ \<omár\>], [_pîol_ \<píolh\>],
    [*ERG*], [_pīq_ \<bíq\>], [_łîq_ \<łíǧh\>], [_qên_ \<qénh\>], [_omēx_ \<oméx\>], [_pîol_ \<píolh\>],
  )
]

== Article and number
Festival Nomai distinguishes three articles:

- *indefinite*: generic, nonspecific, or backgrounded nouns
- *proximal*: specific nouns unknown to the listener
- *definite*: specific nouns known to the listener; proper nouns

Indefinite nouns are either collective or singulative, whereas proximal and definite nouns are either singular or plural.

The proximal article is so named because it originated from Proto-Nomai's 3-way demonstrative system, which evolved into Classical Nomai's proximal, medial, and distal articles. The definite article is a result of sound changes fusing the medial and distal articles.

Bare noun stems correspond to the indefinite collective. Other article-number combinations are marked by a suffix that depends on a noun stem's case and coda. 

#figure(caption: [
  Article-number suffixes for absolutive stems.\ _X_ = _s_, _l_, _r_. _E_ = _e_ if the previous vowel is _a, e,_ or _i_; otherwise _o_.])[
  #table(
    columns: 6,
    table.header([*NDEF.COL* ], [*NDEF.SGV*], [*PROX.SG*], [*PROX.PL*], [*DEF.SG*], [*DEF.PL*]),
    [*∅*], [_-m_], [_-cè_], [_-cỳl_], [_-kè_], [_-kỳl_],
    [_*-p*_], [_-pym_], [_-pse_], [_-psyl_], [_-pe_], [_-pyl_],
    [_*-t*_], [_-tym_], [_-se, -ce_], [_-syl, -cyl_], [_-te_], [_-tyl_],
    [_*-k*_], [_-kym_], [_-ce_], [_-cyl_], [_-ke_], [_-kyl_],
    [_*-s*_], [_-sym_], [_-se_], [_-syl_], [_-ske_], [_-skyl_],
    [_*-l*_], [_-lym_], [_-lse_], [_-lsyl_], [_-lke_], [_-lkyl_],
    [_*-yl*_], [_-lEm_], [_-ylse_], [_-ylsyl_], [_-ylke_], [_-ylkyl_],
    [_*-Xp*_], [_-Xpym_], [_-XpEs_], [_-XpEsyl_], [_-Xpe_], [_-Xpyl_],
    [_*-Xt*_], [_-Xtym_], [_-XtEs_], [_-XtEsyl_], [_-Xte_], [_-Xtyl_],
    [_*-Xk*_], [_-Xkym_], [_-XkEs_], [_-XkEsyl_], [_-Xkek_], [_-Xkekyl_],
  )
]

#figure(caption: [
  Article-number endings for dative and ergative stems.\ _C_ = absolutive stem's last non-syllabic consonant if it is _p_, _t_, or _k_; otherwise _k_.\ _F_ = _f_ \<v\>, _þ_ \<ð\>, _x_ \<z\>. _N_ = _m_ or _n_. _A_ = _a_ for dative stems, _i_ for ergative stems.])[
  #table(
    columns: 6,
    table.header([*NDEF.COL*], [*NDEF.SGV*], [*PROX.SG*], [*PROX.PL*], [*DEF.SG*], [*DEF.PL*]),
    [*∅*], [_-m_], [_-r_], [_-řyl_], [_-Cè_], [_-Cỳl_],
    [_*-C*_], [_-CÀm_], [_-CÀr_], [_-Crỳl_], [_-CÀC_], [_-Cỳl_],
    [_*-F*_], [_-FÀm_], [_-FÀr_], [_-Frỳl_], [_-FÀC_], [_-FÀCyl_],
    [_*-N*_], [_-NÀm_], [_-NÀr_], [_-NÀrỳl_], [_-NÀC_], [_-NÀCỳl_],
    [_*-l*_], [_-lÀm_], [_-lÀr_], [_-lÀrỳl_], [_-lÀC_], [_-lÀCỳl_],
    [_*-ClA*_], [_-lAm_], [_-lAr_], [_-lArỳl_], [_-lACè_], [_-lACỳl_],
    [_*-ClÀ*_], [_-lÀm_], [_-lÀr_], [_-lÀrỳl_], [_-lÀCè_], [_-lÀCỳl_],
    [_*-q*_ \<-q\>], [_-qim_], [_-qir_], [_-qryl_], [_-qiC_], [_-qCyl_],
    [_*-q*_ \<-ǧ\>], [_-qìm_], [_-qìr_], [_-qrỳl_], [_-qìC_], [_-qCỳl_],
    [_*-r*_], [_-ràm_], [_-tàr_], [_-rỳl_], [_-rkè_], [_-rkỳl_],
    [_*-x*_ \<-x\>], [_-xim_], [_-xir_], [_-xryl_], [_-xke_], [_-xkyl_],
  )
]

#figure(caption: [Full declension table of _pīt_ \<bít\> "seed".])[
  #table(
    columns: 7,
    table.header([], [*NDEF.COL*], [*NDEF.SGV*], [*PROX.SG*], [*PROX.PL*], [*DEF.SG*], [*DEF.PL*]),
    [*ABS*], [_pīt_\ \<bít\>], [_pītȳm_\ \<bítym\>], [_pīsē_\ \<bíse\>], [_pīsȳl_\ \<bísyl\>], [_pītē_\ \<bíte\>], [_pītȳl_\ \<bítyl\>],
    [*DAT*], [_pīa_\ \<bía\>], [_pīam_\ \<bíam\>], [_pīar_\ \<bíar\>], [_pīařȳl_\ \<bíařyl\>], [_pīat_\ \<bíat\>], [_pīatȳl_\ \<bíatyl\>],
    [*ERG*], [_pīq_\ \<bíq\>], [_pīqīm_\ \<bíqim\>], [_pīqīr_\ \<bíqir\>], [_pīqrȳl_\ \<bíqryl\>], [_pīqīt_\ \<bíqit\>], [_pīqtȳl_\ \<bíqtyl\>],
  )
]

== Pronouns
Pronouns distinguish three grammatical persons and, Like nouns, mark case, article, and number. Despite lacking grammatical gender, Festival Nomai distinguishes three genders in the 2nd and 3rd person pronouns:

- *neutral*: originates from informal pronouns; has professional and somewhat impersonal connotations
- *feminine*: originates from formal pronouns; has connotations of flattery or subservience when used for non-feminine referents
- *masculine*: originates from intimate pronouns; plural forms can be used gender-neutrally

#figure(caption: "Pronouns.")[
  #table(
    columns: 8,
    table.header([*person*], [*gender*], [*SG.ABS*], [*SG.DAT*], [*SG.ERG*], [*PL.ABS*], [*PL.DAT*], [*PL.ERG*]),
    [*1.EXCL*], [], [_tér_], [_tár_], [_tír_], [_térȳl_], [_tárȳl_], [_tírȳl_], 
    [*1.INCL*], [*N*], [], [], [], [_ótỳl_], [_átàl_], [_úxìl_], 
    [*1.INCL*], [*F*], [], [], [], [_fāstȳl_], [_fāstāl_], [_fēsqīl_], 
    [*1.INCL*], [*M*], [], [], [], [_xōtȳl_], [_xātāl_], [_xūtīl_], 
    [*2*], [*N*], [_ók_], [_ák_], [_úk_], [_ókỳl_], [_ákỳl_], [_úkỳl_], 
    [*2*], [*F*], [_áus_], [_áur_], [_áux_], [_áusȳl_], [_áurāl_], [_áuxīl_], 
    [*2*], [*M*], [_xō_], [_xā_], [_xū_], [_xōl_], [_xāl_], [_xūl_], 
    [*3.NDEF*], [*N*], [_mōu_], [_mōn_], [_mūn_], [_łóu_], [_łón_], [_łún_], 
    [*3.PROX*], [*N*], [_mōucè_], [_mōnàr_], [_mūnìr_], [_łóucè_], [_łónàr_], [_łúnìr_], 
    [*3.DEF*], [*N*], [_mōukè_], [_mōnàk_], [_mūnìk_], [_łóukè_], [_łónàk_], [_łúnìk_], 
    [*3.PROX*], [*F*], [_fāsē_], [_fātàr_], [_fēxìr_], [_fāsȳl_], [_fārȳl_], [_fēxrȳl_], 
    [*3.DEF*], [*F*], [_fās_], [_fār_], [_fēx_], [_fāskȳl_], [_fārkȳl_], [_fēxkȳl_], 
    [*3.PROX*], [*M*], [_xōucè_], [_xōnàr_], [_xūnìr_], [_xōucỳl_], [_xōnàrỳl_], [_xūnìrỳl_], 
    [*3.DEF*], [*M*], [_xōu_], [_xōn_], [_xūn_], [_xōul_], [_xōnàl_], [_xūnìl_], 
  )
]

== Possession
While juxtaposition and agreement indicate that two nouns refer to the same object, possession marking indicates that they are distinct, yet closely related objects. The possessum immediately precedes its possessor and is marked with the pertensive clitic, which inflects for the possessor's person, article, and number. Possessa and possessors can be noun phrases, and the possessor of one noun phrase can be the possessum of another.

#figure(caption: "Inflections of the pertensive clitic.")[
  #table(
    columns: 7,
    table.header([], [*1.EXCL*], [*1.INCL*], [*2*], [*3.NDEF*], [*3.PROX*], [*3.DEF*]),
    [*SG/SGV/COL*], [_-(f)ùtè_], [], [_-fò_], [_-(f)ù_], [_-(f)ùr_], [_-(f)ùkè_],
    [*PL*], [_-(f)ùtỳl_], [_-(f)òtỳl_], [_-fòl_], [], [_-(f)ùrỳl_], [_-(f)ùkỳl_],
  )
]

#pagebreak()
= Verbs
Nomai verbs are highly agglutinative, marking polarity, modality, evidentiality, voice, aspect, and person. They also have two nonfinite forms: gerunds and participles.

The verb template contains the following slots:
+ #link(<ptcp>)[participle] orientation prefix or #link(<cvb>)[converb] prefix
+ negation prefix _pà-_
+ #link(<mod>)[modal/evidential] prefix(es)
+ #link(<incorp>)[incorporated object]
+ #link(<voice>)[voice] prefix
+ verb stem (encodes #link(<asp>)[aspect])
+ verb ending
  - finite verb #link(<class>)[class] ending
  - #link(<ger>)[gerund] ending
  - #link(<ptcp>)[participle] ending
+ #link(<prs>)[person] suffix

== Aspect <asp>
Nomai distinguishes three aspects:

- *perfective*: a complete, singular action/event
- *imperfective*: the state of an ongoing, prospective, or habitual action/event
- *retrospective*: the state of an action/event having been completed

All verbs have separate stems for each aspect, with the perfective stem being the most basic. The imperfective and retrospective stems are formed from the perfective stem by reduplication, prefixing, and/or infixing.

#figure(caption: [Formation of aspect stems.\ See @asp-cons for possible values of _D_ given onset _C_ or _F_.\ See @asp-vwl for possible values of _AA_ given mora _V_. \ _L_ = _l, r_. _X_ = any non-sibilant consonant.])[
  #table(
    columns: 3,
    table.header([*PFV form*], [*NPFV form*], [*RET form*]),
    [_CV_], [_C\<*VD*\>V_], [_C\<*AAD*\>V_],
    [_CLV_], [_C\<*VD*\>LV_], [_C\<*AAD*\>LV_],
    [_FV_], [_*DV*\~FV_], [_F\<*AAD*\>V_],
    [_FLV_], [_*DV*\~FLV_], [_F\<*AAD*\>LV_],
    [_řV_], [_*kV*\~řV_], [_*AAkr*__V_],
    [_řV_], [_*sV*\~řV_], [_*sAA*-řV_],
    [_sXV_], [_*sV*\~sXV_], [_*sAA*-sXV_],
  )
]

#figure(caption: "Onset mutation in aspect stems.")[
  #table(
    columns: 4,
    table.header([*pattern*], [*PFV*], [*NPFV*], [*RET*]),
    [C], [\<m\>], [\<m\>], [\<v\>],
    [C], [\<n\>], [\<n\>], [\<ð\>],
    [C], [\<p\>], [\<p\>], [\<b\>],
    [C], [\<t\>], [\<t\>], [\<d\>],
    [C], [\<k\>], [\<k\>], [\<g\>],
    [C], [\<b\>], [\<v\>], [\<v\>],
    [C], [\<d\>], [\<ð\>], [\<ð\>],
    [C], [\<g\>], [\<w\>], [\<n\>],
    [C], [\<q\>], [\<q\>], [\<d\>],
    [C], [\<ǧ\>], [\<z\>], [\<þ\>],
    [C], [\<s\>], [\<r\>], [\<ds\>],
    [C], [\<s\>], [\<x\>], [\<z\>],
    [C], [\<v\>], [], [],
    [C], [\<z\>], [], [],
    [C], [∅], [\<k\>], [\<g\>],
    [C], [∅], [\<n\>], [any],
    [F], [\<f\>], [\<p\>], [\<b\>],
    [F], [\<þ\>], [\<t\>], [\<d\>],
    [F], [\<x\>], [\<s\>], [\<z\>],
    [F], [\<ł\>], [\<d\>], [\<ð\>],
  )
] <asp-cons>

#figure(caption: [Perfective-retrospective vowel correspondences.\ \<y\> refers to any syllabic consonant.])[
  #table(
    columns: 2,
    table.header([*PFV nucleus* (V)], [*RET vowel* (AA)]),
    [\<a\>], [\<ee\>],
    [\<e\>], [\<aa\>],
    [\<i\>], [\<ee\>],
    [\<o\>], [\<aa\>],
    [\<u\>], [\<oo\>],
    [\<y\>], [\<aa\>],
  )
] <asp-vwl>

== Valency
The valency of a verb encapsulates how many arguments it accepts and which cases they take. Nomai verbs have six possible valencies:

- *intransitive* (NTR): absolutive
- *agentive* (AGN): ergative
- *experiential* (EXP): dative, absolutive
- *intentional* (NTL): ergative, absolutive
- *locomotive* (LCM): ergative, dative
- *ditransitive* (DITR): ergative, dative, absolutive

The majority of verbs are intransitive, experiential, intentional, or ditransitive. Intransitive and intentional verbs generally assign the absolutive case to the patient, whereas experiential and ditransitive verbs generally assign the dative case to the patient/experiencer and the absolutive case to the instrument/theme.

Locomotive verbs are a relatively small class, albeit including common verbs such as _qúr_ "go" and _mīiqùx_ "come". Agentive verbs are not a true lexical class and can only be formed by #link(<incorp>)[noun incorporation].

All finite verbs must be used with at least one non-dative argument; there are no other restrictions on which arguments may be omitted.

== Class <class>
Every verb belongs to one of eight classes, which loosely indicate how a verb's meaning is related to its root. All classes except 6-8 are closed.

Verbs from classes 1-5 have anticausative and causative forms, which map the same semantic roles to their absolutive and dative arguments. The causative form takes an ergative argument, whereas the anticausative form does not. For some class 1-5 verbs, one of the two forms is defective and is never used. Verbs from classes 6-8 are exclusively causative.

#figure(caption: "Class endings and example verbs.")[
  #table(
    columns: 6,
    table.header([*class*], [*ANTIC endings*], [*CAUS endings*], [*description*], [*ANTIC example*], [*CAUS example*]),
    [*1*], [_-eþ, -oþ_], [_-ixi, -uxi_], [physical changes (instrumental)], [_kléþ_ "stain"], [_klíxi_ "paint"],
    [*2*], [_-aþ_], [_-exi_], [physical changes (inchoative)], [_emāþ_ "ripen"], [_emēxī_ "cook"],
    [*3*], [_-er, -or, -yr_], [_-ix, -ux_], [movement], [_mìnēr_ "approach"], [_mìnīx_ "bring"],
    [*4*], [_-e, -o_], [_-i, -u_], [intangible changes (instrumental)], [_qanē_ "see"], [_qanī_ "show"],
    [*5*], [_-a_], [_-e_], [intangible changes (inchoative)], [_nòmā_ "learn"], [_nòmē_ "teach"],
    [*6*], [], [_-eqi_], [physical changes], [], [],
    [*7*], [], [_-qux, -xux_], [self-movement], [], [_mīiqùx_ "come"],
    [*8*], [], [_-xi, -qi_], [intangible changes], [], [_kélxi_ "write"],
  )
]

== Voice <voice>
Voices alter a verb's valency and the semantic roles mapped to its arguments. Festival Nomai has two voices: applicative and adversative.

The *applicative* voice, demonstrated in @appl-ex:b, is a valency-increasing operation that converts intransitive and intentional verbs to experiential and ditransitive verbs, respectively. It promotes a cause/instrument to the absolutive case; the previous absolutive argument becomes dative. The applicative voice is marked by the prefixes _ła-_ (if the next vowel is not _i_ or _u_), _łe-_ (if the next vowel is _i_), and _ło-_ (if the next vowel is _u_).

The *adversative* voice, demonstrated in @advs-ex:d, is a valency-reducing operation that converts intentional and ditransitive verbs to experiential verbs, indicating that the event happens in spite of the experiencer's efforts or wishes. It demotes the ergative agent to a dative experiencer; the previous dative argument, if it exists, is demoted to an adjunct. The adversative voice is marked by the prefixes _xo-_ (if the next vowel is not _i_ or _u_) and _xu-_ (if the next vowel is _i_ or _u_).

#example(label: <appl-ex>)[
  + - _łán_ _mò\~mòrīx_
    - water\\#abs #npfv\~raise
    "Water is being lifted."
  + - _łân_ _ła-mò\~mòrīx_ _tūsk-es_
    - water\\#dat #appl\-#npfv\~raise tool\\#abs\-#prox.#sg
    "Water is being lifted with a device."
]

#example(label: <advs-ex>)[
  + - _łán-kè_ _frér_
    - water\\#abs\-#def.#sg fall
    "The water fell.""
  + - _łán-kè_ _fríx_
    - water\\#abs\-#def.#sg drop
    "The water was dropped \[on purpose\]."
  + - _łán-kè_ _fríx-ti_
    - water\\#abs\-#def.#sg drop-#p1.#sg.#erg
    "I dropped the water \[on purpose\]."
  + - _łán-kè_ _xu-fríx-ta_
    - water\\#abs\-#def.#sg #advs\-drop-#p1.#sg.#dat
    "I spilled the water \[accidentally\]."
]

== Person <prs>
#figure(caption: "Person suffixes.")[
  #table(
    columns: 8,
    table.header([*person*], [*gender*], [*SG.ABS*], [*SG.DAT*], [*SG.ERG*], [*PL.ABS*], [*PL.DAT*], [*PL.ERG*]),
    [*1.EXCL*], [], [_-te_], [_-ta_], [_-ti_], [_-tel_], [_-tal_], [_-til_], 
    [*1.INCL*], [], [], [], [], [_-(f)ot_], [_-(f)at_], [_-(f)ux_], 
    [*2*], [*N*], [_-(f)o_], [_-(f)a_], [_-(f)u_], [_-(f)ol_], [_-(f)al_], [_-(f)ul_], 
    [*2*], [*F*], [_-(f)aus_], [_-(f)aur_], [_-(f)aux_], [_-(f)osyl_], [_-(f)oryl_], [_-(f)oxyl_], 
    [*2*], [*M*], [_-xò_], [_-xà_], [_-xù_], [_-xòl_], [_-xàl_], [_-xùl_], 
    [*3*], [*N*], [_-mòu_], [_-mòn_], [_-mùn_], [_-łou_], [_-łon_], [_-łun_], 
    [*3*], [*F*], [_-fàs_], [_-fàr_], [_-fèx_], [_-fàl_], [_-fàrỳl_], [_fèl_], 
    [*3*], [*M*], [_-xòu_], [_-xòn_], [_-xùn_], [_-xòl_], [_-xònỳl_], [_-xùnỳl_], 
  )
]

Person suffixes are transparently related to pronouns and are mutually exclusive with them; if a verb takes a person suffix, it cannot also take a matching pronoun argument. Verbs preferentially take 1st and 2nd person arguments as suffixes and 3rd person arguments as nouns or pronouns. 1st and 2nd person suffixes can stack with one another, following the order #erg > #dat > #abs.

3rd person suffixes only appear on finite verbs in a limited number of situations: to indicate a shared topic between coordinated clauses as in @coord-clauses, to indicate a reflexive verb as in @refl, or to imply a topic that the listener can infer from context.

#example(label: <coord-clauses>)[
  - _mīf-ìk_ _sfúxi_ _ómàs-ym_ _mínù_ _qanē-mòu_ _nūfàr-kè_
  - child\\#erg\-#def.#sg eat fruit\\#abs\-#ndef.#sgv but see-#p3.#sg.#n.#abs woman\\#dat\-#def.#sg
  "The child ate a fruit but was seen by the woman."
]

#example(label: <refl>)[
  - _tísq-ik_ _nìomūx-mòu_ _nāf_ _nēlk-ek_
  - bird\\#erg\-#def.#sg throw-#p3.#sg.#n.#abs from tree\\#abs\-#def.#sg
  "The bird launched itself off the tree.""
]

== Incorporation <incorp>

== Gerunds <ger>

== Participles <ptcp>

== Converbs <cvb>

== Modals and evidentials <mod>

= Syntax

= Miscellaneous

== Comparatives and superlatives

== Numerals
