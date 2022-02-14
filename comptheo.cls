\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{CompTheo}[2020/12/30 Latex Class for Computation Theory]

\LoadClass[twoside,12pt]{amsbook}

\RequirePackage{amssymb}

\RequirePackage{thmtools}

\RequirePackage{epsfig,graphicx,float}
\RequirePackage{xcolor}
\RequirePackage{subcaption}

\setcounter{tocdepth}{2}

\makeatletter

\renewcommand{\tocsubsubsection}[3]{%
	\indentlabel{\quad\@ifnotempty{#2}{\ignorespaces#1 #2.\quad}}#3%
}%

\renewcommand{\tocsubsection}[3]{%
	\indentlabel{\quad\@ifnotempty{#2}{\ignorespaces#1 #2.\quad}}#3%
}%

\renewcommand{\tocsection}[3]{%
	\indentlabel{\@ifnotempty{#2}{\ignorespaces#1 #2.\quad}}#3\dotfill%
}%

\@ifundefined{r@tocindent4}{%
	\@xp\gdef\csname r@tocindent4\endcsname{1pt}%
}%

\def\section{\@startsection{section}{1}%
  \z@{1\linespacing\@plus\linespacing}{1\linespacing}%
  {\Large\normalfont\bfseries\centering}%
 }%

\def\subsection{\@startsection{subsection}{2}%
	\z@{.7\linespacing\@plus.7\linespacing}{.7\linespacing}%
	{\large\normalfont\bfseries}%
}%

\def\subsubsection{\@startsection{subsubsection}{3}%
	\z@{.5\linespacing\@plus.7\linespacing}{.5\linespacing}%
	{\normalfont\sffamily}
}%

\def\paragraph{\@startsection{paragraph}{4}%
	\normalparindent\z@{-\fontdimen2\font}%
	{\normalfont\sffamily}%
}%

\def\th@remark{%
	\let\thm@indent\indent
	\thm@headfont{\itshape}% heading font small caps
	\let\thmhead\thmhead@plain \let\swappedhead\swappedhead@plain
	\thm@preskip.5\baselineskip\@plus.2\baselineskip
	\@minus.2\baselineskip
	\thm@postskip\thm@preskip
	\upshape
}

\renewenvironment{proof}[1][\proofname]{\par \normalfont
  \topsep6\p@\@plus6\p@ \trivlist \itemindent\normalparindent
  \item[\hskip\labelsep\itshape
    #1\@addpunct{.}]\ignorespaces
}{%
  \qed\endtrivlist
}

% thmtools
\renewcommand\thmt@listnumwidth{4em}
\def\@dottedtocline#1#2#3#4#5{\@tocline{#1}{0pt}{#2}{#3}{}{#4}{#5}}

\makeatother

\RequirePackage[b5paper]{geometry}

\RequirePackage[pdfpagelabels]{hyperref}
\hypersetup{colorlinks=true,linkcolor=black}
\RequirePackage{multicol}
