# README
## 概要
Ruby on Railsで製作した、データベースと情報をやり取りするためのWebAPIです。  
<https://github.com/TT375S/SensorTest1.git>や、<https://github.com/TT375S/BicycleRiskMapView.git>で使うデータベースはこいつです。  
座標や速度や、状況(避けた、急停止した等)と時刻を記録しています。  
なお、自宅のRaspberry Piで動かしているので大量のデータは処理できない上、こちらの都合で再起動中など繋がらないことがあります。  
## 使い方
http://(ドメイン名orIPアドレス):3000/dots/api/search/rectangle/json/?latitudeNW=36.3675&longtitudeNW=166.32322&latitudeSE=36.364322&longtitudeSE=167.32211  
などとしてクエリを送信。クエリ文字列に含まれるlatitudeNWとかlatitudeSEとかは、検索範囲の矩形の右端と左下の座標を指定しています。  
(矩形での検索はまだ実装しておらず、現状はデータベースの中身全部を返しています)  
レスポンスはJSON形式で返します。  

  
http://(ドメイン名orIPアドレス):3000/dots/api/post/json  
として、POSTリクエストを送りbodyにはjsonを入れれば、データベースにデータが送れます。  
自動でデータベースに追加されますが、このときデータが不足していると困る(パースしたJSONからデータ取り出す時に止まる？)ので、必ず上の検索APIが返してくるJSONと同じ形式のデータを送ってください。  


