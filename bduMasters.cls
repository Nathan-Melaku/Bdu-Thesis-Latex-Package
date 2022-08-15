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
\fancyfoot[R]{\thepage}

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

