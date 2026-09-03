#import "@preview/phonokit:0.5.14": consonants, vowels

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
  Nomai was a family of languages spoken by the Nomai, a nation of highly curious mammalian herbivores who explored the universe in their technologically advanced Vessels. Although the varieties of Nomai spoken by any two clans were often mutually unintelligible, they could still communicate through a carefully-preserved logographic writing system. Additionally, when all the clans' envoys gathered at a Festival to share their findings, they conversed in a prestige variety. At the time Escall's clan became stranded in the Outer Wilds system, their native variety formed the basis of the Festivals' _lingua franca_, and so the remainder of the document will refer to that variety as "Festival Nomai".

  Typologically, Festival Nomai is strongly head-initial and topic-prominent, primarily using a V2 word order in independent clauses. It exhibits highly agglutinative verbal morphology, noun incorporation, and a robust system of nonfinite verb forms. The morphosyntactic alignment is unusual, bearing resemblance to a split-S alignment but with two distinct types of transitive verb. Festival Nomai also makes extensive use of nonconcatenative morphology, distinguishing cases by changes in vowel and tone, and marking aspects by reduplication of the verb stem.

  = Phonology
  == Sound inventory
  #table(
    columns: 6,
    align: center,
    table.header([], [labial], [dental], [alveolar], [lateral], [dorsal]),
    [nasal], [m], table.cell(colspan: 2)[n], [], [],
    [stop], [p], table.cell(colspan: 2)[t], [], [k],
    [affricate], [], table.cell(colspan: 2)[ts], [tɬ], [tɕ],
    [fricative], [f], [θ], [s], [ɬ], [ɕ],
    [trill], [], table.cell(colspan: 2)[r̥ r], [], [],
    [approximant], [w], table.cell(colspan: 2)[], [l], [j]
  )

  #vowels("aeio0")

  #vowels(
    "aio0",
    arrows: (
      ("i", "a"),
      ("i", "o"),
      ("0", "a"),
    ),
  )

  == Phonotactics

  == Tone

  == Romanization

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