## Getting Started with R-Studio (R-Studioを始めよう）

### Install R Studio （インストール）


### Get some data　（データをゲット！）

[Big earthquakes in the last 30 days](https://earthquake.usgs.gov/earthquakes/map/?extent=-87.55511,-22.5&extent=87.55511,382.85156&range=search&search=%7B%22name%22:%22Search%20Results%22,%22params%22:%7B%22starttime%22:%222022-08-06%2000:00:00%22,%22endtime%22:%222022-09-05%2023:59:59%22,%22minmagnitude%22:4.5,%22orderby%22:%22time%22%7D%7D)

### Launch R Studio　（RStudioを使おう）

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
