% Identifications
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
% \RequirePackage{expl3}
\ProvidesClass{spaexp}%{2020/02/21}{1.0}{SPA physics experiment template non-official edition}

% Preliminary declarations
%% tokens deifition
\newcommand*\spaexp@tokens@name{}
\newcommand*\spaexp@tokens@stuid{}
\newcommand*\spaexp@tokens@exptitle{}
\newcommand*\spaexp@tokens@major{}
\newcommand*\spaexp@tokens@grade{}
\newcommand*\spaexp@tokens@expdate{\today}

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

%%% 页面布局
\RequirePackage{geometry}

%%% 页眉/页脚 
\usepackage{lastpage} %总页数
\usepackage{fancyhdr}

%%%浮动题标题
\usepackage{floatrow,caption}

%%%花里胡哨
\usepackage[dvipsnames]{xcolor}
\usepackage[many]{tcolorbox}

%%%表格
\usepackage{tabularx}
\usepackage{longtable}

%%%数学
\usepackage{amsmath}    %数学
\usepackage{amssymb}
\usepackage{bm}         %便捷使用数学模式中的字母
\usepackage{mathrsfs}   %使用花体字 命令\mathscr

%%%图片
\usepackage{subfigure,graphicx}

%%%三横线
\usepackage{booktabs}

%%%交叉引用
\usepackage{hyperref}
\usepackage{cleveref} % cleveref must be loaded after amsmath!
\crefname{figure}{Fig.}{Fig.}
\crefname{equation}{Eq.}{Eq.}
\crefname{table}{Tbl.}{Tbl.}
\crefname{subsection}{小节}{小节}

%% Document Layout

%%%版面
\geometry{
    scale = {0.8,0.8}, %layout区域上下边界与左右边界占纸张的0.8
    centering %layout居中
}

%%%页眉/页脚
\pagestyle{fancy}
\fancyhf{} %清空默认的页眉/脚

\fancyhead[L]{\heiti \footnotesize \spaexp@tokens@exptitle} %左页眉使用小五黑体显示实验标题。
\fancyhead[R]{\heiti \footnotesize \leftmark} %右页眉显示section
\fancyfoot[C]{\heiti \footnotesize 第\textbf{\thepage}页\\共 \pageref*{LastPage} 页} %中页脚显示页数

%%%浮动题标题
\floatsetup[table]{capposition=top} %全局设置图标题在下、表标题在上。
\floatsetup[figure]{capposition=bottom}

\captionsetup{  %对于标题属性如：字体、前缀、分隔的设置
    labelformat = parens,
    labelsep = colon,
    tableposition = bottom,
    figureposition = bottom,
    font = small
}
%%%交叉引用格式 (用蠢方法给 autoref 前缀命名)
\renewcommand{\figureautorefname}{\figurename}
\renewcommand{\tableautorefname}{\tablename}
\renewcommand{\partautorefname}{\partname}
\renewcommand{\appendixautorefname}{\appendixname}
\renewcommand{\equationautorefname}{式}
\renewcommand{\itemautorefname}{\itemname}
\renewcommand{\chapterautorefname}{\chaptername}
\renewcommand{\sectionautorefname}{\sectionname}
\renewcommand{\subsectionautorefname}{小节}
\renewcommand{\subsubsectionautorefname}{\subsubsectionname}
\renewcommand{\paragraphautorefname}{\paragraphname}
\renewcommand{\Hfootnoteautorefname}{\Hfootnotename}
\renewcommand{\AMSautorefname}{\AMSname}
\renewcommand{\theoremautorefname}{\theoremname}
\renewcommand{\pageautorefname}{\pagename}
\hypersetup{
    % hidelinks, %隐藏超链接的炫酷色彩
    colorlinks = true, %开启超链接有颜色
    linkcolor  = cyan, %设置超链接颜色为青色。
    CJKbookmarks = true, %启用书签
    bookmarksopen = true, %字面上是书签展开，但真实功能未知
    bookmarksnumbered = true, %书签标注编号（按计数器标注）
}
%%%计数器
\numberwithin{equation}{section} % 公式按章节分

%%%设置标点
\ctexset{
    punct = banjiao%使用半角标点符号
}

%%%字体设定
\ExplSyntaxOn
\setmainfont{Times~New~Roman}
\setsansfont{Arial}
\usepackage{fouriernc}

\str_if_eq:onTF{\g__ctex_fontset_tl}{windows}
  {
    %判定为 Windows 系统
    \setmonofont[Scale=MatchLowercase]{Courier~New}
    \setCJKmainfont{simsun.ttc} %Windows: 中文字体使用宋体
  }
  {
    %判定为非 Windows 系统
    \setmonofont[Scale=MatchLowercase]{Menlo}
    \setCJKmainfont[BoldFont = {Songti~SC~Black}]{Songti~SC} %MacOS: 中文字体使用宋体
  }
  \ExplSyntaxOff
