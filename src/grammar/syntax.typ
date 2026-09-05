#import "/.calepin/calepin.typ" as calepin
#import "../defs.typ": *

#set document(
  title: [Syntax]
)
#metadata((title: "Syntax")) <website-metadata>

// #calepin.setup(
//   echo: true,
//   eval: true,
//   results: "verbatim",
//   fenced-chunks: true,
// )

#title()

= Independent clauses
As both a topic-prominent and strongly head-initial language, Festival Nomai primarily employs V2 word order in independent clauses. The order of verbal arguments defaults to #erg > #dat > #abs > adjuncts, with arguments to the left typically appearing before arguments to the right. However, this order is highly flexible and readily changes to both reflect information structure and avoid syntactical ambiguity.

The topic of an independent clause corresponds to the argument at the front of the sentence; the main verb and the remainder of the arguments comprise the comment. Once a topic is established, subsequent independent clauses may omit it and instead add agreement suffixes to their main verbs. Focus may be syntactically marked by placing the focused argument directly after the main verb, or by fronting the main verb if it is focused.

#example(label: <is-ex>)[
  + Default word order
    - _núfèx-ke_ _en\~emēxī_ _níalìi_ _sté_ _mēf-àk_
    - woman\\#erg\-#def.#sg #npfv\~cook food\\#abs for child\\#dat\-#def.#sg
    "The woman is cooking food for the child."
  + Topicalized absolutive argument
    - _níalìi-cè_ _en\~emēxī_ _núfèx-ke_ _sté_ _mēf-àk_
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

== Equational clauses
Equational clauses lack verbal predicates and instead consist of a topic NP followed by a complement NP, both in the absolutive case. The topic and complement are usually distinguished by taking the proximal/definite article and the indefinite article, respectively. An AdvP and/or PP may optionally follow the complement.

#example(label: <eqc-ex>)[
  + - _ómàs-e_ _súk-ym_
    - fruit\\#abs\-#prox.#sg bitter\\#abs\-#ndef.#sgv
    "This fruit is bitter."
  + - _ómàs-e_ _súk-ym_ _sîi-sfóp-se-ta_
    - fruit\\#abs\-#prox.#sg bitter\\#abs\-#ndef.#sgv after-taste\\#ptcp.#abs\-#prox.#sg\-#p1.#sg.#dat
    "This fruit tastes bitter to me."
]

== Existential clauses
Existential clauses lack predicates entirely and come in two types. The first type consists of a focus NP in the absolutive case and expresses a meaning similar to "There is/are..." and "It is..." clauses in English. The second type consists of a topic NP in the dative case followed by a focus NP in the absolutive case, and expresses a possessor-possessum relationship between the topic and focus.

#example(label: <exc-ex>)[
  + - _tésk-es_ _mínù_ _nēlk-ek_
    - bird\\#abs\-#prox.#sg beside tree\\#abs\-#def.#sg
    "There's a bird next to the tree."
  + - _nèitēlāa-r_ _nēlk_ _fōl_
    - forest\\#dat\-#prox.#sg tree\\#abs large\\#abs
    "This forest has large trees."
]

== Coordinated clauses
There are three possibilities for coordinating two independent clauses:

- *identical topic argument*: The second clause omits its topic and appends directly to the end of the first clause. If any non-topic arguments are also shared between the clauses, they may be omitted from the first VP.
- *coreferential topic arguments*: The second clause omits its topic and is joined to the first clause by a coordinating conjunction. Its main verb takes an agreement suffix that agrees with the first clause's topic in article and number.
- *different topic arguments*: The second clause is joined to the first clause by a coordinating conjunction.

There are three clause-coordinating conjunctions:

- *cumulative* (_kà_): joins simultaneous non-contrasting clauses
- *alternative* (_łú_): joins mutually exclusive non-contrasting clauses
- *contrastive* (_mínù_): joins contrasting clauses

= Embedded clauses
Embedded clauses act as arguments of an independent clause's main verb. As they are often longer than typical verbal arguments, they tend to be shifted rightwards if they are not topicalized or focused.

== Adverbial clauses <advc>
Adverbial clauses act as adjuncts. They use V1 word order and put the verb into converb form.

== Content clauses
Content clauses act as absolutive or dative arguments. They use V2 word order but must fill the topic slot with a complementizer. The default complementizer is _łés_ (#comp.#abs), _łékỳr_ (#comp.#dat), a shortening of _łéce/łékàr_ ("this situation"). There is also a quotative complementizer _tésyl_ (#comp.#quot), a shortening of _téicỳl_ ("these words"), and an empty complementizer that may be used if it would not cause ambiguity.

== Gerundial clauses
Gerundial clauses act as absolutive or dative arguments. They use V1 word order and put the verb into gerund form.

== Participial clauses
Participial clauses act as modifiers within NPs or as NPs in their own right, and are used when relativizing core verbal arguments. They use V1 word order and put the verb into participle form.

== Relative clauses
Relative clauses are syntactically treated as possessors of the NPs they modify. Unlike participial clauses, they relativize non-core roles such as prepositional objects, possessa, and possessors. They use V2 word order but must fill the topic slot with the relativizer _łés_ and include a resumptive pronoun matching the article and number of their head NP. Additionally, the head NP takes the pertensive clitic _-(f)ùr_ (#pert.#p3.#prox.#sg).

= Questions
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

Polar questions are marked by V1 word order and rising intonation. The response to a polar question repeats the main verb of the original question with or without the negation prefix _pà-_. Alternatively, speakers may instead use the affirmative interjection _ú_ "yes", the verb _nàpē_ "differ", or one of the negative pro-verbs _pàłèké_ "does not happen", _pàsá_ "does not do", and _pàqúr_ "does not go".
