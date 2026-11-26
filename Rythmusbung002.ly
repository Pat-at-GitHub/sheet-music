\version "2.24.0"

\header {
  title = "Rhythmusübung 2 – Fünf-Noten-Raum"
  subtitle = "C-Dur, beide Hände"
  tagline = ##f
}

rechts = \relative c' {
  \clef treble
  \time 4/4
  \key c \major
  \tempo 4 = 80

  \repeat volta 2 {
    e2 g4 e4 |
    c4 d8 e8 g8 f8 e4 |
    g4 e4 c2 |
    c8 d8 e8 g8 e2 |
    d4 g2 f4 |
    e1 |
  }
}

links = \relative c {
  \clef bass
  \time 4/4
  \key c \major

  \repeat volta 2 {
    g2 e4 g4 |
    e4 g8 f8 d8 e8 g4 |
    c4 g4 e2 |
    g8 f8 e8 d8 c2 |
    f4 c2 d4 |
    c1 |
  }
}

\score {
  \new PianoStaff <<
    \new Staff \rechts
    \new Staff \links
  >>
  \layout { }
  \midi { }
}