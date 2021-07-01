\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{presentation}[2017/09/26 Class for beamers]

\LoadClass[8pt, notheorems]{beamer}

% store options in a boolean
\RequirePackage{ifthen}

% packages options flags
\newboolean{italian}
\newboolean{english}

% default values
\setboolean{italian}{true}
\setboolean{english}{false}

\DeclareOption{english}{%
	\setboolean{italian}{false}%
	\setboolean{english}{true}%
}
\ProcessOptions\relax

\RequirePackage{pgfpages}

% typography stuff
\linespread{1.3}

\RequirePackage{mathrsfs}

% bibs
\usepackage[
	backend=biber,
	style=alphabetic,
	citestyle=authoryear,
	bibstyle=ieee
]{biblatex}

% i10n stuff
\RequirePackage[utf8]{inputenc}
\RequirePackage{csquotes}

% tweaks for figure captions
\RequirePackage[labelfont=bf,textfont=it]{caption}

% tweaks for lists
\RequirePackage{enumitem}
\setlist[enumerate]{label=\arabic*.}

% enable image captions
\RequirePackage[labelfont=bf,textfont=it]{caption}

% environments for theorems
\RequirePackage{mathtools}
\RequirePackage{thmtools, thm-restate}

% alignment for display equations
\RequirePackage{float}

% symbols
\RequirePackage{mathrsfs}
\RequirePackage{amssymb, amsfonts}
\RequirePackage{textcomp}

\RequirePackage{centernot}

\RequirePackage[thicklines]{cancel}
\renewcommand{\CancelColor}{\color{gray!60}}

% images & plots
\RequirePackage{tikz}
\usetikzlibrary{cd, arrows, decorations.pathmorphing}

% use overlays in diagrams
\tikzset{
	invisible/.style={opacity=0},
	visible on/.style={alt={#1{}{invisible}}},
	alt/.code args={<#1>#2#3}{%
		\alt<#1>{\pgfkeysalso{#2}}{\pgfkeysalso{#3}}%
	}
}

\tikzset{zshift/.style={xshift={.5*#1},yshift={.7*#1}}}

% finer numbering for equations
\numberwithin{equation}{section}

% handle class options
\ifthenelse{\boolean{italian}}{%
	\RequirePackage[italian]{babel}%
	% environments defs
	\theoremstyle{plain}%
	\newtheorem{theorem}{Teorema}[section]%
	\newtheorem{proposition}[theorem]{Proposizione}%
	\newtheorem{corollary}{Corollario}[theorem]%
	\newtheorem{lemma}[theorem]{Lemma}%
	\newtheorem{property}[theorem]{Proprietà}%
	\newtheorem{axiom}{Assioma}%
	\newtheorem{problem}{Problema}%
	\newtheorem{question}{Domanda}%
	\newtheorem{claim}{Affermazione}%
	%
	\theoremstyle{definition}%
	\newtheorem{definition}[theorem]{Definizione}%
	\newtheorem{example}{Esempio}[section]%
	\newtheorem{counterexample}[example]{Controesempio}%
	\newtheorem{nonexample}[example]{Non-Esempio}%
	\newtheorem{impexample}[example]{Esempio Importante}%
	\newtheorem{exercise}[example]{Esercizio}%
	\newtheorem{construction}[theorem]{Costruzione}%
	%
	\theoremstyle{remark}%
	\newtheorem{remark}{Osservazione}[theorem]%
	%
	% starred environments defs
	\theoremstyle{plain}%
	\newtheorem*{theorem*}{Teorema}%
	\newtheorem*{proposition*}{Proposizione}%
	\newtheorem*{corollary*}{Corollario}%
	\newtheorem*{lemma*}{Lemma}%
	\newtheorem*{property*}{Proprietà}%
	\newtheorem*{axiom*}{Assioma}%
	\newtheorem*{problem*}{Problema}%
	\newtheorem*{question*}{Domanda}%
	\newtheorem*{claim*}{Affermazione}%
	%
	\theoremstyle{definition}%
	\newtheorem*{definition*}{Definizione}%
	\newtheorem*{example*}{Esempio}%
	\newtheorem*{counterexample*}{Controesempio}%
	\newtheorem*{nonexample*}{Non-Esempio}%
	\newtheorem*{impexample*}{Esempio Importante}%
	\newtheorem*{exercise*}{Esercizio}%
	\newtheorem*{construction*}{Costruzione}%
	%
	\theoremstyle{remark}%
	\newtheorem*{remark*}{Osservazione}%
}{}
\ifthenelse{\boolean{english}}{%
	\RequirePackage[english]{babel}%
	% environments defs
	\theoremstyle{plain}%
	\newtheorem{theorem}{Theorem}[section]%
	\newtheorem{proposition}[theorem]{Proposition}%
	\newtheorem{corollary}{Corollary}[theorem]%
	\newtheorem{lemma}[theorem]{Lemma}%
	\newtheorem{property}[theorem]{Property}%
	\newtheorem{axiom}{Axiom}%
	\newtheorem{problem}{Problem}%
	\newtheorem{question}{Question}%
	\newtheorem{claim}{Claim}%
	%
	\theoremstyle{definition}%
	\newtheorem{definition}[theorem]{Definition}%
	\newtheorem{example}{Example}[section]%
	\newtheorem{counterexample}[example]{Counterexample}%
	\newtheorem{nonexample}[example]{Non-Example}%
	\newtheorem{impexample}[example]{Important Example}%
	\newtheorem{exercise}[example]{Exercise}%
	\newtheorem{construction}[theorem]{Construction}%
	%
	\theoremstyle{remark}%
	\newtheorem{remark}{Remark}[theorem]%
	%
	% starred environments defs
	\theoremstyle{plain}%
	\newtheorem*{theorem*}{Theorem}%
	\newtheorem*{proposition*}{Proposition}%
	\newtheorem*{corollary*}{Corollary}%
	\newtheorem*{lemma*}{Lemma}%
	\newtheorem*{property*}{Property}%
	\newtheorem*{axiom*}{Axiom}%
	\newtheorem*{problem*}{Problem}%
	\newtheorem*{question*}{Question}%
	\newtheorem*{claim*}{Claim}%
	%
	\theoremstyle{definition}%
	\newtheorem*{definition*}{Definition}%
	\newtheorem*{example*}{Example}%
	\newtheorem*{counterexample*}{Counterexample}%
	\newtheorem*{nonexample*}{Non-Example}%
	\newtheorem*{impexample*}{Important Example}%
	\newtheorem*{exercise*}{Exercise}%
	\newtheorem*{construction*}{Construction}%
	%
	\theoremstyle{remark}%
	\newtheorem*{remark*}{Remark}%
}{}
