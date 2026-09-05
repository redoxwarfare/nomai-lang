#import "/.calepin/calepin.typ" as calepin

#set document(
  title: [Phonology]
)
#metadata((title: "Phonology")) <website-metadata>

// #calepin.setup(
//   echo: true,
//   eval: true,
//   results: "verbatim",
//   fenced-chunks: true,
// )

= Pronunciation guide
#calepin.elements.callout(kind: "tip", title: "Tip")[
  If you're familiar with basic concepts from phonology and reading IPA, you can skip this section.
]

#calepin.elements.callout(kind: "note", title: "Note")[
  This pronunciation guide is based on American English, except where noted.
]

#table(
  columns: 2,
  align: left,
  table.header([*sound*], [*pronunciation*]),
  [_m_], ["#strong[m]oon"],
  [_n_], ["#strong[n]ight"],
  [_p_], ["s#strong[p]in"],
  [_t_], ["s#strong[t]ar"],
  [_k_], ["s#strong[k]ull"],
  [_c_], ["ca#strong[ts]"],
  [_q_], ["#strong[ch]eese"],
  [_f_], ["#strong[f]all"],
  [_þ_], ["#strong[th]in"],
  [_s_], ["#strong[s]un"],
  [_x_], ["#strong[sh]eep"],
  [_l_], ["#strong[l]end"],
  [_ł_], ["p#strong[l]ease" or Welsh "ll"],
  [_r_], ["be#strong[tt]er" or Spanish "r"],
  [_ř_], ["th#strong[r]ow" or Welsh "rh"],
  [_w_], ["#strong[w]eird"],
  [_j_], ["#strong[y]arn"],
  [_a_], [between "sp#strong[a]" and "c#strong[a]t"],
  [_e_], [between "#strong[ei]ght" and "#strong[e]nd"],
  [_i_], ["ch#strong[ee]se"],
  [_o_], ["m#strong[o]re"],
  [_u_], ["m#strong[oo]n"],
  [_ym_], ["pris#strong[m]"],
  [_yn_], ["pris#strong[on]"],
  [_yl_], ["cast#strong[le]"],
  [_yl_], ["bett#strong[er]"],
)

Syllables marked with an accent (_ó_) are pronounced with higher pitch than normal, and syllables marked with a grave (_ò_) are pronounced with lower pitch than normal. Syllables marked with a circumflex (_ô_) are pronounced with a falling pitch (like saying "oh!").

= Sound inventory
Festival Nomai distinguishes 18 consonants, 5 monophthongs#footnote[A monophthong is a pure vowel sound, like the vowel in "sheen".], and 6 diphthongs#footnote[A diphthong is a combination of two pure vowels pronounced in quick succession, like the vowel in "shine".].

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
/n/ is pronounced as \[ɲ\] before /ia io/ and as \[ŋ\] before /k/. Word-final stops are glottalized (e.g. /p/ becomes \[ˀp\~p̚\~ʔ\])#footnote[A similar process often happens in English words like "wha#strong[t]" and "fi#strong[c]tion".]. Additionally, /m n l r/ can be syllabic#footnote[Syllabic consonants are pronounced the same, but appear in places where vowels would normally be used.].

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
The diphthongs are *ua* \[ẅa\], *ia* \[ja\], *io* \[jo\], *au* \[aẅ\], *ai* \[aj\], and *oi* \[oj\]. Monophthongs and rising diphthongs (ua, ia, io) can be either short or long#footnote[Not to be confused with English "short" and "long" vowels, which are actually completely different from one another.].

The tone-bearing unit is the syllable. There are three level tonemes: high \/*H*\/, mid \/*M*\/, and low \/*L*\/. Additionally, syllables may be phonemically toneless#footnote[The pitch used to pronounce a toneless syllable depends on the tones of adjacent syllables.] \/*∅*\/, and a single syllable may bear the sequence \/*HL*\/, which manifests as a falling contour tone.

= Phonotactics
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

#figure(caption: [Allowed onsets#footnote[The consonant(s) at the beginning of a syllable.] and rimes#footnote[The part of a syllable that determines rhymes.].])[
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
+ if preceded by /L/ in the same word, /M/ spreads rightward, delinking#footnote["Delinking" a tone is like "overwriting" its pronunciation.] following /L/, until meeting a word boundary or /H/
+ /H/ spreads to any immediately following /∅/ syllable unless it is the last tone in an NP#footnote[A noun phrase, a group of words that acts like a single noun (e.g. "the quick brown fox").] or PP#footnote[A prepositional phrase, a group of words that is associated with a preposition and acts like a single adjective or adverb (e.g. "over the lazy dog").]
+ /L/ spreads rightwards into /∅/ syllables, crossing word boundaries
+ /M/ spreads rightwards into /∅/ syllables, crossing word boundaries
+ all remaining /∅/ syllables are realized as \[M\]

= Orthography
Like all varieties of Nomai from across the spacefaring period, Festival Nomai was written in the Nomai logography. However, the input methods for Nomai staves were based on the Nomai alphabet, the writing system of Classical Nomai. This leads to two possible Romanization schemes: a phonetic scheme that reflects spoken pronunciation, and an etymological scheme that reflects written spelling. This document will primarily represent Nomai morphemes with the phonetic scheme in italics, but when it is more illuminating to do so, it will use the etymological scheme in angle brackets (ex: _xēi_ \<zée\> "root").

In the etymological scheme, consonants are either light or heavy, corresponding to unvoiced and voiced consonants in Classical Nomai, and syllabic nuclei are either unstressed or stressed, corresponding to Classical Nomai's stress-accent. Festival Nomai has lost these voicing and stress contrasts and instead encodes the same information through tone contrasts.

#figure(caption: "Toneme assignment based on syllable onset and nucleus.")[
  #table(
    columns: 3,
    table.header([], [*+stress*], [*-stress*]),
    [*light onset*], [/H/ (_pá_ \<pá\>)], [/∅/ (_pa_ \<pa\>)],
    [*heavy onset*], [/M/ (_pā_ \<bá\>)], [/L/ (_pà_ \<ba\>)],
  )
]

#figure(caption: "Correspondence of phonetic and etymological Romanization schemes for consonants.")[
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

#figure(caption: "Correspondence of phonetic and etymological Romanization schemes for vowels and syllabic consonants.")[
  #table(
    columns: 3,
    table.header([phonetic], [etymological], [value]),
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
