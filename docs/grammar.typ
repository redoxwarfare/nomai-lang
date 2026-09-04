#import "@preview/eggs:0.9.0": *
#import abbreviations: abbreviation, abs, dat, erg, def, prox, sg, pl, p1, p2, p3, n, m, f, appl, comp, quot, rel, q
#show: eggs

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
#let dor = abbreviation("dor", "dative-orienting")
#let eor = abbreviation("eor", "ergative-orienting")

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
Like all varieties of Nomai from across the spacefaring period, Festival Nomai was written in the Nomai logography. However, the input methods for Nomai staves continued to use the Nomai alphabet, the writing system of Classical Nomai. This leads to two possible Romanization schemes: a phonetic scheme that reflects the pronunciation of the spoken language, and a phonemic scheme that reflects native spelling and underlying morphophonological processes. This document will primarily represent Nomai morphemes with the phonetic scheme in italics, but when it is more convenient to do so, it will use the phonemic scheme in angle brackets (ex: _xēi_ \<zée\> "root").

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
+ /H/ spreads to any immediately following /∅/ syllable unless it is the last tone in an NP or PP
+ /L/ spreads rightwards into /∅/ syllables, crossing word boundaries
+ /M/ spreads rightwards into /∅/ syllables, crossing word boundaries
+ all remaining /∅/ syllables are realized as \[M\]

#pagebreak()
= Nouns
Nomai nouns are an open class and include words that might be considered adjectives in other languages. They inflect for case, article, and number. Any series of consecutive nouns with the same case, article, and number acts as a single NP, where the first noun is the head (also called a "substantive noun") and the other nouns are modifiers (also called "attributive nouns").

== Case and alignment
Nomai distinguishes three morphological cases:

- *absolutive*: undergoers of change, unintentional causes of events, instruments, possessors, most prepositional objects
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
- *proximal*: specific nouns unknown to the listener; focused nouns
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
  Article-number endings for dative and ergative stems.\ _C_ = absolutive stem's last non-syllabic consonant if it is _p, t, k_; otherwise _k_.\ _F_ = _f_ \<v\>, _þ_ \<ð\>, _x_ \<z\>. _N_ = _m, n_. _A_ = _a_ for dative stems, _i_ for ergative stems.])[
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
    table.cell(rowspan: 3)[*1.INCL*], [*N*], [], [], [], [_ótỳl_], [_átàl_], [_úxìl_], 
      [*F*], [], [], [], [_fāstȳl_], [_fāstāl_], [_fēsqīl_], 
      [*M*], [], [], [], [_xōtȳl_], [_xātāl_], [_xūtīl_], 
    table.cell(rowspan: 3)[*2*], [*N*], [_ók_], [_ák_], [_úk_], [_ókỳl_], [_ákỳl_], [_úkỳl_], 
      [*F*], [_áus_], [_áur_], [_áux_], [_áusȳl_], [_áurāl_], [_áuxīl_], 
      [*M*], [_xō_], [_xā_], [_xū_], [_xōl_], [_xāl_], [_xūl_], 
    [*3.NDEF*], table.cell(rowspan: 3)[*N*], [_mōu_], [_mōn_], [_mūn_], [_łóu_], [_łón_], [_łún_], 
    [*3.PROX*], [_mōucè_], [_mōnàr_], [_mūnìr_], [_łóucè_], [_łónàr_], [_łúnìr_], 
    [*3.DEF*], [_mōukè_], [_mōnàk_], [_mūnìk_], [_łóukè_], [_łónàk_], [_łúnìk_], 
    [*3.PROX*], table.cell(rowspan: 2)[*F*], [_fāsē_], [_fātàr_], [_fēxìr_], [_fāsȳl_], [_fārȳl_], [_fēxrȳl_], 
    [*3.DEF*], [_fās_], [_fār_], [_fēx_], [_fāskȳl_], [_fārkȳl_], [_fēxkȳl_], 
    [*3.PROX*], table.cell(rowspan: 2)[*M*], [_xōucè_], [_xōnàr_], [_xūnìr_], [_xōucỳl_], [_xōnàrỳl_], [_xūnìrỳl_], 
    [*3.DEF*], [_xōu_], [_xōn_], [_xūn_], [_xōul_], [_xōnàl_], [_xūnìl_], 
  )
]

