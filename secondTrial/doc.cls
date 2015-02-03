% File: doc.cls
% Author: Jinbo Zhang
% Date: 3 Feb, 2015

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{doc}
\LoadClass{article}
\RequirePackage{ifthen}

% define \paragraph
\renewcommand{\paragraph}[1]{
	\newline\newline
	\textbf{#1}
}

% define \section
\newcounter{SectionCount}
\renewcommand{\section}[1]{
	\ifthenelse{\value{SectionCount}=0}{}{\newline\newline\newline}
	\Large
	\stepcounter{SectionCount}
	\noindent\textbf{\arabic{SectionCount}\hspace{4mm} #1}
	\newline\newline
}

% define \subsection
\newcounter{SubCount}[SectionCount]
\renewcommand{\subsection}[1]{
	\ifthenelse{\value{SubCount}=0}{}{\newline\newline}
	\large
	\stepcounter{SubCount}
	\noindent\textbf{\arabic{SectionCount}.\arabic{SubCount}\hspace{3mm} #1}
}
