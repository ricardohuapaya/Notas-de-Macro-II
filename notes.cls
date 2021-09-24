\ProvidesClass{notes}[2019/05/26 My custom notes]
\LoadClass[12pt, a4paper]{report}

\usepackage[left=0.5in,top=0.5in,right=0.5in,bottom=0.5in]{geometry}
\usepackage[utf8x]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{amssymb}
\usepackage{enumerate}
\usepackage{amsfonts}
\usepackage{amsmath}
\usepackage{amsthm}
\usepackage{latexsym}
\usepackage{epsfig}
\usepackage{bm}
\usepackage{xspace}
\usepackage{csquotes}
\usepackage{times}
\usepackage[utf8x]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{listings}
\usepackage{color}
\usepackage{caption}
\usepackage{titlesec}
\usepackage{hyperref}
\usepackage{tocloft}
\usepackage{istgame}
\usepackage{multirow}

\setlength{\parindent}{0em}
\setlength{\parskip}{2ex}
\setcounter{secnumdepth}{2}
\setcounter{tocdepth}{2}

\newcommand{\listequationsname}{Índice de ecuaciones}
\newlistof{myequations}{equ}{\listequationsname}
\newcommand{\myequations}[1]{%
\addcontentsline{equ}{myequations}{\protect\numberline{\theequation}#1}\par}
\setlength{\cftmyequationsnumwidth}{2.5em}

\newcommand{\mainsection}[3]{
    \noindent
    \begin{center}
      \framebox{
        \vbox{
          \advance\textwidth by -0.22in
          \hbox to \textwidth {{\Large \hfill Clase #1: {#2} \hfill}}
          \vspace{2mm}
          \hbox to \textwidth {\hfill Fecha: #3 \hfill}
          \vspace{2mm}
          \hbox to \textwidth {{\it Profesora: Alberto Vindas \hfill Por: Ricardo Hupaya}}
          }
        }
    \end{center}
    \vspace*{4mm}
    \addtocounter{chapter}{1}
    \setcounter{section}{0}
    \setcounter{subsection}{0}
    \setcounter{subsubsection}{0}
    \setcounter{figure}{0}
    \setcounter{equation}{0}
    \addcontentsline{toc}{chapter}{\protect\numberline{\thechapter}#2}
    \addcontentsline{lof}{chapter}{\protect\numberline{\thechapter}#2}
    \addcontentsline{equ}{chapter}{\protect\numberline{\thechapter}#2}
}

\newcommand{\putfigure}[6]{
    \begin{minipage}{#1\textwidth}
    \centering
        \includegraphics[width=#2\textwidth,height=#3\textheight]{#4}
        \captionof{figure}{#5}
        \label{#6}
    \end{minipage}
}

\titleformat{\chapter}
  {\normalfont\LARGE\bfseries}{}
  {0em}{}

\titleformat{\section}
  {\normalfont\Large}{\thesection. \ }
  {0em}{}
  
\titleformat{\subsection}
  {\normalfont\large}{\thesubsection. \ }
  {0em}{}

\titleformat{\subsubsection}
  {\normalfont\normalsize}{\thesubsubsection. \ }
  {0em}{}

\definecolor{codegreen}{rgb}{0.3,0.6,0.4}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.92}
 
\lstdefinestyle{mystyle}{
    backgroundcolor=\color{backcolour},   
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\footnotesize,
    breakatwhitespace=false,         
    breaklines=true,                 
    captionpos=b,                    
    keepspaces=true,                 
    numbers=left,                    
    numbersep=5pt,                  
    showspaces=false,                
    showstringspaces=false,
    showtabs=false,                  
    tabsize=2
}

%%
%% Julia definition (c) 2014 Jubobs
%%
\lstdefinelanguage{Julia}%
  {morekeywords={abstract,break,case,catch,const,continue,do,else,elseif,%
      end,export,false,for,function,immutable,import,importall,if,in,%
      macro,module,otherwise,quote,return,switch,true,try,type,typealias,%
      using,while},%
   sensitive=true,%
   alsoother={$},%
   morecomment=[l]\#,%
   morecomment=[n]{\#=}{=\#},%
   morestring=[s]{"}{"},%
   morestring=[m]{'}{'},%
}[keywords,comments,strings]%

\lstset{%
    language         = Julia,
    basicstyle       = \ttfamily,
    keywordstyle     = \bfseries\color{blue},
    stringstyle      = \color{magenta},
    commentstyle     = \color{ForestGreen},
    showstringspaces = false,
}

\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{claim}[theorem]{Claim}
\newtheorem{proposition}[theorem]{Posición}
\newtheorem{corollary}[theorem]{Corolario}
\newtheorem{fact}[theorem]{Hecho}
\newtheorem{notation}[theorem]{Notación}
\newtheorem{observation}[theorem]{Observation}
\newtheorem{conjecture}[theorem]{Conjetura}


\theoremstyle{definition}
\newtheorem{definition}[theorem]{Definición}
\newtheorem{example}[theorem]{Ejemplo}
\newtheorem{exercise}[theorem]{Ejercicio}


\theoremstyle{remark}
\newtheorem{remark}[theorem]{Comentario}
\theoremstyle{plain}
\newcommand{\ignore}[1]{}

% \renewcommand{\Pr}{{\bf Pr}}
% \newcommand{\Prx}{\mathop{\bf Pr\/}}
% \newcommand{\E}{{\bf E}}
% \newcommand{\Ex}{\mathop{\bf E\/}}
% \newcommand{\Var}{{\bf Var}}
% \newcommand{\Varx}{\mathop{\bf Var\/}}
% \newcommand{\Cov}{{\bf Cov}}
% \newcommand{\Covx}{\mathop{\bf Cov\/}}

% shortcuts for symbol names that are too long to type
\newcommand{\eps}{\epsilon}
\newcommand{\lam}{\lambda}
\renewcommand{\l}{\ell}
\newcommand{\la}{\langle}
\newcommand{\ra}{\rangle}
\newcommand{\wh}{\widehat}
\newcommand{\wt}{\widetilde}


\newcommand{\R}{\mathbb R}
\newcommand{\N}{\mathbb N}
\newcommand{\Z}{\mathbb Z}
\newcommand{\F}{\mathbb F}
\newcommand{\Q}{\mathbb Q}
\newcommand{\C}{\mathbb C}

% % operators that should be typeset in Roman font
% \newcommand{\poly}{\mathrm{poly}}
% \newcommand{\polylog}{\mathrm{polylog}}
% \newcommand{\sgn}{\mathrm{sgn}}
% \newcommand{\avg}{\mathop{\mathrm{avg}}}
% \newcommand{\val}{{\mathrm{val}}}

% % complexity classes
% \renewcommand{\P}{\mathrm{P}}
% \newcommand{\NP}{\mathrm{NP}}
% \newcommand{\BPP}{\mathrm{BPP}}
% \newcommand{\DTIME}{\mathrm{DTIME}}
% \newcommand{\ZPTIME}{\mathrm{ZPTIME}}
% \newcommand{\BPTIME}{\mathrm{BPTIME}}
% \newcommand{\NTIME}{\mathrm{NTIME}}

% values associated to optimization algorithm instances
\newcommand{\Opt}{{\mathsf{Opt}}}
\newcommand{\Alg}{{\mathsf{Alg}}}
\newcommand{\Lp}{{\mathsf{Lp}}}
\newcommand{\Sdp}{{\mathsf{Sdp}}}
\newcommand{\Exp}{{\mathsf{Exp}}}

% if you think the sum and product signs are too big in your math mode; x convention
% as in the probability operators
\newcommand{\littlesum}{{\textstyle \sum}}
\newcommand{\littlesumx}{\mathop{{\textstyle \sum}}}
\newcommand{\littleprod}{{\textstyle \prod}}
\newcommand{\littleprodx}{\mathop{{\textstyle \prod}}}

% horizontal line across the page
\newcommand{\horz}{
\vspace{-.4in}
\begin{center}
\begin{tabular}{p{\textwidth}}\\
\hline
\end{tabular}
\end{center}
}

% calligraphic letters
\newcommand{\calA}{{\cal A}}
\newcommand{\calB}{{\cal B}}
\newcommand{\calC}{{\cal C}}
\newcommand{\calD}{{\cal D}}
\newcommand{\calE}{{\cal E}}
\newcommand{\calF}{{\cal F}}
\newcommand{\calG}{{\cal G}}
\newcommand{\calH}{{\cal H}}
\newcommand{\calI}{{\cal I}}
\newcommand{\calJ}{{\cal J}}
\newcommand{\calK}{{\cal K}}
\newcommand{\calL}{{\cal L}}
\newcommand{\calM}{{\cal M}}
\newcommand{\calN}{{\cal N}}
\newcommand{\calO}{{\cal O}}
\newcommand{\calP}{{\cal P}}
\newcommand{\calQ}{{\cal Q}}
\newcommand{\calR}{{\cal R}}
\newcommand{\calS}{{\cal S}}
\newcommand{\calT}{{\cal T}}
\newcommand{\calU}{{\cal U}}
\newcommand{\calV}{{\cal V}}
\newcommand{\calW}{{\cal W}}
\newcommand{\calX}{{\cal X}}
\newcommand{\calY}{{\cal Y}}
\newcommand{\calZ}{{\cal Z}}

% bold letters (useful for random variables)
\renewcommand{\a}{{\boldsymbol a}}
\renewcommand{\b}{{\boldsymbol b}}
\renewcommand{\c}{{\boldsymbol c}}
\renewcommand{\d}{{\boldsymbol d}}
\newcommand{\e}{{\boldsymbol e}}
\newcommand{\f}{{\boldsymbol f}}
\newcommand{\g}{{\boldsymbol g}}
\newcommand{\h}{{\boldsymbol h}}
\renewcommand{\i}{{\boldsymbol i}}
\renewcommand{\j}{{\boldsymbol j}}
\renewcommand{\k}{{\boldsymbol k}}
\newcommand{\m}{{\boldsymbol m}}
\newcommand{\n}{{\boldsymbol n}}
\renewcommand{\o}{{\boldsymbol o}}
\newcommand{\p}{{\boldsymbol p}}
\newcommand{\q}{{\boldsymbol q}}
\renewcommand{\r}{{\boldsymbol r}}
\newcommand{\s}{{\boldsymbol s}}
\renewcommand{\t}{{\boldsymbol t}}
\renewcommand{\u}{{\boldsymbol u}}
\renewcommand{\v}{{\boldsymbol v}}
\newcommand{\w}{{\boldsymbol w}}
\newcommand{\x}{{\boldsymbol x}}
\newcommand{\y}{{\boldsymbol y}}
\newcommand{\z}{{\boldsymbol z}}
\newcommand{\A}{{\boldsymbol A}}
\newcommand{\B}{{\boldsymbol B}}
\newcommand{\D}{{\boldsymbol D}}
\newcommand{\E}{{\boldsymbol E}}
\newcommand{\G}{{\boldsymbol G}}
\renewcommand{\H}{{\boldsymbol H}}
\newcommand{\I}{{\boldsymbol I}}
\newcommand{\J}{{\boldsymbol J}}
\newcommand{\K}{{\boldsymbol K}}
\renewcommand{\L}{{\boldsymbol L}}
\newcommand{\M}{{\boldsymbol M}}
\renewcommand{\O}{{\boldsymbol O}}
\renewcommand{\P}{{\mathbb{P}}}

\renewcommand{\S}{{\boldsymbol S}}
\newcommand{\T}{{\boldsymbol T}}
\newcommand{\U}{{\boldsymbol U}}
\newcommand{\V}{{\boldsymbol V}}
\newcommand{\W}{{\boldsymbol W}}
\newcommand{\X}{{\boldsymbol X}}
\newcommand{\Y}{{\boldsymbol Y}}


\newcommand{\listm}[1]{#1_{1}, #1_{2}, \dots, #1_{m}}

\newcommand{\listn}[1]{#1_{1}, #1_{2}, \dots, #1_{n}}


% useful for Fourier analysis
\newcommand{\bits}{\{-1,1\}}
\newcommand{\bitsn}{\{-1,1\}^n}
\newcommand{\bn}{\bitsn}
\newcommand{\isafunc}{{: \bitsn \rightarrow \bits}}
\newcommand{\fisafunc}{{f : \bitsn \rightarrow \bits}}
