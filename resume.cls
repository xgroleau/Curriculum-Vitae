
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
\RequirePackage{ifthen}
\RequirePackage{tabularx}
\RequirePackage{color}
\RequirePackage{xparse}
\RequirePackage[T1]{fontenc}

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

% Sections formatting
\titleformat{\section}{
  \vspace{-4pt}\scshape\raggedright\large\color{RoyalBlue}
}{}{0em}{}[\color{black}\titlerule \vspace{-5pt}]

% Ensure that generate pdf is machine readable/ATS parsable
\pdfgentounicode=1

%----------COMMANDS FOR RESUME----------
% Header
\newcommand*{\name}[1]{\def\@name{#1}}
\newcommand*{\phone}[1]{\def\@phone{#1}}
\newcommand*{\email}[1]{\def\@email{#1}}
\newcommand*{\linkedin}[1]{\def\@linkedin{#1}}
\newcommand*{\github}[1]{\def\@github{#1}}

\newcommand{\insertHeader}[0]{
    \begin{center}
        \textbf{\Huge\scshape\@name} \\%
        \href{tel:\@phone}{\@phone} $|$ %
        \href{mailto:\@email}{\@email} $|$ %
        \href{https://www.linkedin.com/in/\@linkedin/}{linkedin.com/in/\@linkedin} $|$ %
        \href{https://github.com/\@github/}{github.com/\@github}%
    \end{center}
}

\newcommand{\resumeItemListStart}{\item\begin{itemize}[label={}]}
\newcommand{\resumeItemListEnd}{\end{itemize}}
\newcommand{\resumeItem}[1]{\item #1}

\newcommand{\resumeProjectHeading}[2]{%
    \item%
    \textbf{#1}\hfill#2%
}
\newcommand{\resumeSubItem}[1]{\resumeItem{#1}}
\newcommand{\resumeDatedItem}[2]{\resumeItem{#1\hfill#2}}



\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[label={}]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeSubheading}[5][]{%
    \item\textbf{#2}\hfill#3\break%
    \small{#4}\hfill\textit{\small{#5}}%
    \IfNoValueF{#1}{%
        \begin{itemize}[label={}, noitemsep, nolistsep]%
            \item\footnotesize{#1}%
        \end{itemize}%
    }%
}
\newcommand{\resumeSubSubheading}[2]{%
    \item%
    \textit{\small{#1}}\hfill\textit{\small{#2}}%
}

\newcommand{\resumeEnumerationStart}{\begin{itemize}[label={}]}
\newcommand{\resumeEnumerationEnd}{\end{itemize}}
\newcommand{\resumeEnumeration}[2]{\item\parbox[t]{0.15\textwidth}{\small{\textbf{#1:}}}\parbox[t]{0.75\textwidth}{\small{#2}}}