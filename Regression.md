---
marp: true
theme: uncover
headingDivider: 3
---

# Regression Analysis<br>回帰分析

## What is regression Analysis? 

回帰分析とは、求めたい要素の値に対し、他の要素がどの程度影響を与えているかを分析する手法です。

## Say what?

## Examples

### 


|independent variable<br>(説明変数）||dependent variable<br>(目的変数)|
|---|---|---|
|Advertising<br>広告費| ➡️ | revenue<br>利益|


###

|independent variable<br>(説明変数）||dependent variable<br>(目的変数)|
|---|---|---|
|walking minutes to station<br>駅まで徒歩何分| ➡️ |rent<br>家賃|

###

|independent variable<br>(説明変数）||dependent variable<br>(目的変数)|
|---|---|---|
|hours spent partying| ➡️ |grades|

###

|independent variable<br>(説明変数）||dependent variable<br>(目的変数)|
|---|---|---|
|student height| ➡️ |grades|

###

|independent variable<br>(説明変数）||dependent variable<br>(目的変数)|
|---|---|---|
|hours practiced| ➡️ |points per game|

## Types of regressions

- 単回帰分析
- 重回帰分析
- ロジスティック回帰分析

## Let's try it in Excel

## Data

![width:600px](images/lifull.png)

## Data in Excel

![width:300px](images/lifull2.png)

## 何が知りたい？

目的変数と説明変数を決める

## 

|independent variable<br>(説明変数）||dependent variable<br>(目的変数)|
|---|---|---|
|minutes<br>駅まで徒歩何分| ➡️ ||
|size<br>面積| ➡️ |rent<br>家賃|
|age<br>築年数| ➡️ ||

## まずは単回帰分析

|independent variable<br>(説明変数）||dependent variable<br>(目的変数)|
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

## R-Squared: How well does it fit?

R2 = 1 (perfect fit 😀)
R2 = 0 (bad fit　😖)

![](images/r2%20explained.png)

## ではこの分析のR2乗は？

![](images/excel%20r2.png)

## What about the F

## In that case...

他の説明変数で試してみよう！