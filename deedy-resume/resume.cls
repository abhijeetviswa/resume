% Intro Options
\ProvidesClass{resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage{hyperref}
\usepackage[inline]{enumitem}
\usepackage{ragged2e}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{2b2b2b}
\definecolor{headings}{HTML}{6A6A6A}
\definecolor{subheadings}{HTML}{333333}

% Set lengths
\setlength{\parindent}{0pt}

% Set main fonts
\usepackage{fontspec}
% FIXME: This will break when texlive version changes. Find a better way.
\defaultfontfeatures{Path = /usr/local/texlive/2022/texmf-dist/fonts/opentype/public/fontawesome/}
\usepackage{fontawesome}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}

% Define Rupee symbol
\newcommand{\rupee}{
\fontspec{DejaVuSans-ExtraLight.ttf}\symbol{"20B9}\normalfont}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/raleway/]{Raleway-ExtraLight}\fontsize{8pt}{10pt}\selectfont
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\centering{
\color{primary}
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont #1
\fontspec[Path = fonts/raleway/]{Raleway-Regular}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0.4pt}}
\vspace{0pt}
}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{3pt}
\titlespacing{\subsection}{0pt}{0pt}{3pt}
\newcommand{\primarysectionsep}{\vspace{15pt}}
\newcommand{\secondarysectionsep}{\vspace{12pt}}
\newcommand{\subsectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/, Extension = .ttf]{Lato-Lig}\fontsize{16pt}{24pt}\selectfont\raggedright\uppercase}{}{0em}{}{\vspace{\topsep}}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path=fonts/lato/, Extension = .ttf]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\raggedright\uppercase}{}{0em}{\vspace{.05cm}}

\newcommand{\runsubsection}[1]{
\color{subheadings}\raggedright\fontspec[Path=fonts/lato/, Extension = .ttf]{Lato-Bol}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\justify
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}}

% Label command
\newcommand{\itemlabel}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{11pt}\selectfont {#1\\} \normalfont}

% A block of text
\newcommand{\justifiedtextblock}[1]{\justify{#1}\raggedright}

