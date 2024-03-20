
#let cpt_def = counter("cpt_def")
#let cpt_prop = counter("cpt_prop")
#let cpt_thm = counter("cpt_thm")
#let cpt_part = counter("cpt_part")
#let cpt_exos = counter("cpt_exos")
#let tot_exos = counter("tot_exos")

#let cpt_qst = counter("cpt_qust")
#let wedge = sym.and
#let equiv =  sym.equiv

// Size of the left "margin" (note area)
#let margin-size = 0%
// Spacer so that main content and notes don't rub up against each other
#let margin-space = 0.1in
#let imp(cont) ={
    text(fill: blue.darken(50%),cont,weight: "semibold",size: 1em)
}

#let ita(cont) = {
  text(cont,size:1em,style:"italic")
}

#let def(desc,title: "titre") ={
    set align(left)
    cpt_def.step()
    box(
        
        rect(
        width:100%,
        fill:green.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:green,
            right: green,
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              path(
              fill: green.darken(60%),
              closed: true,
              ((-1pt, -2pt)),
              (105pt,-2pt),
              ((108pt,-2pt)),
              ((105pt,10pt)),
              ((-1pt,10pt),(10pt,0pt)),
              )
              + place(top+left)[#text(white,underline(smallcaps("Définition " + cpt_part.display("1") + "-" + cpt_def.display())),size:1.1em,weight: "medium")]
      
          
            )
            #box(
              path(
              fill: green.darken(40%),
              closed: true,
  
              ((0pt,-2pt)),
              ((200pt,-2pt)),
              ((198pt,10pt)),
              ((-5pt,10pt)),
              ((-2pt,-2pt)),
              )
              + place(top+left)[#text(white,title,size:1em,weight: "semibold")]
      
          
            )
            #box(
              path(
              fill: green.darken(80%),
              closed: true,
              ((-2pt, -2pt)),
              (55pt,-2pt),
              ((58pt,-2pt),(-10pt,0pt)),
              ((55pt,10pt)),
              ((-4pt,10pt)),
              )
      
          
            )
          
        ]
        #align(left)[
            #text(black,desc,size:1em)
        ]
    ]
  )
}


#let exo_nd(
    description,
    title: none,
    etoile: 1,
    source: "Exercice"
) = {
  cpt_exos.step()
  tot_exos.step()
    set align(center)
    box(
        rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue,
            right: blue,
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              path(
              fill: blue.darken(60%),
              closed: true,
              ((-1pt, -2pt)),
              (105pt,-2pt),
              ((108pt,-2pt)),
              ((105pt,10pt)),
              ((-1pt,10pt),(10pt,0pt)),
              )
              + place(top+left)[#text(white,underline(smallcaps(source + " (" + cpt_part.display("1") + "-" + cpt_exos.display()) + ")"),size:1.1em,weight: "medium")]
      
          
            )
            #box(
              path(
              fill: blue.darken(40%),
              closed: true,
  
              ((0pt,-2pt)),
              ((200pt,-2pt)),
              ((198pt,10pt)),
              ((-5pt,10pt)),
              ((-2pt,-2pt)),
              )
              + place(top+left)[#text(white,title,size:1em,weight: "semibold")]
      
          
            )
            #box(
              path(
              fill: blue.darken(80%),
              closed: true,
              ((-2pt, -2pt)),
              (55pt,-2pt),
              ((58pt,-2pt),(-10pt,0pt)),
              ((55pt,10pt)),
              ((-4pt,10pt)),
              )
              + place(top+left)[#text(white,smallcaps(str(etoile) + $star$),size:1.1em,weight: "bold")]
      
          
            )
          
        ]
        #align(left)[
            #text(black,description,size:1em)
        ]
    ]
  )
   
}

