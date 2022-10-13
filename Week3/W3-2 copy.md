---
marp: true
theme: uncover
headingDivider: 3
footer: Introduction to Econometrics B | 入門計量経済学B ![width:30px](../images/yoh%20with%20globe.png)
paginate: true

---

## Gapminder... 知ってますか？
![](../images/gapminder%20logo.png)

##
![](../images/gapminder-hans.jpg)


## Getting Started with R-Studio<br>R-Studioを始めよう

If you haven't installed R and RStudio, use the [following guide](Install%20R.md) to do so first, and then come back.

「R」と「RStudio」をインストールしてなかったら、[このガイド](Install%20R.md)でインストールしてからここに戻ってきましょう。

## What you will learn

This workshop will attempt to answer the following questions:

- What are the characteristics of global earthquakes that have occured in the last 30 days?
- What is the largest earthquake?
- What does the distribution of the magnitudes look like?
- Is there a lot of variance in the magnitudes?

## 学ぶ課題
このワークショップでは次の疑問に答えようとします：

- 過去 30 日間に発生した世界的な地震の特徴は何ですか?
- 最大の地震は何ですか?
- マグニチュードの分布はどのように見えますか?
- マグニチュードには大きなばらつきがありますか?


## Let's get started
### Get some data<br>データをゲット！

Click here first (まずこのリンクをクリック）→ [Big earthquakes in the last 30 days](https://earthquake.usgs.gov/earthquakes/map/?extent=-87.55511,-22.5&extent=87.55511,382.85156&range=search&search=%7B%22name%22:%22Search%20Results%22,%22params%22:%7B%22starttime%22:%222022-08-06%2000:00:00%22,%22endtime%22:%222022-09-05%2023:59:59%22,%22minmagnitude%22:4.5,%22orderby%22:%22time%22%7D%7D)

![bg right](https://user-images.githubusercontent.com/825990/188381530-2d634b5c-01bf-43e8-baa1-d41e8e2c5f00.png)

### Download as csv file (csvファイルとしてダウンロード）

![](https://user-images.githubusercontent.com/825990/188383617-b8650f50-a999-4382-8a56-8917dda00a84.png)

###

Rename ```query.csv``` to ```quake.csv```

### Launch R Studio　（RStudioを使おう）

Open RStudio, go to File → New Project

<kbd><img alt="new" src="https://user-images.githubusercontent.com/825990/188397384-f3959680-8791-4c06-9c09-2c054ce483cc.png" width=600></kbd>

### 
![width:700](../images/R%20new%20directory.png)

###
![width:700](../images/r%20new%20project.png)

###
![width:700](../images/r%20new%20project%20file%20name.png)

###
![width:1100](../images/r%20project%20starting%20screen.png)

###

Pause: Are we all here?

## Let's load some data! 🤓

###

![width:1000](../images/r%20import%20data.png)

###

![width:1000](../images/r%20load%20data.png)

##
![width:1000](../images/r%20quake%20loaded.png)





##
```
library(readr)
quake <- read_csv("quake.csv")
View(quake)
```

### View the data　（データを見る）
```
View(quake)
```

### Get some stats　（統計を出す）
s
