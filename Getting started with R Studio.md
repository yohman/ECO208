## Getting Started with R-Studio (R-Studioを始めよう）

### Install R Studio （インストール）


### Get some data　（データをゲット！）

Click here first (まずこのリンクをクリック）→ [Big earthquakes in the last 30 days](https://earthquake.usgs.gov/earthquakes/map/?extent=-87.55511,-22.5&extent=87.55511,382.85156&range=search&search=%7B%22name%22:%22Search%20Results%22,%22params%22:%7B%22starttime%22:%222022-08-06%2000:00:00%22,%22endtime%22:%222022-09-05%2023:59:59%22,%22minmagnitude%22:4.5,%22orderby%22:%22time%22%7D%7D)

<kbd><img src="https://user-images.githubusercontent.com/825990/188381530-2d634b5c-01bf-43e8-baa1-d41e8e2c5f00.png" width=600></kbd>

Download as csv file (csvファイルとしてダウンロード）

<kbd><img src="https://user-images.githubusercontent.com/825990/188383617-b8650f50-a999-4382-8a56-8917dda00a84.png" width=600></kbd>

### Launch R Studio　（RStudioを使おう）

Open RStudio, go to File → New Project

<kbd><img alt="new" src="https://user-images.githubusercontent.com/825990/188397384-f3959680-8791-4c06-9c09-2c054ce483cc.png" width=600></kbd>

New Directory → New Project

<kbd><img alt="new" src="https://user-images.githubusercontent.com/825990/188398984-603300e9-b6ff-48f8-82d6-79eb9037b1e2.png" width=600></kbd>

Enter "R101" for "Directory name" and choose a location to store your project:

<kbd><img alt="directory name" src="https://user-images.githubusercontent.com/825990/188399822-0522c422-6dd2-43f0-a8ff-11d836dcb41f.png" width=600></kbd>


### Load the data　（データを取り込む）
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
