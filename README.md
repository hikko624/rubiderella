# Rubiderella

![Ruby](https://github.com/hikko624/rubiderella/workflows/Ruby/badge.svg)
[![codecov](https://codecov.io/gh/hikko624/rubiderella/branch/master/graph/badge.svg?token=eNS4wQuls7)](https://codecov.io/gh/hikko624/rubiderella)

A reference for Idolmaster Cinderella Girls.

This gem is inspired by [sue445/rubicure](https://github.com/sue445/rubicure) and [imas/rubimas](https://github.com/imas/rubimas/) strongly.

[Idolmaster Official Site](https://idolmaster-official.jp/about/)

## Installation

    $ git clone git@github.com:hikko624/rubiderella.git
    $ cd rubiderella
    $ bin/setup
    $ bin/console

## Requirements

- ruby >= 2.5

## Usage

```ruby

Cinderella.girl.all.count
#=> 190

CInderella.girl.kanzaki_ranko
=> #<Rubiderella::Idol:0x00007fdb6c1a4df8
 @age=14,
 @birthday="4/8",
 @blood="A",
 @bust=81,
 @cv="内田真礼",
 @favorite=["絵を描くこと"],
 @from="熊本県",
 @handed="right",
 @height=156.0,
 @hip=80,
 @name=#<Rubiderella::Idol::Name:0x00007fdb6c1a4dd0 @first="蘭子", @first_kana="らんこ", @last="神崎", @last_kana="かんざき">,
 @sign="牡羊座",
 @type="cool",
 @waist=57,
 @weight=41.0>
 
Cinderella.girl.kanzaki_ranko.cv
=> "内田真礼"

Cinderella.girl.kanzaki_ranko.name
=> #<Rubiderella::Idol::Name:0x00007fdb6c39b828 @first="蘭子", @first_kana="らんこ", @last="神崎", @last_kana="かんざき">

Cinderella.girl.kanzaki_ranko.name.full
=> "神崎蘭子"

Cinderella.girl.kanzaki_ranko.name.full_kana
=> "かんざきらんこ"
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/rubiderella. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/rubiderella/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Rubiderella project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rubiderella/blob/master/CODE_OF_CONDUCT.md).
