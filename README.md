## Scraping-Web-Dotabuff
[![scrape_dotabuff](https://github.com/adzkaradlu/Scraping-Web-Dotabuff/actions/workflows/main.yml/badge.svg)](https://github.com/adzkaradlu/Scraping-Web-Dotabuff/actions/workflows/main.yml)

![image dota 2](https://cdn.akamai.steamstatic.com/steam/apps/570/capsule_616x353.jpg?t=1682639497)

Dota 2 adalah sebuah permainan arena pertarungan daring multiplayer, dan merupakan sekuel dari **_Defense of The Ancients_** mod pada _Warcraft 3: Reign of Chaos_ dan _Warcraft 3: Frozen Throne_. Dota 2 dikembangkan oleh **_Valve Corporation_**, terbit Juli 2013 Dota 2 dapat dimainkan secara gratis pada sistem operasi **Microsoft Windows**, **OS X** dan **Linux**. Dota 2 dapat dimainkan secara eksklusif melalui distributor resmi valve, **_Steam_**. 

## :blue_book: **Deskripsi**
Dotabuff merupakan tempat jutaan pemain Dota 2 mendapatkan statistik, berbagi game, profile pemain, dan lebih memahami game Dota 2. Dotabuff mengubah data mentah statistik dari miliaran publik match menjadi informasi yang dapat ditindaklanjuti yang dapat kita gunakan untuk mempelajari dan meningkatkan permainan kita dalam game Dota 2. Dotabuff secara luas dipandang sebagai salah satu sumber daya komunitas Dota 2 terkemuka untuk pemain baru maupun berpengalaman.

Project kali ini dilakukan scraping pada website https://www.dotabuff.com/heroes/played?date=week, dimana website ini menampilkan list heroes Dota berdasarkan match played, pick rate, win rate, dan KDA ratio  pada patch 7.33c selama seminggu terakhir. 

## :clipboard: **Dokumen**
Berikut ini adalah contoh dokumen pada MongoDB :

```
{
"_id":{"$oid":"64842b77084ba1d08201c53d"},
"Hero_1":"Silencer",
"Matches_Played":{"$numberDouble":"506439.0"},
"Pick_Rate":{"$numberDouble":"15.81"},
"Win_Rate":{"$numberDouble":"53.61"},
"KDA_Ratio":{"$numberDouble":"2.73"}
}
```
## :computer: **Visualisasi**

link visualisasi dari data yang telah di scraping : https://rpubs.com/nano31/1053733

## :walking: **Pengembang**
**Adzkar Adlu Hasyr Suruddin (G1501211033)**
