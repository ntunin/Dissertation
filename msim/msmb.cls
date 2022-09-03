%%%%%
%%%%%  Last modified by Dmitry Lavrov 04.05.2014
%%%%%
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{msmb}[2014/05/04 v3.3.2 Mathematical Structures and Modeling]
\typeout{Mathematical structures and modeling}
\typeout{Copyright (C) 2005 - 2014 by Faculty of Computer Science, OmSU}
\typeout{Authors: D.N. Lavrov, A.K. Guts, D.E. Volper}
\typeout{Address: Russia, 644077, Omsk, pr. Mira 55A, Omsk State University, FCS}
\typeout{Email: lavrov@omsu.ru}
\LoadClass[12pt,a4paper,twoside]{article} %% This is the base class
%%=================================================================
\RequirePackage[cp1251]{inputenc}
\RequirePackage[T2A]{fontenc}
\RequirePackage{amsmath,amsthm,amssymb,amsfonts}
\RequirePackage[russian,english]{babel}
\RequirePackage{mathtext}
\RequirePackage{ifpdf}
\ifpdf
  %  pdflatex code, do not show the link here
  \RequirePackage[pdftex]{graphicx}
\else
  %  latex code
  \RequirePackage[dvips]{graphicx}
\fi
\usepackage{url}
\RequirePackage{cite}
\RequirePackage{multirow}
\RequirePackage{url}
\RequirePackage{indentfirst}
\sloppy
\input cyracc.def
\newfont{\wncyr}{wncyr10}
\newcommand{\translit}[1]{\wncyr\cyracc #1}
%%=================================================================
\newif\if@existemail\@existemailfalse
\newif\if@existthanks\@existthanksfalse
\newif\if@existpacs\@existpacsfalse
\newif\if@existmsc\@existmscfalse
\newif\if@short\@shortfalse
%%=================================================================
\DeclareOption{short}{\@shorttrue}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\def\belowcaptionskip{1ex}
%%=================================================================
\def\No{\textnumero}
%\newcommand*\No{}
\def\num#1{\gdef\@num{#1}}
\def\@num{\ClassError{msmb}{No \noexpand\num given!}{}}
\def\volume#1{\gdef\@volume{#1}}
\def\@volume{\ClassError{msmb}{No \noexpand\volume given!}{}}
\def\@nums{\@num(\@volume)}
\def\shrtitle#1{\gdef\@shrtitle{#1}}
\def\@shrtitle{\ClassError{msmb}{No \noexpand\shrtitle given!}{}}
\def\shrauthor#1#2{\gdef\@shrauthor{#1}\gdef\@shrauthorheader{#2}}
\def\@shrauthor{\ClassError{msmb}{No \noexpand\shrauthor given!}{}}
\def\udc#1{\gdef\@udc{#1}}
\def\@udc{\ClassError{msmb}{No \noexpand\udc given!}{}}
\def\yearpub#1{\gdef\@yearpub{#1}}
\def\@yearpub{\ClassError{msmb}{No \noexpand\yearpub given!}{}}
%\def\email#1{\@existemailtrue \gdef\@email{#1}}
%\def\@email{\ClassWarningNoLine{msmb}{No \noexpand\email given}}
%\def\org#1{\gdef\@org{#1}}
%\def\@org{\ClassWarningNoLine{msmb}{No \noexpand\org given}}
\def\thanks#1{\@existthankstrue \gdef\@thanks{#1}}
\def\@thanks{}
\def\abstract#1{\gdef\@abstractRus{#1}}
\def\@abstractRus{\ClassError{msmb}{No \noexpand\aabstractRus given!}{}}
\def\keywords#1{\gdef\@keywords{#1}}
\def\@keywords{\ClassError{msmb}{No \noexpand\keywords given!}{}}

%%%%%%%%%%%%%%%%%%%%%%%%%%% ForEnglish %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\abstractEng#1{\gdef\@abstractEng{#1}}
\def\@abstractEng{\ClassError{msmb}{No \noexpand\abstractEng given!}{}}
\def\keywordsEng#1{\gdef\@keywordsEng{#1}}
\def\@keywordsEng{\ClassError{msmb}{No \noexpand\keywordsEng given!}{}}
%\def\orgEng#1{\gdef\@orgEng{#1}}
%\def\@orgEng{\ClassWarningNoLine{msmb}{No \noexpand\orgEng given}}
%\def\authorEng#1{\gdefEng{#1}}
\def\@authorEng{\ClassError{msmb}{No \noexpand\authorEng given!}{}}
\def\titleEng#1{\gdef\@titleEng{#1}}
\def\@titleEng{\ClassError{msmb}{No \noexpand\shrtitle given!}{}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\def\PACS#1{\@existpacstrue \gdef\@PACS{#1}}
%\def\@PACS{\ClassWarningNoLine{msmb}{No \noexpand\PACS given}}
%\def\MSC#1{\@existmsctrue \gdef\@MSC{#1}}
%\def\@MSC{\ClassWarningNoLine{msmb}{No \noexpand\MSC given}}
%%=================================================================
\def\filename{??}\def\setendpage{\label{\filename}}\def\theendpage{\pageref{\filename}}
%%=================================================================
\def\endarticle{\iflanguage{russian}{\selectlanguage{english}}{\selectlanguage{russian}}
\strut\par%
%\vfil
%\def\@PACS{}\@existpacsfalse%
%\def\@MSC{}\@existmscfalse
%\pagestyle{myheadings}\markboth{\relax}{\relax}
%\pagestyle{plain}
\addcontentsline{filepages}{\filename}{endpage} % \cyrch\cyrt\cyro\cyrb\cyrery \cyrz\cyrn\cyra\cyrt\cyrsftsn \cyrp\cyro\cyrs\cyrl\cyre\cyrd\cyrn\cyru\cyryu \cyrs\cyrt\cyrr\cyra\cyrn\cyri\cyrc\cyru, \cyrd\cyrl\cyrya \cyrf\cyro\cyrr\cyrm\cyri\cyrr\cyro\cyrv\cyra\cyrn\cyri\cyrya \cyro\cyrt\cyrd\cyre\cyrl\cyrsftsn\cyrn\cyrery\cyrh ps, pdf \cyrv\cyrn\cyre\cyrsh\cyrn\cyre\cyrishrt \cyrp\cyrr\cyro\cyrg\cyrr\cyra\cyrm\cyrm\cyro\cyrishrt
 %\vspace*{-10ex}%
 \begin{center}%
  \small{\textbf{\iflanguage{english}{\MakeUppercase{\@titleEng}}{\MakeUppercase{\@title}}}}\par%
%      \lineskip -2.5ex%
%      %\begin{tabular}[t]{c}%
      \parbox{150mm}{{
      \begin{center}
      	 \iflanguage{english}{{\footnotesize\@authorEng}}{{\footnotesize\@author}}
%		 \selectlanguage{english}\@authorEng
%		\par
%		 111  \selectlanguage{english} \@authorEng \par~ \par~ \par
%		 222  \selectlanguage{russian} \@author \selectlanguage{english}\par
       \end{center}}}
      %\end{tabular}
  \end{center}%
  \begin{quote}
     {\footnotesize\iflanguage{english}{\textbf{Abstract.} \@abstractEng}{\textbf{\CYRA\cyrn\cyrn\cyro\cyrt\cyra\cyrc\cyri\cyrya.} \@abstractRus}
      \par\iflanguage{english}{\textbf{Keywords:} \@keywordsEng.}{\textbf{\CYRK\cyrl\cyryu\cyrch\cyre\cyrv\cyrery\cyre ~\cyrs\cyrl\cyro\cyrv\cyra:} \@keywords.}}
   \end{quote}   
\setcounter{Maxaffil}{6}
\setcounter{authors}{0}
\setcounter{affil}{0}
\def\AB@authlist{}
\def\AB@affillist{}
\def\AB@authors{}
\def\AB@empty{}
\newaffiltrue
\renewcommand\AB@blk@and{\protect\Authfont\protect\AB@setsep}
\renewcommand\AB@pand{\protect\and \protect\Authfont \protect\AB@setsep}

\setcounter{MaxaffilEng}{6}
\setcounter{authorsEng}{0}
\setcounter{affilEng}{0}
\def\ABEng@authlist{}
\def\ABEng@affillist{}
\def\ABEng@authors{}
\def\ABEng@empty{}
\newaffilEngtrue
\renewcommand\ABEng@blk@and{\protect\AuthfontEng\protect\ABEng@setsep}
\renewcommand\ABEng@pand{\protect\and \protect\AuthfontEng \protect\ABEng@setsep}


%\newtoks\@temptokenaEng
%\newtoks\@temptokena
%\def\authorEng{}
%\def\@authorEng{}
%\def\author{}
%\def\@author{}
\setendpage
}
%%===================== Title Section ======================
%\if@titlepage
%  \renewcommand\maketitle{\begin{titlepage}%
%  \let\footnotesize\small
%  \let\footnoterule\relax
%  \null\vfil
%  \vskip 60\p@
%  \begin{center}%
%    {\LARGE \@title \par}%
%    \vskip 3em%
%    {\large
%     \lineskip .75em%
%      \begin{tabular}[t]{c}%
%        %\@author
%      \end{tabular}\par}%
%      \vskip 1.5em%
%    {\@date \par}%       % Set date in \large size.
%  \end{center}\par
%  \vfil\null 
%  \end{titlepage}%
%  \setcounter{footnote}{0}%
%}
%\else
\renewcommand\maketitle{\pagestyle{myheadings}\par
  \begingroup
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
    \long\def\@makefntext##1{\parindent 1em\noindent
            \hb@xt@1.8em{%
                \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
%    \if@twocolumn
%      \ifnum \col@number=\@ne
%        \@maketitle
%      \else
%        \twocolumn[\@maketitle]%
%      \fi
%    \else
%      \newpage \clearpage
%      \global\@topnum\z@   % Prevents figures from going at top of page.
%      \@maketitle
%    \fi
    \newpage %\clearpage
	\@maketitle
    \thispagestyle{empty}%
  \endgroup
  \setcounter{footnote}{0}%
}
%%=================== Main title macro ====================================
\def\@maketitle{%
\setcounter{figure}{0} \setcounter{table}{0}
 \setcounter{section}{0} \setcounter{equation}{0}
 \setcounter{Theorem}{0} \setcounter{Proposition}{0}
 \setcounter{Example}{0} \setcounter{Remark}{0}
 \setcounter{Definition}{0} \setcounter{Lemma}{0}
 \setcounter{Exercise}{0} 


 \typeout{-------------->  \filename}
\markboth{\iflanguage{russian}{\@shrauthorheader}{\@shrauthorheader}.\ \ \ \iflanguage{russian}{\@shrtitle}{\@shrtitle}}
{\iflanguage{russian}{\CYRM\cyra\cyrt\cyre\cyrm\cyra\cyrt\cyri\cyrch\cyre\cyrs\cyrk\cyri\cyre\  \cyrs\cyrt\cyrr\cyru\cyrk\cyrt\cyru\cyrr\cyrery\  \cyri\  \cyrm\cyro\cyrd\cyre\cyrl\cyri\cyrr\cyro\cyrv\cyra\cyrn\cyri\cyre.  \@yearpub.  \No\,\@nums}{Mathematical Structures and Modeling.  \@yearpub.  N.\,\@nums}}
\pagestyle{myheadings}%
%\markboth{{\@shrauthor}.\ \ \ {\@shrtitle}}
%{\CYRM\cyra\cyrt\cyre\cyrm\cyra\cyrt\cyri\cyrch\cyre\cyrs\cyrk\cyri\cyre \cyrs\cyrt\cyrr\cyru\cyrk\cyrt\cyru\cyrr\cyrery \cyri \cyrm\cyro\cyrd\cyre\cyrl\cyri\cyrr\cyro\cyrv\cyra\cyrn\cyri\cyre.  \@yearpub.  \No\,\@nums.}
\addcontentsline{toc}{cont}{\@shrauthor\iflanguage{russian}{.\ \textit{\@title}}{.\ \textit{\@titleEng}}}
% \addcontentsline{toc}{cont}{\@shortauthor.\ \textit{\@title}}
\addcontentsline{tocEng}{contEng}{\small\textbf{\@authorEng}.\ \@titleEng. \newline \textbf{Abstract}. \@abstractEng \newline {\textbf{Keywords:} \@keywordsEng.}} %<---------------!!!!!!!!!!!!!!!
\addcontentsline{tocRus}{contRus}{\small\textbf{\@author}.\ \@title. \newline \textbf{\CYRA\cyrn\cyrn\cyro\cyrt\cyra\cyrc\cyri\cyrya}. \@abstractRus \newline {\textbf{\CYRK\cyrl\cyryu\cyrch\cyre\cyrv\cyrery\cyre\ \cyrs\cyrl\cyro\cyrv\cyra:} \@keywords.}} %<---------------!!!!!!!!!!!!!!!
%{%
%\insert\footins{\strut%
%\ignorespaces\footnotesize%
%\parbox{140mm}{ \flushleft 
%{\foreignlanguage{english}{Copyright\ \copyright}\ \@yearpub}\ %
%                     \textbf{\iflanguage{russian}{\@author}{\@authorEng}}}\par \vspace*{1mm}
%\parbox[t]{13cm}{\iflanguage{russian}{\@org}{\@orgEng}}\par
%\if@existemail
%{E-mail:}\ \parbox[t]{13cm}{\foreignlanguage{english}{\texttt{\@email}}}%\par % <-- modified by Lavrov
%\fi
%%\if@existpacs
%%    {PACS:\ \@PACS ,}\ \ 
%%\fi
%%\if@existmsc
%%    {MSC:\ \@MSC}\par
%%\fi
%\if@existthanks
%    {\par \@thanks}
%\fi
%\strut
%}}%
{%
\null\vskip -20mm
\raggedleft\parbox{7cm}{\small%
\begin{center}% 
\iflanguage{russian}{\itshape \CYRM\cyra\cyrt\cyre\cyrm\cyra\cyrt\cyri\cyrch\cyre\cyrs\cyrk\cyri\cyre \\ %
\cyrs\cyrt\cyrr\cyru\cyrk\cyrt\cyru\cyrr\cyrery\ \cyri\  \cyrm\cyro\cyrd\cyre\cyrl\cyri\cyrr\cyro\cyrv\cyra\cyrn\cyri\cyre\\}{\itshape Mathematical \\ %
Structures and Modeling\\} %
\iflanguage{russian}{\@yearpub. \No\,\@nums. \CYRS. \thepage--\theendpage}{\@yearpub. N. \@nums. PP. \thepage--\theendpage} %%
\end{center}
\addcontentsline{filepages}{\filename}{startpage}
}}
\hfill{\raggedright\parbox{5cm}
{\small\begin{center} %\ \\ \ \\
\iflanguage{russian}{\CYRU\CYRD\CYRK}{UDC} \ \@udc %\\
%{PACS} \ \@PACS \\ 
%{MSC} \  \@MSC %\ \\  
\end{center}}}
\vskip -5mm
\null
\vskip 2em%
  \begin{center}%
  \large{\textbf{\iflanguage{russian}{\MakeUppercase{\@title}}{\MakeUppercase{\@titleEng}}}}\par%
    \vskip 0em%
    {\large
      \lineskip .5em%
      %\begin{tabular}[t]{c}%
      \parbox{150mm}{%
       {\begin{center}\large\textbf{\iflanguage{russian}{\@author}{\@authorEng}}\end{center}}
%      {\begin{center}\large\textbf{\selectlanguage{russian}\@author \}\end{center}}
      }
      %\end{tabular}
      \par}%
  \end{center}%
  \par 
  \begin{quote}
{\small
  \iflanguage{russian}{\textbf{\CYRA\cyrn\cyrn\cyro\cyrt\cyra\cyrc\cyri\cyrya.} \@abstractRus}{\textbf{Abstract.} \@abstractEng}
}
{
  \par \small \iflanguage{russian}{\textbf{\CYRK\cyrl\cyryu\cyrch\cyre\cyrv\cyrery\cyre\  \cyrs\cyrl\cyro\cyrv\cyra:} \@keywords.}{\textbf{Keywords:} \@keywordsEng.}
  % \if@existthanks {\par~\par \@thanks}
}
  \end{quote}   
%\fi%
}
%\fi%
%%=================================================================
%\def\@part[#1]#2{%
%    \ifnum \c@secnumdepth >\m@ne
%      \refstepcounter{part}%
%      \addcontentsline{toc}{part}{\thepart\hspace{1em}#1}%
%    \else
%      \addcontentsline{toc}{part}{#1}%
%    \fi
%    {\parindent \z@ \raggedright
%     \interlinepenalty \@M
%     \normalfont
%     \ifnum \c@secnumdepth >\m@ne
%        %\Large
%        \bfseries
%        \partname~\thepart
%       \par\nobreak
%     \fi
%     \huge \bfseries #2%
%     \markboth{}{}\par}%
%    \nobreak
%    \vskip 3ex
%    \@afterheading}
%\def\@spart#1{%
%    {\parindent \z@ \raggedright
%     \interlinepenalty \@M
%     \normalfont
%     \huge
%     \bfseries #1\par}%
%     \nobreak
%     \vskip 3ex
%     \@afterheading}
\renewcommand\section{\@startsection{section}{1}{\parindent}%
                                   {-3.25ex \@plus -1ex \@minus -.2ex}%
                                   {1.5ex \@plus.2ex}%
                                   {\normalfont\large\bfseries}}
\renewcommand\subsection{\@startsection{subsection}{2}{\parindent}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\parindent}%
                                     {-3.25ex\@plus -1ex \@minus -.2ex}%
                                     {1.5ex \@plus .2ex}%
                                     {\normalfont\normalsize\bfseries}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\parindent}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\normalfont\normalsize\bfseries}}
\renewcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\normalfont\normalsize\bfseries}}                                   
\renewcommand{\thesection}{\arabic{section}.}
\renewcommand{\thesubsection}{\thesection\arabic{subsection}.}
\renewcommand{\thesubsubsection}{\thesubsection\arabic{subsubsection}.}
\renewcommand{\theparagraph}{\thesubsubsection\arabic{paragraph}.}
\renewcommand{\thesubparagraph}{\theparagraph\arabic{subparagraph}.}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{\footnotesize#1. #2}%
  \ifdim \wd\@tempboxa >\hsize
    \footnotesize\centering#1. #2\par %
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

\setcounter{tocdepth}{0}
\renewcommand\tableofcontents{%
    {{\large\bfseries \begin{center}\MakeUppercase\contentsname\end{center}}
        \@mkboth{%
           \centering\MakeUppercase\contentsname}{\centering\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
    }
    
\gdef\tableofcontentsEng{%
    {{\large\bfseries \begin{center}\MakeUppercase{Abstracts}\end{center}}
        \@mkboth{%
           \centering\MakeUppercase{Abstracts}}{\centering\MakeUppercase{Abstracts}}}%
           \par 
    \@starttoc{tocEng}%
    }

\gdef\tableofcontentsRus{%
    {{\large\bfseries \begin{center}\MakeUppercase{\CYRA\cyrn\cyrn\cyro\cyrt\cyra\cyrc\cyri\cyri}\end{center}}
        \@mkboth{%
           \centering\MakeUppercase \CYRA\cyrn\cyrn\cyro\cyrt\cyra\cyrc\cyri\cyri}{\centering\MakeUppercase  \CYRA\cyrn\cyrn\cyro\cyrt\cyra\cyrc\cyri\cyri}}%
           \par  
    \@starttoc{tocRus}%
    }
    
%%========================================
\def\@item[#1]{%
  \if@noparitem
    \@donoparitem
  \else
    \if@inlabel
      \indent \par
    \fi
    \ifhmode
      \unskip\unskip \par
    \fi
    \if@newlist
      \if@nobreak
        \@nbitem
      \else
        \addpenalty\@beginparpenalty
        \addvspace\@topsep
        \addvspace{-\parskip}%
      \fi
    \else
      \addpenalty\@itempenalty
      \addvspace\itemsep
    \fi
    \global\@inlabeltrue
  \fi
  \everypar{%
    \@minipagefalse
    \global\@newlistfalse
    \if@inlabel
      \global\@inlabelfalse
      {\setbox\z@\lastbox
       \ifvoid\z@
         \kern-\itemindent
       \fi}%
      \box\@labels
      \penalty\z@
    \fi
    \if@nobreak
      \@nobreakfalse
      \clubpenalty \@M
    \else
      \clubpenalty \@clubpenalty
      \everypar{}%
    \fi}%
  \if@noitemarg
    \@noitemargfalse
    \if@nmbrlist
      \refstepcounter\@listctr
    \fi
  \fi
  \sbox\@tempboxa{\makelabel{#1}}%
  \global\setbox\@labels\hbox{%
    \unhbox\@labels
    \hskip \itemindent
    \hskip -\labelwidth
    \hskip -\labelsep
    \ifdim \wd\@tempboxa >\labelwidth
      \box\@tempboxa
    \else
      \hbox to\labelwidth {\unhbox\@tempboxa}%
    \fi
    \hskip \labelsep}%
  \ignorespaces}
%=================================================================
\newcounter{N_N}
\newenvironment{enumer}[1][.]
{\setcounter{N_N}{0}
\begin{list}{\arabic{N_N}#1}
{\usecounter{N_N}
 \itemsep 0ex
 \parsep 0.1ex
 \topsep 0ex
 \parskip 0ex}}
{\end{list}}

\newenvironment{itemz}
{\begin{list}{\textbullet}
{\itemsep 0ex
 \parsep 0ex
 \topsep 0ex
 \parskip 0ex}}
{\end{list}}

%%==================== Bibliography Macros
%\newdimen\bibindent
%\setlength\bibindent{1.5em}
\renewenvironment{thebibliography}[1]{%
{\centering
\begin{center}
\section*{\large\sc\iflanguage{russian}{\CYRL\cyri\cyrt\cyre\cyrr\cyra\cyrt\cyru\cyrr\cyra}{References}}
\end{center}
\@mkboth{\MakeUppercase{\iflanguage{russian}{\CYRL\cyri\cyrt\cyre\cyrr\cyra\cyrt\cyru\cyrr\cyra}{References}}}
{\MakeUppercase{\iflanguage{russian}{\CYRL\cyri\cyrt\cyre\cyrr\cyra\cyrt\cyru\cyrr\cyra}{References}}}}%
      \list{\small {\@arabic\c@enumiv.}}%
           {%
            \itemsep 0em
            \parsep 0.1em
            \parskip 0em
            \settowidth\labelwidth{{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \small \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m\par
}
%%==========================================================================
     {\def\@noitemerr
     {\ClassWarningNoLine{msmb}{Empty `thebibliography' environment}}%
       \normalsize
      \endlist}
\def\ps@myheadings{
\def\@oddhead%
{\raisebox{0pt}[\headheight][0pt]{\vbox{\hbox to\textwidth{\hfill{\sl\rightmark}\strut\hfill \rm\thepage}\hrule}}}
\def\@evenhead%
{\raisebox{0pt}[\headheight][0pt]{\vbox{\hbox to\textwidth{\rm \thepage\strut\hfill\sl\leftmark\hfill}\hrule}}}%
\def\sectionmark##1{}
\def\subsectionmark##1{}
     \let\@oddfoot\@empty
     \let\@evenfoot\@empty
    \let\sectionmark\@gobble
    \let\subsectionmark\@gobble
    }
%%=============================== Theorem Macros ======================
\theoremstyle{plain} %% This is the default
\newtheorem{Theorem}{\bfseries \iflanguage{russian}{\indent \CYRT\cyre\cyro\cyrr\cyre\cyrm\cyra}{\indent Theorem}}
\newtheorem{Axiom}{\bfseries \iflanguage{russian}{\indent \CYRA\cyrk\cyrs\cyri\cyro\cyrm\cyra}{\indent Axiom}}
\newtheorem{Proposition}{\bfseries \iflanguage{russian}{\indent \CYRP\cyrr\cyre\cyrd\cyrl\cyro\cyrzh\cyre\cyrn\cyri\cyre}{\indent Proposition}}
\newtheorem{Lemma}{\bfseries \iflanguage{russian}{\indent \CYRL\cyre\cyrm\cyrm\cyra}{\indent Lemma}}
\newtheorem{Corollary}{\bfseries \iflanguage{russian}{\indent \CYRS\cyrl\cyre\cyrd\cyrs\cyrt\cyrv\cyri\cyre}{\indent Corollary}}%[Theorem]
\theoremstyle{definition} %% For definitions and stuff
\newtheorem{Definition}{\bfseries \iflanguage{russian}{\indent \CYRO\cyrp\cyrr\cyre\cyrd\cyre\cyrl\cyre\cyrn\cyri\cyre}{\indent Definition}}
\newtheorem{Example}{\bfseries \iflanguage{russian}{\indent \CYRP\cyrr\cyri\cyrm\cyre\cyrr}{\indent Example}}
\newtheorem{Exercise}{\bfseries \iflanguage{russian}{\indent \CYRU\cyrp\cyrr\cyra\cyrzh\cyrn\cyre\cyrn\cyri\cyre}{\indent Exercise}}
%\theoremstyle{remark}
\newtheorem{Remark}{\bfseries \iflanguage{russian}{\indent \CYRZ\cyra\cyrm\cyre\cyrch\cyra\cyrn\cyri\cyre}{\indent Remark}}
\renewcommand\qedsymbol{$\blacksquare$}
%%%%%% Insert by Palesheva
\theoremstyle{plain}
\newenvironment{Proof}{\hspace*{\parindent}\begin{proof}[\normalfont\bfseries %%
\iflanguage{russian}{\hspace*{\parindent}\bf \CYRD\cyro\cyrk\cyra\cyrz\cyra\cyrt\cyre\cyrl\cyrsftsn\cyrs\cyrt\cyrv\cyro}{\bf Proof}]\normalfont}{\end{proof}}
%%%%%% 
%%=====================================================================

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                        CONTENTS  by Volper. Modified by Lavrov
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\l@cont}[2]{\setcounter{section}{1}
\thispagestyle{empty}\noindent \hbox to 9.0cm{%
\hspace*{0cm}\parbox[b]{8.2cm}{#1\dotfill}\dotfill #2}\vspace*{2.5mm}} % 

\newcommand{\l@sect}[2]{
   \vspace*{-6mm}
   \begin{center}\hspace*{0cm} {\bf #1} \end{center}
}

\renewcommand{\tableofcontents}{
  \hbox to 9.0cm{
   \centering~\Huge{\CYRS\CYRO\CYRD\CYRE\CYRR\CYRZH\CYRA\CYRN\CYRI\CYRE} 
  }
  \vspace*{0.5cm}
  \@starttoc{toc}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         CONTENTS by LAVROV
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\l@contEng}[2]{\setcounter{section}{1}
%\noindent \hbox to\textwidth{%
%\hspace*{0cm}\parbox[b]{15cm}{#1}}

\noindent #1 \vspace*{2.5mm}} % \cyrr\cyra\cyrs\cyrs\cyrt\cyro\cyrya\cyrn\cyri\cyre \cyrm\cyre\cyrzh\cyrd\cyru \cyra\cyrv\cyrt\cyro\cyrr\cyra\cyrm\cyri \cyrs\cyrt\cyra\cyrt\cyre\cyrishrt

\newcommand{\l@sectEng}[2]{
    %\vspace*{0.1cm}
%\begin{center}\hspace*{6cm} {\bf #1} \end{center}
    %\vspace*{0.1cm}
    %\nopagebreak
    %\noindent
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                         CONTENTS by LAVROV
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\l@contRus}[2]{\setcounter{section}{1}
%\noindent \hbox to\textwidth{%
%\hspace*{0cm}\parbox[b]{15cm}{#1}
%} 

\noindent #1 \vspace*{2.5mm}} % \cyrr\cyra\cyrs\cyrs\cyrt\cyro\cyrya\cyrn\cyri\cyre \cyrm\cyre\cyrzh\cyrd\cyru \cyra\cyrv\cyrt\cyro\cyrr\cyra\cyrm\cyri \cyrs\cyrt\cyra\cyrt\cyre\cyrishrt

\newcommand{\l@sectRus}[2]{
    %\vspace*{0.1cm}
\begin{center}\hspace*{6cm} {\bf #1} \end{center}
    %\vspace*{0.1cm}
    %\nopagebreak
    %\noindent
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%              Основан на authblk          
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%\makeatletter
\newcommand\Authfont{\normalfont}
\newcommand\Affilfont{\normalfont}
\newcommand\Authsep{, }
\newcommand\Authands{, and }
\newcommand\Authand{ and }
\newlength{\affilsep}\setlength{\affilsep}{1em}
\newlength{\@affilsep}
\newcounter{Maxaffil}
\setcounter{Maxaffil}{6}
\newcounter{authors}
\newcounter{affil}
\newif\ifnewaffil \newaffiltrue
\newcommand\AB@authnote[1]{\textsuperscript{\normalfont#1}}
\newcommand\AB@affilnote[1]{\textsuperscript{\normalfont#1}}
\providecommand\textsuperscript[1]{$^{#1}$}
\newcommand\AB@blk@and{\protect\Authfont\protect\AB@setsep}
\newcommand\AB@pand{\protect\and \protect\Authfont \protect\AB@setsep}
\@namedef{@sep1}{}
\@namedef{@sep2}{\Authand}
\newcommand\AB@affilsep{\protect\Affilfont}
\newcommand\AB@affilsepx{\protect\par\protect\Affilfont}
\newcommand\AB@setsep{\setlength{\@affilsep}{\affilsep}}
\newcommand\AB@resetsep{\setlength{\@affilsep}{\z@}}
\newcommand\AB@authlist{}
\newcommand\AB@affillist{}
\newcommand\AB@authors{}
\newcommand\AB@empty{}
\xdef\AB@author{\noexpand\AB@blk@and\@author}
\renewcommand\author[4][]%
      {\ifnewaffil\addtocounter{affil}{1}%
       \edef\AB@thenote{\arabic{affil}}\fi
      \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
        \setcounter{Maxaffil}{0}\fi
      \ifnum\value{authors}>1\relax
      \@namedef{@sep\number\c@authors}{\Authsep}\fi
      \addtocounter{authors}{1}%
      \begingroup
          \let\protect\@unexpandable@protect 
          \let\and\AB@pand
          \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
         \@temptokena=\expandafter{\AB@authors}%
         {\def\\{\protect\\[\@affilsep]\protect\Affilfont
              \protect\AB@resetsep}%
              \xdef\AB@author{\AB@blk@and{\bf#2} \par\vspace*{-1pt} #3, e-mail:~#4}%
       \ifnewaffil\gdef\AB@las{}\gdef\AB@lasx{\protect\Authand}\gdef\AB@as{}%
           \xdef\AB@authors{\the\@temptokena\AB@blk@and}%
       \else
          \xdef\AB@authors{\the\@temptokena\AB@as\AB@au@str}%
          \global\let\AB@las\AB@lasx\gdef\AB@lasx{\protect\Authands}%
          \gdef\AB@as{\Authsep}%
       \fi
       \gdef\AB@au@str{{\bf#2} \par\vspace*{-1pt} #3, e-mail:~#4}}
         \@temptokena=\expandafter{\AB@authlist}%
         \let\\=\authorcr
         \xdef\AB@authlist{\the\@temptokena
           \protect\@nameuse{@sep\number\c@authors}%
           \protect\Authfont{\bf#2}\AB@authnote{\AB@note} \par\vspace*{-1pt} #3, e-mail:~#4}%
      \endgroup
      \ifnum\value{authors}>2\relax
      \@namedef{@sep\number\c@authors}{\Authands}\fi
      \newaffilfalse
}
\newcommand\authorcr{\protect\\ \protect\Authfont \protect\AB@setsep}%
\newcommand\affil[2][]%
   {\newaffiltrue\let\AB@blk@and\AB@pand
      \if\relax#1\relax\def\AB@note{\AB@thenote}\else\def\AB@note{#1}%
        \setcounter{Maxaffil}{0}\fi
      \begingroup
        \let\protect\@unexpandable@protect
        \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
        \@temptokena=\expandafter{\AB@authors}%
        {\def\\{\protect\\\protect\Affilfont}\xdef\AB@temp{#2}}%
         \xdef\AB@authors{\the\@temptokena\AB@las\AB@au@str
         \protect\\[\affilsep]\protect\Affilfont\AB@temp}%
         \gdef\AB@las{}\gdef\AB@au@str{}%
        {\def\\{, \ignorespaces}\xdef\AB@temp{#2}}%
        \@temptokena=\expandafter{\AB@affillist}%
        \xdef\AB@affillist{\the\@temptokena \AB@affilsep
          \AB@affilnote{\AB@note}\protect\Affilfont\AB@temp}%
      \endgroup
       \let\AB@affilsep\AB@affilsepx
}
\renewcommand\@author{\ifx\AB@affillist\AB@empty\AB@author\else
      \ifnum\value{affil}>\value{Maxaffil}%\def\rlap##1{##1}%
    \AB@authlist\\[\affilsep]\protect\AB@affillist
    \else  \AB@authors\fi\fi}
%\let\AB@maketitle=\maketitle


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% English %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newtoks\@temptokenaEng
\def\authorEng{}
\def\@authorEng{}
\newcommand\AuthfontEng{\normalfont}
\newcommand\AffilfontEng{\normalfont}
\newcommand\AuthsepEng{, }
\newcommand\AuthandsEng{, and }
\newcommand\AuthandEng{ and }
\newlength{\affilsepEng}\setlength{\affilsepEng}{1em}
\newlength{\@affilsepEng}
\newcounter{MaxaffilEng}
\setcounter{MaxaffilEng}{6}
\newcounter{authorsEng}
\newcounter{affilEng}
\newif\ifnewaffilEng \newaffilEngtrue
\newcommand\ABEng@authnote[1]{\textsuperscript{\normalfont#1}}
\newcommand\ABEng@affilnote[1]{\textsuperscript{\normalfont#1}}
%\providecommand\textsuperscript[1]{$^{#1}$}
\newcommand\ABEng@blk@and{\protect\AuthfontEng\protect\ABEng@setsep}
\newcommand\ABEng@pand{\protect\and \protect\AuthfontEng \protect\ABEng@setsep}
\@namedef{@sepEng1}{}
\@namedef{@sepEng2}{\AuthandEng}
\newcommand\ABEng@affilsep{\protect\AffilfontEng}
\newcommand\ABEng@affilsepx{\protect\par\protect\AffilfontEng}
\newcommand\ABEng@setsep{\setlength{\@affilsepEng}{\affilsepEng}}
\newcommand\ABEng@resetsep{\setlength{\@affilsepEng}{\z@}}
\newcommand\ABEng@authlist{}
\newcommand\ABEng@affillist{}
\newcommand\ABEng@authors{}
\newcommand\ABEng@empty{}
\xdef\ABEng@author{\noexpand\ABEng@blk@and\@authorEng}
\renewcommand\authorEng[4][]%
      {\ifnewaffilEng\addtocounter{affilEng}{1}%
       \edef\ABEng@thenote{\arabic{affilEng}}\fi
      \if\relax#1\relax\def\ABEng@note{\ABEng@thenote}\else\def\ABEng@note{#1}%
        \setcounter{MaxaffilEng}{0}\fi
      \ifnum\value{authorsEng}>1\relax
      \@namedef{@sepEng\number\c@authorsEng}{\AuthsepEng}\fi
      \addtocounter{authorsEng}{1}%
      \begingroup
          \let\protect\@unexpandable@protect 
          \let\and\ABEng@pand
          \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
         \@temptokenaEng=\expandafter{\ABEng@authors}%
         {\def\\{\protect\\[\@affilsepEng]\protect\AffilfontEng
              \protect\ABEng@resetsep}%
              \xdef\ABEng@author{\ABEng@blk@and{\bf#2} \par\vspace*{-1pt} #3, e-mail:~#4}%
       \ifnewaffilEng\gdef\ABEng@las{}\gdef\ABEng@lasx{\protect\AuthandEng}\gdef\ABEng@as{}%
           \xdef\ABEng@authors{\the\@temptokenaEng\ABEng@blk@and}%
       \else
          \xdef\ABEng@authors{\the\@temptokenaEng\ABEng@as\ABEng@au@str}%
          \global\let\ABEng@las\ABEng@lasx\gdef\ABEng@lasx{\protect\AuthandsEng}%
          \gdef\ABEng@as{\AuthsepEng}%
       \fi
       \gdef\ABEng@au@str{{\bf#2} \par\vspace*{-1pt}  #3, e-mail:~#4}}
         \@temptokenaEng=\expandafter{\ABEng@authlist}%
         \let\\=\authorcrEng
         \xdef\ABEng@authlist{\the\@temptokenaEng
           \protect\@nameuse{@sepEng\number\c@authorsEng}%
           \protect\AuthfontEng{\bf#2}\ABEng@authnote{\ABEng@note} \par\vspace*{-1pt} #3, e-mail:~#4}%
      \endgroup
      \ifnum\value{authorsEng}>2\relax
      \@namedef{@sepEng\number\c@authorsEng}{\AuthandsEng}\fi
      \newaffilEngfalse
}
\newcommand\authorcrEng{\protect\\ \protect\AuthfontEng \protect\ABEng@setsep}%
\newcommand\affilEng[2][]%
   {\newaffilEngtrue\let\ABEng@blk@and\ABEng@pand
      \if\relax#1\relax\def\ABEng@note{\ABEng@thenote}\else\def\ABEng@note{#1}%
        \setcounter{MaxaffilEng}{0}\fi
      \begingroup
        \let\protect\@unexpandable@protect
        \def\thanks{\protect\thanks}\def\footnote{\protect\footnote}%
        \@temptokenaEng=\expandafter{\ABEng@authors}%
        {\def\\{\protect\\\protect\AffilfontEng}\xdef\ABEng@temp{#2}}%
         \xdef\ABEng@authors{\the\@temptokenaEng\ABEng@las\ABEng@au@str
         \protect\\[\affilsepEng]\protect\AffilfontEng\ABEng@temp}%
         \gdef\ABEng@las{}\gdef\ABEng@au@str{}%
        {\def\\{, \ignorespaces}\xdef\ABEng@temp{#2}}%
        \@temptokenaEng=\expandafter{\ABEng@affillist}%
        \xdef\ABEng@affillist{\the\@temptokenaEng \ABEng@affilsep
          \ABEng@affilnote{\ABEng@note}\protect\AffilfontEng\ABEng@temp}%
      \endgroup
       \let\ABEng@affilsep\ABEng@affilsepx
}
\renewcommand\@authorEng{\ifx\ABEng@affillist\ABEng@empty\ABEng@author\else
      \ifnum\value{affilEng}>\value{MaxaffilEng}%\def\rlap##1{##1}%
    \ABEng@authlist\\[\affilsepEng]\protect\ABEng@affillist
    \else  \ABEng@authors\fi\fi}
%\let\ABEng@maketitle=\maketitle


% \CYRP\cyre\cyrr\cyre\cyru\cyrs\cyrt\cyra\cyrn\cyro\cyrv\cyrk\cyra
\renewcommand\Authsep{ \par}
\renewcommand\Authand{ \par}
\renewcommand\Authands{ \par}
\renewcommand\Authfont{\rm\small}
\renewcommand\Affilfont{\small}

\renewcommand\AuthsepEng{ \par}
\renewcommand\AuthandEng{ \par}
\renewcommand\AuthandsEng{ \par}
\renewcommand\AuthfontEng{\rm\small}
\renewcommand\AffilfontEng{\small}


\endinput

%%
%% End of file `msmb.cls'.
%%
