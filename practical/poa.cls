%%
%% This is file `poa.cls', first writen by
%% Xiaofeng Wang <wasphin@gmail.com>
%%
%% --------------------------------------------------------------
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This file has the LPPL maintenance status "maintained".
%%
%% This file may only be distributed together with a copy of the LaTeX
%% base system. You may however distribute the LaTeX base system without
%% such generated files.
%%
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%%
%% The list of derived (unpacked) files belonging to the distribution
%% and covered by LPPL is defined by the unpacking scripts (with
%% extension .ins) which are part of the distribution.
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}

\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{poa}
              [2013/08/24 v0.1
                Power of Attorney document class]

%%%% default paper size
\setlength\paperheight {297mm}%
\setlength\paperwidth  {210mm}%

\newcommand\@ptsize{}
\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
\DeclareOption{12pt}{\renewcommand\@ptsize{2}}

\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}

\ExecuteOptions{11pt, final}
\ProcessOptions

\input{size1\@ptsize.clo}

\setlength\lineskip{1 em}
\setlength\normallineskip{1 em}
\setlength\parskip{0\p@ \@plus \p@}

\input{poa.cfg}

\newcommand{\trustor}[3]{%
  \def\poa@trustor@name{\hbox to 7em {#1\hfil}}
  \def\poa@trustor@sex{\hbox to 3em {#2\hfil}}
  \def\poa@trustor@id{#3}}
%  \def\poa@trustor@id{\hbox to 9em {#3\hfil}}}
\newcommand{\trustee}[3]{%
  \def\poa@trustee@name{\hbox to 7em {#1\hfil}}
  \def\poa@trustee@sex{\hbox to 3em {#2\hfil}}
  \def\poa@trustee@id{#3\hfil}}
%  \def\poa@trustee@id{\hbox to 9em {#3\hfil}}}

\newcommand{\closings}{%
  \vskip 1 em
  \hfil \hbox to 0.5\textwidth{}
  \hbox to 0.4\textwidth{\poa@label@trustor\hfil}
  \newline
  \hfil \hbox to 0.5\textwidth{}
  \hbox to 0.4\textwidth{\hfil\today\hfil}}

\newcommand\maketitle{%
  \clearpage
  \thispagestyle{empty}
  \begin{center}
    \poa@value@title
    \vskip 1 em
    \begin{tabular}{rlrlrl}
      \poa@label@trustor & \poa@trustor@name &
      \poa@label@sex & \poa@trustor@sex &
      \poa@label@id & \poa@trustor@id \\
      \poa@label@trustee & \poa@trustee@name &
      \poa@label@sex & \poa@trustee@sex &
      \poa@label@id & \poa@trustee@id
    \end{tabular}
  \end{center}
  \vskip 1 em
}


\endinput
