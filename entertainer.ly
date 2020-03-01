\version "2.18.2"
\header {
  title = "The Entertainer"
  subtitle = "ragtime"
  instrument = "Piano"
  composer = "Scott Joplin"
  arranger = "mimi"
  meter = "150"
  tagline = "tagline"
}

\layout {
  indent = 20\mm
  line-width = 160\mm
  %ragged-last = ##t
}



global = {
  \key c \major
  \time 4/4
}


right = \relative c'' {
  \global
  % Intro
  d'8-4 e c a~-1 a b-3 g4-.
  d8    e c a~   a b   g4-.
  d8    e c a~   a b   r4
  r2  <b g' f>4

  % Main #1
  d8 dis
  
  e-1 c'4-5 e,8 c'4 e,8 c'~
  c2 r8 c-1 d dis
  e-4 c-2 d e~ e b-1 d4
  c2.

  % Main #2
  d,8 dis
  e-1 c'4-5 e,8 c'4 e,8 c'~
  c2.  a8-3 g-1
  fis-2 a-1 c-3 e-5 ~ e d c a
  <f d'>2.

  % Main #3
  d8 dis
  
  e-1 c'4-5 e,8 c'4 e,8 c'~
  c2 r8 c-1 d dis
  e-4 c-2 d e~ e b-1 d4
  c2.

  % Main #4
  c8 d
  e c d e ~ e c d c
  e c d e ~ e c d c
  e c d e ~ e b d4
  c2. 

  % Loop back to the beginning
  d8 dis
}

left = \relative c' {
  \global
  % Intro
  r1
  r1
  r2 r4 a8 aes
  g4-. r g,
  
  % Main #1
  r4
  c-5 <e g> c <e bes'>
  c <f a> <e g> r
  <c e g>2 <b f' g>
  c4 <e g> <e g>

  % Main #2
  r4
  c <e g> c <e bes'> 
  c <f a> <e g> r % ees
  d-5 <fis a> d <fis a>
  g g, a b

  % Main #3
  c-5 <e g> c <e bes'>
  c <f a> <e g> r
  <c e g>2 <b f' g>
  c4 <e g> <e g>

  r
  % Main #4
  c'2 <c bes>
  <c a> <c aes>
  <c g> <b, f' g>
  <c e g>4 g a b
}

\score {
  \new PianoStaff \with { instrumentName = "Piano" }
  <<
    \new Staff = "right" \right
    \new Staff = "left" { \clef bass \left }
  >>
}