== Possession
While juxtaposition and agreement indicate that two nouns refer to the same object, possession marking indicates that they are distinct, yet closely related objects. The possessum immediately precedes its possessor and is marked with the pertensive clitic, which inflects for the possessor's person, article, and number. Possessa and possessors can be NPs, and the possessor of one NP can be the possessum of another.

#figure(caption: "Inflections of the pertensive clitic.")[
  #table(
    columns: 7,
    table.header([], [*1.EXCL*], [*1.INCL*], [*2*], [*3.NDEF*], [*3.PROX*], [*3.DEF*]),
    [*SG/SGV/COL*], [_-(f)ùtè_], [], [_-fò_], [_-(f)ù_], [_-(f)ùr_], [_-(f)ùkè_],
    [*PL*], [_-(f)ùtỳl_], [_-(f)òtỳl_], [_-fòl_], [], [_-(f)ùrỳl_], [_-(f)ùkỳl_],
  )
]

== NP coordination

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
    table.cell(rowspan: 2)[_řV_], [_*kV*\~řV_], [_*AAkr*__V_],
      [_*sV*\~řV_], [_*sAA*-řV_],
    [_sXV_], [_*sV*\~sXV_], [_*sAA*-sXV_],
  )
]

#figure(caption: "Onset mutation in aspect stems.")[
  #table(
    columns: 4,
    table.header([*pattern*], [*PFV*], [*NPFV*], [*RET*]),
    table.cell(rowspan: 16)[C], [\<m\>], [\<m\>], [\<v\>],
      [\<n\>], [\<n\>], [\<ð\>],
      [\<p\>], [\<p\>], [\<b\>],
      [\<t\>], [\<t\>], [\<d\>],
      [\<k\>], [\<k\>], [\<g\>],
      [\<b\>], [\<v\>], [\<v\>],
      [\<d\>], [\<ð\>], [\<ð\>],
      [\<g\>], [\<w\>], [\<n\>],
      [\<q\>], [\<q\>], [\<d\>],
      [\<ǧ\>], [\<z\>], [\<þ\>],
      [\<s\>], [\<r\>], [\<ds\>],
      [\<s\>], [\<x\>], [\<z\>],
      [\<v\>], [], [],
      [\<z\>], [], [],
      [∅], [\<k\>], [\<g\>],
      [∅], [\<n\>], [any],
    table.cell(rowspan: 4)[F], [\<f\>], [\<p\>], [\<b\>],
      [\<þ\>], [\<t\>], [\<d\>],
      [\<x\>], [\<s\>], [\<z\>],
      [\<ł\>], [\<d\>], [\<ð\>],
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
    table.cell(rowspan: 3)[*2*], [*N*], [_-(f)o_], [_-(f)a_], [_-(f)u_], [_-(f)ol_], [_-(f)al_], [_-(f)ul_], 
      [*F*], [_-(f)aus_], [_-(f)aur_], [_-(f)aux_], [_-(f)osyl_], [_-(f)oryl_], [_-(f)oxyl_], 
      [*M*], [_-xò_], [_-xà_], [_-xù_], [_-xòl_], [_-xàl_], [_-xùl_], 
    table.cell(rowspan: 3)[*3*], [*N*], [_-mòu_], [_-mòn_], [_-mùn_], [_-łou_], [_-łon_], [_-łun_], 
      [*F*], [_-fàs_], [_-fàr_], [_-fèx_], [_-fàl_], [_-fàrỳl_], [_fèl_], 
      [*M*], [_-xòu_], [_-xòn_], [_-xùn_], [_-xòl_], [_-xònỳl_], [_-xùnỳl_], 
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
Verbs with absolutive and/or dative arguments can incorporate them, with some exceptions. Incorporated objects must be root or compound nouns in the indefinite collective form; pronouns, NPs, and nonfinite verbs cannot be incorporated. Additionally, most verbs that map their dative argument to the experiencer semantic role (e.g. experiential verbs and verbs in adversative voice) cannot incorporate it.

