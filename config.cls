\ProvidesClass{config}[2023 v1.0 config]
\NeedsTeXFormat{LaTeX2e}

%-------------------------------------------------------------------------------
%                Class options
%-------------------------------------------------------------------------------

\LoadClass[10pt]{article} % adjust font size here

%-------------------------------------------------------------------------------
%                Packages
%-------------------------------------------------------------------------------

\RequirePackage{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{fontspec}
\RequirePackage{color}
\RequirePackage[english]{babel}
\RequirePackage{titlesec}
\RequirePackage{enumitem}
\RequirePackage{multicol}
\RequirePackage{pifont}
\RequirePackage{fontawesome5}
\RequirePackage{fancyhdr}
\RequirePackage[usenames,dvipsnames]{xcolor}
\RequirePackage{etoolbox,refcount}
\RequirePackage{calc}
\RequirePackage{enumitem}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}
\RequirePackage{setspace}
\RequirePackage{lipsum}
\usepackage{ragged2e}

\setmainfont{TeX Gyre Heros} % adjust font style here

% Additional fonts can be found at the following URL: https://www.draketo.de/anderes/latex-fonts.html#org9f59ea3

%-------------------------------------------------------------------------------
%                Formatting
%-------------------------------------------------------------------------------

\setlength{\tabcolsep}{0in}

\pagenumbering{gobble}
\pagestyle{empty}

\raggedbottom
\raggedright

\geometry{
    paper=a4paper, % Paper size, change to a4paper for A4 size
    top=0.35in, % Top margin
    bottom=0.35in, % Bottom margin
    left=0.35in, % Left margin
    right=0.35in, % Right margin
    headheight=0.75cm, % Header height
    footskip=1cm, % Space from the bottom margin to the baseline of the footer
    headsep=0.5cm % Space from the top margin to the baseline of the header
}

% section title format
\titleformat{\section}%
    {\vspace{-4pt}\scshape\raggedright\large\bfseries}% format
    {}% label
    {0em}% space between label and title
    {}% before code
    [\color{black}\titlerule\vspace{-5pt}]% after code

\newcommand{\Header}[7]{%
    \fancyhf{}%
    \begin{center}
        {\Huge\textbf{\textsc{\textcolor{NavyBlue}{#1}}}}\\[4pt]
        \textcolor{black}{
            {\faMap} #2 $|${\faPhone} #3 $|$ {\faEnvelope} \href{mailto:#4}{#4} $|$ {\faLinkedin} \href{https://linkedin.com/in/#5}{#5} $|$ {\faGithub} \href{https://github.com/#6}{#6}
        }\\[3pt]
    \end{center}
    \hrule
    % \vspace{1pt}\justify{#7}
    % \vspace{8pt}
    % \hrule

}

\newcommand{\WorkExperience}[5]{
    % \vspace{2pt}
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        {\large\textbf{#1}} & \textit{#3} \\
        #2 & #4 \\
    \end{tabular*}
    
    \begin{itemize}[noitemsep, topsep=0pt, leftmargin=1.25em, label={$-$}]%
        #5
    \end{itemize}
}


\newcommand{\EducationExperience}[5]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{#3} \\
        #2 & #4 \\
    \end{tabular*}

    \begin{itemize}[noitemsep, topsep=1pt, leftmargin=1.25em, label={$-$}]
    #5
    \end{itemize}
}

\newcommand{\Responsibility}[3]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} & \textit{#3} \\
        #2 
    \end{tabular*}

}


\newcommand{\SkillItem}[2]{\item \textbf{#1}{#2}}

\newcommand{\SkillList}[1]{
    \begin{itemize}[label={}, itemsep=-0.2em, leftmargin=0em, label={$-$}]
                #1
        \end{itemize}
}

\newcommand{\Project}[4]{
    \noindent
    \begin{tabular*}{\textwidth}{@{}l @{\extracolsep{\fill}} r}
        \textbf{#1} $|$ #2 \href{https://github.com/#3}{\faGithub} \\ % Added '&' before \href
    \end{tabular*}
    
    \begin{itemize}[noitemsep, topsep=0pt, leftmargin=1em, label={$-$}]
        #4
    \end{itemize}
}
