#import "/.calepin/calepin.typ" as calepin
#import "../defs.typ": *

#set document(
  title: [Verbs]
)
#metadata((title: "Verbs")) <website-metadata>

// #calepin.setup(
//   echo: true,
//   eval: true,
//   results: "verbatim",
//   fenced-chunks: true,
// )

Nomai verbs are the most complex words in the language. They are highly agglutinative#footnote[Agglutination is the process of forming words by directly joining multiple parts, each of which contributes a distinct meaning.], marking polarity#footnote[The truth or falsity of an event.], #link(<mod>)[modality], #link(<mod>)[evidentiality], #link(<voice>)[voice], #link(<asp>)[aspect], and #link(<agree>)[agreement]. Verbs also exhibit #link(<incorp>)[noun incorporation] and have three nonfinite#footnote[For the purposes of Nomai, nonfinite verbs are verb forms that act as other parts of speech.] forms: #link(<ger>)[gerunds], #link(<ptcp>)[participles], and #link(<cvb>)[converbs].

The verb template contains the following slots:
+ participle orientation prefix or converb prefix
+ negation prefix _pà-_
+ modal/evidential prefix(es)
+ incorporated object
+ voice prefix
+ verb stem (encodes aspect)
+ verb ending
  - finite verb #link(<class>)[class] ending
  - gerund ending
  - participle ending
+ agreement suffix

= Aspect <asp>
A verb's aspect indicates how an event conceptually unfolds in time#footnote[This is distinct from tense, which refers to _when_ an event happens relative to the present.]. Nomai distinguishes three aspects:

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

= Valency
A verb's valency encapsulates how many arguments it accepts and which cases they take. Nomai verbs have six possible valencies:

- *intransitive* (NTR): absolutive
- *agentive* (AGN): ergative
- *experiential* (EXP): dative, absolutive
- *intentional* (NTL): ergative, absolutive
- *locomotive* (LCM): ergative, dative
- *ditransitive* (DITR): ergative, dative, absolutive

The majority of verbs are intransitive, experiential, intentional, or ditransitive. Intransitive and intentional verbs generally assign the absolutive case to the patient, whereas experiential and ditransitive verbs generally assign the dative case to the patient/experiencer and the absolutive case to the instrument/theme.

Locomotive verbs are a relatively small class, albeit including common verbs such as _qúr_ "go" and _mīiqùx_ "come". Agentive verbs are not a true lexical class and can only be formed by #link(<incorp>)[noun incorporation].

All finite verbs must be used with at least one non-dative argument; there are no other restrictions on which arguments may be omitted.

= Class <class>
Every verb belongs to one of eight classes, which loosely indicate how a verb's meaning is related to its root. All classes except 6-8 are closed#footnote[A closed class of words cannot derive or coin any new member words, whereas an open class can.].

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

= Voice <voice>
Voices alter a verb's valency and the semantic roles mapped to its arguments. Festival Nomai has two voices: applicative and adversative.

The *applicative* voice is a valency-increasing operation that converts intransitive and intentional verbs to experiential and ditransitive verbs, respectively. It promotes a cause/instrument to the absolutive case; the previous absolutive argument becomes dative. The applicative voice is marked by the prefixes _ła-_ (if the next vowel is not _i_ or _u_), _łe-_ (if the next vowel is _i_), and _ło-_ (if the next vowel is _u_).

The *adversative* voice is a valency-reducing operation that converts intentional and ditransitive verbs to experiential verbs, indicating that the event happens in spite of the experiencer's efforts or wishes. It demotes the ergative agent to a dative experiencer; the previous dative argument, if it exists, is demoted to an adjunct. The adversative voice is marked by the prefixes _xo-_ (if the next vowel is not _i_ or _u_) and _xu-_ (if the next vowel is _i_ or _u_).

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

= Agreement <agree>
#figure(caption: "Agreement suffixes.")[
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

Verbal agreement refers to verbal inflections that correspond to properties of a verb's arguments. In Nomai, agreement suffixes are transparently related to pronouns and are mutually exclusive with them; if a verb takes an agreement suffix, it cannot also take a matching pronoun argument. Verbs preferentially mark 1st and 2nd person arguments with suffixes while leaving 3rd person arguments as independent nouns or pronouns. 1st and 2nd person suffixes can stack with one another, following the order #erg > #dat > #abs.

3rd person suffixes only appear on finite verbs in a limited number of situations: to indicate a shared topic between coordinated clauses, to indicate a reflexive verb, or to imply a topic that the listener can infer from context.

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

= Incorporation <incorp>
Verbs with absolutive and/or dative arguments can incorporate one of them, causing the argument to appear inside the verb template. Incorporated objects must be root or compound nouns in the indefinite collective form; pronouns, NPs, and nonfinite verbs cannot be incorporated. Additionally, most verbs that map their dative argument to the experiencer semantic role (e.g. experiential verbs and verbs in adversative voice) cannot incorporate it.

Incorporation is a valency-reducing operation: ditransitive verbs become intentional, intentional and locomotive verbs become agentive, and experiential verbs become intransitive. Incorporating an absolutive argument promotes an existing dative argument to the absolutive. Incorporation can also combine with a #link(<voice>)[voice prefix] and is applied last.

= Gerunds <ger>
Gerunds#footnote[Equivalent to English gerunds such as "the *whistling* of the wind".] are nonfinite verbs that nominalize actions or events. They are formed by replacing a perfective verb's #link(<class>)[class ending] with the corresponding gerund ending.

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

= Participles <ptcp>
Participles#footnote[Similar to English participles such as "the *whistling* wind" or "the *fallen* leaves".] are nonfinite verbs that relativize verbal core arguments. They are often used in situations where English would use a relative clause#footnote[For example, "the bird *that ate my lunch*".]. Participles are formed by replacing a verb's #link(<class>)[class ending] with the corresponding participle ending.

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

= Converbs <cvb>
Converbs are a special type of participle formed by attaching a converb prefix instead of an orientation prefix. Rather than acting as nouns, converbs head adverbial clauses. Converbs still decline like nouns and must agree with their absolutive argument in case, article, and number.

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

= Modals and evidentials <mod>
Modality is the degree to which a speaker thinks an event is possible or necessary, while evidentiality is the kind of evidence a speaker has to support a statement. Festival Nomai can express a variety of modalities and evidentialities using verbal prefixes. All prefixes except the imperative and prohibitive can be used with both finite and nonfinite verbs.

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

The order of a modal/evidential prefix determines which other modal/evidential prefixes it can combine with and the order in which they combine. Prefixes with a higher order must follow prefixes with a lower order, and prefixes of the same order cannot combine with one another. Additionally, the imperative and prohibitive prefixes cannot combine with any other prefixes.
