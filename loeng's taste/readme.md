# StarHub-SPA 实验模版


## 叨叨两句
这个宏包稍微便捷的提供了一些实验报告的版式要求。除了一些老师有具体要求的硬性规定以外，大部分的版式都是根据制作人个人喜好所设置。大家如果不喜欢其中的某些设定，可以主动联系制作人或者 StarHub-SPA 。另外，这个宏包所提供的功能十分有限，若需要实验一些额外功能，很可能会需要额外引入另外的宏包。若在使用过程中发现有一些比较常用的功能，认为可以把这个功能整合进此宏包内的，请务必联系 StarHub-SPA 。暂时的愿望是希望把此宏包做成实验模版 all in one。

## 宏包的基础版式设置
1. 中文字体使用`宋体`、英文字体设置为`Times New Roman`、数学字体使用`euler`字体。默认字号为小四。
2. 使用半角标点符号。
3. 版心，也就是除页眉、页脚、旁注外的中心部分，宽度与长度分别占纸张长宽的80%。
4. 左页眉使用小五黑体显示实验标题，右页眉显示section（节），中部页脚显示页数。
5. 公式标号为section（节）的下级计数器，如第二节第三个公式为：2.3。
6. 增加了两个环境，分别为ans和conc。ans用来回答实验思考题，conc作为最后得出结论。用法为
```tex
\begin{ans}                         \begin{conc}
    因为……                              从此可以得到……
\end{ans}                           \end{conc}
```
ans环境采用的计数器附属于``enumerate``环境，conc的计数器为独立计数。

7. 有几个便捷命令的设置，具体的命令用法可以参考示例或者是其他TeX资料。
```tex
\newcommand{\at}[1]{\renewcommand{\arraystretch}{#1}} %做表格时调节行距便捷一些
\newcommand{\ct}{\centering} %居中更迅速
\newcommand{\ar}{\arraybackslash} %tabularx中正确换行的设置
```

## 宏包使用教程
需要前置要求，使用宏包前先检查几个事情：
- 你的电脑**完整**的安装了较新版本 2015+ 的TeX发行版
- *documentclass*使用`ctexart`并且设置`no-math,zihao = -4`
```tex 
\documentclass[no-math,zihao = -4]{ctexart}
```
- 将 spaexptemp.sty 文件与编辑的 *.tex 文件放在同一目录下。
- 在导言区`\begin{document}`前使用命令`\usepackage{spaexptemp}`就可以使用该宏包

- 更方便的用法其实是将 spaexptemp.sty 放在固定目录，然后使用`\usepackage{spaexptemp}`命令时指明宏包路径。例如：我的 spaexptemp.sty 文件放在 `~/template/spaexptemp.sty`文件夹下。我调用时使用`\usepackage{~/template/spaexptemp}`就可以正确使用宏包。这个操作涉及一丢丢的路径方面的命令。若是小小白则可以直接无脑放在同一目录，百度搜索“相对路径”、“相对路径”、“返回上级目录” 可以得到这方面的学习资料。

- 正确填写好待填信息：
```tex
%====待填信息，这部分内容请使用时据实际修改第二个大括号的内容====%
\newcommand{\exptitle}{CC1+A 热辐射的测量设计性实验} %建议输入完整的实验名称
\newcommand{\stid}{1XXXXXXX} %输入自己的学号
\newcommand{\major}{XX学} %填入专业信息：如"物理学"
\newcommand{\grade}{20XX级} %年级
\newcommand{\name}{张三} %你的名字
```
把对应位置的信息修改成这次实验报告的信息。

- 因为课程的实验报告中，开头都有一个评分表格与一个信息表格，老师没有硬性要求，但是两个表格出现在老师所给的 word 版本的模版当中，我不敢改也不敢删。为了方便起见，已经把表格部分的代码整合在宏包里面了。在开始写正文时，你只需要这样：
```tex
\begin{document} %这个是开始正文的意思
\kaitou          %就是加上这行命令，你的开头两个表格就制作完成了。

正文正文正文正文正文正文
```
- 至此，你可以开心的写实验报告了。示例：`simple.tex`
---
## 宏包所调用的其他宏包
- `tabularx`  制作表格时单元格自动同一宽度
- `amsmath`   更好的数学环境
- `amssymb`   更好的数学符号
- `bm`        数学环境中字母粗体
- `mathrsfs`  使用花体字 命令`\mathscr`
- `subfigure` 插入子图片
- `booktabs`  使用三线表的三横线
- `graphicx`  使用\includegraphics 命令插入图片

---

## 结尾
模版制作参考了王本然、梁伟棠的实验模版以及Adhumunt 的 NotesTeX 宏包。
感谢！


>SPA ExpTemplate v1.0.
>Created by loeng 
>Email：liangwd23@mail2.sysu.edu.cn