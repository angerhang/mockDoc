\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{doc}[2015/02/03 v0.1 Doc LaTeX class]

\LoadClass{article}

\DeclareOption*{%
	\PackageWarning{fred}{Unknown option '\CurrentOption'}%
	}
% disable option for doc class for now.
% Add if options need to be executed.
% \ProcessOptions\relax


\newcommand{\tsec}{\section}
\newcommand{\subsec}{\subsection}
\newcommand{\tp}{\paragraph}

% Required for *.cls 
\renewcommand{\normalsize}{\fontsize{10pt}{12pt}\selectfont}
\setlength{\textwidth}{12cm}
\setlength{\textheight}{21cm}
\setcounter{secnumdepth}{0}