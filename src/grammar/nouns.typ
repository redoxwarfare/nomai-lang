#import "/.calepin/calepin.typ" as calepin
#import "../defs.typ": *

#set document(
  title: [Nouns]
)
#metadata((title: "Nouns")) <website-metadata>

// #calepin.setup(
//   echo: true,
//   eval: true,
//   results: "verbatim",
//   fenced-chunks: true,
// )

#title()

Nomai nouns are an open class and include words that might be considered adjectives in other languages. They inflect for case, article, and number. Any series of consecutive nouns with the same case, article, and number acts as a single NP in which the first noun is the head (also called a "substantive noun") and the other nouns are modifiers (also called "attributive nouns").

#example[
  _*mulke pípè miskek*_
  - _mūl-ke_ _píp-è_ _misk-ek_
  - stream\\#abs\-#def.#sg small\\#abs\-#def.#sg fast\\#abs\-#def.#sg
  "the small, fast stream"
]

= Declension
== Case and alignment
A noun's case indicates its role in a sentence. Nomai distinguishes three cases:

- *absolutive*: undergoers of change, unintentional causes of events, instruments, possessors, most prepositional objects
- *dative*: destinations; receivers; experiencers of sensations, feelings, and thoughts
- *ergative*: intentional initiators/agents of events

Additionally, vocatives#footnote[Nouns used to directly address a listener.] are marked by the prefix _a-_, which attaches to nouns in the absolutive case.

In the classical period, before the first Vessels departed the Nomai homeworld, the distinction between absolutive causes and ergative causes was strictly tied to perceived animacy. For example, "The rain wiped the stain away" would assign the absolutive case to "the rain", but "Iris wiped the stain away with a cloth" would assign the ergative case to "Iris" and the absolutive case to "a cloth". However, by the time of Festival Nomai, speakers had blurred the lines between "intentional" and "unintentional" causes, often using the ergative case to emphasize prominent inanimate nouns.

All nouns have a separate stem#footnote[The part of a word that is reused among multiple different forms.] for each case. The stems differ in their final syllables according to a somewhat predictable system of vowel/consonant mutation and melody alternation, but learners typically memorize all three stems when learning a noun.

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

#figure(caption: [Final coda mutation in case stems. ø indicates no coda.])[
  #table(
    columns: 3,
    table.header([*ABS*], [*DAT*], [*ERG*]),
    [\<p\>], [\<b\>], [\<b\>],
    [\<t\>], [\<d\>], [\<ǧ\>],
    [\<k\>], [\<g\>], [\<ǧ\>],
    [\<b\>], [\<v\>], [\<v\>],
    [\<d\>], [\<ð\>], [\<z\>],
    [\<g\>], [∅], [\<z\>],
    [\<t\>], [∅], [\<q\>],
    [\<p, k\>], [∅], [∅],
    [\<s\>], [\<r\>], [\<x\>],
    [∅], [\<m, n\>], [\<m, n\>],
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
A noun's article indicates whether it refers to a specific object and whether the listener is expected to be able to identify it. Festival Nomai distinguishes three articles:

- *indefinite*: generic, nonspecific, or backgrounded nouns
- *proximal*: specific nouns unknown to the listener; focused nouns
- *definite*: specific nouns known to the listener; proper nouns

The indefinite, proximal, and definite articles are respectively similar to English "a/an", "this", and "the", although this is not a perfect correspondence.

A noun's number indicates how many objects it refers to. Proximal and definite nouns are either singular or plural, while indefinite nouns are either collective#footnote[Similar to English mass nouns like "water" and "sleep".] or singulative.

#calepin.elements.callout(kind: "note", title: "Trivia")[
  The proximal article is so named because it originated from Proto-Nomai's 3-way demonstrative system#footnote[Equivalent to English "this", "that", and "yon".], which evolved into Classical Nomai's proximal, medial, and distal articles. The definite article is a result of sound changes fusing the medial and distal articles.
]

Bare noun stems correspond to the indefinite collective. Other article-number combinations are marked by a suffix that depends on a noun stem's case and coda#footnote[The consonant(s) at the end of a syllable.]. 

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
    [_*-ClA*_], [_-ClAm_], [_-ClAr_], [_-ClArỳl_], [_-ClACè_], [_-ClACỳl_],
    [_*-ClÀ*_], [_-ClÀm_], [_-ClÀr_], [_-ClÀrỳl_], [_-ClÀCè_], [_-ClÀCỳl_],
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

= Pronouns
Pronouns are words that can replace nouns and usually refer to previously mentioned nouns. Nomai pronouns, like nouns, mark case, article, and number, and additionally distinguish three grammatical persons and clusivity#footnote[Clusivity refers to the distinction between "you and I" and "I and others, but not you". English uses "we/us" for both of these cases.]. Although Festival Nomai lacks grammatical gender, it distinguishes three genders in its 2nd and 3rd person pronouns:

- *neutral*: originates from informal pronouns; has professional and somewhat impersonal connotations
- *feminine*: originates from formal pronouns; has connotations of flattery or subservience when used to refer to non-feminine people
- *masculine*: originates from a word for "friend"; plural forms can be used gender-neutrally to refer to people close to the speaker

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

= Possession
While juxtaposition and agreement indicate that two nouns refer to the same object, possession marking indicates that they are distinct, yet closely related objects. The possessum immediately precedes its possessor and is marked with the pertensive#footnote[Pertensive marking means that the possessum is inflected. This contrasts with possessive marking, in which the possessor is inflected (e.g. English _'s_).] clitic, which inflects for the possessor's person, article, and number. Possessa and possessors can be NPs, and the possessor of one NP can be the possessum of another.

#figure(caption: "Inflections of the pertensive clitic.")[
  #table(
    columns: 7,
    table.header([], [*1.EXCL*], [*1.INCL*], [*2*], [*3.NDEF*], [*3.PROX*], [*3.DEF*]),
    [*SG/SGV/COL*], [_-(f)ùtè_], [], [_-fò_], [_-(f)ù_], [_-(f)ùr_], [_-(f)ùkè_],
    [*PL*], [_-(f)ùtỳl_], [_-(f)òtỳl_], [_-fòl_], [], [_-(f)ùrỳl_], [_-(f)ùkỳl_],
  )
]

= NP coordination
_Under construction!_
