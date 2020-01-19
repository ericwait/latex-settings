%% preprint.cls
%% 
%% This is a template for arXiv/bioRxiv articles.
%%
%% Author: Blair J. Rossetti and Eric Wait
%% 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{preprint}[2019/12/13 Preprint LaTeX class]

%% Load base class
\LoadClass[twoside]{IEEEtran}

%% Packages
% layout
\RequirePackage{authblk}
% \RequirePackage{natbib}
\RequirePackage[colorinlistoftodos]{todonotes}

% fonts and symbols
\RequirePackage{amsfonts}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage[T1]{fontenc}
\RequirePackage{siunitx}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{xcolor}
\RequirePackage{sansmathfonts}

% tables and figures
\RequirePackage[ruled]{algorithm2e}
\RequirePackage{booktabs}
\RequirePackage{graphicx}

%% Declarations
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

%% Commands
\renewcommand{\familydefault}{\sfdefault}
\newcommand{\ith}{\ensuremath{i^\text{th}} }
\newcommand{\jth}{\ensuremath{j^\text{th}} }
\newcommand{\nth}{\ensuremath{n^\text{th}} }

% Use \qst command for questions that need answering
\newcommand{\qst}[1]{\todo[color=magenta]{#1}}
% Use \lookup for items that need further research
\newcommand{\lookup}[1]{\todo[color=green]{#1}}
% Use \tsk for tasks that still need to be completed
\newcommand{\tsk}[1]{\todo[inline,color=cyan]{#1}}
% Use \idea for ideas not ready to be in text
\newcommand{\idea}[1]{\todo[inline,color=yellow]{#1}}
% Use \err to highlight were there are serious problems
\newcommand{\err}[1]{\todo[inline,color=red]{#1}}
% use to put a note in the margin
\newcommand{\sidenote}[2]{\todo[color=#1,size=\tiny]{#2}}

\newcommand{\ie}[1]{\textit{i.e.} {#1}}
\newcommand{\eg}[1]{\textit{e.g.} {#1}}
\newcommand{\etc}[1]{\textit{etc.} {#1}}

% Use ``\cite{NEEDED}'' to get Wikipedia-style ``citation needed'' in document
\usepackage{ifthen}
\let\oldcite=\cite
\renewcommand\cite[1]{\ifthenelse{\equal{#1}{NEEDED}}{\textsuperscript{\texttt{\color{red}[citation~needed]}}}{\oldcite{#1}}}

\newenvironment{keywords}{\IEEEkeywords}{\endIEEEkeywords}

\endinput
