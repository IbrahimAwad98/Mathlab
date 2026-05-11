# Mathlab

MATLAB-skript för algebra och kalkylövningar. Projektet innehåller:

- **Matrixoperationer:** Addition, multiplikation, inversion, egenvärldsanalys och mer.
- **Komplexa tal:** Räkna med både absolut- och polärform, visuella representationer.
- **Symbolisk differentiering/integration:** Automatiskt härled och integrera funktioner.
- **Differentialekvationer:** Lös vanliga ODE/PDE numeriskt och symboliskt.
- **Sannolikhetsfördelningar:** Beräkning, visualisering och analys av sannolikhetsfördelningar.
- **2D/3D-visualisering:** Grafer och figurer för att förstå matematiken visuellt.

## Kom igång

1. Klona repot:
    ```bash
    git clone https://github.com/IbrahimAwad98/Mathlab.git
    ```

2. Öppna önskat skript/exempelfil i MATLAB.

## Struktur

- `matrices/`  Matrixövningar och algoritmer
- `complex/`  Komplextalsberäkningar
- `symbolic/`  Symbolisk matematik (diff, int)
- `differential/` Differentialekvationer
- `Probability distribution/` Sannolikhetsfördelningar i MATLAB
- `visualization/` 2D-/3D-plottning

## Exempel på användning

```matlab
% Matrixmultiplikation
A = [1 2; 3 4];
B = [5 6; 7 8];
C = A * B

% Symbolisk härledning
syms x
y = diff(sin(x^2))
```

## Förutsättningar

- MATLAB 2018a eller nyare
- Symbolic Math Toolbox (för symbolisk matematik)

## Kontakt

Skicka frågor eller förslag via [Issues](https://github.com/IbrahimAwad98/Mathlab/issues) eller kontakta [IbrahimAwad98](https://github.com/IbrahimAwad98).

---

**Licens:** MIT License