Incorporation is a valency-reducing operation: ditransitive verbs become intentional, intentional and locomotive verbs become agentive, and experiential verbs become intransitive. Incorporating an absolutive argument promotes an existing dative argument to the absolutive. Incorporation can also combine with a #link(<voice>)[voice prefix] and is applied last.

== Gerunds <ger>
Gerunds are nonfinite verbs that nominalize actions or events. They are formed by replacing a perfective verb's #link(<class>)[class ending] with the corresponding gerund ending.

#figure(caption: "Gerund endings for each verb class.")[
  #table(
    columns: 3,
    table.header([*class*], [*PFV endings*], [*GER ending*]),
    table.cell(rowspan: 2)[*1*], [_-eþ, -ixi_], [_-ei_], 
      [_-oþ, -uxi_], [_-oi_], 
    [*2*], [_-aþ, -exi_], [_-ai_], 
    table.cell(rowspan: 2)[*3*], [_-er, -yr, -ix_], [_-erè_], 
      [_-or, -yr, -ux_], [_-orè_], 
    table.cell(rowspan: 2)[*4*], [_-e, -i_], [_-efè_], 
      [_-o, -u_], [_-ofè_], 
    [*5*], [_-a, -e_], [_-afè_], 
    [*6*], [_-eqi_], [_-ai_], 
    table.cell(rowspan: 2)[*7*], [_-qux_], [_-qurè_], 
      [_-xux_], [_-xurè_], 
    table.cell(rowspan: 2)[*8*], [_-xi_], [_-sfè_], 
      [_-qi_], [_-cfè_], 
  )
]

Gerunds lack any nominal or verbal inflections, except for polarity. Like nouns, gerunds can act as arguments of verbs or objects of prepositions, but they cannot modify or be modified by other nouns. Like verbs, gerunds can take arguments and adjuncts and incorporate objects. Additionally, gerunds can express their absolutive arguments as possessors. If the verb does not take an absolutive argument, the gerund's possessor corresponds to the ergative argument.

== Participles <ptcp>
Participles are nonfinite verbs that relativize verbal core arguments. They are formed by replacing a verb's #link(<class>)[class ending] with the corresponding participle ending.

#figure(caption: "Participle endings for each verb class.")[
  #table(
    columns: 6,
    table.header([*class*], [*PFV endings*], [*article-number*], [*ABS*], [*DAT*], [*ERG*]),
    table.cell(rowspan: 3)[*1, 2*], table.cell(rowspan: 3)[_-þ, -xi_], [*NDEF.COL*], [_-t_], [_-þ_], [_-x_],  
    [*PROX.SG*], [_-sè_], [_-þàr_], [_-xìr_],
    [*DEF.SG*], [_-tè_], [_-þàt_], [_-xìt_],
    table.cell(rowspan: 3)[*3, 7*], table.cell(rowspan: 3)[_-r, -x_], [*NDEF.COL*], [_-s_], [_-r_], [_-x_],  
    [*PROX.SG*], [_-se_], [_-tàr_], [_-xir_],
    [*DEF.SG*], [_-skè_], [_-rkè_], [_-xke_],
    table.cell(rowspan: 3)[*4, 5*], table.cell(rowspan: 3)[-∅], [*NDEF.COL*], [_-p_], [_-f_], [_-f_],  
    [*PROX.SG*], [_-psè_], [_-fàr_], [_-fìr_],
    [*DEF.SG*], [_-pè_], [_-fàp_], [_-fìp_],
    table.cell(rowspan: 3)[*6*], table.cell(rowspan: 3)[_-eqi_], [*NDEF.COL*], [_-at_], [_-aa_], [_-eq_],  
    [*PROX.SG*], [_-ase_], [_-aar_], [_-eqir_],
    [*DEF.SG*], [_-ate_], [_-aatè_], [_-eqte_],
    table.cell(rowspan: 6)[*8*], table.cell(rowspan: 3)[_-xi_], [*NDEF.COL*], [_-sep_], [_-sfà_], [_-xfì_],  
    [*PROX.SG*], [_-sepsè_], [_-sfàr_], [_-xfìr_],
    [*DEF.SG*], [_-sepè_], [_-sfàp_], [_-xfìp_],
    table.cell(rowspan: 3)[_-qi_], [*NDEF.COL*], [_-cep_], [_-cfà_], [_-qfì_],  
    [*PROX.SG*], [_-cepsè_], [_-cfàr_], [_-qfìr_],
    [*DEF.SG*], [_-cepè_], [_-cfàp_], [_-qfìp_],
  )
]

