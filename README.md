# portfolio_website
用java ssm框架 模仿蝦皮網站

版本:
* maven3  
* jdk8  
* tomcat9.0.24  
* mysql5.7.19

功能:  
* 帳號註冊登入  
* 購物車  
* 推薦系統
[![web demo](https://user-images.githubusercontent.com/37287974/169712572-9a937986-7016-4a50-86b2-64f61d024dad.png)](https://www.youtube.com/watch?v="It-bzrEcaZ4" "web demo")  


架構
--
![網站架構圖](https://user-images.githubusercontent.com/37287974/169712037-768f80de-abaa-4365-afd0-0a905b239fd0.png)  

資料庫架構
--

製作網站流程  
--

先從蝦皮爬取資料和圖片(總共138000個商品)  
用之前在打kaggle競賽模型(蝦皮舉辦的)預測每個商品的相似商品
https://github.com/h053473666/shoppe_crawler_and_recommender_system  

把預測得到的csv檔寫入sql  
https://github.com/h053473666/csv_to_mysql  

製作網站:
* 後端自己設計
* 前端靜態css大部分是蝦皮網站的