#let prop(
    description,
    title: none
) = {
    set align(center)
    cpt_prop.step()
    box(
         rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue.darken(20%),
            right: blue.darken(20%),
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              polygon(
                stroke: blue.lighten(99%),
                fill: blue.darken(20%),
                (-5%, 0.55em),
                (0%,-0.25em),
                (45%,-0.25em),
                (90%,-0.25em),
                (90%,1.15em),
                (45%,1.15em),
                (0%,1.15em),
                (-5%,0.55em)
                
                
              )
              + place(top+left)[#text(white,underline(smallcaps("Proposition " + cpt_part.display() + "-" + cpt_prop.display())),size:1.1em,weight: "medium")
            #text(white,"(" + title + ")",size:1em,weight: "semibold")
          ]
            )
          
        ]
        #align(left)[
            #text(black,description,size:1em)
        ]
    ]
  )
}
#let cb(cont,title: "titre") ={
    set align(left)
    box(
        rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue,
            right: blue,
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              path(
              fill: blue.darken(60%),
              closed: true,
              ((-1pt, -2pt)),
              (105pt,-2pt),
              ((108pt,-2pt)),
              ((105pt,10pt)),
              ((-1pt,10pt),(10pt,0pt)),
              )
              + place(top+left)[#text(white,underline(smallcaps("Code")),size:1.1em,weight: "medium")]
      
          
            )
            #box(
              path(
              fill: blue.darken(40%),
              closed: true,
  
              ((0pt,-2pt)),
              ((200pt,-2pt)),
              ((198pt,10pt)),
              ((-5pt,10pt)),
              ((-2pt,-2pt)),
              )
              + place(top+left)[#text(white,title,size:1em,weight: "semibold")]
      
          
            )
            #box(
              path(
              fill: blue.darken(80%),
              closed: true,
              ((-2pt, -2pt)),
              (55pt,-2pt),
              ((58pt,-2pt),(-10pt,0pt)),
              ((55pt,10pt)),
              ((-4pt,10pt)),
              )
      
          
            )
          
        ]
        #align(left)[
            #text(black,cont,size:1em)
        ]
    ]
  )
}



#let question(
    description,
    title: none,
    type: "code"
) = {
  cpt_qst.step()
    set align(center)
    box(
        rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue,
            right: blue,
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              path(
              fill: blue.darken(60%),
              closed: true,
              ((-1pt, -2pt)),
              (105pt,-2pt),
              ((108pt,-2pt)),
              ((105pt,10pt)),
              ((-1pt,10pt),(10pt,0pt)),
              )
              + place(top+left)[#text(white,underline(smallcaps( "Question " + cpt_qst.display("1")) ),size:1.1em,weight: "medium")]
      
          
            )
            #box(
              path(
              fill: blue.darken(40%),
              closed: true,
  
              ((0pt,-2pt)),
              ((200pt,-2pt)),
              ((198pt,10pt)),
              ((-5pt,10pt)),
              ((-2pt,-2pt)),
              )
              
      
          
            )
            #box(
              path(
              fill: blue.darken(80%),
              closed: true,
              ((-2pt, -2pt)),
              (55pt,-2pt),
              ((58pt,-2pt),(-10pt,0pt)),
              ((55pt,10pt)),
              ((-4pt,10pt)),
              )
              + place(top+left)[#text(white,type,size:1em,weight: "semibold")]
      
          
            )
          
        ]
        #align(left)[
            #text(black,description,size:1em)
        ]
    ]
  )
   
}

#let th(
    description,
    title: none
) = {
    set align(center)
    cpt_thm.step()
    box(
        rect(
        width:100%,
        fill:blue.lighten(70%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue.darken(50%),
            right: blue.darken(50%),
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              polygon(
                fill: blue.darken(50%),
                (-5%, 0.55em),
                (0%,-0.25em),
                (45%,-0.25em),
                (90%,-0.25em),
                (90%,1.15em),
                (45%,1.15em),
                (0%,1.15em),
                (-5%,0.55em)
                
                
              )
              + place(top+left)[#text(white,underline(smallcaps("Théorème "+ cpt_part.display() + "-" + cpt_thm.display())),size:1.1em,weight: "medium")
            #text(white,"(" + title + ")",size:1em,weight: "semibold")
          ]
            )
          
        ]
        #align(center)[
            #text(black,description,size:1em)
        ]
    ]
  )
}

