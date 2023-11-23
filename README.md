# Rubiderella

![Ruby](https://github.com/hikko624/rubiderella/workflows/Ruby/badge.svg)
[![codecov](https://codecov.io/gh/hikko624/rubiderella/branch/master/graph/badge.svg?token=eNS4wQuls7)](https://codecov.io/gh/hikko624/rubiderella)

A reference for Idolmaster Cinderella Girls.

This gem is inspired by [sue445/rubicure](https://github.com/sue445/rubicure) and [imas/rubimas](https://github.com/imas/rubimas/) strongly.

[Idolmaster Official Site](https://idolmaster-official.jp/about/)


## Requirements

- ruby >= 3.2

## Installation

    $ git clone git@github.com:hikko624/rubiderella.git
    $ brew install watchman
    $ cd rubiderella
    $ bin/setup
    $ bundle exec tapioca init

## Usage

    $ bin/console

### Call CinderellaGirls

```ruby

>> CinderellaGirls.idol.all
#=> [#<Rubiderella::Idol:0x00007fc2bc10a690
 @age=9,
 @birthday=#<Rubiderella::Idol::Birthday:0x00007fc2bc10a5a0 @day=20, @month=7>,
 @blood="O",
 @bust=65.0,
 @cv="春瀬なつみ",
 @favorite=["料理"],
 @from="愛媛県",
 @handed="right",
 @height=132.0,
 @hip=70.0,
 @name=#<Rubiderella::Idol::Name:0x00007fc2bc10a5c8 @first="薫", @first_kana="かおる", @last="龍崎", @last_kana="りゅうざき">,
 @sign="蟹座",
 @type="passion",
 @waist=51.0,
 @weight=32.0>,
 .
 .
 .
 #<Rubiderella::Idol:0x00007fc2bd344cc0
 @age=16,
 @birthday=#<Rubiderella::Idol::Birthday:0x00007fc2bd344c70 @day=3, @month=7>,
 @blood="O",
 @bust=73.0,
 @cv="高田憂希",
 @favorite=["悩み事解決", "石ころ集め", "失せ物探し"],
 @from="鹿児島県",
 @handed="right",
 @height=151.0,
 @hip=73.0,
 @name=#<Rubiderella::Idol::Name:0x00007fc2bd344c98 @first="芳乃", @first_kana="よしの", @last="依田", @last_kana="よりた">,
 @sign="蟹座",
 @type="passion",
 @waist=53.0,
 @weight=40.0>]

```

### Select idol

ex: 神崎蘭子(Kanzaki Ranko)

```ruby

# CinderellaGirls.idol.[IDOL_NAME]
>> CinderellaGirls.idol.kanzaki_ranko
=> #<Rubiderella::Idol:0x00007feec79bff60
 @age=14,
 @birthday=#<Rubiderella::Idol::Birthday:0x00007feec79bfee8 @day=8, @month=4>,
 @blood="A",
 @bust=81.0,
 @cv="内田真礼",
 @favorite=["絵を描くこと"],
 @from="熊本県",
 @handed="right",
 @height=156.0,
 @hip=80.0,
 @name=#<Rubiderella::Idol::Name:0x00007feec79bff38 @first="蘭子", @first_kana="らんこ", @last="神崎", @last_kana="かんざき">,
 @sign="牡羊座",
 @type="cool",
 @waist=57.0,
 @weight=41.0>

# CinderellaGirls.idol.[IDOL_NAME].cv
>> CinderellaGirls.idol.kanzaki_ranko.cv
=> "内田真礼"

# CinderellaGirls.idol.[IDOL_NAME].name
>> CinderellaGirls.idol.kanzaki_ranko.name
=> #<Rubiderella::Idol::Name:0x00007fdb6c39b828 @first="蘭子", @first_kana="らんこ", @last="神崎", @last_kana="かんざき">

# CinderellaGirls.idol.[IDOL_NAME].name.full
>> CinderellaGirls.idol.kanzaki_ranko.name.full
=> "神崎蘭子"

# CinderellaGirls.idol.[IDOL_NAME].name.full_kana
>> CinderellaGirls.idol.kanzaki_ranko.name.full_kana
=> "かんざきらんこ"

# CinderellaGirls.idol.[IDOL_NAME].birthday.date
>> CinderellaGirls.idol.kanzaki_ranko.birthday.date
=> "4月8日"

```

### Call Trainer

```ruby

>> CinderellaGirls.trainer.all
=> [#<Rubiderella::Trainer:0x00007f81069699c8
  @age=23,
  @birthday=#<Rubiderella::Person::Birthday:0x00007f8106969978 @day=10, @month=6>,
  @blood="B",
  @bust=84.0,
  @cv="藤村歩",
  @favorite=["早朝ランニング"],
  @from="栃木県",
  @handed="right",
  @height=160.0,
  @hip=85.0,
  @name=#<Rubiderella::Person::Name:0x00007f81069699a0 @first="明", @first_kana="めい", @last="青木", @last_kana="あおき">,
  @sign="双子座",
  @type="passion",
  @waist=56.0,
  @weight=45.0>,
 #<Rubiderella::Trainer:0x00007f8106969928
  @age=28,
  @birthday=#<Rubiderella::Person::Birthday:0x00007f81069698d8 @day=10, @month=12>,
  @blood="AB",
  @bust=82.0,
  @cv="藤村歩",
  @favorite=["スポーツドリンクの自作"],
  @from="栃木県",
  @handed="right",
  @height=166.0,
  @hip=83.0,
  @name=#<Rubiderella::Person::Name:0x00007f8106969900 @first="麗", @first_kana="れい", @last="青木", @last_kana="あおき">,
  @sign="射手座",
  @type="passion",
  @waist=56.0,
  @weight=45.0>,
 #<Rubiderella::Trainer:0x00007f8106969888
  @age=19,
  @birthday=#<Rubiderella::Person::Birthday:0x00007f8106969838 @day=10, @month=3>,
  @blood="B",
  @bust=77.0,
  @cv="藤村歩",
  @favorite=["ジム通い"],
  @from="栃木県",
  @handed="right",
  @height=157.0,
  @hip=82.0,
  @name=#<Rubiderella::Person::Name:0x00007f8106969860 @first="慶", @first_kana="けい", @last="青木", @last_kana="あおき">,
  @sign="魚座",
  @type="passion",
  @waist=56.0,
  @weight=45.0>,
 #<Rubiderella::Trainer:0x00007f81069697e8
  @age=26,
  @birthday=#<Rubiderella::Person::Birthday:0x00007f8106969798 @day=10, @month=9>,
  @blood="A",
  @bust=83.0,
  @cv="藤村歩",
  @favorite=["デイトレード"],
  @from="栃木県",
  @handed="right",
  @height=163.0,
  @hip=84.0,
  @name=#<Rubiderella::Person::Name:0x00007f81069697c0 @first="聖", @first_kana="せい", @last="青木", @last_kana="あおき">,
  @sign="乙女座",
  @type="passion",
  @waist=56.0,
  @weight=45.0>]

```

### Call Assistant

```ruby

>> CinderellaGirls.assistant.all
=> [#<Rubiderella::Assistant:0x00007f8106b04f80
  @age="??",
  @birthday=#<Rubiderella::Person::Birthday:0x00007f8106b04f30 @day=28, @month=11>,
  @blood="A",
  @bust=82.0,
  @cv="佐藤利奈",
  @favorite=["コスプレ", "パーティ"],
  @from="東京都",
  @handed="right",
  @height=154.0,
  @hip=84.0,
  @name=#<Rubiderella::Person::Name:0x00007f8106b04f58 @first="ちひろ", @first_kana="ちひろ", @last="千川", @last_kana="せんかわ">,
  @sign="射手座",
  @type=nil,
  @waist=58.0,
  @weight="ひ・み・つ">]

```

### Rubiderella::Idol#all

```ruby

>> Rubiderella::Idol.all
#=> [#<Rubiderella::Idol:0x00007fc2bc10a690
 @age=9,
 @birthday=#<Rubiderella::Idol::Birthday:0x00007fc2bc10a5a0 @day=20, @month=7>,
 @blood="O",
 @bust=65.0,
 @cv="春瀬なつみ",
 @favorite=["料理"],
 @from="愛媛県",
 @handed="right",
 @height=132.0,
 @hip=70.0,
 @name=#<Rubiderella::Idol::Name:0x00007fc2bc10a5c8 @first="薫", @first_kana="かおる", @last="龍崎", @last_kana="りゅうざき">,
 @sign="蟹座",
 @type="passion",
 @waist=51.0,
 @weight=32.0>,
 .
 .
 .
 #<Rubiderella::Idol:0x00007fc2bd344cc0
 @age=16,
 @birthday=#<Rubiderella::Idol::Birthday:0x00007fc2bd344c70 @day=3, @month=7>,
 @blood="O",
 @bust=73.0,
 @cv="高田憂希",
 @favorite=["悩み事解決", "石ころ集め", "失せ物探し"],
 @from="鹿児島県",
 @handed="right",
 @height=151.0,
 @hip=73.0,
 @name=#<Rubiderella::Idol::Name:0x00007fc2bd344c98 @first="芳乃", @first_kana="よしの", @last="依田", @last_kana="よりた">,
 @sign="蟹座",
 @type="passion",
 @waist=53.0,
 @weight=40.0>]

```

### Rubiderella::Idol#find\_by\_key

```ruby

>> Rubiderella::Idol.find_by_key(:kanzaki_ranko)
=> #<Rubiderella::Idol:0x00007fc2bbaffea8
 @age=14,
 @birthday=#<Rubiderella::Idol::Birthday:0x00007fc2bbaffe30 @day=8, @month=4>,
 @blood="A",
 @bust=81.0,
 @cv="内田真礼",
 @favorite=["絵を描くこと"],
 @from="熊本県",
 @handed="right",
 @height=156.0,
 @hip=80.0,
 @name=#<Rubiderella::Idol::Name:0x00007fc2bbaffe58 @first="蘭子", @first_kana="らんこ", @last="神崎", @last_kana="かんざき">,
 @sign="牡羊座",
 @type="cool",
 @waist=57.0,
 @weight=41.0>

>> Rubiderella::Idol.find_by_key(:ninomiya_asuka)
=> #<Rubiderella::Idol:0x00007fc2bd27b3c0
 @age=14,
 @birthday=#<Rubiderella::Idol::Birthday:0x00007fc2bd27b348 @day=3, @month=2>,
 @blood="B",
 @bust=75.0,
 @cv="青木志貴",
 @favorite=["ヘアアレンジ", "ラジオを聴くこと", "漫画を描くこと"],
 @from="静岡県",
 @handed="right",
 @height=154.0,
 @hip=78.0,
 @name=#<Rubiderella::Idol::Name:0x00007fc2bd27b398 @first="飛鳥", @first_kana="あすか", @last="二宮", @last_kana="にのみや">,
 @sign="水瓶座",
 @type="cool",
 @waist=55.0,
 @weight=43.0>

```

### Rubiderella::Idol::Name#full

```ruby

>> Rubiderella::Idol.find_by_key(:kanzaki_ranko).name.full
=> "神崎蘭子"

>> Rubiderella::Idol.find_by_key(:ninomiya_asuka).name.full
=> "二宮飛鳥"

```

### Rubiderella::Idol::Name#full_kana

```ruby

>> Rubiderella::Idol.find_by_key(:kanzaki_ranko).name.full_kana
=> "かんざきらんこ"

>> Rubiderella::Idol.find_by_key(:ninomiya_asuka).name.full_kana
=> "にのみやあすか"
```


### Rubiderella::Idol::Birthday#date

```ruby

>> Rubiderella::Idol.find_by_key(:kanzaki_ranko).birthday.date
=> "4月8日"

>> Rubiderella::Idol.find_by_key(:ninomiya_asuka).birthday.date
=> "2月3日"

```


### Rubiderella::Trainer#all

```ruby

>> Rubiderella::Trainer.all
=> [#<Rubiderella::Trainer:0x00007f81069699c8
  @age=23,
  @birthday=#<Rubiderella::Person::Birthday:0x00007f8106969978 @day=10, @month=6>,
  @blood="B",
  @bust=84.0,
  @cv="藤村歩",
  @favorite=["早朝ランニング"],
  @from="栃木県",
  @handed="right",
  @height=160.0,
  @hip=85.0,
  @name=#<Rubiderella::Person::Name:0x00007f81069699a0 @first="明", @first_kana="めい", @last="青木", @last_kana="あおき">,
  @sign="双子座",
  @type="passion",
  @waist=56.0,
  @weight=45.0>,
 #<Rubiderella::Trainer:0x00007f8106969928
  @age=28,
  @birthday=#<Rubiderella::Person::Birthday:0x00007f81069698d8 @day=10, @month=12>,
  @blood="AB",
  @bust=82.0,
  @cv="藤村歩",
  @favorite=["スポーツドリンクの自作"],
  @from="栃木県",
  @handed="right",
  @height=166.0,
  @hip=83.0,
  @name=#<Rubiderella::Person::Name:0x00007f8106969900 @first="麗", @first_kana="れい", @last="青木", @last_kana="あおき">,
  @sign="射手座",
  @type="passion",
  @waist=56.0,
  @weight=45.0>,
 #<Rubiderella::Trainer:0x00007f8106969888
  @age=19,
  @birthday=#<Rubiderella::Person::Birthday:0x00007f8106969838 @day=10, @month=3>,
  @blood="B",
  @bust=77.0,
  @cv="藤村歩",
  @favorite=["ジム通い"],
  @from="栃木県",
  @handed="right",
  @height=157.0,
  @hip=82.0,
  @name=#<Rubiderella::Person::Name:0x00007f8106969860 @first="慶", @first_kana="けい", @last="青木", @last_kana="あおき">,
  @sign="魚座",
  @type="passion",
  @waist=56.0,
  @weight=45.0>,
 #<Rubiderella::Trainer:0x00007f81069697e8
  @age=26,
  @birthday=#<Rubiderella::Person::Birthday:0x00007f8106969798 @day=10, @month=9>,
  @blood="A",
  @bust=83.0,
  @cv="藤村歩",
  @favorite=["デイトレード"],
  @from="栃木県",
  @handed="right",
  @height=163.0,
  @hip=84.0,
  @name=#<Rubiderella::Person::Name:0x00007f81069697c0 @first="聖", @first_kana="せい", @last="青木", @last_kana="あおき">,
  @sign="乙女座",
  @type="passion",
  @waist=56.0,
  @weight=45.0>]

```

### Rubiderella::Trainer#find\_by\_key

```ruby

>> Rubiderella::Trainer.find_by_key(:rookie_trainer)
=> #<Rubiderella::Trainer:0x00007f8105247c18
 @age=19,
 @birthday=#<Rubiderella::Person::Birthday:0x00007f8105247bc8 @day=10, @month=3>,
 @blood="B",
 @bust=77.0,
 @cv="藤村歩",
 @favorite=["ジム通い"],
 @from="栃木県",
 @handed="right",
 @height=157.0,
 @hip=82.0,
 @name=#<Rubiderella::Person::Name:0x00007f8105247bf0 @first="慶", @first_kana="けい", @last="青木", @last_kana="あおき">,
 @sign="魚座",
 @type="passion",
 @waist=56.0,
 @weight=45.0>

>> Rubiderella::Trainer.find_by_key(:trainer)
=> #<Rubiderella::Trainer:0x00007f8106aff5a8
 @age=23,
 @birthday=#<Rubiderella::Person::Birthday:0x00007f8106aff558 @day=10, @month=6>,
 @blood="B",
 @bust=84.0,
 @cv="藤村歩",
 @favorite=["早朝ランニング"],
 @from="栃木県",
 @handed="right",
 @height=160.0,
 @hip=85.0,
 @name=#<Rubiderella::Person::Name:0x00007f8106aff580 @first="明", @first_kana="めい", @last="青木", @last_kana="あおき">,
 @sign="双子座",
 @type="passion",
 @waist=56.0,
 @weight=45.0>

>> Rubiderella::Trainer.find_by_key(:veteran_trainer)
=> #<Rubiderella::Trainer:0x00007f81051c1078
 @age=26,
 @birthday=#<Rubiderella::Person::Birthday:0x00007f81051c1028 @day=10, @month=9>,
 @blood="A",
 @bust=83.0,
 @cv="藤村歩",
 @favorite=["デイトレード"],
 @from="栃木県",
 @handed="right",
 @height=163.0,
 @hip=84.0,
 @name=#<Rubiderella::Person::Name:0x00007f81051c1050 @first="聖", @first_kana="せい", @last="青木", @last_kana="あおき">,
 @sign="乙女座",
 @type="passion",
 @waist=56.0,
 @weight=45.0>

>> Rubiderella::Trainer.find_by_key(:master_trainer)
=> #<Rubiderella::Trainer:0x00007f81041b4090
 @age=28,
 @birthday=#<Rubiderella::Person::Birthday:0x00007f81041b4040 @day=10, @month=12>,
 @blood="AB",
 @bust=82.0,
 @cv="藤村歩",
 @favorite=["スポーツドリンクの自作"],
 @from="栃木県",
 @handed="right",
 @height=166.0,
 @hip=83.0,
 @name=#<Rubiderella::Person::Name:0x00007f81041b4068 @first="麗", @first_kana="れい", @last="青木", @last_kana="あおき">,
 @sign="射手座",
 @type="passion",
 @waist=56.0,
 @weight=45.0>

```

### Rubiderella::Trainer::Name#full

```ruby

>> Rubiderella::Trainer.find_by_key(:rookie_trainer).name.full
=> "青木慶"

>> Rubiderella::Trainer.find_by_key(:trainer).name.full
=> "青木明"

>> Rubiderella::Trainer.find_by_key(:veteran_trainer).name.full
=> "青木聖"

Rubiderella::Trainer.find_by_key(:master_trainer).name.full
=> "青木麗"

```

### Rubiderella::Trainer::Name#full_kana

```ruby

>> Rubiderella::Trainer.find_by_key(:rookie_trainer).name.full_kana
=> "あおきけい"

>> Rubiderella::Trainer.find_by_key(:trainer).name.full_kana
=> "あおきめい"

>> Rubiderella::Trainer.find_by_key(:veteran_trainer).name.full_kana
=> "あおきせい"

>> Rubiderella::Trainer.find_by_key(:master_trainer).name.full_kana
=> "あおきれい"

```

### Rubiderella::Trainer::Birthday#date

```ruby

>> Rubiderella::Trainer.find_by_key(:rookie_trainer).birthday.date
=> "3月10日"

>> Rubiderella::Trainer.find_by_key(:trainer).birthday.date
=> "6月10日"

>> Rubiderella::Trainer.find_by_key(:veteran_trainer).birthday.date
=> "9月10日"

>> Rubiderella::Trainer.find_by_key(:master_trainer).birthday.date
=> "12月10日"

```

### Rubiderella::Assistant#all

```ruby

>> Rubiderella::Assistant.all
=> [#<Rubiderella::Assistant:0x00007f8106b04f80
  @age="??",
  @birthday=#<Rubiderella::Person::Birthday:0x00007f8106b04f30 @day=28, @month=11>,
  @blood="A",
  @bust=82.0,
  @cv="佐藤利奈",
  @favorite=["コスプレ", "パーティ"],
  @from="東京都",
  @handed="right",
  @height=154.0,
  @hip=84.0,
  @name=#<Rubiderella::Person::Name:0x00007f8106b04f58 @first="ちひろ", @first_kana="ちひろ", @last="千川", @last_kana="せんかわ">,
  @sign="射手座",
  @type=nil,
  @waist=58.0,
  @weight="ひ・み・つ">]

```

### Rubiderella::Assistant#find\_by\_key

```ruby

>> Rubiderella::Assistant.find_by_key(:senkawa_chihiro)
=> #<Rubiderella::Assistant:0x00007f8106b1db70
 @age="??",
 @birthday=#<Rubiderella::Person::Birthday:0x00007f8106b1db20 @day=28, @month=11>,
 @blood="A",
 @bust=82.0,
 @cv="佐藤利奈",
 @favorite=["コスプレ", "パーティ"],
 @from="東京都",
 @handed="right",
 @height=154.0,
 @hip=84.0,
 @name=#<Rubiderella::Person::Name:0x00007f8106b1db48 @first="ちひろ", @first_kana="ちひろ", @last="千川", @last_kana="せんかわ">,
 @sign="射手座",
 @type=nil,
 @waist=58.0,
 @weight="ひ・み・つ">

```

### Rubiderella::Assistant::Name#full


```ruby

>> Rubiderella::Assistant.find_by_key(:senkawa_chihiro).name.full
=> "千川ちひろ"

```

### Rubiderella::Assistant::Name#full_kana

```ruby

>> Rubiderella::Assistant.find_by_key(:senkawa_chihiro).name.full_kana
=> "せんかわちひろ"

```

### Rubiderella::Assistant::Birthday#date

```ruby
>> Rubiderella::Assistant.find_by_key(:senkawa_chihiro).birthday.date
=> "11月28日"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/hikko624/rubiderella. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/hikko624/rubiderella/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rubiderella project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/hikko624/rubiderella/blob/master/CODE_OF_CONDUCT.md).
