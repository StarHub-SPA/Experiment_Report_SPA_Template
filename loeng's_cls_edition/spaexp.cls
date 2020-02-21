%Identifications
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{spaexp}
[2020/02/21 SPA physics experiment template non-official edition v1.0 ]

% Preliminary declarations
%% tokens deifition
\newcommand*\spaexp@tokens@name{}
\newcommand*\spaexp@tokens@stid{}
\newcommand*\spaexp@tokens@exptitile{}
\newcommand*\spaexp@tokens@major{}

%% Declaration of Options (for this class document)
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}

%% Executing of Options
\ProcessOptions\relax
%% Loading Class
\LoadClass[a4paper,no-math,zihao = -4]{ctexart}
%% Loading Package
\RequirePackage{ifxetex}
\RequireXeTeX
\ifxetex\else
\ClassError{mcmthesis}{You must use the `xelatex' driver\MessageBreak Please choose `xelatex'}{%
Just choose `xelatex', no `pdflatex' or `latex' and so on.}
\fi