A bare participle relativizes the absolutive argument. Attaching one of the orientation prefixes _er-_ or _ix-_ instead relativizes the dative or ergative argument, respectively. (These prefixes will be glossed as #dor and #eor.) Participles of verbs that do not take absolutive arguments must still use the orientation prefixes.

In addition to retaining most verbal morphology, participles are morphosyntactically equivalent to nouns and can be used both attributively and substantively. For example, substantive perfective participles are often used as agent and patient nouns, similar to English nouns formed with the suffixes "-er" and "-ee". Unlike nouns, participles can take arguments and adjuncts and can incorporate objects. 

== Converbs <cvb>
Converbs are a special type of participle formed by attaching a converb prefix instead of an orientation prefix. Rather than acting like nouns, converbs head #link(<advc>)[adverbial clauses]. Converbs still decline like nouns and must agree with their absolutive argument in case, article, and number.

#figure(caption: "Converb prefixes.")[
  #table(
    columns: 3,
    table.header([*prefix*], [*aspect*], [*function*]),
    table.cell(rowspan: 2)[_sîi-, sîm-_], [NPFV], [concurrent event],
      [PFV], [preceding event],
    [_þu(x)-_], [PFV], [subsequent event],
    table.cell(rowspan: 2)[_na(f)-_], [PFV], [cause],
      [NPFV], [condition],
    [_ste(f)-_], [PFV], [purpose],
    table.cell(rowspan: 2)[_tô(f)-_], [PFV], [result],
      [NPFV], [hypothetical],
    [_ku-, k-_], [any], [manner, degree],
  )
]

== Modals and evidentials <mod>
#figure(caption: "Modal/evidential prefixes.")[
  #table(
    columns: 5,
    table.header([], [*prefix*], [*order*], [*example*], [*meaning*]),
    [*imperative (IMP)*], [_a-_], table.cell(rowspan: 2)[∅], [_Anàpīx._], ["Leave."], 
    [*prohibitive (PROH)*], [_àpèi-, àpèm-_], [_Àpèinàpīx._], ["Don't leave."], 
    [*abilitive (ABIL)*], [_þòm(à)-_], table.cell(rowspan: 2)[4], [_Þòmàkēqīti._], ["I can sing."], 
    [*permissive (PERM)*], [_tôu(x)-_], [_Tôukēqīti?_], ["May I sing?"], 
    [*necessitative (NEC)*], [_qâx-_], [3], [_Qáxnàpīxti._], ["I need to leave."], 
    [*jussive (JUS)*], [_māf-_], [2], [_Māfnàpīxti._], ["I should leave."], 
    [*dubitative (DUB)*], [_łúx(t)-_], table.cell(rowspan: 3)[1], [_Łúxnàpīxfex._], ["Perhaps she left."], 
    [*inferential (INFR)*], [_þúx(t)-_], [_Þúxnàpīxfex._], ["She must have left."],
    [*potential (POT)*], [_séq(í)-_], [_Séqínàpīxfex._], ["I think she'll leave."],
    [*reportative (RPT)*], [_têx-_], table.cell(rowspan: 3)[0], [_Téxnàpīxfex._], ["They say she left."],
    [*visual (VIS)*], [_qyn(ne)-_], [_Qynnàpīxfex._], ["I saw her leave."],
    [*auditory (AUD)*], [_ôu-, ôn-_], [_Óunàpīxfex._], ["I heard her leave."],
  )
]

