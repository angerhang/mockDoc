% File: doc.cls
% Author: Jinbo Zhang
% Date: 3 Feb, 2015

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{doc}
\RequirePackage{ifthen}

\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont}
\setlength{\textwidth}{6.5in}
\setlength{\textheight}{8in}

\newcommand\large{\@setfontsize\large\@xiipt{14}}
\newcommand\Large{\@setfontsize\Large\@xivpt{18}}


% define \paragraph
\newcommand{\paragraph}[1]{
	\newline\newline
	\bfseries #1
	\normalfont
}

% define \section
\newcounter{SectionCount}
\newcommand{\section}[1]{
	\ifthenelse{\value{SectionCount}=0}{}{\newline\newline\newline}
	\Large
	\stepcounter{SectionCount}
	\noindent\bfseries\arabic{SectionCount}\hspace{4mm} #1
	\normalfont
	\newline\newline
}

% define \subsection
\newcounter{SubCount}[SectionCount]
\newcommand{\subsection}[1]{
	\ifthenelse{\value{SubCount}=0}{}{\newline\newline}
	\large
	\stepcounter{SubCount}
	\bfseries\arabic{SectionCount}.\arabic{SubCount}\hspace{3mm} #1
	\normalfont
}


\endinput