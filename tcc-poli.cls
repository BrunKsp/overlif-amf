%% Este é o modelo de dissertações, 
%% desenvolvido para os cursos de graduação da POLI
%% com base no modelo disponível pela COPPE/UFRJ (CoppeTeX)
%% Modificado por Julio Cesar Boscher Torres.
%%
%% This is file `tcc-poli.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% tcc-poli.dtx  (with options: `class')
%% 
%% This is the `coppe' document class used for composition of LaTeX
%% monographs (master and PhD thesis, and PhD qualifying exams)
%% satisfying the requirements of the Coordination of Research and
%% Graduate Courses in Engineering at the Federal University of
%% Rio de Janeiro.
%% 
%% Copyright (C) 2008 Vicente Helano and George Ainsworth Jr.
%% 
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License version 3 as
%% published by the Free Software Foundation.
%% 
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%% GNU General Public License version 3 for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% version 3 along with this package (see COPYING file).
%% If not, see <http://www.gnu.org/licenses/>.
%% 
%% Author(s): Vicente Helano,
%%            George Ainsworth
%% 
%% \CheckSum{1416}
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
%%
\def\filename{tcc-poli.dtx}
\def\fileversion{v2.2}
\def\filedate{2023/03/03}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{tcc-poli}[\filedate\ \fileversion\ tcc-poli Projetos Finais]
\LoadClass[12pt,a4paper,oneside]{book}
%\RequirePackage[sort&compress]{natbib}
\RequirePackage{hyphenat}
\RequirePackage{lastpage}
\RequirePackage[english,brazil]{babel}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{eqparbox}
\RequirePackage{ltxcmds}
\RequirePackage[a4paper,bindingoffset=0.0cm,vcentering=true,%
top=2.5cm,bottom=2.5cm,left=3.0cm,right=3.0cm]{geometry}
\def\CoppeTeX{{\rm C\kern-.05em{\sc o\kern-.025em p\kern-.025em
p\kern-.025em e}}\kern-.08em
T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX\spacefactor1000}
\newboolean{maledoc}
\setboolean{maledoc}{false}
\DeclareOption{tcc}{%
  \newcommand{\@degree}{Engenharia}
  \newcommand{\@degreename}{Engenheiro}
  \newcommand{\local@degname}{Engenheiro}
  \newcommand{\foreign@degname}{Engineer}
  \newcommand\local@doctype{Projeto de Gradua{\c c}{\~ a}o}
  \newcommand\foreign@doctype{Undergraduate Thesis}
}

 \DeclareOption{alf}{
    \def\AbntTexType{alf}
 }
 \ifdefined\AbntTexType %ALF
%   %\PassOptionsToPackage{comma}{natbib}
%   %\setcitestyle{comma}
 \else  %NUM
%   %\PassOptionsToPackage{numbers}{natbib}
%   \setcitestyle{square,numbers}
   \newcommand{\AbntTexType}{num}
 \fi
 \newcommand{\StringNum}{num}

\onehalfspacing
\DeclareOption{doublespacing}{%
  \doublespacing
}

\ProcessOptions\relax

\newcommand\engcourse[1]{%
  \ifthenelse{\equal{#1}{AMB}}
    {\global\def\local@coursename{Engenharia Ambiental}
    \global\def\local@degname{Engenheiro Ambiental}
     \global\def\foreign@coursename{Environmental Engineering}}{}
  \ifthenelse{\equal{#1}{ECV}}
    {\global\def\local@coursename{Engenharia Civil}
    \global\def\local@degname{Engenheiro Civil}
     \global\def\foreign@coursename{Civil Engineering}}{}
  \ifthenelse{\equal{#1}{ELE}}
    {\global\def\local@coursename{Engenharia El{\' e}trica}
    \global\def\local@degname{Engenheiro Eletricista}
     \global\def\foreign@coursename{Electrical Engineering}}{}
  \ifthenelse{\equal{#1}{MEC}}
    {\global\def\local@coursename{Engenharia Mec{\^ a}nica}
    \global\def\local@degname{Engenheiro Mec\^{a}nico}    
     \global\def\foreign@coursename{Mechanical Engineering}}{}
  \ifthenelse{\equal{#1}{MET}}
    {\global\def\local@coursename{Engenharia Metal{\' u}rgica}
    \global\def\local@degname{Engenheiro Metal\´{u}gico}    
\global\def\foreign@coursename{Metallurgical Engineering}}{}
  \ifthenelse{\equal{#1}{MAT}}
    {\global\def\local@coursename{Engenharia de Materiais}
    \global\def\local@degname{Engenheiro de Materiais} 
\global\def\foreign@coursename{Materials Engineering}}{}
  \ifthenelse{\equal{#1}{NUC}}
    {\global\def\local@coursename{Engenharia Nuclear}
    \global\def\local@degname{Engenheiro Nuclear}     \global\def\foreign@coursename{Nuclear Engineering}}{}
  \ifthenelse{\equal{#1}{NAV}}
    {\global\def\local@coursename{Engenharia Naval e Oce{\^ a}nica}
    \global\def\local@degname{Engenheiro Naval}    
     \global\def\foreign@coursename{Naval and Ocean Engineering}}{}
  \ifthenelse{\equal{#1}{ECI}}
    {\global\def\local@coursename{Engenharia de Computa{\c c}{\~ a}o e Informa{\c c}{\~ a}o}
    \global\def\local@degname{Engenheiro de Computa{\c c}{\~ a}o e Informa{\c c}{\~ a}o}
     \global\def\foreign@coursename{Information and Computation Engineering}}{}
  \ifthenelse{\equal{#1}{ECA}}
    {\global\def\local@coursename{Engenharia de Controle e Automa{\c c}{\~ a}o}{}
    \global\def\local@degname{Engenheiro de Controle e Automa{\c c}{\~ a}o}    
     \global\def\foreign@coursename{Control and Automation Engineering}}{}
  \ifthenelse{\equal{#1}{ELT}}
    {\global\def\local@coursename{Engenharia Eletr\^{o}nica e de Computa{\c c}{\~ a}o}{}
    \global\def\local@degname{Engenheiro Eletr\^{o}nico e de Computa{\c c}{\~ a}o}    
     \global\def\foreign@coursename{Electronical and Computational Engineering}}{}     
  \ifthenelse{\equal{#1}{PET}}
    {\global\def\local@coursename{Engenharia de Petr\´{o}leo}{}
\global\def\local@degname{Engenheiro de Petr\´{o}leo}  
     \global\def\foreign@coursename{Petrol Engineering}}{}     
  \ifthenelse{\equal{#1}{PRO}}
    {\global\def\local@coursename{Engenharia de Produ{\c c}{\~ a}o}{}
\global\def\local@degname{Engenheiro de Produ{\c c}{\~ a}o}     
     \global\def\foreign@coursename{Production Engineering}}{}     
}
\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}
\newcommand\foreigntitle[1]{%
  \global\def\foreign@title{#1}%
}
\newcount\@advisor\@advisor0
\newcommand\advisor[4]{%
  \global\@namedef{AdvisorTitle:\expandafter\the\@advisor}{#1}
  \global\@namedef{AdvisorName:\expandafter\the\@advisor}{#2}
  \global\@namedef{AdvisorSurname:\expandafter\the\@advisor}{#3}
  \global\@namedef{AdvisorDegree:\expandafter\the\@advisor}{#4}
  \global\advance\@advisor by 1
  \ifnum\@advisor>1
    \renewcommand\local@advisorstring{Orientadores}
    \renewcommand\foreign@advisorstring{Advisors}
  \fi
}
\newcount\@examiner\@examiner0
\newcommand\examiner[3]{%
  \global\@namedef{Examiner:\expandafter\the\@examiner}{#1\ #2, #3}
  \global\advance\@examiner by 1
}
\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}
\renewcommand\date[2]{%
  \month=#1
  \year=#2
}
\newcommand\local@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}
\newcommand\foreign@monthname{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi}
\newcounter{keywords}
\newcommand\keyword[1]{%
  \global\@namedef{Keyword:\expandafter\the\c@keywords}{#1}
  \global\addtocounter{keywords}{1}
}

% Keywords command
\newcounter{numkeywords}
\providecommand{\keywords}{}
\renewcommand{\keywords}[2][]{%
   \par
   \if\relax\detokenize{#1}\relax\else\begin{otherlanguage}{#1}\fi
   \begin{flushleft}
      \count1=0
      \setcounter{numkeywords}{\value{keywords}}
      \addtocounter{numkeywords}{-1}
      \textit{Palavras-chave:}
      \nohyphens{\@whilenum \count1<\thenumkeywords \do {
		\csname Keyword:\the\count1 \endcsname,
		\advance\count1 by 1 }
        \@whilenum \count1<\value{keywords} \do {
        \csname Keyword:\the\count1 \endcsname.
		\advance\count1 by 1 }
      }    
   \end{flushleft}  
   \if\relax\detokenize{#1}\relax\else\end{otherlanguage}\fi
}

\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}
  \thispagestyle{empty}
  \setcounter{page}{2}
  \makefrontpage
  \clearpage
  \pagestyle{plain}
  \ifthenelse{\boolean{maledoc}}{}{\makecatalog}%
}
\renewcommand\mainmatter{%
  \coppe@mainBegin
  \cleardoublepage
  \@mainmattertrue
  \pagestyle{plain}
  \pagenumbering{arabic}}
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi}
\renewcommand\maketitle{
 \pagenumbering{gobble}
  %\pagenumbering{empty}
  %\ltx@ifpackageloaded{hyperref}{\coppe@hypersetup}{}%

%% CAPA  
\begin{titlepage}
  \vspace*{.2cm}
  \begin{center}
  \nohyphens{\LARGE Antonio Meneghetti Faculdade}\par
  \begin{center}
  \vspace*{1.5mm}
  \setlength\baselineskip{0pt}
  \setlength\parskip{1mm}
  \makebox[20mm][c]{\includegraphics[width=5cm]{Logos/Logo-Amf.png}}
  \end{center}
  %\nohyphens{Universidade Federal do Rio de Janeiro\\Escola Polit\'{e}cnica\\ Programa de \local@coursename }\par
  \vspace*{4cm}
  \nohyphens{\LARGE \MakeUppercase\local@title}\par
  \vspace{7cm}
  \nohyphens{\LARGE \@authname\ \@authsurn}\par
  \vspace*{\fill}
  \begin{center}
  	%\local@cityname\par
%   	\local@monthname\ de \number\year
    \LARGE \number\year
  \end{center}
  \end{center}
  \vspace*{2.1cm}

%% FOLHA DE ROSTO
\newpage
\makebox[20mm][c]{\includegraphics[width=3.5cm]{Marca_Principal.jpg}}
  
  \begin{center}
    \vspace{2cm}
    \nohyphens{\Large \MakeUppercase\local@title}\par
    \vspace{4cm}
    \nohyphens{\Large \@authname\ \@authsurn}\par
  \end{center}
  
  \vspace{4cm}
  
  \begin{flushright}
    \begin{minipage}{8.5cm}
      \frontcover@maintext
    \end{minipage}\par
  \end{flushright}
  
  \vspace*{\fill}
  
  \begin{center}
    \local@cityname\par
    \local@monthname\ de \number\year
  \end{center}
\end{titlepage}
\global\let\maketitle\relax%
\global\let\and\relax
} %% end maketitle
  
  
%% FOLHA DE ASSINATURAS  
%% TEXTO DA FOLHA DE ROSTO
\newcommand\frontcover@maintext{
  \sloppy\nohyphens{\local@doctype\
%  \ifthenelse{\boolean{maledoc}}{apresentado}{apresentada}
  apresentado ao Curso de \local@coursename\ da
  Escola Polit\'{e}cnica, \local@universityname, como parte dos requisitos
  necess{\' a}rios {\` a} obten{\c c}{\~ a}o do t{\' i}tulo de Engenheiro.
%  \local@degname\

    \vspace*{10mm}
    \nohyphens
    {%
    \begin{tabularx}{8.5cm}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}  
      \local@advisorstring: &
      \count1=0
      \toks@={}
      \@whilenum \count1<\@advisor \do{%
      \ifcase\count1 % same as \ifnum0=\count1
         \toks@=\expandafter{\csname AdvisorName:\the\count1%
          \expandafter\endcsname\expandafter\space%
          \csname AdvisorSurname:\the\count1\endcsname\\}
      \else
         \toks@=\expandafter\expandafter\expandafter{%
         \expandafter\the\expandafter\toks@%
          \expandafter&\expandafter\space%
          \csname AdvisorName:\the\count1\expandafter\endcsname%
          \expandafter\space\csname AdvisorSurname:\the\count1\endcsname\\
      }%
      \fi
      \advance\count1 by 1}
      \the\toks@
    \end{tabularx}}\par

  }
}
\newcommand\frontpage@maintext{
  \noindent {\MakeUppercase\local@doctype}
  \sloppy\nohyphens{SUBMETIDO AO CORPO DOCENTE DO CURSO DE {\MakeUppercase\local@coursename} DA ESCOLA POLIT\'{E}CNICA DA UNIVERSIDADE FEDERAL DO RIO DE JANEIRO COMO PARTE DOS REQUISITOS
  NECESS{\' A}RIOS PARA A OBTEN{\c C}{\~ A}O DO GRAU DE
  {\MakeUppercase\local@degname} \par}%
}
\newcommand\frontpage@bottomtext{%
  \begin{center}
  {\MakeUppercase{\local@cityname, \local@statename\ -- \local@countryname}}\par
  {\MakeUppercase\local@monthname\ DE \number\year}
  \end{center}%
}
\newcommand\makefrontpage{%
  \begin{center}
  %\vspace*{1.5mm}
  %\setlength\baselineskip{0pt}
  %\setlength\parskip{1mm}
  %\makebox[20mm][c]{\includegraphics[width=3cm]{ufrj-logo.jpg}}
  \vspace*{5mm}
    \sloppy\nohyphens{\MakeUppercase\local@title}\par
    \vspace*{15mm}
    {\@authname\ \@authsurn}\par
  \end{center}\par
  \vspace*{1cm}
  \frontpage@maintext
  \vspace*{8mm}
  \noindent\local@approvedname:\par
  \begin{flushright}
        \count1=0
        \@whilenum \count1<\@examiner \do {
            \vskip30\p@ \baselineskip15pt
        \eqmakebox[signture@list][c]{\hrulefill}\\
        \eqmakebox[signture@list][c]{%
            \ \ \ \protect\csname Examiner:\the\count1 \endcsname\ \ \ }\\
            \advance\count1 by 1}
  \end{flushright}
  \vspace*{\fill}
  \frontpage@bottomtext}
\newcommand\coppe@hypersetup{%
\begingroup
  % changes to \toks@ and \count@ are kept local;
  % it's not necessary for them, but it is usually the case
  % for \count1, because the first ten counters are written
  % to the DVI file, thus you got lucky because of PDF output
  \toks@={}% in this special case not necessary
  \count@=0 %
  \@whilenum\count@<\value{keywords}\do{%
    % * a keyword separator is not necessary,
    %    if there is just one keyword
    % * \csname Keyword:\the\count@\endcsname must be expanded
    %    at least once, to get rid of the loop depended \count@
    \ifcase\count@ % same as \ifnum0=\count@
      \toks@=\expandafter{\csname Keyword:\the\count@\endcsname}%
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter;\expandafter\space
        \csname Keyword:\the\count@\endcsname
      }%
    \fi
    \advance\count@ by 1 %
  }%
  \edef\x{\endgroup
    \noexpand\hypersetup{%
      pdfkeywords={\the\toks@}%
    }%
  }%
\x
\hypersetup{%
  pdfauthor={\@authname\ \@authsurn},
  pdftitle={\local@title},
  pdfsubject={\local@doctype\ de \@degreename\ em \local@coursename\ da POLI/UFRJ},
  pdfcreator={LaTeX with CoppeTeX toolkit},
  breaklinks={true},
  raiselinks={true},
  pageanchor={true},
}}

%% FICHA CATALOGRAFICA
\newcommand\makecatalog{%
  \vspace*{\fill}
  \begin{center}
    \setlength{\fboxsep}{5mm}
    \framebox[120mm][c]{\makebox[5mm][c]{}%
      \begin{minipage}[c]{105mm}
      \setlength{\parindent}{5mm}
      \noindent\sloppy\nohyphens\@authsurn,
      \nohyphens\@authname\par
      \nohyphens{\local@title/\@authname\ \@authsurn. -- \local@cityname:
      UFRJ/POLI, \number\year.}\par
      \pageref{front:pageno},
      \pageref{LastPage}
      p.\@ifundefined{r@cat:lofflag}{}{\pageref{cat:lofflag}} $29,7$cm.\par
      % There is an issue here. When the last entry must be split between lines,
      % the spacing between it and the next paragraph becomes smaller.
      % Should we manually introduce a fixed space? But how could we know that
      % a name was split? Is this happening yet?
      \nohyphens{%
      \begin{tabularx}{100mm}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
        \local@advisorstring: &
        \count1=0
        \toks@={}
        \@whilenum \count1<\@advisor \do{%
        \ifcase\count1 % same as \ifnum0=\count1
          \toks@=\expandafter{\csname AdvisorName:\the\count1%
          \expandafter\endcsname\expandafter\space%
          \csname AdvisorSurname:\the\count1\endcsname\\}
        \else
          \toks@=\expandafter\expandafter\expandafter{%
            \expandafter\the\expandafter\toks@
            \expandafter&\expandafter\space
            \csname AdvisorName:\the\count1\expandafter\endcsname%
            \expandafter\space\csname AdvisorSurname:\the\count1\endcsname\\
          }%
        \fi
        \advance\count1 by 1}
        \the\toks@
      \end{tabularx}}\par
      \nohyphens{\local@doctype\ ({\MakeLowercase\@degree}) --
      UFRJ/POLI/Curso de \local@coursename, \number\year.}\par
      \bibname: p. \pageref{bib:begin} -- \pageref{bib:end}.\par
      \count1=0
      \count2=1
      \nohyphens{\@whilenum \count1<\value{keywords} \do {%
        \number\count2. \csname Keyword:\the\count1 \endcsname.
        \advance\count1 by 1
        \advance\count2 by 1}
      I. \csname AdvisorSurname:0\endcsname,%
      \ \csname AdvisorName:0\endcsname%
      \ifthenelse{\@advisor>1}{\ \emph{et~al.}{}}.
      II. \local@universityname, POLI, Curso de \local@coursename.
      III. T{\' i}tulo.}
    \end{minipage}}
  \end{center}
  \vspace*{\fill}}
  
\newcommand\dedication[1]{
  \gdef\@dedic{#1}
    \cleardoublepage
    \vspace*{\fill}
    \begin{flushright}
      \begin{minipage}{60mm}
        \raggedleft \it \normalsize \@dedic
      \end{minipage}
    \end{flushright}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PAGINA DO RESUMO
\newcommand\abstract@toptext{%
  \noindent Resumo \ifthenelse{\boolean{maledoc}}{do}{da}
  \local@doctype\ apresentado
  \sloppy\nohyphens{{\` a} Escola Polit\'{e}cnica da UFRJ como parte dos requisitos
  necess{\' a}rios para a obten{\c c}{\~ a}o do grau de
  \local@degname.\ }
}

\newcommand\foreignabstract@toptext{%
  \noindent Abstract of Undergraduate Project presented to POLI/UFRJ as a partial fulfillment of the requirements for the degree of Engineer. 
}
\newenvironment{abstract}{%
  \clearpage
  \thispagestyle{plain}
  \abstract@toptext\par

  \begin{center}
     \vspace*{1cm}
        \local@title\par
     \vspace*{1cm}
        \@authname\ \@authsurn\par  
     \vspace*{1cm}
        \local@monthname/\number\year \par
     \vspace*{.5cm}
  \end{center}
%\par
  \begin{flushleft}
    \nohyphens{%
      \begin{tabularx}{\textwidth}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}  
        \local@advisorstring: &
        \count1=0
        \toks@={}
        \@whilenum \count1<\@advisor \do{%
            \ifcase\count1 % same as \ifnum0=\count1
               \toks@=\expandafter{\csname AdvisorName:\the\count1%
               \expandafter\endcsname\expandafter\space%
               \csname AdvisorSurname:\the\count1\endcsname\\}
            \else
               \toks@=\expandafter\expandafter\expandafter{%
               \expandafter\the\expandafter\toks@%
               \expandafter&\expandafter\space%
               \csname AdvisorName:\the\count1\expandafter\endcsname%
               \expandafter\space\csname AdvisorSurname:\the\count1\endcsname\\}%
            \fi
            \advance\count1 by 1}
            \the\toks@
      \end{tabularx}}\par
        \vspace*{1cm}
           Curso: \local@coursename\ \par
        \vspace*{.5cm}
    \end{flushleft}
   
} %fim resumo

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% PAGINA DO ABSTRACT (INGLES)
\newenvironment{foreignabstract}{%
  \clearpage
  \thispagestyle{plain}
  \foreignabstract@toptext\par

  \begin{center}
     \vspace*{1cm}
       \foreign@title\par
     \vspace*{1cm}
       \@authname\ \@authsurn\par  
     \vspace*{1cm}
       \foreign@monthname/\number\year \par
     \vspace*{.5cm}
  \end{center}
  %\par
  \begin{flushleft}
    \nohyphens{%
    \begin{tabularx}{\textwidth}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}  
      \foreign@advisorstring: &
      \count1=0
      \toks@={}
      \@whilenum \count1<\@advisor 
      \do{%
        \ifcase\count1 % same as \ifnum0=\count1
           \toks@=\expandafter{\csname AdvisorName:\the\count1%
           \expandafter\endcsname\expandafter\space%
           \csname AdvisorSurname:\the\count1\endcsname\\}
        \else
           \toks@=\expandafter\expandafter\expandafter{%
           \expandafter\the\expandafter\toks@%
           \expandafter&\expandafter\space%
           \csname AdvisorName:\the\count1\expandafter\endcsname%
           \expandafter\space\csname AdvisorSurname:\the\count1\endcsname\\}%
        \fi
        \advance\count1 by 1
      }
      \the\toks@
    \end{tabularx}
    }\par
    \vspace*{1cm}
      Course: \foreign@coursename\ \par
    \vspace*{.5cm}
  \end{flushleft}
} %fim do abstract

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \newenvironment{foreignabstract}{%
%   \clearpage
%   \thispagestyle{plain}
%   \begin{otherlanguage}{english}
%   %\foreignabstract@toptext\par
%   \begin{center}
% 	\textbf{ABSTRACT}
% \end{center}
% \vspace{20mm}

% %  \begin{center}
% \noindent \MakeUppercase\@authsurn,\ \@authname. \textbf{\foreign@title}.\ Rio de Janeiro, \number\year.\ Master´s Thesis.\ Urban Engineering Program, Polytechnic School, Federal University of Rio de Janeiro. Rio de Janeiro, \number\year.  
% %\sloppy\nohyphens{\MakeUppercase\local@title}\par

% %  \vspace*{8.6mm}
% %  \begin{center}
% %    \sloppy\nohyphens{\MakeUppercase\foreign@title}\par
% %    \vspace*{13.2mm}
% %    \@authname\ \@authsurn \par
% %    \vspace*{7mm}
% %    \foreign@monthname/\number\year
% %  \end{center}\par
% %  \vspace*{\fill}
%   \noindent
%   \begin{tabularx}{\textwidth}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
% %    \foreign@advisorstring: &
% %    \count1=0
% %    \toks@={}
% %    \@whilenum \count1<\@advisor \do{%
% %    \ifcase\count1 % same as \ifnum0=\count1
% %      \toks@=\expandafter{\csname AdvisorName:\the\count1%
% %      \expandafter\endcsname\expandafter\space%
% %      \csname AdvisorSurname:\the\count1\endcsname\\}
% %    \else
% %      \toks@=\expandafter\expandafter\expandafter{%
% %        \expandafter\the\expandafter\toks@
% %        \expandafter&\expandafter\space
% %        \csname AdvisorName:\the\count1\expandafter\endcsname%
% %        \expandafter\space\csname AdvisorSurname:\the\count1\endcsname\\
% %      }%
% %    \fi
% %    \advance\count1 by 1}
% %    \the\toks@
%   \end{tabularx}
% %\par
% %  \vspace*{2mm}
% %  \noindent\foreign@deptstring: \foreign@coursename\par
%   \vspace*{7mm}}{%
%   \end{otherlanguage}
%   \vspace*{\fill}
%   \global\let\@author\@empty
%   \global\let\@date\@empty
%   \global\let\foreign@title\@empty
%   \global\let\foreign@title\relax
%   \global\let\local@title\@empty
%   \global\let\local@title\relax
%   \global\let\author\relax
%   \global\let\author\relax
%   \global\let\date\relax}


%% LISTA DE FIGURAS  
\renewcommand\listoffigures{%
    \coppe@hasLof
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \addcontentsline{toc}{chapter}{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \addcontentsline{toc}{chapter}{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }

%% LISTA DE SIMBOLOS    
\newcommand\printlosymbols{%
\renewcommand\glossaryname{\listsymbolname}%
\@input@{\jobname.los}}
\def\makelosymbols{%
  \newwrite\@losfile
  \immediate\openout\@losfile=\jobname.syx
  \newcommand\symbl[3][]{\@bsphack\begingroup
  \ifstrempty{##1}{\def\@tempsymbl{##2=}}{\def\@tempsymbl{##1=}}%
             \@sanitize%
             \@wrlos{\@tempsymbl}{##2}{##3}}\typeout%
  {Writing index of symbols file \jobname.syx}%
  \let\makelosymbols\@empty%
}%
\@onlypreamble\makelosymbols
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \newcommand\@wrlos[3]{%
    \protected@write\@losfile{}%
      {\string\indexentry{#1[#2] #3|hyperpage}{\thepage}}%
    \endgroup%
    \@esphack}}{%
  \newcommand\@wrlos[3]{%
    \protected@write\@losfile{}%
      {\string\indexentry{#1[#2] #3}{\thepage}}%
    \endgroup%
    \@esphack}}}%

%% LISTA DE ABREVIAÇÔES    
\newcommand\printloabbreviations{%
\renewcommand\glossaryname{\listabbreviationname}%
\@input@{\jobname.lab}}
\def\makeloabbreviations{%
  \newwrite\@labfile
  \immediate\openout\@labfile=\jobname.abx
  \def\abbrev{\@bsphack\begingroup
              \@sanitize
              \@wrlab}\typeout
  {Writing index of abbreviations file \jobname.abx}%
  \let\makeloabbreviations\@empty
}
\@onlypreamble\makeloabbreviations
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2}{\arabic{page}}}%
    \endgroup
    \@esphack}}}
\AtBeginDocument{%
  \ltx@ifpackageloaded{hyperref}{
    \def\coppe@bibEnd{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:end}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\coppe@bibBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:begin}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\coppe@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}{page.\roman{page}}{}}}}%
    \def\coppe@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}{page.\roman{page}}{}}}}%
  }{%
    \def\coppe@bibEnd{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:end}{{}{\arabic{page}}{}}}}%
    \def\coppe@bibBegin{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:begin}{{}{\arabic{page}}{}}}}%
    \def\coppe@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}}}}%
    \def\coppe@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}}}}%
  }%
}
\newdimen\bibindent%
\setlength\bibindent{1.5em}%
\renewenvironment{thebibliography}[1]%
     {\onehalfspacing%
      \chapter*{\bibname}%
      \addcontentsline{toc}{chapter}{\bibname}%
      \coppe@bibBegin
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\setlength{\labelwidth}{0ex}%
            \setlength{\leftmargin}{9.0ex}%
            \setlength{\itemindent}{-9.0ex}%
            \advance\leftmargin\labelsep%
            \@openbib@code%
            \usecounter{enumiv}%
            \let\p@enumiv\@empty%
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy%
      \clubpenalty4000%
      \@clubpenalty \clubpenalty%
      \widowpenalty4000%
      \sfcode`\.\@m}%
     {\def\@noitemerr%
       {\@latex@warning{Empty `thebibliography' environment}}%
       \coppe@bibEnd
      \endlist}

%% GLOSSARIO      
\newenvironment{theglossary}{%
  \if@twocolumn%
    \@restonecoltrue\onecolumn%
  \else%
    \@restonecolfalse%
  \fi%
  \@mkboth{\MakeUppercase\glossaryname}%
  {\MakeUppercase\glossaryname}%
  \chapter*{\glossaryname}%
  \addcontentsline{toc}{chapter}{\glossaryname}
  \list{}
  {\setlength{\listparindent}{0in}%
   \setlength{\labelwidth}{1.0in}%
   \setlength{\leftmargin}{1.5in}%
   \setlength{\labelsep}{0.5in}%
   \setlength{\itemindent}{0in}}%
   \sloppy}%
  {\if@restonecol\twocolumn\fi%
\endlist}

%% INDICE
\renewenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  \thispagestyle{plain}\parindent\z@
  \addcontentsline{toc}{chapter}{\indexname}
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\glossaryname{Glossary}
\newcommand\listabbreviationname{Lista de Abreviaturas}
\newcommand\listsymbolname{Lista de S{\' i}mbolos}
\newcommand\local@advisorstring{Orientador}
\newcommand\foreign@advisorstring{Advisor}
\ifthenelse{\boolean{maledoc}}{%
  \newcommand\local@approvedname{Examinado por}%
}{%
  \newcommand\local@approvedname{Examinada por}%
}
\newcommand\local@universityname{Universidade Federal do Rio de Janeiro}
\newcommand\local@deptstring{Curso}
\newcommand\foreign@deptstring{engcourse}
\newcommand\local@cityname{Rio de Janeiro}
\newcommand\local@statename{RJ}
\newcommand\local@countryname{Brasil}

%% PAGINA DE AGRADECIMENTOS
\newcommand\agradectext{
\begin{center}
  \vspace*{5mm}
    \MakeUppercase{Agradecimentos}\par
  \vspace*{1cm}
\end{center}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% QUADROS
\newcounter{quadro}% the counter
\renewcommand*\thequadro{\arabic{quadro}}% the default format for the counter
\newcommand*\fps@quadro{tbp}% default floating options
\newcommand*\ftype@quadro{4}% float type number, needs to be a power of 2;
                            % \ftype@figure=1, \ftype@table=2
\newcommand*\ext@quadro{loq}% extension of file for the list of quadros
\newcommand*\fnum@quadro{\quadroname\nobreakspace\thequadro}% used in caption
\newcommand*\quadroname{Quadro}% the name
\newcommand*\listquadrosname{Lista de Quadros}% the name of the list
\newenvironment{quadro}{\@float{quadro}}{\end@float}% the environment
\newenvironment{quadro*}{\@dblfloat{quadro}}{\end@dblfloat}% the starred
% version for twocolumn documents
\newcommand*\listofquadros{% the list of quadros
   \newpage
   \chapter*{\listquadrosname}
   \addcontentsline{toc}{chapter}{\listquadrosname}
  \@mkboth
    {\MakeUppercase\listquadrosname}
    {\MakeUppercase\listquadrosname}
  \@starttoc{\ext@quadro}
}
\let\l@quadro\l@figure % layout of list is the same as for figures
\makeatother

%% 
%%
%% End of file `coppe.cls'.
