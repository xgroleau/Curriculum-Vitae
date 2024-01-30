
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}
\LoadClass{article}


%----------PACKAGES----------
\RequirePackage{latexsym}
\RequirePackage[empty]{fullpage}
\RequirePackage{titlesec}
\RequirePackage{marvosym}
\RequirePackage[usenames,dvipsnames]{color}
\RequirePackage{verbatim}
\RequirePackage{enumitem}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fancyhdr}
\RequirePackage[english,french]{babel}
\RequirePackage{csquotes}
\RequirePackage{ifthen}
\RequirePackage{tabularx}
\RequirePackage{color}
\RequirePackage{xparse}
\RequirePackage[T1]{fontenc}
\RequirePackage{bibentry}
\RequirePackage{biblatex}
\RequirePackage{titlesec}


\RequirePackage[sfdefault]{FiraSans} % Font

%----------PAGE STYLE----------
\pagestyle{fancy}
\fancyhf{} % clear all header and footer fields
\fancyfoot{}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}

% Adjust margins
\addtolength{\oddsidemargin}{-0.5in}
\addtolength{\evensidemargin}{-0.5in}
\addtolength{\textwidth}{1in}
\addtolength{\topmargin}{-.5in}
\addtolength{\textheight}{1.0in}

\urlstyle{same}

\raggedbottom
\raggedright
\setlength{\tabcolsep}{0in}

% Formatting
\titleformat{\section}{
  \vspace{-10pt}\scshape\raggedright\large\color{RoyalBlue}
}{}{0em}{}[\color{black}\titlerule \vspace{-8pt}]

\setlist[itemize]{itemsep=0.3pt, topsep=0pt}
% Ensure that generate pdf is machine readable/ATS parsable
\input{glyphtounicode}
\pdfgentounicode=1

%----------COMMANDS FOR RESUME----------
% Header
\newcommand*{\name}[1]{\def\@name{#1}}
\newcommand*{\phone}[1]{\def\@phone{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}
\newcommand*{\gscholar}[1]{\def\@gscholar{#1}}

\newcommand{\insertHeader}[0]{
    \begin{center}
        \textbf{\Huge\scshape\@name} \\%
        \href{tel:\@phone}{\@phone} $|$ %
        \href{mailto:\@email}{\@email} \\ %
        \href{https://www.linkedin.com/in/\@linkedin/}{Linkedin: \@linkedin} $|$ %
        \href{https://github.com/\@github/}{GitHub: \@github} $|$ %
        \href{https://scholar.google.com/citations?user=\@gscholar}{Google Scholar: \@name}%
    \end{center}
}

\newcommand{\resumeItemListStart}{\item\begin{itemize}[label={}]}
\newcommand{\resumeItemListEnd}{\end{itemize}}
\newcommand{\resumeItem}[1]{\item #1}

\newcommand{\resumeHeadingText}[1]{\item\textbf{#1}}
\newcommand{\resumeProjectHeading}[2]{\resumeHeadingText{#1}\hfill#2}
\newcommand{\resumeSubItem}[1]{\resumeItem{#1}}
\newcommand{\resumeDatedItem}[2]{\resumeItem{#1\hfill#2}}

\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[label={}]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeSubheading}[5][]{%
    \resumeHeadingText{#2}\hfill#3\break%
    \small{#4}\hfill\textit{\small{#5}}%
    \IfNoValueF{#1}{%
        \begin{itemize}[label={}, noitemsep, nolistsep]%
            \item\footnotesize{#1}%
        \end{itemize}%
    }%
}
\newcommand{\resumeSubSubheading}[1]{%
    \item\textbf{\textit{\small{#1}}}%
}

\newcommand{\resumeEnumerationStart}{\begin{itemize}[label={}]}
\newcommand{\resumeEnumerationEnd}{\end{itemize}}
\newcommand{\resumeEnumeration}[2]{\item\parbox[t]{0.15\textwidth}{\small{\textbf{#1:}}}\parbox[t]{0.75\textwidth}{\small{#2}}}

\newcommand{\resumeListPaper}[2]{%
    \resumeHeadingText{#1}
    \printbibliography[heading=none, type=#2]%
}