#let pl(
    description,
    title: none
) = {
    set align(center)
    cpt_thm.step()
    box(
        rect(
        width:100%,
        fill:red.lighten(70%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:red.darken(50%),
            right: red.darken(50%),
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              polygon(
                fill: red.darken(50%),
                (-5%, 0.55em),
                (0%,-0.25em),
                (45%,-0.25em),
                (90%,-0.25em),
                (90%,1.15em),
                (45%,1.15em),
                (0%,1.15em),
                (-5%,0.55em)
                
                
              )
              + place(top+left)[#text(white,underline(smallcaps("Aller plus loin ")),size:1.1em,weight: "medium")
            #text(white,"(" + title + ")",size:1em,weight: "semibold")
          ]
            )
          
        ]
        #align(center)[
            #text(black,description,size:1em)
        ]
    ]
  )
}

#let rem(
  content
)={
  text(black,underline(smallcaps("Remarque"))) + ": " + content
}

#let reset_cpt()={
  cpt_def.update(0)
  cpt_prop.update(0)
  cpt_thm.update(0)
  cpt_exos.update(0)
}

#let dem(
  content
) ={
  set align(left)
    box(
         rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:blue.darken(20%),
        )
    )[
        #align(left)[
            #box(
              place(top+left)[#text(black,underline(smallcaps("Démonstration")),size:1.1em,weight: "medium")
          ]
            )
          
        ]
        #align(left)[
          \ 
            #content
        ]
    ]
  )
}

#let corr(desc,num:"nd") = {
  [#imp(num): #desc]
}
#let exo(
    description,
    title: none,
) = {
  cpt_exos.step()
  tot_exos.step()
    set align(center)
    box(
        rect(
        width:100%,
        fill:green.lighten(99%),
        radius:(
            left:5pt,
            right:5pt
        ),
        stroke: (
            left:green,
            right: green,
            top: black,
            bottom: black
        )
    )[
        #align(left)[
            #box(
              polygon(
                stroke: green.lighten(99%),
                fill: green.darken(20%),
                (-5%, 0.55em),
                (0%,-0.25em),
                (45%,-0.25em),
                (90%,-0.25em),
                (90%,1.15em),
                (45%,1.15em),
                (0%,1.15em),
                (-5%,0.55em)
                
                
              )
              + place(top+left)[#text(white,underline(smallcaps("Exercice " + cpt_part.display("1") + "-" + cpt_exos.display())),size:1.1em,weight: "medium")
            #text(white,"(" + title + ")",size:1em,weight: "semibold")
          ]
            )
          
        ]
        #align(left)[
            #text(black,description,size:1em)
        ]
    ]
  )
   
}

#let margin-note(dy: -1em, content) = {
    place(
        right,
        dx: margin-size + margin-space,
        dy: dy,
        block(width: margin-size,
        rect(
        width:100%,
        fill:blue.lighten(99%),
        radius:(
            left:1pt,
            right:1pt
        ),
        stroke: (
            left:blue.darken(20%),
            top:blue.darken(40%)
        )
        )[
        
            #set text(size: 0.75em)
            #set align(left)
            #content
        ]
    ))
}

#let nb_exo() = {
  text(tot_exos.display("1"))
}


#let document(
    title: none,
    doc
    
) ={
    show heading.where(
    level: 1
    ): it => block(width: 100%)[
    #reset_cpt()
    #cpt_part.step()
    #set align(center)
    #set text(1.1em, weight: "regular")
    #imp(counter(heading).display()) #underline(smallcaps(it.body))
    ]

    show heading.where(
    level: 2
    ): it => block(width: 100%)[
    #set align(left)
    #set text(1.1em, weight: "regular")
    #imp(counter(heading).display()) #smallcaps(it.body)
    ]
    show heading.where(
    level: 3
    ): it => block(width: 100%)[
    #set align(left)
    #set text(1.1em, weight: "regular")
    #imp(counter(heading).display()) #smallcaps(it.body)
    ]
    show heading.where(
    level: 4
    ): it => block(width: 100%)[
    #set align(left)
    #set text(1.1em, weight: "regular")
    #imp(counter(heading).display()) #smallcaps(it.body)
    ]
    set page(
    paper: "us-letter",
    header : align(center)[Avant la MP2I],
    numbering : "1/1",
)
    set heading(numbering: "I.1.a -")
    set text(font: "DejaVu",size: 1em)
    set align(center)
    text(2em,smallcaps(title))
    set align(left)
    set par(justify: true)
    doc
    
    

    
}