\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bduMasters}[Aug 15 2022 Bahirdar University Masters Thesis]
% start with the report class as a base class 
\LoadClass[12pt, oneside]{report}
% make links clickable with no color
\RequirePackage{hyperref}
\hypersetup{colorlinks = false}
% date should be with the following format Aug 11 2022
\RequirePackage{datetime}
\newdateformat{monthyeardate}{\monthname[\THEMONTH], \THEYEAR}
\newdateformat{yeardate}{\THEYEAR}

% set font to times new roman
\RequirePackage{fontspec}
\setmainfont{Times New Roman}

% paper must be a4 size and margins are set according to the guideline
\RequirePackage[a4paper, top=1in, bottom=1in, right=1in, left=1.5in]{geometry}

% header is not specified in the guideline but a simple bar with the section
% and page number on the footer makes navigating easy. 
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\rightmark}
\fancyfoot[C]{\thepage}
\renewcommand{\headrulewidth}{2pt}
\renewcommand{\footrulewidth}{1pt}

% hyphenation is not allowed according to the guideline, This only works for single language documents.
% If multiple language is used in the document use a different method to disable hyphenation.
\RequirePackage[none]{hyphenat}

% 1.5 line spacing is set according to the guideline.
\PassOptionsToPackage{onehalfspacing}{setspace}
\RequirePackage{setspace}

% Title must be 14pt and subtitle must be 12pt.
\RequirePackage{titlesec}
\titleformat{\chapter}{\large\bfseries}{Chapter \ \thechapter}{14pt}{}
\titleformat{\section}{\normalsize\bfseries}{\thesection}{12pt}{}
\titleformat{\subsection}{\normalsize\bfseries}{\thesection}{12pt}{}
\titleformat{\subsubsection}{\normalsize\bfseries}{\thesection}{12pt}{}

% package for working with graphics like Images
\RequirePackage{graphicx}
\graphicspath{{Images/}}

% Citation style enforced by the guideline is apastyle 
\RequirePackage{apacite}
\bibliographystyle{apacite}

% An Excellent way to work with multiple tex files for each chapter.
\RequirePackage{subfiles}

% Acronym for the list of abbreviations.
\RequirePackage[printonlyused, withpage]{acronym}
% justify without hyphenation
\sloppy