Festival Nomai can express a variety of modalities and evidentialities using verbal prefixes. All prefixes except the imperative and prohibitive can be used with both finite and nonfinite verbs.

The order of a modal/evidential prefix determines which other modal/evidential prefixes it can combine with and the order in which they combine. Prefixes with a higher order must follow prefixes with a lower order, and prefixes of the same order cannot combine with one another. Additionally, the imperative and prohibitive prefixes cannot combine with any other prefixes.

#pagebreak()
= Syntax
== Independent clauses
As both a topic-prominent and strongly head-initial language, Festival Nomai primarily employs V2 word order in independent clauses. The order of verbal arguments defaults to #erg > #dat > #abs > adjuncts, with arguments to the left typically appearing before arguments to the right. However, this order is highly flexible and readily changes to both reflect information structure and avoid syntactical ambiguity.

The topic of an independent clause corresponds to the argument at the front of the sentence; the main verb and the remainder of the arguments comprise the comment. Once a topic is established, subsequent independent clauses may omit it in lieu of #link(<prs>)[person-marking] on their main verbs. Focus may be syntactically marked by placing the focused argument directly after the main verb, or by fronting the main verb if it is focused.

#example(label: <is-ex>)[
  + Default word order
    - _núfèx-ke_ _en\~emēxī_ _níalìi_ _sté_ _mēf-àk_
    - woman\\#erg\-#def.#sg #npfv\~cook food\\#abs for child\\#dat\-#def.#sg
    "The woman is cooking food for the child."
  + Topicalized absolutive argument
    - _níalìi-cè_ _núfèx-ke_ _en\~emēxī_  _sté_ _mēf-àk_
    - food\\#abs\-#prox.#sg #npfv\~cook woman\\#erg\-#def.#sg for child\\#dat\-#def.#sg
    "This food is being cooked by the woman for the child."
  + Topicalized adjunct
    -  _sté_ _mēf-àk_ _en\~emēxī_ _núfèx-ke_ _níalìi_
    - for child\\#dat\-#def.#sg #npfv\~cook woman\\#erg\-#def.#sg food\\#abs
    "The child is being cooked food by the woman."
  + Focused adjunct
    - _núfèx-ke_ _en\~emēxī_ _sté_ _mēf-àr_ _níalìi_
    - woman\\#erg\-#def.#sg #npfv\~cook for child\\#dat\-#prox.#sg food\\#abs
    "The woman is cooking food for _the child_."
  + Focused main verb
    - _en\~emēxī_ _núfèx-ke_ _níalìi_ _sté_ _mēf-àk_
    - #npfv\~cook woman\\#erg\-#def.#sg food\\#abs for child\\#dat\-#def.#sg
    "The woman is _cooking_ food for the child."
]

=== Equational clauses
Equational clauses lack verbal predicates and instead consist of a topic NP followed by a complement NP, both in the absolutive case. The topic and complement are usually distinguished by taking the proximal/definite article and the indefinite article, respectively. An AdvP and/or PP may optionally follow the complement.

#example(label: <eqc-ex>)[
  - _ómàs-e_ _súk-ym_
  - fruit\\#abs\-#prox.#sg bitter\\#abs\-#ndef.#sgv
  "This fruit is bitter."
]

=== Existential clauses
Existential clauses lack predicates entirely and come in two types. The first type consists of a focus NP in the absolutive case and expresses a meaning similar to "There is/are..." and "It is..." clauses in English. The second type consists of a topic NP in the dative case followed by a focus NP in the absolutive case, and expresses a possessor-possessum relationship between the topic and focus.

