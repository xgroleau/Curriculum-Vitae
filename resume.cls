
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{udes_rapport}
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
  \vspace{-4pt}\scshape\raggedright\large
}{}{0em}{}[\color{black}\titlerule \vspace{-5pt}]

% Ensure that generate pdf is machine readable/ATS parsable
\pdfgentounicode=1

%----------COMMANDS FOR RESUME----------

\newcommand{\resumeItem}[1]{\item #1}

\newcommand{\resumeSubItem}[1]{\resumeItem{#1}}
\newcommand{\resumeDatedItem}[2]{\resumeItem{#1\hfill#2}}

\newcommand{\resumeSubheading}[4]{%
    \item\textbf{#1}\hfill#2\break%
    \small#3\hfill\textit{\small#4}%
}

\newcommand{\resumeSubSubheading}[2]{%
    \item%
    \textit{\small#1}\hfill\textit{\small#2}%
}

\newcommand{\resumeProjectHeading}[2]{%
    \item%
    \textbf{#1}\hfill#2%
}

\renewcommand\labelitemii{$\vcenter{\hbox{\tiny$\bullet$}}$}

\newcommand{\resumeSubHeadingListStart}{\begin{itemize}[label={}]}
\newcommand{\resumeSubHeadingListEnd}{\end{itemize}}
\newcommand{\resumeItemListStart}{\item\begin{itemize}[label={}]}
\newcommand{\resumeItemListEnd}{\end{itemize}}