% command for advisor name
\newcommand{\advisor}[2]{
  \def\@advisorName{#1}
  \def\@advisorTitle{#2}
}

% command for co advisor name
\newcommand{\coadvisor}[2]{
  \def\@coadvisorName{#1}
  \def\@coadvisorTitle{#2}
}

% command for faculty name
\newcommand{\faculty}[1]{
  \def\@faculty{#1}
}

% command for name of the program
\newcommand{\program}[1]{
  \def\@program{#1}
}

% command for masters type, this means Msc Thesis or MEng Project
\newcommand{\masterstype}[1]{
  \def\@masterstype{#1}
}

% command for cover page
\newcommand*{\makecover}{
  \begin{titlepage}
    \centering
    \includegraphics[width=6cm]{logo.jpg} \\
    \vspace{1cm}
    \textbf{BAHIR DAR UNIVERSITY} \\
    \textbf{BAHIR DAR INSTITUTE OF TECHNOLOGY} \\
    \textbf{SCHOOL OF RESEARCH AND GRADUATE STUDIES} \\
    \textbf{FACULTY OF \MakeUppercase{\@faculty}}   \\
    \textbf{\@program} \\
    \textbf{\@masterstype} \textbf{ on:} \\
    \textbf{\@title} \\

    \vspace{3cm} 

    \textbf{By:} \\
    \textbf{\@author} \\
    \vfill 

    \hfill
    \monthyeardate\@date \\
    \hfill
    Bahir Dar, Ethiopia
  \end{titlepage}
}

% command for title page
\renewcommand*{\maketitle}{
\begin{titlepage}
  \begin{center}
    \includegraphics[width=6cm]{logo.jpg} \\
    \vspace{1cm}
    \textbf{BAHIR DAR UNIVERSITY} \\
    \textbf{BAHIR DAR INSTITUTE OF TECHNOLOGY} \\
    \textbf{FACULTY OF \MakeUppercase{\@faculty}}   \\

    \vspace{1cm}

    \textbf{\@title}

    \vspace{1cm}

    \textbf{By} \\
    \textbf{\@author} \\
    a thesis submitted \\
    in Partial Fulfillment of the Requirements for the Degree of \\
    Master of Science in \@program \\
    
  \end{center}

  \vspace{1cm}
  
  \textbf{Advisor: } \textbf{\@advisorName(\@advisorTitle) } \\
  \ifdefined\@coadvisor
    \@coadvisorName(\@coadvisorTitle) \\
  \else
  \fi
  
  \vfill

  \begin{center}
    \hfill
    \monthyeardate\@date \\
    \hfill 
    Bahir Dar, Ethiopia \\
  \end{center}
  
  \copyright \yeardate\@date\@author \\
\end{titlepage}  
}

% command for approval sheet

\newcommand*{\makeapproval}{
  \begin{titlepage}
  \begin{center}
    \textbf{BAHIR DAR UNIVERSITY} \\
    \textbf{BAHIR DAR INSTITUTE OF TECHNOLOGY} \\
    \textbf{FACULTY OF \MakeUppercase{\@faculty}}   \\

    \textbf{Approval of thesis for defense result}
  \end{center}
  \noindent
  I hereby confirm that the changes required by the examiners have been carried out and incorporated
  in the final thesis.

  \noindent
  Name of Student \rule{5cm}{0.4pt} Signature \rule{2cm}{0.4pt} Date \rule{2cm}{0.4pt}

  \noindent
  As members of the board of examiners, we examined this thesis entitled

  \noindent
  ``\rule{\textwidth}{0.4pt}''

  \noindent
  by \rule{5cm}{0.4pt}.We hereby certify that the thesis is accepted for
  fulfilling the requirements for the award of the degree of Masters of science in

  \noindent
  ``\rule{\textwidth}{0.4pt}''.

  \vspace{0.5cm}
  \noindent
  \textbf{Board of Examiners} \\
  \vspace{0.5cm}
  
  \begin{tabular}{p{6cm} p{4cm} p{3cm}}
    Name of Advisor  & Signature  & Date \\
                     & & \\
    \rule{5cm}{0.4pt} & \rule{3cm}{0.4pt}  & \rule{3cm}{0.4pt} \\


    Name of External examiner  & Signature  & Date \\
                     & & \\
    \rule{5cm}{0.4pt} & \rule{3cm}{0.4pt}  & \rule{3cm}{0.4pt} \\

    
    Name of Internal examiner  & Signature  & Date \\
                     & & \\
    \rule{5cm}{0.4pt} & \rule{3cm}{0.4pt}  & \rule{3cm}{0.4pt} \\

    
    Name of Chair Person  & Signature  & Date \\
                     & & \\
    \rule{5cm}{0.4pt} & \rule{3cm}{0.4pt}  & \rule{3cm}{0.4pt} \\

    
    Name of Chair Holder  & Signature  & Date \\
                     & & \\
    \rule{5cm}{0.4pt} & \rule{3cm}{0.4pt}  & \rule{3cm}{0.4pt} \\

    
    Name of Faculty Dean  & Signature  & Date \\
                     & & \\
    \rule{5cm}{0.4pt} & \rule{3cm}{0.4pt}  & \rule{3cm}{0.4pt} 
                                             
  \end{tabular}

  \vfill
  \hfill
  \textbf{Faculty Stamp}
  
\end{titlepage}

}

% command for acknowledgment
\newcommand*{\acknowledgment}[1]{
  \def\@acknowledgment{#1}
}

\newcommand*{\makeacknowledgment} {
  \begin{titlepage}
    \noindent
    {\large\textbf{Acknowledgment}}

    \vspace{0.25cm}
    
    \noindent
    \@acknowledgment
  \end{titlepage}
}
% command for declaration

\newcommand*{\declaration} {
  \begin{titlepage}
    \noindent
    {\large\textbf{Declaration}}

    \vspace{0.25cm}
    
    \noindent
    This is to certify that the thesis entitled ``\rule{8cm}{0.4pt}'',
    submitted in partial fulfillment of the requirements for the degree of Master of Science in
\MakeLowercase{\@program} \: under \MakeLowercase{\@faculty} \: faculty ,Bahir Dar Institute of Technology , is a record of original work
carried out by me and has never been submitted to this or any other institution to get any other
degree or certificates. The assistance and help I received during the course of this investigation
have been duly acknowledged.

\vspace{1cm}

\begin{tabular}{p{7cm} p{4cm} p{3cm}}
  \rule{5cm}{0.4pt} & \rule{3cm}{0.4pt} & \rule{2cm}{0.4pt} \\
  Name of candidate & Signature & Date
\end{tabular}
  \end{titlepage}
}

\renewcommand{\abstract}[1]{
  \def\@abstract{#1}
}
% command for abstract
\newcommand*{\makeabstract} {
  \begin{titlepage}
    \noindent
    {\large\textbf{Abstract}}

    \vspace{0.25cm}
    
    \noindent
      {\@abstract}
  \end{titlepage}
}

% command for list of tables
\newcommand{\lotables}{
  \begin{titlepage}
    \pagenumbering{gobble}
    \listoftables
  \end{titlepage}
}

% command for list of figures
\newcommand{\lofigures}{
  \begin{titlepage}
    \pagenumbering{gobble}
    \listoffigures
  \end{titlepage}
}

\newcommand{\tocontents}{
  \begin{titlepage}
    \pagenumbering{gobble}
    \tableofcontents
  \end{titlepage}
}

\newcommand{\makepreamble}{
  \begin{titlepage}
    \makecover
    \maketitle
    \makeapproval
    \makeacknowledgment
    \tocontents
    \declaration
    \include{acronym}
    \lotables
    \lofigures
    \makeabstract
  \end{titlepage}
}
% apacite citation