#example(label: <exc-ex>)[
  + - _tésk-es_ _mínù_ _nēlk-ek_
    - bird\\#abs\-#prox.#sg beside tree\\#abs\-#def.#sg
    "There's a bird next to the tree."
  + - _nèitēlāa-r_ _nēlk_ _fōl_
    - forest\\#dat\-#prox.#sg tree\\#abs large\\#abs
    "This forest has large trees."
]

=== Coordinated clauses
There are three possibilities for coordinating two independent clauses:

- *identical topic argument*: The second clause omits its topic and appends directly to the end of the first clause. If any non-topic arguments are also shared between the clauses, they may be omitted from the first VP.
- *coreferential topic arguments*: The second clause omits its topic and is joined to the first clause by a coordinating conjunction. Its main verb takes a #link(<prs>)[person suffix] that agrees with the first clause's topic in article and number.
- *different topic arguments*: The second clause is joined to the first clause by a coordinating conjunction.

There are three coordinating conjunctions:

- *cumulative*: _kà_, joins simultaneous, non-contrasting clauses
- *alternative*: _?_, joins mutually exclusive, non-contrasting clauses
- *contrastive*: _mínù_, joins contrasting clauses

== Embedded clauses
Embedded clauses act as arguments of an independent clause's main verb. As they are often longer than typical verbal arguments, they tend to be shifted rightwards if they are not topicalized or focused.

=== Adverbial clauses <advc>
Adverbial clauses act as adjuncts. They use V1 word order and put the verb into #link(<cvb>)[converb] form.

=== Content clauses
Content clauses act as absolutive or dative arguments. They use V2 word order but must fill the topic slot with a complementizer. The default complementizer is _łés_ (#comp.#abs), _łékỳr_ (#comp.#dat), a shortening of _łéce/łékàr_ ("this situation"). There is also a quotative complementizer _tésyl_ (#comp.#quot), a shortening of _téicỳl_ ("these words"), and an empty complementizer that may be used if it would not cause ambiguity.

=== Gerundial clauses
Gerundial clauses act as absolutive or dative arguments. They use V1 word order and put the verb into #link(<ger>)[gerund] form.

=== Participial clauses
Participial clauses act as modifiers within NPs or as NPs in their own right, and are used when relativizing core verbal arguments. They use V1 word order and put the verb into #link(<ptcp>)[participle] form.

=== Relative clauses
Relative clauses are syntactically treated as possessors of the NPs they modify. Unlike participial clauses, they relativize non-core roles such as prepositional objects, possessa, and possessors. They use V2 word order but must fill the topic slot with the relativizer _łés_ and include a resumptive pronoun matching the article and number of their head NP. Additionally, the head NP takes the pertensive clitic _-(f)ùr_ (#pert.#p3.#prox.#sg).

== Questions
Open questions use the same V2 word order as independent clauses, but are marked by replacing one of the non-topic arguments or adjuncts with an interrogative pronoun or adverb and using rising intonation. The response to an open question fronts the answer rather than the topic.

The interrogative pronouns are as follows:
- _pūl_ (#q.#abs), _pòl_ (#q.#dat), _pùl_ (#q.#erg)
  - when standing alone, corresponds to "what, who"
  - when heading an NP, corresponds to "which X", where X is the modifier
  - when heading a PP starting with _nāf_ "from", corresponds to "which out of X", where X is the object of _nāf_
  - when modifying an NP, corresponds to "what kind of X", where X is the modified NP
- _pūlís_ "where", usually used with preposition
- _pūlfō_ "when", usually used with preposition

The interrogative adverbs are as follows:
- _nāpūl_ "why" (cause)
- _stépūl_ "why" (purpose)
- _kúpūl_ "how" (manner, degree)
- _kúpūlþó_ "how many"

Polar questions are marked by V1 word order and rising intonation. The response to a polar question repeats the main verb of the original question with or without the negation prefix _pà-_. Alternatively, the affirmative interjection _ú_ "yes", the verb _?_ "differ", or one of the negative pro-verbs _pàłèké_ "does not happen", _pàsá_ "does not do", and _pàqúr_ "does not go" may be used instead.

= Miscellaneous

== Comparatives and superlatives

== Numerals
