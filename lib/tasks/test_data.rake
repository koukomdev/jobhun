namespace :test_data do
  desc "create test_data"
  task :generate => :environment do
    # db clear
    AreaTag.connection.execute("TRUNCATE TABLE area_tags;")
    BusinessTag.connection.execute("TRUNCATE TABLE business_tags;")
    TypeTag.connection.execute("TRUNCATE TABLE type_tags;")
    Salary.connection.execute("TRUNCATE TABLE salaries;")
    Tag.connection.execute("TRUNCATE TABLE tags;")
    Intern.connection.execute("TRUNCATE TABLE interns;")
    InternTag.connection.execute("TRUNCATE TABLE intern_tags;")
    Company.connection.execute("TRUNCATE TABLE companies;")

    AreaTag.create(name: "23区")
    AreaTag.create(name: "東京")
    AreaTag.create(name: "関東")
    AreaTag.create(name: "大阪")
    AreaTag.create(name: "京都")
    AreaTag.create(name: "近畿")
    AreaTag.create(name: "名古屋")
    AreaTag.create(name: "中部")

    BusinessTag.create(name: "IT")
    BusinessTag.create(name: "化学")
    BusinessTag.create(name: "機械")
    BusinessTag.create(name: "建築")
    BusinessTag.create(name: "食品")
    BusinessTag.create(name: "商社")
    BusinessTag.create(name: "教育")

    TypeTag.create(name: "デザイナー")
    TypeTag.create(name: "営業")
    TypeTag.create(name: "ディレクター")
    TypeTag.create(name: "エンジニア")
    TypeTag.create(name: "経理")
    TypeTag.create(name: "マネージャー候補")

    Salary.create(show_text: "無給", salary: 0)
    Salary.create(show_text: "500円〜", salary: 500)
    Salary.create(show_text: "750円〜", salary: 750)
    Salary.create(show_text: "1000円〜", salary: 1000)
    Salary.create(show_text: "1500円〜", salary: 1500)

    Tag.create(name: "実務")
    Tag.create(name: "週2日以上")
    Tag.create(name: "フラットな職場")
    Tag.create(name: "企画から")
    Tag.create(name: "ものづくり")
    Tag.create(name: "会話多い")
    Tag.create(name: "新オフィス")

    Company.create(
      name: "都会株式会社",
      kana: "トカイカブシキカイシャ",
      status: 1,
      corporate_culture: "都会にある"
    )
    Company.create(
      name: "Team Kyoto",
      kana: "チームキョウト",
      status: 1,
      corporate_culture: "熱い"
    )
    Company.create(
      name: "名古屋商業",
      kana: "ナゴヤショウギョウ",
      status: 1,
      corporate_culture: "名古屋愛"
    )

    Intern.create(
      title: "スーパー運営を疑似体験！",
      status: 1,
      overview: "普段使ってるあのスーパーを運営しましょう",
      company_id: 1,
      area_tag_id: 1,
      business_tag_id: 5,
      type_tag_id: 6,
      salary_id: 3
    )
    Intern.create(
      title: "webサービスデザイン",
      status: 1,
      overview: "いま注目のあのサービスをデザインしませんか？",
      company_id: 2,
      area_tag_id: 5,
      business_tag_id: 1,
      type_tag_id: 1,
      salary_id: 4
    )
    Intern.create(
      title: "webサービス開発",
      status: 1,
      overview: "いま注目のあのサービスを開発しませんか？？",
      company_id: 2,
      area_tag_id: 5,
      business_tag_id: 1,
      type_tag_id: 4,
      salary_id: 5
    )
    Intern.create(
      title: "新エネルギー開発にジョインしませんか！？",
      status: 1,
      overview: "枯渇していく石油に代わる新エネルギーを産み出しましょう。",
      company_id: 3,
      area_tag_id: 7,
      business_tag_id: 6,
      type_tag_id: 2,
      salary_id: 2
    )
    a = Intern.find(1)
    a.image = File.open(Rails.root + "lib/assets/interns/images/niro1.jpeg")
    a.video = File.open(Rails.root + "lib/assets/interns/videos/sample.mp4")
    a.save
    a = Intern.find(2)
    a.image = File.open(Rails.root + "lib/assets/interns/images/niro2.png")
    a.video = File.open(Rails.root + "lib/assets/interns/videos/sample.mp4")
    a.save
    a = Intern.find(3)
    a.image = File.open(Rails.root + "lib/assets/interns/images/niro3.jpeg")
    a.video = File.open(Rails.root + "lib/assets/interns/videos/sample.mp4")
    a.save
    a = Intern.find(4)
    a.image = File.open(Rails.root + "lib/assets/interns/images/niro4.jpeg")
    a.video = File.open(Rails.root + "lib/assets/interns/videos/sample.mp4")
    a.save

    InternTag.create(intern_id: 1, tag_id: 1)
    InternTag.create(intern_id: 1, tag_id: 2)
    InternTag.create(intern_id: 1, tag_id: 3)
    InternTag.create(intern_id: 2, tag_id: 2)
    InternTag.create(intern_id: 2, tag_id: 3)
    InternTag.create(intern_id: 2, tag_id: 7)
    InternTag.create(intern_id: 3, tag_id: 5)
    InternTag.create(intern_id: 3, tag_id: 6)
    InternTag.create(intern_id: 4, tag_id: 5)
    InternTag.create(intern_id: 4, tag_id: 6)
  end
end