% \newif\ifmcm@mac    %（代码参考https://github.com/OsbertWang/GMCMthesis 这个是OsbertWang，修正支持让各个系统自适应支持近似字体。)
% \newif\ifmcm@windows % 简单设置会有 warning， 待完善吧。
% % \newif\ifmcm@fandol

% \@ifclasslater{ctexart}{}{
%   \newcommand\mcm@strifeq{\csname str_if_eq_x:nnTF\endcsname}
%   \newcommand\mcm@fontset{\csname g__ctex_fontset_tl\endcsname}
%   \mcm@strifeq{\mcm@fontset}{mac}{\mcm@mactrue}{}
%   \mcm@strifeq{\mcm@fontset}{windows}{\mcm@windowstrue}{}
% %   \mcm@strifeq{\mcm@fontset}{fandol}{\mcm@fandoltrue}{}
% }{
%   \mcm@windowstrue
% }

% \setmainfont{Times~New~Roman}
% \setsansfont{Arial}
% \ifmcm@mac
%     \setmonofont[Scale=MatchLowercase]{Menlo}
%     \setCJKmainfont[BoldFont = {Songti SC Black}]{Songti SC} %MacOS: 中文字体使用宋体

% \else
% \ifmcm@windows
%     \setmonofont[Scale=MatchLowercase]{Courier New}
%     \setCJKmainfont{simsun.ttc} %Windows: 中文字体使用宋体

%     \fi
% \fi


% \setCJKmainfont[BoldFont = {Songti SC Black}]{Songti SC} %MacOS: 中文字体使用宋体
% \setCJKmainfont{simsun.ttc} %Windows: 中文字体使用宋体
% \setCJKmainfont[]{SimSun} %中文字体使用宋体
% \setmainfont{Times New Roman} %英文字体设置为Times New Roman
% \usepackage{fouriernc} %使用fouriernc字体


%% Document Markup

%%% 标题 maketitle
\renewcommand{\maketitle}{
    \begin{center}
        \at{1.8}
        \begin{tabularx}{0.9 \textwidth}{|*{8}{>{\ct \ar}X|}}
            \specialrule{0em}{0.3cm}{0cm}
            \hline
            \multicolumn{2}{|c|}{\Large 预习实验} & \multicolumn{2}{c|}{\Large 实验记录}& \multicolumn{2}{c|}{\Large 分析讨论} & \multicolumn{2}{c|}{\Large 总成绩} \\
            \hline
            &&&&&&& \\
            \hline
            \specialrule{0em}{0.3cm}{0cm}
        \end{tabularx}
    
        \at{1.3}
        \begin{tabularx}{0.9 \textwidth}{|p{2cm}<{\ct}|p{4.5cm}<{\ct}|p{3cm}<{\ct}|X<{\ct}|}
            \hline
            {专业}： & {\spaexp@tokens@major} & {年级：}   & {\spaexp@tokens@grade} \\
            \hline
            {姓名：} & {\spaexp@tokens@name}  & {学号：}   & {\spaexp@tokens@stuid} \\
            \hline
            {日期：} & {\spaexp@tokens@expdate} & {教师签名：}& \\
            \hline
            \specialrule{0em}{0.6cm}{0cm}
        \end{tabularx}
    \end{center}
    
    \begin{center}
        \Large \spaexp@tokens@exptitle
    \end{center}
}


%% Define new environment and command

%%% prepare color style
\definecolor{greenline}{RGB}{236, 243, 229}
\definecolor{greenbold}{RGB}{68, 140, 39}
\definecolor{greyshadow}{RGB}{191, 191, 191}
\definecolor{greenlight}{RGB}{228, 246, 212}
\definecolor{greenhigh}{RGB}{169, 232, 122}

%%% que environment
\newtheorem{que}{{\color{greenbold}思考题}}
\renewcommand\theque{{\color{greenbold}\arabic{que}.}}
\tcolorboxenvironment{que}{
  boxrule=0pt,
  boxsep=10pt,
  colback={White!60!greenlight},
  enhanced jigsaw, 
  borderline west={6pt}{3pt}{White!20!greenlight},
  borderline west={3pt}{0pt}{White!20!greenhigh},
  borderline south={2pt}{0pt}{Black!30!greenhigh,dotted},
  sharp corners=southeast,
  before skip=10pt,
  after skip=0pt,
  breakable,
  shadow={1mm}{-1mm}{0mm}{fill=greyshadow},
%   shadow={0mm}{-2mm}{0mm}{fill=White!60!greenhigh},
%   shadow={0mm}{-2mm}{0mm}{fill=greenline},
}

