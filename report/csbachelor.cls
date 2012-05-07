%%
%% This is file `csbachelor.cls',
%%
%%
%% This file may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.2 of this license
%% or (at your option) any later version.  The latest version of this
%% license is in:
%%
%%    http://www.latex-project.org/lppl.txt
%%
%% and version 1.2 or later is part of all distributions of LaTeX version
%% 1999/12/01 or later.
%%
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{csbachelor}
    [2008/10/24 v0.1 ZJU Dissertation Class]

\DeclareOption{year}{\def\zjubibstyle{A}}
\DeclareOption{numberorder}{\def\zjubibstyle{N}}

\newif\ifzju@side\zju@sidetrue
\DeclareOption{twoside}{\zju@sidetrue}
\DeclareOption{oneside}{\zju@sidefalse}

\ExecuteOptions{twoside,oneside}
\ProcessOptions\relax
\ifzju@side
   \LoadClass[a4paper,12pt,twoside,titlepage,openany]{book}
   \def\zjuside{T}
\else
   \LoadClass[a4paper,12pt,oneside,titlepage]{book}
   \def\zjuside{O}
\fi

\RequirePackage[top=3.8cm,bottom=3.8cm,left=3.2cm,right=3.2cm,bindingoffset=0.5cm]{geometry}

\RequirePackage{ifthen}
\RequirePackage{calc}

\RequirePackage[tbtags]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{amsthm}

\RequirePackage{fontspec}
\RequirePackage{xunicode}
\RequirePackage{xltxtra}

\RequirePackage[normalem]{ulem}

\XeTeXlinebreaklocale "zh"
\XeTeXlinebreakskip = 0pt plus 1pt
\setmainfont{Times New Roman}
\setsansfont{Arial}
\setmonofont{Courier New}

\RequirePackage[slantfont,boldfont]{xeCJK}
\setCJKmainfont{SimSun}
\setCJKsansfont{SimHei}
\setCJKmonofont{SimSun}
\punctstyle{kaiming}


\RequirePackage{fancyhdr}
\RequirePackage{nomencl}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{url}
\urlstyle{tt}


\RequirePackage{lscape}
\RequirePackage{graphicx}

\RequirePackage{longtable}
\RequirePackage{booktabs}
\RequirePackage{caption}
\DeclareCaptionLabelSeparator{zju}{\hspace{1em}} %定义图表编号与标题间的间隔距离
\RequirePackage{multirow}
\RequirePackage{dcolumn}
\RequirePackage{colortbl}
\RequirePackage{threeparttable}
\RequirePackage{array}
\setlength{\headsep}{0.8cm}
\setlength{\footskip}{1.12cm}
\raggedbottom

\frenchspacing
\widowpenalty=10000
\setlength{\parskip}{0pt}

\setlength{\parindent}{2.5em}

\renewcommand\thesection{\arabic{section}~}
\RequirePackage{setspace}
\doublespacing
\renewcommand{\arraystretch}{0.7}
\DeclareRobustCommand{\chuhao}{\fontsize{42pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaochu}{\fontsize{36pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\yihao}{\fontsize{26pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoyi}{\fontsize{24pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\erhao}{\fontsize{22pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoer}{\fontsize{18pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sanhao}{\fontsize{16pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosan}{\fontsize{15pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\sihao}{\fontsize{14pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaosi}{\fontsize{12pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\wuhao}{\fontsize{10.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaowu}{\fontsize{9pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\liuhao}{\fontsize{7.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\xiaoliu}{\fontsize{6.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\qihao}{\fontsize{5.5pt}{\baselineskip}\selectfont}
\DeclareRobustCommand{\bahao}{\fontsize{5pt}{\baselineskip}\selectfont}

\DeclareRobustCommand{\chapterfont}{\fontsize{16pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\sectionfont}{\fontsize{14pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\subsectionfont}{\fontsize{13pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\subsubsectionfont}{\fontsize{12pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\figurefont}{\fontsize{10.5pt}{0.6\baselineskip}\selectfont}
\DeclareRobustCommand{\formfont}{\fontsize{10.5pt}{0.6\baselineskip}\selectfont}

\setCJKfamilyfont{FangSong}{FangSong}
\setCJKfamilyfont{HeiTi}{SimHei}
\setCJKfamilyfont{KaiShu}{AR PL KaitiM GB}
\setCJKfamilyfont{}{LiSu}
\setCJKfamilyfont{SongTi}{SimSun}
\setCJKfamilyfont{STFangsong}{STFangsong}
\setCJKfamilyfont{STXingkai}{STXingkai}
\DeclareRobustCommand{\fangsong}{\CJKfamily{FangSong}}
\DeclareRobustCommand{\stfangsong}{\CJKfamily{STFangsong}}
\DeclareRobustCommand{\stxingkai}{\CJKfamily{STXingkai}}
\DeclareRobustCommand{\heiti}{\CJKfamily{HeiTi}}
\DeclareRobustCommand{\kaiti}{\CJKfamily{KaiShu}}
\DeclareRobustCommand{\lishu}{\CJKfamily{LiShu}}
\DeclareRobustCommand{\songti}{\CJKfamily{SongTi}}
\setcounter{secnumdepth}{4}


\titleformat{\chapter}[block]%正文中字体
{\chapterfont\heiti\filcenter}{}{0em}{}{}
\titlespacing{\chapter}%
  {0pt}{24pt}{18pt}
\titlecontents{chapter}[0pt]{\fontsize{14pt}{0pt}\selectfont\vspace{6pt}}%	目录中字体
{}{}{\titlerule*[10pt]{.}\contentspage}

\titleformat{\section}[hang]%
  {\sectionfont\heiti}{\thesection}{1em}{}{}
\titlespacing{\section}%
  {0pt}{24pt}{6pt}
\titlecontents{section}[1em]{\fontsize{12pt}{0pt}\selectfont\vspace{6pt}}%
{\hspace{1em}\thecontentslabel\hspace{1em}}{}{\titlerule*[7pt]{.}\contentspage}

\titleformat{\subsection}[hang]%
  {\subsectionfont\heiti}{\thesubsection}{1em}{}{}
\titlespacing{\subsection}%
  {0pt}{12pt}{6pt}
\titlecontents{subsection}[1.5em]{\fontsize{10.5pt}{0pt}\selectfont\vspace{6pt}}%
{\hspace{2em}\thecontentslabel\hspace{1em}}{}{\titlerule*[5pt]{.}\contentspage}

\titleformat{\subsubsection}[hang]%
  {\subsubsectionfont}{\thesubsubsection}{1em}{}{}
\titlespacing{\subsubsection}%
  {0pt}{12pt}{6pt}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}

\RequirePackage{enumitem}%修改list行距
\setenumerate[1]{leftmargin=42pt,itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{leftmargin=40pt,itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setdescription{leftmargin=40pt,itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}

\setlength{\headheight}{15pt} %% 设置页眉高度

\renewcommand{\contentsname}{\centerline{目\quad 录}}
\renewcommand{\listfigurename}{\centerline{图~目~录}}
\renewcommand{\listtablename}{\centerline{表~目~录}}
\setcounter{tocdepth}{2}  % 设置目录的深度到 subsection
\renewcommand{\bibname}{参~考~文~献}
\renewcommand{\nomname}{\centerline{术~语~表}}
\renewcommand{\nomlabelwidth}{25mm}
\renewcommand{\nompreamble}{\vspace{1em}}
\makenomenclature

\newcommand{\newcaption}[1] {\caption{\figurefont #1}} %10.5pt的caption
\renewcommand{\figurename}{\figurefont 图} % 插图题头
\renewcommand{\tablename}{\formfont 表} % 插表题头
\newcommand{\figurecaption}{% 图片用caption
  \setlength{\abovecaptionskip}{6pt}%
  \setlength{\belowcaptionskip}{12pt}%
  \newcaption}
\newcommand{\formcaption}{% 表格用caption
  \setlength{\abovecaptionskip}{6pt}%
  \setlength{\belowcaptionskip}{6pt}%
  \newcaption}
\setlength{\belowcaptionskip}{2mm}
\renewcommand{\footnotesize}{\xiaowu}
\newtheoremstyle{zjutheorem}
   {9pt}{9pt}{\ttfamily}{0pt}{\lishu}{：}{0pt}{}
\theoremstyle{zjutheorem}
\newtheorem{zjuhypothsis}{假设~}[chapter]
\newtheorem{zjudefine}{定义~}[chapter]
\newtheorem{zjutheorem}{定理~}[chapter]
\newtheorem{zjuproposition}{命题~}[chapter]
\captionsetup{font=singlespacing, labelsep=zju}
\newenvironment{zjuproof}{\begin{proof}[\textnormal{\lishu 证明~}]}{\end{proof}}
\newcolumntype{.}{D{.}{.}{2.4}}
\AtBeginDocument{%
   \makeatletter
   \input{csbachelor.cfg}
   \makeatother}
\endinput
%%
%% End of file `csbachelor.cls'.
