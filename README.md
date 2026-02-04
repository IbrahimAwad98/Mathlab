# MATLAB Matematik

En samling MATLAB-skript för algebra- och analysövningar. Repositoryt innehåller praktiska implementationer av matematiska koncept inklusive linjär algebra, komplexa tal, polynomoperationer, derivator, integraler, differentialekvationer och datavisualisering.

## Beskrivning

Detta är ett utbildningsprojekt som demonstrerar MATLAB-programmering för att lösa matematiska problem inom linjär algebra och analys. Repositoryt är organiserat i två huvudkategorier: Algebra och Analys (Kalkyl).

Algebradelen täcker grundläggande operationer med matriser, vektorer, komplexa tal och polynom. Den inkluderar implementationer för vektoroperationer (skalärprodukt, kryssprodukt, norm), matrismanipulering (transponering, determinant, invers) och geometriska beräkningar (avstånd, vinklar, planekvationer). Komplexa taloperationer demonstrerar konjugat, konvertering till polär form samt polynomevaluering och faktorisering.

Analysdelen fokuserar på kalkyleringar inklusive funktionsplottning, symbolisk derivering, integration, gränsvärdeskalkylering och lösning av differentialekvationer. Skripten demonstrerar MATLABs plottningsförmåga med flera visualiseringstyper (2D-plottar, 3D-ytor, konturplottar, mesh-plottar). Avancerade ämnen inkluderar kurvlängdsberäkning, area mellan kurvor och rotationsvolymberäkning.

Nyckelfunktioner inkluderar omfattande användning av MATLABs Symbolic Math Toolbox för exakta symboliska beräkningar, omfattande plottning med anpassning (linjestilar, färger, etiketter, rutnät) och praktiska exempel på matematiska problemlösningsarbetsflöden. Koden demonstrerar korrekta MATLAB-formateringspraxis inklusive sektionsbrytningar, variabelnamnskonventioner och inline-kommentarer på svenska.

Repositoryt fungerar som en referens för studenter som lär sig MATLAB för matematisk beräkning och visualisering, och visar hur teoretisk matematik översätts till körbar kod.

## Funktioner

- Vektoroperationer (skalärprodukt, kryssprodukt, norm, enhetsvektorer)
- Matrisoperationer (addition, multiplikation, transponering, determinant, invers)
- 3D-geometriberäkningar (linjeekvationer, planekvationer, avstånd, vinklar)
- Komplex talaritmetik (polär form, konjugat, argument)
- Polynomevaluering, division och rotberäkning
- Funktionsplottning med anpassningsbara stilar och färger
- 2D- och 3D-visualisering (mesh, surf, contour, contourf, surfc)
- Symbolisk derivering (upp till n:te ordningen)
- Symbolisk integration (bestämd och obestämd)
- Gränsvärdeskalkylering (vänster, höger, dubbelsidig)
- Lösning av differentialekvationer (första och andra ordningen)
- Kurvlängds- och areaberäkningar
- Rotationsvolymberäkning

## Teknikstack

- Språk: MATLAB (.m-filer)
- Toolboxes: Symbolic Math Toolbox
- Visualisering: 2D-plottar, 3D-ytplottar, konturplottar
- Kommentarer: Svenska

## Projektstruktur

```
Mathlab/
├── Algebra/                      # Linjär algebra och grundläggande operationer
│   ├── Del2.m                   # Vektoroperationer (skalär-, kryssprodukt, vinklar)
│   ├── Matriser.m               # Matrisoperationer (transponering, invers, determinant)
│   ├── MAT.m                    # Linje-plan-skärning
│   ├── MAT2.m                   # Matrisdeterminanter
│   ├── komplexa_tal.m           # Komplexa taloperationer
│   ├── Uppgift12.m              # Grundläggande MATLAB-funktioner (round, floor, ceil, mod)
│   ├── Uppgift34.m              # Trigonometriska och logaritmiska beräkningar
│   └── komplexa_tal (1).m       # Dublett av komplexa talövningar
└── Analys/                       # Kalkyl och analys
    ├── Inlämnings1/             # Inlämning 1: Plottning och visualisering
    │   ├── Uppgift1.m           # 2D-funktionsplottning med anpassning
    │   ├── Uppgift2.m           # Flera funktioner med subplottar
    │   ├── Uppgift3.m           # Funktionskombinationer (summa, produkt, kvot)
    │   └── Uppgift4.m           # 3D-plottning (mesh, surf, contour, contourf)
    └── Inlämnings2/             # Inlämning 2: Symbolisk kalkyl
        ├── Uppgift1.m           # Symboliska uttryck och gränsvärden
        ├── Uppgift2.m           # Derivator och plottning
        ├── Uppgift3.m           # Integration (area och kurvlängd)
        ├── Uppgift4.m           # Rotationsvolym
        ├── Uppgift5.m           # Differentialekvationer (1:a och 2:a ordningen)
        └── inlamning2.m         # Kompletta lösningar för inlämning 2
```