%%% ans 环境
\newtheorem{ans}{{\color{Black!20!Cerulean}回答}} %answer环境

\renewcommand\theans{}
\tcolorboxenvironment{ans}{
  boxrule=0pt,
  boxsep=10pt,
  colback={White!95!Cerulean},
  enhanced jigsaw, 
  borderline west={2pt}{0pt}{White!20!Cerulean},
  sharp corners=northeast,
  before skip=0pt,
  after skip=20pt,
  breakable,
  shadow={1mm}{-1mm}{0mm}{fill=greyshadow},
}

%%% q&a environment
\newenvironment{qna}[1]{
    \begin{que}
        #1
    \end{que}
    \begin{ans}\upshape
    }{
    \end{ans}}

%%% conc环境
\newtheorem{conc}{结论} %conclusion
\tcolorboxenvironment{conc}{
  boxrule=0pt,
  boxsep=2pt,
  colback={White!90!Dandelion},
  enhanced jigsaw, 
  borderline west={2pt}{0pt}{Dandelion},
  sharp corners,
  before~skip=10pt,
  after~skip=10pt,
  breakable,
}

%%% 实验步骤环境
% \usepackage{array}
\newenvironment{step}{\setcounter{move}{1} \at{1.3}
    \begin{longtable}{@{*}m{1cm}<{\centering}|m{0.7\textwidth}||m{2cm}@{*}}
    }{
    \end{longtable}
}

\newcommand{\movehead}{% build head of exp step table.
    \hline\hline
        \hspace{1mm}\textbf{步骤}&
        \multicolumn{1}{>{\centering}p{0.7\textwidth}||}{\textbf{操作}}&
        \hspace{1mm}\textbf{完成情况}\\
    \hline\hline
}
\newcounter{move}%步骤计数器
\renewcommand\themove{\arabic{move}}
\newcommand{\move}[1]{
    {\hspace{1mm}\themove}
    & #1 & \stepcounter{move} \\ \hline} %%% step环境里的具体步骤。

% \newenvironment{step}{\setcounter{move}{1} \at{1.3}
%     \begin{longtable}{@{*}|p{0.7\textwidth}||p{0.15\textwidth}@{*}}
%     }{
%     \end{longtable}
% }

% \newcommand{\movehead}{% build head of exp step table.
%     \hline\hline
%     \multicolumn{1}{@{*}>{\centering}p{0.7\textwidth}||}{\textbf{操作}}&\multicolumn{1}{c@{*}}{\textbf{完成情况}}\\
%     \hline\hline
% }
% \newcounter{move}%步骤计数器
% \renewcommand\themove{步骤\arabic{move}. }
% \newcommand{\move}[1]{\hspace{4mm}\themove #1 & \stepcounter{move} \\ \hline} %%% step环境里的具体步骤。


%%% 实验记录表格
\newcommand{\recordhead}{ %快速生成记录信息表头
    \begin{center}
        \at{1.5}
        \begin{tabularx}{0.75\textwidth}{|*{4}{>{\centering\arraybackslash}X|}}
            \hline
            数据表格 && 时间 & \\ \hline
            地点 && 实验台 & \\ \hline
            操作人 && 记录人 & \\ \hline
        \end{tabularx}
    \end{center}
}
\newcommand{\recordheadplane}{ %快速生成记录信息表头
    \begin{center}
        \at{1.5}
        \begin{tabularx}{0.95\textwidth}{|*{6}{>{\centering\arraybackslash}X|}}
            \hline
            数据表格 && 地点 && 操作人员&\\ \hline
            时间    && 实验台 && 记录人员&\\ \hline
        \end{tabularx}
    \end{center}
}


%%%命令

\newcommand*{\at}[1]{\renewcommand{\arraystretch}{#1}} %做表格时调节行距便捷一些
\newcommand{\ct}{\centering} %居中更迅速
\newcommand{\ar}{\arraybackslash} %tabularx中正确换行的设置
\newcommand*{\ctab}{\centering\arraybackslash} %搞快点就可以

\newcommand*{\name}[1]{\renewcommand{\spaexp@tokens@name}{#1}}
\newcommand*{\stuid}[1]{\renewcommand{\spaexp@tokens@stuid}{#1}}
\newcommand*{\exptitle}[1]{\renewcommand{\spaexp@tokens@exptitle}{#1}}
\newcommand*{\major}[1]{\renewcommand{\spaexp@tokens@major}{#1}}
\newcommand*{\grade}[1]{\renewcommand{\spaexp@tokens@grade}{#1}}
\newcommand*{\expdate}[1]{\renewcommand{\spaexp@tokens@expdate}{#1}}

