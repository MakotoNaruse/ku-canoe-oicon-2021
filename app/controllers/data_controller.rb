class DataController < ApplicationController
  @@money = "2000万円"

  @@ways = [
    ["百万遍", "京大正門前", "近衛通", "京大病院前", "熊野神社前", "岡崎道", "岡崎神社前",
     "東天王町", "真如堂前", "錦林車庫前", "浄土寺", "銀閣寺道", "北白川", "京大農学部前",
     "百万遍", "飛鳥井町", "田中大久保町", "高野", "高野橋東詰", "高木町", "下鴨東本町",
     "洛北高校前", "一本松", "下鴨神社前", "糺ノ森", "新葵橋", "葵橋西詰", "河原町今出川",
     "出町柳駅前", "百万遍"],
    ["出町柳駅前", "新葵橋"],
    ["河原町今出川", "府立医大病院前", "荒神口", "河原町丸太町", "丸太町京阪前",
     "熊野神社前", "東山二条", "東山仁王門", "知恩院前", "祇園", "東山安井", "清水道",
     "五条坂", "馬町", "東山七条"],
    ["東山七条", "今熊野", "泉涌寺道", "東福寺", "九条河原町", "大石橋", "九条車庫前", "東寺道", "京都駅八条口", "大石橋"],
    ["京都駅前", "京都駅八条口"],
    ["京都駅前", "烏丸七条", "烏丸六条", "烏丸五条", "烏丸松原", "四条烏丸", "四条高倉", "四条河原町", "四条京阪前", "祇園"],
    ["京都駅前", "塩小路高倉", "七条河原町", "七条京阪前", "博物館・三十三間堂前", "東山七条"],
    ["七条河原町", "河原町正面", "河原町五条", "河原町松原", "四条河原町", "河原町三条", "京都市役所前", "河原町丸太町",
     "裁判所前", "烏丸丸太町", "府庁前", "堀川丸太町"],
    ["洛北高校前", "府立大学前", "植物園前", "烏丸北大路", "北大路バスターミナル", "北大路新町", "北大路堀川", "堀川鞍馬口",
     "天神公園前", "堀川寺ノ内", "堀川上立売", "堀川今出川", "一条戻橋", "堀川中立売", "堀川下長者町", "堀川下立売",
     "堀川丸太町", "二条城前", "堀川御池", "堀川三条", "堀川蛸薬師", "四条堀川", "堀川松原", "堀川五条", "西本願寺前",
     "七条堀川", "下京区総合庁舎前", "京都駅前"],
    ["下京区総合庁舎前", "東寺道"],
    ["七条河原町", "烏丸七条", "七条堀川"],
    ["河原町五条", "五条高倉", "烏丸五条", "堀川五条"],
    ["四条烏丸", "四条西洞院", "四条堀川"],
    ["東山三条", "三条京阪前", "河原町三条"],
    ["三条京阪前", "四条京阪前"],
    ["東山二条", "新間ノ町二条", "川端二条", "京都市役所前"],
    ["河原町今出川", "同志社前", "烏丸今出川", "上京区総合庁舎前", "堀川今出川"]
  ]

  @@teams = [
    {
      :station => "七条河原町",
      :style => "team-red",
      :x => "-6",
      :y => "36",
      :name => "チームA",
      :amount => "6500万円",
      :cards => [],
      :properties => [
        {
          :name => "民宿",
          :price => "7000万円",
          :rate => "50%",
        },
        {
          :name => "民宿",
          :price => "7000万円",
          :rate => "50%",
        },
        {
          :name => "結婚式場",
          :price => "7000万円",
          :rate => "50%",
        },
      ]
    },
    {
      :station => "七条河原町",
      :style => "team-blue",
      :x => "36",
      :y => "-6",
      :name => "チームB",
      :amount => "4億0950万円",
      :cards => [],
      :properties => [
        {
          :name => "コンビニ",
          :price => "3000万円",
          :rate => "70%",
        },
        {
          :name => "スタバ",
          :price => "3000万円",
          :rate => "100%",
        },
        {
          :name => "ラーメン屋",
          :price => "3000万円",
          :rate => "100%",
        },
      ]
    },
    {
      :station => "堀川御池",
      :style => "team-yellow",
      :x => "36",
      :y => "36",
      :name => "チームC",
      :amount => "850万円",
      :cards => ["急行カード","急行カード"],
      :properties => []
    },
    {
      :station => "上京区総合庁舎前",
      :style => "team-green",
      :x => "-6",
      :y => "-6",
      :name => "チームD",
      :amount => "-2800万円",
      :cards => ["寺・神社カード"],
      :properties => [
        {
          :name => "パフェ店",
          :price => "3000万円",
          :rate => "100%",
        },
      ]
    },
    {
      :station => "一条戻橋",
      :style => "kozawa",
      :x => "-6",
      :y => "-6",
      :name => "のっぽ",
      :discription => ""
    }
  ]

  @@cards = [
    {
      :name => "急行カード",
      :buy => "1000万円",
      :sell => "500万円"
    },
    {
      :name => "特急カード",
      :buy => "4000万円",
      :sell => "2000万円"
    },
    {
      :name => "新幹線カード",
      :buy => "1億円",
      :sell => "5000万円"
    },
    {
      :name => "☆に願いをカード",
      :buy => "2億円",
      :sell => "1億円"
    },
    {
      :name => "スペシャルカード",
      :buy => "1億6000万円",
      :sell => "8000万円"
    }
  ]

  @@stations = [
    {
      :lat => "35.028784062101586",
      :lng => "135.77923866394048",
      :type => "station-blue",
      :name => "百万遍"
    },
    {
      :lat => "35.02855372256138",
      :lng => "135.78304763608173",
      :type => "station-red",
      :name => "京大農学部前"
    },
    {
      :lat => "35.028879333769424",
      :lng => "135.7862139838238",
      :type => "station-property",
      :name => "北白川",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>シエルコート北白川<td>3000万円<td>5%<td></tr><tr><td>ヴィラ佐藤<td>5000万円<td>10%<td></tr></table>",
      :properties => [
        {
          :name => "シエルコート北白川",
          :price => "3000万円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "ヴィラ佐藤",
          :price => "5000万円",
          :rate => "10%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.027908536319565",
      :lng => "135.79142819814876",
      :type => "station-property",
      :name => "銀閣寺道",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>哲学の道図書館<td>3000万円<td>50%<td></tr><tr><td>白沙村荘記念館<td>5000万円<td>50%<td></tr><tr><td>和菓子店<td>7000万円<td>70%<td></tr><tr><td>蕎麦屋<td>3000万円<td>100%<td></tr><tr><td>和雑貨店<td>3000万円<td>50%<td></tr></table>",
      :properties => [
        {
          :name => "哲学の道図書館",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "白沙村荘記念館",
          :price => "5000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "和菓子店",
          :price => "7000万円",
          :rate => "70%",
          :owner => ""
        },
        {
          :name => "蕎麦屋",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "和雑貨店",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.0251782829269",
      :lng => "135.79188184021123",
      :type => "station-blue",
      :name => "浄土寺"
    },
    {
      :lat => "35.02122949616092",
      :lng => "135.79221509962625",
      :type => "station-blue",
      :name => "錦林車庫前"
    },
    {
      :lat => "35.019561406336145",
      :lng => "135.79160581669726",
      :type => "station-red",
      :name => "真如堂前"
    },
    {
      :lat => "35.0167277282406",
      :lng => "135.7907689674846",
      :type => "station-property",
      :name => "東天王町",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>ホテル平安の森<td>2億円<td>20%<std></tr><tr><td>居酒屋<td>3000万円<td>100%<td></tr><tr><td>ガソリンスタンド<td>3000万円<td>100%<td></tr><tr><td>泉屋博古館<td>5000万円<td>50%<td></tr></table>",
      :properties => [
        {
          :name => "ホテル平安の森",
          :price => "2億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "居酒屋",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ガソリンスタンド",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "泉屋博古館",
          :price => "5000万円",
          :rate => "50%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.01667061433925",
      :lng => "135.78804384312548",
      :type => "station-card",
      :name => "岡崎神社前"
    },
    {
      :lat => "35.01695744604054",
      :lng => "135.78575763336264",
      :type => "station-red",
      :name => "岡崎道"
    },
    {
      :lat => "35.017359180358596",
      :lng => "135.7783869229897",
      :type => "station-property",
      :name => "熊野神社前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>京大病院<td>3億円<td>50%<td></tr><tr><td>八つ橋屋<td>3000万円<td>100%<td></tr><tr><td>パフェ店<td>3000万円<td>100%<td></tr><tr><td>ラーメン屋<td>3000万円<td>100%<td></tr><tr><td>神社<td>7000万円<td>50%<td></tr></table>",
      :properties => [
        {
          :name => "京大病院",
          :price => "3億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "八つ橋屋",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "パフェ店",
          :price => "3000万円",
          :rate => "100%",
          :owner => "D"
        },
        {
          :name => "ラーメン屋",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "神社",
          :price => "7000万円",
          :rate => "50%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.020390492215675",
      :lng => "135.77847811298977",
      :type => "station-card",
      :name => "京大病院前"
    },
    {
      :lat => "35.02186219383679",
      :lng => "135.77856394367825",
      :type => "station-red",
      :name => "近衛通"
    },
    {
      :lat => "35.02522284598233",
      :lng => "135.7785907657684",
      :type => "station-property",
      :name => "京大正門前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>時計台記念館<td>2億円<td>5%<td></tr><tr><td>フランス料理屋<td>7000万円<td>50%<td></tr><tr><td>京都大学博物館<td>1億円<td>10%<td></tr><tr><td>ルネ<td>5000万円<td>100%<td></tr><tr><td>学術メディアセンター<td>1億円<td>5%<td></tr><tr><td>国際高等教育院<td>3000万円<td>20%<td></tr></table>",
      :properties => [
        {
          :name => "時計台記念館",
          :price => "2億円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "フランス料理屋",
          :price => "7000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "京都大学博物館",
          :price => "1億円",
          :rate => "10%",
          :owner => ""
        },
        {
          :name => "ルネ",
          :price => "5000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "学術メディアセンター",
          :price => "1億円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "国際高等教育院",
          :price => "3000万円",
          :rate => "20%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.032932685555586",
      :lng => "135.780268782486",
      :type => "station-blue",
      :name => "飛鳥井町"
    },
    {
      :lat => "35.034379252202",
      :lng => "135.7807570670597",
      :type => "station-property",
      :name => "叡電元田中",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>スーパーマーケット<td>3000万円<td>100%<td></tr><tr><td>鍋料理屋<td>1000万円<td>100%<td></tr><tr><td>中華料理屋<td>1000万円<td>100%<td></tr><tr><td>丼屋<td>1000万円<td>100%<td></tr><tr><td>焼肉屋<td>1000万円<td>100%<td></tr><tr><td>叡電元田中駅<td>5000万円<td>70%<td></tr></table>",
      :properties => [
        {
          :name => "スーパーマーケット",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "鍋料理屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "中華料理屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "丼屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "焼肉屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "叡電元田中駅",
          :price => "5000万円",
          :rate => "70%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.037061156891106",
      :lng => "135.78159333587482",
      :type => "station-card",
      :name => "田中大久保町"
    },
    {
      :lat => "35.040712539465254",
      :lng => "135.78269544250415",
      :type => "station-property",
      :name => "高野",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>イズミヤ<td>1億円<td>20%<td></tr><tr><td>ミスタードーナツ<td>3000万円<td>30%<td></tr><tr><td>ドコモショップ<td>3000万円<td>50%<td></tr><tr><td>ラーメン屋<td>1000万円<td>100%<td></tr><tr><td>ラーメン屋<td>1000万円<td>100%<td></tr><tr><td>ラーメン屋<td>1000万円<td>100%<td></tr><tr><td>ラーメン屋<td>1000万円<td>100%<td></tr><tr><td>ラーメン屋<td>1000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "イズミヤ",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "ミスタードーナツ",
          :price => "3000万円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "ドコモショップ",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "ラーメン屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ラーメン屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ラーメン屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ラーメン屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ラーメン屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.042491825943145",
      :lng => "135.77946574369636",
      :type => "station-blue",
      :name => "高野橋東詰"
    },
    {
      :lat => "35.04322089317728",
      :lng => "135.77818901220527",
      :type => "station-red",
      :name => "高木町"
    },
    {
      :lat => "35.043996068973314",
      :lng => "135.7768586365339",
      :type => "station-property",
      :name => "下鴨東本町",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>セブンイレブン<td>1000万円<td>70%<td></tr><tr><td>印刷会社<td>3000万円<td>50%<td></tr><tr><td>民宿<td>7000万円<td>50%<td></tr><tr><td>ホテル<td>1億円<td>50%<td></tr><tr><td>ホテル<td>1億円<td>50%<td></tr></table>",
      :properties => [
        {
          :name => "セブンイレブン",
          :price => "1000万円",
          :rate => "70%",
          :owner => ""
        },
        {
          :name => "印刷会社",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "民宿",
          :price => "7000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "ホテル",
          :price => "1億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "ホテル",
          :price => "1億円",
          :rate => "50%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.04399472777025",
      :lng => "135.77085954981197",
      :type => "station-card",
      :name => "洛北高校前"
    },
    {
      :lat => "35.04390249760627",
      :lng => "135.76817197637905",
      :type => "station-blue",
      :name => "府立大学前"
    },
    {
      :lat => "35.04380587541805",
      :lng => "135.7643256886517",
      :type => "station-red",
      :name => "植物園前"
    },
    {
      :lat => "35.04366972577704",
      :lng => "135.7601468070065",
      :type => "station-property",
      :name => "烏丸北大路",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>英会話スクール<td>3000万円<td>50%<td></tr><tr><td>馬淵教室<td>5000万円<td>50%<td></tr><tr><td>東進<td>5000万円<td>50%<td></tr><tr><td>幼稚園<td>5000万円<td>20%<td></tr></table>",
      :properties => [
        {
          :name => "英会話スクール",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "馬淵教室",
          :price => "5000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "東進",
          :price => "5000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "幼稚園",
          :price => "5000万円",
          :rate => "20%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.04386297036127",
      :lng => "135.75830847688908",
      :type => "station-property",
      :name => "北大路バスターミナル",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>大谷大学<td>2億円<td>5%<td></tr><tr><td>バス会社<td>3億円<td>50%<td></tr><tr><td>地下鉄<td>3億円<td>50%<td></tr><tr><td>北大路ビブレ<td>3億円<td>50%<td></tr><tr><td>スターバックスコーヒー<td>3000万円<td>100%<td></tr><tr><td>サーティーワンアイスクリーム<td>3000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "大谷大学",
          :price => "2億円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "バス会社",
          :price => "3億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "地下鉄",
          :price => "3億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "北大路ビブレ",
          :price => "3億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "スターバックスコーヒー",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "サーティーワンアイスクリーム",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.04223873987208",
      :lng => "135.75466130798995",
      :type => "station-blue",
      :name => "北大路新町"
    },
    {
      :lat => "35.04066638713358",
      :lng => "135.75174306458175",
      :type => "station-card",
      :name => "北大路堀川"
    },
    {
      :lat => "35.03854759330809",
      :lng => "135.75177899697704",
      :type => "station-blue",
      :name => "堀川鞍馬口"
    },
    {
      :lat => "35.03624801027215",
      :lng => "135.75147449527734",
      :type => "station-property",
      :name => "天神公園前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>宝飾店<td>3000万円<td>70%<td></tr><tr><td>茶道具屋<td>3000万円<td>50%<td></tr><tr><td>ゲストハウス<td>7000万円<td>50%<td></tr><tr><td>生鮮館なかむら紫明店<td>3000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "宝飾店",
          :price => "3000万円",
          :rate => "70%",
          :owner => ""
        },
        {
          :name => "茶道具屋",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "ゲストハウス",
          :price => "7000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "生鮮館なかむら紫明店",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.033652052075986",
      :lng => "135.75189590517888",
      :type => "station-red",
      :name => "堀川寺ノ内"
    },
    {
      :lat => "35.03202682347712",
      :lng => "135.7519334561051",
      :type => "station-red",
      :name => "堀川上立売"
    },
    {
      :lat => "35.029689951660075",
      :lng => "135.75193882052312",
      :type => "station-property",
      :name => "堀川今出川",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>ゴールドジム<td>3000万円<td>50%<td></tr><tr><td>西陣織会館<td>3000万円<td>50%<td></tr><tr><td>コンビニ<td>3000万円<td>70%<td></tr><tr><td>白峯神宮<td>1億円<td>20%<td></tr><tr><td>晴明神社<td>1億円<td>20%<td></tr></table>",
      :properties => [
        {
          :name => "ゴールドジム",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "西陣織会館",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "コンビニ",
          :price => "3000万円",
          :rate => "70%",
          :owner => "B"
        },
        {
          :name => "白峯神宮",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "晴明神社",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.0262747684164",
      :lng => "135.75176019928537",
      :type => "station-blue",
      :name => "一条戻橋"
    },
    {
      :lat => "35.025005221289234",
      :lng => "135.75178702137552",
      :type => "station-blue",
      :name => "堀川中立売"
    },
    {
      :lat => "35.0225275708056",
      :lng => "135.75177092812143",
      :type => "station-red",
      :name => "堀川下長者町"
    },
    {
      :lat => "35.01995758804644",
      :lng => "135.75182993671976",
      :type => "station-blue",
      :name => "堀川下立売"
    },
    {
      :lat => "35.01732601772418",
      :lng => "135.7518031146296",
      :type => "station-blue",
      :name => "堀川丸太町"
    },
    {
      :lat => "35.01363552603792",
      :lng => "135.75164754650675",
      :type => "station-property",
      :name => "二条城前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>二条城<td>3億円<td>20%<td></tr><tr><td>民宿<td>7000万円<td>50%<td></tr><tr><td>民宿<td>7000万円<td>50%<td></tr><tr><td>結婚式場<td>7000万円<td>50%<td></tr><tr><td>美術館<td>1億円<td>20%<td></tr></table>",
      :properties => [
        {
          :name => "二条城",
          :price => "3億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "民宿",
          :price => "7000万円",
          :rate => "50%",
          :owner => "A"
        },
        {
          :name => "民宿",
          :price => "7000万円",
          :rate => "50%",
          :owner => "A"
        },
        {
          :name => "結婚式場",
          :price => "7000万円",
          :rate => "50%",
          :owner => "A"
        },
        {
          :name => "美術館",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.01091587856163",
      :lng => "135.75179238579355",
      :type => "station-red",
      :name => "堀川御池"
    },
    {
      :lat => "35.00853885897231",
      :lng => "135.75176019928537",
      :type => "station-blue",
      :name => "堀川三条"
    },
    {
      :lat => "35.00611699537746",
      :lng => "135.7517415450777",
      :type => "station-red",
      :name => "堀川蛸薬師"
    },
    {
      :lat => "35.003629984437005",
      :lng => "135.751977579471",
      :type => "station-property",
      :name => "四条堀川",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>ホテル<td>1億円<td>20%<td></tr><tr><td>ホテル<td>1億円<td>20%<td></tr><tr><td>本能寺跡<td>7000万円<td>50%<td></tr><tr><td>堀川高校<td>1億円<td>10%<td></tr><tr><td>コンビニ<td>3000万円<td>100%<td></tr><tr><td>郵便局<td>3000万円<td>50%<td></tr></table>",
      :properties => [
        {
          :name => "ホテル",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "ホテル",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "本能寺跡",
          :price => "7000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "堀川高校",
          :price => "1億円",
          :rate => "10%",
          :owner => ""
        },
        {
          :name => "コンビニ",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "郵便局",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "34.998804311064575",
      :lng => "135.75213239940828",
      :type => "station-blue",
      :name => "堀川松原"
    },
    {
      :lat => "34.99626873863839",
      :lng => "135.75240062030977",
      :type => "station-red",
      :name => "堀川五条"
    },
    {
      :lat => "34.992888665069074",
      :lng => "135.7528779958326",
      :type => "station-property",
      :name => "西本願寺前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>西本願寺<td>1億円<td>20%<td></tr><tr><td>コンビニ<td>3000万円<td>100%<td></tr><tr><td>聞法会館<td>5000万円<td>50%<td></tr><tr><td>旅館<td>7000万円<td>30%<td></tr><tr><td>旅館<td>7000万円<td>30%<td></tr><tr><td>旅館<td>7000万円<td>30%<td></tr><tr><td>民宿<td>5000万円<td>40%<td></tr></table>",
      :properties => [
        {
          :name => "西本願寺",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "コンビニ",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "聞法会館",
          :price => "5000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "旅館",
          :price => "7000万円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "旅館",
          :price => "7000万円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "旅館",
          :price => "7000万円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "民宿",
          :price => "5000万円",
          :rate => "40%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "34.98919790785986",
      :lng => "135.75307111488166",
      :type => "station-blue",
      :name => "七条堀川"
    },
    {
      :lat => "34.98711472055209",
      :lng => "135.75519542442146",
      :type => "station-red",
      :name => "下京区総合庁舎前"
    },
    {
      :lat => "34.98692573680238",
      :lng => "135.7588056777555",
      :type => "station-property",
      :name => "京都駅前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>バスターミナル<td>1億円<td>20%<td></tr><tr><td>京都駅<td>3億円<td>20%<td></tr><tr><td>伊勢丹<td>2億円<td>20%<td></tr><tr><td>Cube<td>1億円<td>40%<td></tr><tr><td>ポルタ<td>1億円<td>40%<td></tr><tr><td>ラーメン街<td>5000万円<td>100%<td></tr><tr><td>ホテル<td>1億円<td>20%<td></tr><tr><td>京都タワー<td>10億円<td>5%<td></tr></table>",
      :properties => [
        {
          :name => "バスターミナル",
          :price => "10億円",
          :rate => "15%",
          :owner => ""
        },
        {
          :name => "京都駅",
          :price => "20億円",
          :rate => "10%",
          :owner => ""
        },
        {
          :name => "伊勢丹",
          :price => "5億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "Cube",
          :price => "1億円",
          :rate => "40%",
          :owner => ""
        },
        {
          :name => "ポルタ",
          :price => "1億円",
          :rate => "40%",
          :owner => ""
        },
        {
          :name => "ラーメン街",
          :price => "5000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ホテル",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "京都タワー",
          :price => "10億円",
          :rate => "5%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "34.98723902943495",
      :lng => "135.76264427354494",
      :type => "station-red",
      :name => "塩小路高倉"
    },
    {
      :lat => "34.989243106289095",
      :lng => "135.76423214128175",
      :type => "station-blue",
      :name => "七条河原町"
    },
    {
      :lat => "34.989309029036356",
      :lng => "135.76826021112535",
      :type => "station-blue",
      :name => "七条京阪前"
    },
    {
      :lat => "34.98913421431646",
      :lng => "135.77207789871434",
      :type => "station-property",
      :name => "博物館・三十三間堂前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>博物館<td>2億円<td>20%<td></tr><tr><td>三十三間堂<td>2億円<td>20%<td></tr><tr><td>高級ホテル<td>1億円<td>30%<td></tr><tr><td>神社<td>5000万円<td>30%<td></tr><tr><td>交番<td>3000万円<td>70%<td></tr></table>",
      :properties => [
        {
          :name => "博物館",
          :price => "2億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "三十三間堂",
          :price => "2億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "高級ホテル",
          :price => "1億円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "神社",
          :price => "5000万円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "交番",
          :price => "3000万円",
          :rate => "70%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "34.98907268628928",
      :lng => "135.77445433590154",
      :type => "station-red",
      :name => "東山七条"
    },
    {
      :lat => "34.99259908260537",
      :lng => "135.7748873667077",
      :type => "station-blue",
      :name => "馬町"
    },
    {
      :lat => "34.994968607207674",
      :lng => "135.77644299540452",
      :type => "station-blue",
      :name => "五条坂"
    },
    {
      :lat => "34.99760529123816",
      :lng => "135.7770330813878",
      :type => "station-property",
      :name => "清水道",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>寺<td>1億円<td>20%<td></tr><tr><td>寺<td>1億円<td>20%<td></tr><tr><td>お土産や<td>3000万円<td>100%<td></tr><tr><td>お土産や<td>3000万円<td>100%<td></tr><tr><td>お土産や<td>3000万円<td>100%<td></tr><tr><td>お土産や<td>3000万円<td>100%<td></tr><tr><td>お土産や<td>3000万円<td>100%<td></tr><tr><td>お土産や<td>3000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "清水寺",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "高台寺",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "お土産や",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "お土産や",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "お土産や",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "お土産や",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "お土産や",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "お土産や",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.00080874802399",
      :lng => "135.77756415877275",
      :type => "station-card",
      :name => "東山安井"
    },
    {
      :lat => "35.00373964731592",
      :lng => "135.77719937834672",
      :type => "station-property",
      :name => "祇園",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>高級料亭<td>1億円<td>40%<td></tr><td>高級料亭<td>1億円<td>40%<td></tr><td>高級料亭<td>1億円<td>40%<td></tr><td>舞妓さんと遊ぶとこ<td>2億円<td>30%<td></tr><td>舞妓さんと遊ぶとこ<td>2億円<td>30%<td></tr><td>八坂神社<td>3億円<td>10%<td></tr></table>",
      :properties => [
        {
          :name => "高級料亭",
          :price => "1億円",
          :rate => "40%",
          :owner => ""
        },
        {
          :name => "高級料亭",
          :price => "1億円",
          :rate => "40%",
          :owner => ""
        },
        {
          :name => "高級料亭",
          :price => "1億円",
          :rate => "40%",
          :owner => ""
        },
        {
          :name => "舞妓さんと遊ぶとこ",
          :price => "2億円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "舞妓さんと遊ぶとこ",
          :price => "2億円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "八坂神社",
          :price => "3億円",
          :rate => "10%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.00640962555537",
      :lng => "135.77777681308504",
      :type => "station-red",
      :name => "知恩院前"
    },
    {
      :lat => "35.009458955973194",
      :lng => "135.77812550025698",
      :type => "station-property-des",
      :name => "東山三条",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>地下鉄駅<td>1億円<td>20%<td></tr><tr><td>マクド<td>3000万円<td>100%<td></tr><tr><td>マルシン飯店<td>3000万円<td>100%<td></tr><tr><td>知恩院<td>1億円<td>10%<td></tr><tr><td>駐車場<td>5000万円<td>50%<td></tr><tr><td>駐車場<td>5000万円<td>50%<td></tr><tr><td>駐車場<td>5000万円<td>50%<td></tr></table>",
      :properties => [
        {
          :name => "地下鉄駅",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "マクド",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "知恩院",
          :price => "1億円",
          :rate => "10%",
          :owner => ""
        },
        {
          :name => "駐車場",
          :price => "5000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "駐車場",
          :price => "5000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "駐車場",
          :price => "5000万円",
          :rate => "50%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.011809586990715",
      :lng => "135.7783829923224",
      :type => "station-blue",
      :name => "東山仁王門"
    },
    {
      :lat => "35.013646107767265",
      :lng => "135.77834007697817",
      :type => "station-red",
      :name => "東山二条"
    },
    {
      :lat => "35.0175254211109",
      :lng => "135.7722640943308",
      :type => "station-blue",
      :name => "丸太町京阪前"
    },
    {
      :lat => "35.0175517811025",
      :lng => "135.76902398584082",
      :type => "station-red",
      :name => "河原町丸太町"
    },
    {
      :lat => "35.010929820422064",
      :lng => "135.76889113744835",
      :type => "station-property",
      :name => "京都市役所前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>ラーメン屋<td>3000万円<td>100%<td></tr><tr><td>ホテル<td>1億円<td>20%<td></tr><tr><td>市役所<td>3億円<td>5%<td></tr><tr><td>地下鉄駅<td>1億円<td>30%<td></tr></table>",
      :properties => [
        {
          :name => "ラーメン屋",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ホテル",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "市役所",
          :price => "3億円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "地下鉄駅",
          :price => "1億円",
          :rate => "30%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.0087680978721",
      :lng => "135.76903061231712",
      :type => "station-property",
      :name => "河原町三条",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>スタバ<td>3000万円<td>100%<td></tr><tr><td>カラオケ<td>3000万円<td>100%<td></tr><tr><td>カラオケ<td>3000万円<td>100%<td></tr><tr><td>映画館<td>1億円<td>50%<td></tr><tr><td>LOFT<td>5000万円<td>70%<td></tr><tr><td>商店街<td>1億円<td>20%<td></tr><tr><td>楽器屋<td>5000万円<td>50%<td></tr><tr><td>金の鳥から<td>3000万円<td>100%<td></tr><tr><td>タピオカ<td>1000万円<td>200%<td></tr></table>",
      :properties => [
        {
          :name => "スタバ",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "カラオケ",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "カラオケ",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "映画館",
          :price => "1億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "LOFT",
          :price => "5000万円",
          :rate => "70%",
          :owner => ""
        },
        {
          :name => "商店街",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "楽器屋",
          :price => "5000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "金の鳥から",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "タピオカ",
          :price => "1000万円",
          :rate => "200%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.0037765852941",
      :lng => "135.76934174856285",
      :type => "station-property",
      :name => "四条河原町",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>マルイ<td>1億円<td>20%<td></tr><tr><td>高島屋<td>3億円<td>30%<td></tr><tr><td>OPA<td>1億円<td>50%<td></tr><tr><td>京都BAL<td>2億円<td>20%<td></tr><tr><td>京都河原町駅<td>1億円<td>50%<td></tr><tr><td>スタバ<td>3000万円<td>100%<td></tr><tr><td>ラーメン屋<td>3000万円<td>100%<td></tr><tr><td>パチンコ<td>3000万円<td>50%<td></tr></table>",
      :properties => [
        {
          :name => "マルイ",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "高島屋",
          :price => "3億円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "OPA",
          :price => "1億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "京都BAL",
          :price => "2億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "京都河原町駅",
          :price => "1億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "スタバ",
          :price => "3000万円",
          :rate => "100%",
          :owner => "B"
        },
        {
          :name => "ラーメン屋",
          :price => "3000万円",
          :rate => "100%",
          :owner => "B"
        },
        {
          :name => "パチンコ",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "34.99892814508252",
      :lng => "135.76759644322786",
      :type => "station-red",
      :name => "河原町松原"
    },
    {
      :lat => "34.99583938666853",
      :lng => "135.76619096570406",
      :type => "station-blue",
      :name => "河原町五条"
    },
    {
      :lat => "34.99219227517518",
      :lng => "135.76421122238847",
      :type => "station-property",
      :name => "河原町正面",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>渉成園<td>2億円<td>50%<td></tr></table>",
      :properties => [
        {
          :name => "渉成園",
          :price => "2億円",
          :rate => "50%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "34.989177799556806",
      :lng => "135.75977182365116",
      :type => "station-blue",
      :name => "烏丸七条"
    },
    {
      :lat => "34.992627793365514",
      :lng => "135.75968079301046",
      :type => "station-card",
      :name => "烏丸六条"
    },
    {
      :lat => "34.99619175021174",
      :lng => "135.7597184158825",
      :type => "station-blue",
      :name => "烏丸五条"
    },
    {
      :lat => "34.99886354952246",
      :lng => "135.75967013612023",
      :type => "station-red",
      :name => "烏丸松原"
    },
    {
      :lat => "35.00364444635723",
      :lng => "135.75964867844812",
      :type => "station-property",
      :name => "四条烏丸",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>銀行<td>1億円<td>20%<td></tr><tr><td>銀行<td>1億円<td>20%<td></tr><tr><td>銀行<td>1億円<td>20%<td></tr><tr><td>大企業<td>2億円<td>10%<td></tr><tr><td>大企業<td>2億円<td>10%<td></tr><tr><td>四条烏丸駅<td>1億円<td>50%<td></tr><tr><td>ラーメン屋<td>1000万円<td>100%<td></tr><tr><td>ラーメン屋<td>1000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "銀行",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "銀行",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "銀行",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "大企業",
          :price => "2億円",
          :rate => "10%",
          :owner => ""
        },
        {
          :name => "大企業",
          :price => "2億円",
          :rate => "10%",
          :owner => ""
        },
        {
          :name => "四条烏丸駅",
          :price => "1億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "ラーメン屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ラーメン屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.003657628591",
      :lng => "135.75515866055719",
      :type => "station-red",
      :name => "四条西洞院"
    },
    {
      :lat => "35.017361460535135",
      :lng => "135.75574047916277",
      :type => "station-card",
      :name => "府庁前"
    },
    {
      :lat => "35.01736585387647",
      :lng => "135.75944192760332",
      :type => "station-red",
      :name => "烏丸丸太町"
    },
    {
      :lat => "35.017427360630286",
      :lng => "135.76426990383013",
      :type => "station-card",
      :name => "裁判所前"
    },
    {
      :lat => "35.021365877620745",
      :lng => "135.76933443095098",
      :type => "station-blue",
      :name => "荒神口"
    },
    {
      :lat => "35.02447175891867",
      :lng => "135.76925396468053",
      :type => "station-property",
      :name => "府立医大病院前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>病院<td>3億円<td>10%<td></tr><tr><td>薬局<td>3000万円<td>50%<td></tr><tr><td>薬局<td>3000万円<td>50%<td></tr><tr><td>薬局<td>3000万円<td>50%<td></tr><tr><td>薬局<td>3000万円<td>50%<td></tr></table>",
      :properties => [
        {
          :name => "府立医大病院",
          :price => "3億円",
          :rate => "10%",
          :owner => ""
        },
        {
          :name => "薬局",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "薬局",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "薬局",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "薬局",
          :price => "3000万円",
          :rate => "50%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.02914573410966",
      :lng => "135.76968848254094",
      :type => "station-red",
      :name => "河原町今出川"
    },
    {
      :lat => "35.02886460029883",
      :lng => "135.7729232266129",
      :type => "station-blue",
      :name => "出町柳駅前"
    },
    {
      :lat => "35.04122413643306",
      :lng => "135.77090941885538",
      :type => "station-red",
      :name => "一本松"
    },
    {
      :lat => "35.03827701166878",
      :lng => "135.77089869001932",
      :type => "station-property",
      :name => "下鴨神社前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>下鴨神社<td>3億円<td>5%<td></tr><tr><td>料亭<td>3000万円<td>100%<td></tr><tr><td>料亭<td>3000万円<td>100%<td></tr><tr><td>料亭<td>3000万円<td>100%<td></tr><tr><td>みたらし団子屋<td>3000万円<td>70%<td></tr></table>",
      :properties => [
        {
          :name => "下鴨神社",
          :price => "3億円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "料亭",
          :price => "2000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "料亭",
          :price => "2000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "料亭",
          :price => "2000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "みたらし団子屋",
          :price => "3000万円",
          :rate => "70%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.037073110654255",
      :lng => "135.77100113249898",
      :type => "station-red",
      :name => "糺ノ森"
    },
    {
      :lat => "35.03310792317618",
      :lng => "135.77067122079015",
      :type => "station-blue",
      :name => "新葵橋"
    },
    {
      :lat => "35.03074033391825",
      :lng => "135.76973512984395",
      :type => "station-blue",
      :name => "葵橋西詰"
    },
    {
      :lat => "35.02914360002765",
      :lng => "135.76426342345357",
      :type => "station-property",
      :name => "同志社前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>同志社大学<td>3億円<td>5%<td></tr><tr><td>明徳館<td>1億円<td>5%<td></tr><tr><td>弘風館<td>1億円<td>5%<td></tr><tr><td>同志社大学図書館<td>1億円<td>5%<td></tr><tr><td>寒梅館<td>1億円<td>30%<td></tr></table>",
      :properties => [
        {
          :name => "同志社大学",
          :price => "3億円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "明徳館",
          :price => "1億円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "弘風館",
          :price => "1億円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "同志社大学図書館",
          :price => "1億円",
          :rate => "5%",
          :owner => ""
        },
        {
          :name => "寒梅館",
          :price => "1億円",
          :rate => "30%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.029068923951506",
      :lng => "135.75936570979238",
      :type => "station-blue",
      :name => "烏丸今出川"
    },
    {
      :lat => "35.02918972345236",
      :lng => "135.7568122468102",
      :type => "station-red",
      :name => "上京区総合庁舎前"
    },
    {
      :lat => "35.00365873602223",
      :lng => "135.76259004345212",
      :type => "station-blue",
      :name => "四条高倉"
    },
    {
      :lat => "34.996098965506405",
      :lng => "135.76259127061923",
      :type => "station-blue",
      :name => "五条高倉"
    },
    {
      :lat => "35.003815314672714",
      :lng => "135.77209165494997",
      :type => "station-property",
      :name => "四条京阪前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>歌舞伎北座<td>1億円<td>30%<td></tr><tr><td>歌舞伎南座<td>1億円<td>30%<td></tr><tr><td>祇園四条駅<td>1億円<td>20%<td></tr><tr><td>焼肉の天壇<td>7000万円<td>100%<td></tr><tr><td>ビアガーデン<td>5000万円<td>100%<td></tr><tr><td>ラーメン屋<td>1000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "歌舞伎北座",
          :price => "1億円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "歌舞伎南座",
          :price => "1億円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "祇園四条駅",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "焼肉の天壇",
          :price => "7000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ビアガーデン",
          :price => "5000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "ラーメン屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.00912317794786",
      :lng => "135.7722418586548",
      :type => "station-property",
      :name => "三条京阪前",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>三条駅<td>1億円<td>20%<td></tr><tr><td>ブックオフ<td>3000万円<td>100%<td></tr><tr><td>駐輪場<td>3000万円<td>70%<td></tr><tr><td>土下座像<td>5000万円<td>20%<td></tr><tr><td>駅伝の碑<td>5000万円<td>20%<td></tr><tr><td>三条大橋<td>1億円<td>20%<td></tr><tr><td>コンビニ<td>3000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "三条駅",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "ブックオフ",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "駐輪場",
          :price => "3000万円",
          :rate => "70%",
          :owner => ""
        },
        {
          :name => "土下座像",
          :price => "5000万円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "駅伝の碑",
          :price => "5000万円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "三条大橋",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "コンビニ",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "35.01309506225245",
      :lng => "135.77239206235964",
      :type => "station-blue",
      :name => "川端二条"
    },
    {
      :lat => "35.01363556747066",
      :lng => "135.77597356505245",
      :type => "station-blue",
      :name => "新間ノ町二条"
    },
    {
      :lat => "34.98539794076401",
      :lng => "135.77410851478487",
      :type => "station-blue",
      :name => "今熊野"
    },
    {
      :lat => "34.98240224721303",
      :lng => "135.773787742601",
      :type => "station-red",
      :name => "泉涌寺道"
    },
    {
      :lat => "34.98060897829595",
      :lng => "135.77010775183257",
      :type => "station-property",
      :name => "東福寺",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>東福寺<td>2億円<td>20%<td></tr><tr><td>JR東福寺駅<td>1億円<td>20%<td></tr><tr><td>京阪東福寺駅<td>1億円<td>20%<td></tr><tr><td>ラーメン屋<td>1000万円<td>100%<td></tr><tr><td>コンビニ<td>2000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "東福寺",
          :price => "2億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "JR東福寺駅",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "京阪東福寺駅",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "ラーメン屋",
          :price => "1000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "コンビニ",
          :price => "2000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "34.97954640087945",
      :lng => "135.76400705607313",
      :type => "station-red",
      :name => "九条河原町"
    },
    {
      :lat => "34.97959914532787",
      :lng => "135.76109954150098",
      :type => "station-card",
      :name => "大石橋"
    },
    {
      :lat => "34.97942511559362",
      :lng => "135.75608863826855",
      :type => "station-blue",
      :name => "九条車庫前"
    },
    {
      :lat => "34.9818830976525",
      :lng => "135.75375821135432",
      :type => "station-property",
      :name => "東寺道",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>東寺<td>2億円<td>20%<td></tr><tr><td>五重塔<td>1億円<td>50%<td></tr><tr><td>近鉄東寺駅<td>1億円<td>20%<td></tr><tr><td>コンビニ<td>3000万円<td>100%<td></tr><tr><td>コンビニ<td>3000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "東寺",
          :price => "2億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "五重塔",
          :price => "1億円",
          :rate => "50%",
          :owner => ""
        },
        {
          :name => "近鉄東寺駅",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "コンビニ",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "コンビニ",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    },
    {
      :lat => "34.984230125747395",
      :lng => "135.75886245510966",
      :type => "station-property",
      :name => "京都駅八条口",
      :discription => "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr><tr><td>近鉄<td>1億円<td>20%<td></tr><tr><td>ミスタードーナツ<td>5000万円<td>30%<td></tr><tr><td>ホテル<td>1億円<td>20%<td></tr><tr><td><tr><td>お土産や<td>3000万円<td>100%<td></tr><td>お土産や<td>3000万円<td>100%<td></tr><tr><td>お土産や<td>3000万円<td>100%<td></tr><tr><td>551HORAI<td>5000万円<td>51%<td></tr><tr><td>マクド<td>3000万円<td>100%<td></tr></table>",
      :properties => [
        {
          :name => "近鉄",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "ミスタードーナツ",
          :price => "5000万円",
          :rate => "30%",
          :owner => ""
        },
        {
          :name => "ホテル",
          :price => "1億円",
          :rate => "20%",
          :owner => ""
        },
        {
          :name => "お土産や",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "お土産や",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "お土産や",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        },
        {
          :name => "551HORAI",
          :price => "5000万円",
          :rate => "51%",
          :owner => ""
        },
        {
          :name => "マクド",
          :price => "3000万円",
          :rate => "100%",
          :owner => ""
        }
      ]
    }
  ]

  def teams
    @@teams.each do |team|
      next if team[:style] == 'kozawa'

      discription = "現在地: #{team[:station]}<br>"
      discription += "所持金: #{team[:amount]}<br>"
      discription += "所持カード:<br>"
      team[:cards].each do |card|
        discription += "　#{card}<br>"
      end
      discription += "所持物件:<br>"
      discription += "<table><tr><th>物件名<th>価格<th>利益率</tr>"
      team[:properties].each do |property|
        discription += "<tr><td>#{property[:name]}<td>#{property[:price]}<td>#{property[:rate]}</tr>"
      end
      team[:discription] = discription
    end
    render :json => @@teams
  end

  def teams_message
    message = ""
    noppo = ""
    @@teams.each do |team|
      if team[:style] == 'kozawa'
        noppo = team[:station]
        next
      end

      message += "#{team[:name]}\n"
      message += "現在地: #{team[:station]}\n"
      message += "所持金: #{team[:amount]}\n"
      message += "所持カード:\n"
      team[:cards].each do |card|
        message += "　#{card}\n"
      end
      message += "所持物件:\n"
      message += "物件名 | 価格 | 利益率\n"
      team[:properties].each do |property|
        message += "#{property[:name]} | #{property[:price]} | #{property[:rate]}\n"
      end
      message += "\n"
    end
    message += "のっぽは#{noppo}にいるよ！"
    render :plain => message
  end

  def ways
    render :json => @@ways
  end

  def stations
    if params[:station].blank?
      @@stations.each do |station|
        if station[:type] == 'station-blue'
          discription = "＋サイコロの目×#{@@money}"
        elsif station[:type] == 'station-blue-des'
          discription = "目的地！！<br>"
          discription += "＋サイコロの目×#{@@money}"
        elsif station[:type] == 'station-red'
          discription = "−サイコロの目×#{@@money}"
        elsif station[:type] == 'station-card'
          discription = "<table><tr><th>カード名<th>販売価格<th>売却価格</tr>"
          @@cards.each do |card|
            discription += "<tr><td>#{card[:name]}<td>#{card[:buy]}<td>#{card[:sell]}</tr>"
          end
          discription += "</table>"
        elsif station[:type] == 'station-property' || station[:type] == 'station-property-des'
          discription = "<table><tr><th>物件名<th>価格<th>利益率<th>保有者</tr>"
          station[:properties].each do |property|
            discription += "<tr><td>#{property[:name]}<td>#{property[:price]}<td>#{property[:rate]}<td>#{property[:owner]}</tr>"
          end
          discription += "</table>"
        end
        station[:discription] = discription
      end
      render :json => @@stations
      return
    end

    station_hash = {}
    @@stations.each do |station|
      station_hash[station[:name]] = {
        :type => station[:type],
        :properties => station[:properties]
      }
    end

    result = station_hash[params[:station]]
    if result
      message = "停留所名: " + params[:station] + "\n"
      if result[:type] == 'station-blue'
        message += "プラス駅\n"
        message += "＋サイコロの目×#{@@money}\n"
        message += "「サイコロ1」と送信してください！"
      elsif result[:type] == 'station-blue-des'
        message += "目的地！！\n"
        message += "プラス駅\n"
        message += "＋サイコロの目×#{@@money}\n"
        message += "「サイコロ1」と送信してください！"
      elsif result[:type] == 'station-red'
        message += "マイナス駅\n"
        message += "−サイコロの目×#{@@money}\n"
        message += "「サイコロ1」と送信してください...。"
      elsif result[:type] == 'station-card'
        message += "カード売り場\n\n"
        message += "カード名 | 販売価格 | 売却価格\n"
        @@cards.each do |card|
          message += "#{card[:name]} | #{card[:buy]} | #{card[:sell]}\n"
        end
        message += "\n"
        message += "カードの購入/売却ができます！"
      elsif result[:type] == 'station-property'
        message += "物件駅\n\n"
        message += "物件名 | 価格 | 利益率 |保有者\n"
        result[:properties].each do |property|
          message += "#{property[:name]} | #{property[:price]} | #{property[:rate]} | #{property[:owner]}\n"
        end
        message += "\n"
        message += "物件を購入する場合は欲しい物件名を送ってください！"
      elsif result[:type] == 'station-property-des'
        message += "目的地！！\n"
        message += "物件駅\n"
        message += "ここに物件の情報を表示したい"
      end
    else
      message = "その駅は存在しません！"
    end

    render :plain => message
  end
end
