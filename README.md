<a href="https://benature.github.io/"><img src="img/starhub.png" width="300" align="right"></a>

# 实验报告模板

Experiment Report SPA Template

![GitHub contributors](https://img.shields.io/github/contributors/StarHub-SPA/Experiment_Report_SPA_Template)
![GitHub issues](https://img.shields.io/github/issues-raw/StarHub-SPA/Experiment_Report_SPA_Template)
![GitHub stars](https://img.shields.io/github/stars/StarHub-SPA/Experiment_Report_SPA_Template?style=flat)
![GitHub forks](https://img.shields.io/github/forks/StarHub-SPA/Experiment_Report_SPA_Template)

## 使用说明

### 下载模板

1. clone: 以下两个命令二选一即可  

   ```shell
   git clone git@github.com:StarHub-SPA/Experiment_Report_SPA_Template.git
   git clone https://github.com/StarHub-SPA/Experiment_Report_SPA_Template
   ```

   优点：方便版本更新

2. 直接下载[`cls`文件](https://github.com/StarHub-SPA/Experiment_Report_SPA_Template/blob/master/spaexp.cls)  
   优点：小白友好

### 模板使用

参考[`example.tex`](https://github.com/StarHub-SPA/Experiment_Report_SPA_Template/blob/master/example.tex)，里面已经有较为详细的说明，在此不再赘述。

编译效果如[`example.pdf`](https://github.com/StarHub-SPA/Experiment_Report_SPA_Template/blob/master/example.pdf)所示。

### 其他

关于 LaTeX 的表格代码，若是纯手写会比较繁琐，可以用 pypi 安装`AutoLaTeX`来减少工作量，详见 <https://github.com/Benature/AutoLaTeX>。

```shell
pip install autolatex
```

## 开发分支（先行版）

- [Loeng](https://github.com/StarHub-SPA/Experiment_Report_SPA_Template/tree/loeng)
- [Benature](https://github.com/StarHub-SPA/Experiment_Report_SPA_Template/tree/benature)

>致老用户：如果您发现更新仓库后发现本地文件夹除了`img`还有别的（遗留）文件夹，请看[这里](https://github.com/StarHub-SPA/Experiment_Report_SPA_Template/issues/4)。

---

⭐️**StarHub** 出品

如有疑惑或修改意见，欢迎在 [issue](https://github.com/StarHub-SPA/Experiment_Report_SPA_Template/issues) 中提出（推荐），或者邮件联系作者 <StarHub@qun.mail.163.com>.  
> [关于 issue 是什么](https://www.notion.so/benature/Issue-aafd379ec9ef4801a61078179cf667d7)

当然，也欢迎和我们一起开发模板，让实验报告写得更顺手、更好看。

>好用不如给颗🌟

---

## 更新日志

- feature: 实验表头内容支持换行符`\\` @**Benature**-2019/04/03
- feature: 实现操作系统判定。 @**Loeng**-2019/03/31
- update:  实验步骤`step`边缘星号`*`竖直居中+步骤单独一列  @**Benature**-2019/03/27
- update:  增加`recordheadplane`命令：横版实验数据记录表头  @**Benature**-2019/03/26
- feature: 增加实验记录信息表格 `\recordhead` @**Loeng**-2019/03/26
- feature: 增加实验步骤表格环境 `step` @**Loeng**-2019/03/26
- update:  `qna` 思考题环境(Q&A)样式设计 @**Benature**-2019/03/21
- feature: 增加 `qna` 思考题环境(Q&A) @**Loeng**-2019/03/21

