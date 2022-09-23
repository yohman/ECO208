---
marp: true
theme: uncover
headingDivider: 3
footer: Introduction to Econometrics B | 入門計量経済学B ![width:30px](images/yoh%20with%20globe.png)
paginate: true

---

# Regression Analysis<br>回帰分析

## What is regression analysis? 

回帰分析とは、求めたい要素の値に対し、他の要素がどの程度影響を与えているかを分析する手法です。

## Say what?

## Examples

### 

|![width:80px](images/x.png)<br>independent variable<br>説明変数||![width:80px](images/y.png)<br>dependent variable<br>目的変数|
|---|---|---|
|Distance walked<br>歩いた距離| ➡️ | Pokemon's caught<br>捕まえたポケモン数|

###
#### プラスかマイナス？
![](images/plus%20or%20minus.png)

### 

|![width:80px](images/x.png)<br>independent variable<br>説明変数||![width:80px](images/y.png)<br>dependent variable<br>目的変数|
|---|---|---|
|Advertising<br>広告費| ➡️ | revenue<br>利益|

###
#### プラスかマイナス？
![](images/plus%20or%20minus.png)

###

|![width:80px](images/x.png)<br>independent variable<br>説明変数||![width:80px](images/y.png)<br>dependent variable<br>目的変数|
|---|---|---|
|walking minutes to station<br>駅まで徒歩何分| ➡️ |rent<br>家賃|

###
#### プラスかマイナス？
![](images/plus%20or%20minus.png)

###

|![width:80px](images/x.png)<br>independent variable<br>説明変数||![width:80px](images/y.png)<br>dependent variable<br>目的変数|
|---|---|---|
|hours spent partying| ➡️ |grades|

###
#### プラスかマイナス？
![](images/plus%20or%20minus.png)

###

|![width:80px](images/x.png)<br>independent variable<br>説明変数||![width:80px](images/y.png)<br>dependent variable<br>目的変数|
|---|---|---|
|student height| ➡️ |grades|

###
#### プラスかマイナス？
![](images/plus%20or%20minus.png)

###

|![width:80px](images/x.png)<br>independent variable<br>説明変数||![width:80px](images/y.png)<br>dependent variable<br>目的変数|
|---|---|---|
|hours practiced| ➡️ |points per game|

###
#### プラスかマイナス？
![](images/plus%20or%20minus.png)

## Types of regressions

- simple 単回帰分析
- multiple 重回帰分析
- logistic ロジスティック回帰分析

## Let's try it in Excel

## Data

![width:600px](images/lifull.png)

## Data in Excel

![width:300px](images/lifull2.png)

## 何が知りたい？

目的変数と説明変数を決める

## 

|![width:80px](images/x.png)<br>independent variable<br>説明変数||![width:80px](images/y.png)<br>dependent variable<br>目的変数|
|---|---|---|
|minutes<br>駅まで徒歩何分| ➡️ ||
|size<br>面積| ➡️ |rent<br>家賃|
|age<br>築年数| ➡️ ||

## まずは単回帰分析

|![width:80px](images/x.png)<br>independent variable<br>説明変数||![width:80px](images/y.png)<br>dependent variable<br>目的変数|
|---|---|---|
|minutes<br>駅まで徒歩何分| ➡️ |rent<br>家賃|

## 仮設検定

### 帰無仮説 【null hypothesis】
$$H_0 = 駅までの徒歩分数は家賃に全く影響がない$$
$$\beta_1 = 0$$

### 対立仮説【alternative hypothesis】
$$H_1 = 駅までの徒歩分数は家賃に影響がある$$
$$\beta_1 \neq 0$$

## データで見ると？

![width:800px](images/excel%20xy.png)


## First, a scatter plot
まずは散布図を作ろう
![width:600px](images/excel%20scatter.png)

## 
![width:800px](images/r%20excel.png)

## Regression options

![width:600px](images/excel%20reg.png)

## Regression output

![width:800px](images/excel%20reg%20output.png)

## なんだこりゃ？

## まずは回帰式を作ろう

Y = a + bX

家賃（万円）＝　a + b x 駅まで徒歩分数

##

![](images/excel%20equation.png)

##

家賃（万円）＝　10.09 - 0.125 x 駅まで徒歩分数

## すなわち

南柏の駅からの徒歩分数が1分増えるごとに
家賃が1250円減る

## では「a」（切片）は何？

これは「x」がゼロの時の数値。

すなわち、駅から徒歩分数がゼロの賃貸（ありえますか？）の場合、家賃は１０.０９万円

## Is this trustworthy?

How good are the 説明変数's?

Is there a "real" difference? Or just a "lucky" outcome based on chance?

t-value and p-value tells us how confident we are that our difference is "real" or not

##
## How good is this model?
#### R2

## R-Squared: How well does it fit?

R2 = 1 (perfect fit 😀)
R2 = 0 (bad fit　😖)

![](images/r2%20explained.png)

## ではこの分析のR2乗は？

![](images/excel%20r2.png)

## T statistic<br>t検定




## What about the P value?

P値で説明変数（徒歩分数）が目的変数（家賃）に対して関係があるかどうかを確認する

##

P値が0.05未満であれば、
「関係性がある」と判断ができる。


要するに、この関係性はランダムではないので、帰無仮説 【null hypothesis】をrejectすることができる。

## でも…

![](images/excel%20low%20p.png)

## 

At 94% level of confidence that relationship is not due to random chance. That relationship actually exists in the housing market.
##

another way to say this is...
##
If null hythesis is true (truly zero), the probability of observing a result as extreme or more extreme as this is only 6%.
##
What does this mean? 

Let's say there are millions of data points. If we were to randomly take 30 data points at a time and do this thousands of times, then 6% of those would result in a t-value higher (or lower in this case) than -1.95.


## In that case...

他の説明変数で試してみよう！