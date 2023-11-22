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

#theme("To be made :)")