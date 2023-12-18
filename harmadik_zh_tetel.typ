#let colorS = color.linear-rgb(10, 103, 193, 255)

#set math.mat(delim: "[")
#set par(justify: true)
#show heading.where(level: 2): it => block(
  fill: colorS,
  inset: 5pt,
  radius: 4pt,
)[
  #it
]
#show heading.where(level: 3): it => [#underline[#it]]

#let theme(name) = [
  #grid(columns: (auto, auto, auto),
    rows: (auto),
    gutter: 10pt,
    line(length: 100%, stroke: (paint: colorS, thickness: 1.5pt, dash: "dashed")),
    align(center)[#text(size: 16pt, style: "italic", weight: 700, colorS)[
      #name
    ]],
    line(length: 100%, stroke: (paint: colorS, thickness: 1.5pt, dash: "dashed"))
  )
]

#align(center)[= Tételek]

// 19. fejezet bizonyítandó
//  - Négyzetes mátrixú lineáris egyenletrendszerek

== 19.1 Négyzetes mátrixú lineáris egyenletrendszer

Tekintsük az $A in KK^(n times n)$ négyzetes mátrixszal és a $b in KK^n$ vektorral felírt lineáris $A x eq b$ egyenletrendszert. Ekkor

a) $"rang"(A) eq n$ esetben az egyenletrendszernek egyértelműen létezik megoldása\
b) $"rang"(A) lt.eq n-1$ esetben az egyenletrendszernek vagy nem létezik megoldása, vagy pedig végtelen sok megoldása létezik

=== Bizonyítás

a) Tegyük fel, hogy $r eq "rang"(A) eq n$\
Ekkor A oszlopvektorai _n_-tagú lineárisan független rendszert alkotnak az _n_ dimenziós $KK^n$ térben, tehát bázist alkotnak $KK^n$-ben. Következtetésképpen $O(A) eq KK^n$. Ezért fennáll, hogy $b in O(A)$, vagyis létezik megoldás.\
Másrészt a szabadsági fok $n-r eq n-n eq 0$, ezért a megoldás egyértelmű.

b) Tegyük fel, hogy $r eq "rang"(A) lt.eq n-1$.\
Ebben az esetben

$ dim O(A) eq r lt n eq dim KK^n $

miatt $O(A)$ valódi altere $KK^n$-nek. Ha tehát $b in.not O(A)$, akkor nincs megoldás. Ha viszont $b in O(A)$, akkor létezik megoldás, és a szabadsági fok

$ n-r gt.eq n-(n-1) eq 1 $

ezért a megoldások száma végtelen

//  - Mátrix rangja és invertálhatóságának kapcsolata

== 19.2 Inverz mátrix és lineáris egyenletrendszer

A négyzetes mátrixú lineáris egyenletrendszerről elmondottakat felhasználhatjuk mátrixok inverzének meghatározásához is.

Legyen $A in KK^(n times n)$ egy négyzetes mátrix. Ekkor

a) $"rang" A eq n arrow.long.r.double $ A invertálható (reguláris);\
b) $"rang" A lt n arrow.long.r.double $ A nem invertálható (szinguláris)

=== Bizonyítás

Jelölje _I_ az $n times n$-es egységmátrixot. Ennek oszlopai a kanonikus egységvektorok:

$ I eq [e_1 space e_2 space dots space e_n] $

Keressük _A_ inverzét, azaz keressük az

$ X eq [x_1 space x_2 space dots space x_n] in KK^(n times n) $

mátrixot úgy, hogy $A X eq I$ teljesüljön.

Az $A X eq I$ mátrix egyenletet felírhatjuk így:

$ A dot [x_1 space x_2 space dots space x_n] eq [e_1 space e_2 space dots space e_n], $

ami ekvivalens az alábbi lineáris egyenletrendszerek együttesével:

$ A x_1 eq e_1, space A x_2 eq e_2, space dots, space A x_n eq e_n $

a) Mivel ebben az esetben $r eq n,$ ezért mindegyik egyenletrendszer egyértelműen megoldható. Ebből következik, hogy $A^(-1)$ létezik, és hogy $A^(-1)$ oszlopai az $x_1,dots,x_n$ megoldásvektorok

b) Mivel $dim O(A) eq r lt n,$ ezért mindegyik $e_1,dots,e_n$ kanonikus egységvektor nem lehet $O(A)$-ban. Ezért a fenti egyenletrendszer-együttesből legalább az egyik egyenletrendszer ellentmondásos, nincs megoldása. Következtetésképpen $A^(-1)$ nem létezik.

#block(radius: 5pt, inset: 6pt, stroke: (paint: red, thickness: 2pt, cap: "round", dash: "dashed"))[
$A in KK^(n times n)$ reguláris mátrix öt ekvivalens jellemzése:

1. $exists A^(-1)$
2. $det(A) eq.not 0$
3. $"rang"(A) eq n$
4. _A_ oszlopai lin. függetlenek
5. _A_ sorai lin. függetlenek

$A in KK^(n times n)$ szinguláris mátrix öt ekvivalens jellemzése:

1. $exists.not A^(-1)$
2. $det(A) eq 0$
3. $"rang"(A) lt n$
4. _A_ oszlopai lin. összefüggők
5. _A_ sorai lin. összefüggők
]

== 20.8

Legyen $A in KK^(n times n) "és" lambda in "Sp"(A)$. Ekkor $lambda$-hoz tartozó sajátvektorokból és a nullvektorból álló

$ W_lambda colon.eq W_lambda (A) colon.eq {x in KK^n | A x eq lambda x } $

halmaz altér $KK^n$-ben, melynek dimenziója $n - "rang"(A - lambda I)$. A $lambda$ sajátértékhez végtelen sok sajátvektor tartozik. 

=== TODO bizonyítás

== 20.10

$ forall lambda in "Sp"(A): space 1 lt.eq g(lambda) lt.eq a(lambda) lt.eq n $

== 20.12

Legyen $A in KK^(n times n)$ és jelölje a $lambda$ sajátérték algebrai multiplicitását $a(lambda)$, geometriai multiplicitását pedig $g(lambda)$. Ekkor

$ exists S.B. arrow.l.r.double.long sum_(lambda in "Sp"(A)) a(lambda) eq n space "és" space forall lambda in "Sp"(A): space g(lambda) eq a(lambda) $


// 20. fejezet bizonyítandó
//  - Sajátértékek a karakterisztikus polinom gyökei
//  - Háromszögmátrix sajátértékei
//  - Sajátértékhez tartozó sajátvektorok + nullvektor alteret alkot
// Kivétel: 20.11 Köszi bácsi, egy nappal a zh előtt kiraktad

// 21. fejezet bizonyítandó
//  - Hasonló mátrixok karakterisztikus polinomjai kapcsolata
//  - Diagonalizálhatóséég szükséges és elégséges feltétele

// 22. fejezet bizonyítandó
//  - Euklideszi téren értelmezett norma két egyszerű tulajdonsága
//  - Véges dimenziós altérre való merőlegesség
//  - Pitagorasz-tétel euklideszi térben
//  - Ortogonális rendszerek lineáris függetlensége

// 23. fejezet bizonyítandó
//  - *Felbontási tétel*

// ???---------------------???
//  - Vetület hosszának becslése
//  - Cauchy-egyenlőtlenségről szóló tétel
//  - Háromszög-egyenlőtlenségről szóló tétel
// ???---------------------???