# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
picture = ["ANCD0019.jpg","ANCD0021.jpg","ANCD0022.jpg","ANCD0024.jpg","ANCD0025.jpg","KNCD0004.jpg","KNCD0005.jpg","KNCD0008.jpg","KNCD0010.jpg","KNCD0012.jpg","KNCD0016.jpg","KSLA0090.jpg","TAM30065.jpg","TAM30078.jpg","TAM30108.jpg","TAM30111.jpg","TAM30121.jpg","TAM30132.jpg","TAM30133.jpg","TAM30136.jpg","TAM30142.jpg","TAM30144.jpg","TAM30148.jpg","TAM30153.jpg","TAM30154.jpg","TAM30157.jpg","TAM30160.jpg","YVCDN0001.jpg","YVCDN0002.jpg","YVCDN0003.jpg","YVCDN0004.jpg","YVCDN0005.jpg","YVCDN0007.jpg"]
links = ["https://www.youtube.com/embed/o0_BDhvrKPQ","https://www.youtube.com/embed/BTe1JMTlwwc","https://www.youtube.com/embed/xOz-T3NPtLA","https://www.youtube.com/embed/ETTk83qis0w","https://www.youtube.com/embed/vS_a8Edde8k"]
user_details = {email: "hello@example.com", username:"helloworld", password:"helloworld"}
User.create(user_details)

Album.create({title: "Anime Violin EDM", album_code: "TAM3165", artist: "TAMusic", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "Vibrant Dancefloor", album_code: "FS0003", artist: "Frozen Starfall", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "Logistic Function", album_code: "LEM0008", artist: "Logical Emotion", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "Touhou Symphony Orchestra Vol3", album_code: "KNCD0006", artist: "Kokyo Active NEETs", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "花月夜", artist: "Yonder Voice", album_code: "YVCDN0004", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "蜃景1", artist: "Yonder Voice", album_code: "YVCDN0005", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "霊桜に眠る", artist: "Yonder Voice", album_code: "YVCDN0007", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "雪幻ティルナノーグ", artist: "Yonder Voice", album_code: "YVCDN0009", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "奏穹のラプソディア", artist: "Yonder Voice", album_code: "YVCDN0012", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "桜風の誓い", artist: "Yonder Voice", album_code: "YVCDN0014", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "PROMISED DANCEFLOOR", artist: "Frozen Starfall", album_code: "promised_dancefloor", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "OCEAN OF BLOSSOMS", artist: "Frozen Starfall", album_code: "ocean_of_blossoms", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "EXPEDITION", artist: "Frozen Starfall", album_code: "	expedition", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方フィルハーモ二ー交響楽団 紅", artist: "Kokyo Active NEETs", album_code: "KNCD0004", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方フィルハーモ二ー交響楽団２ 妖", artist: "Kokyo Active NEETs", album_code: "KNCD0005", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方フィルハーモニー交響楽団４ 永＆萃", artist: "Kokyo Active NEETs", album_code: "KNCD0008", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方フィルハーモニー交響楽団５ 花", artist: "Kokyo Active NEETs", album_code: "KNCD0010", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方フィルハーモニー交響楽団６ 風 第一幕", artist: "Kokyo Active NEETs", album_code: "KNCD0012", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方フィルハーモニー交響楽団７ 風 第二幕", artist: "Kokyo Active NEETs", album_code: "KNCD0016", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "BLUE NOTE 東方 Vol.1", artist: "Tokyo Active NEETs", album_code: "ANCD0019", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方爆音ジャズ１０", artist: "Tokyo Active NEETs", album_code: "ANCD0021", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方爆音ジャズBEST", artist: "Tokyo Active NEETs", album_code: "ANCD0022", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方爆音ジャズ１１　神", artist: "Tokyo Active NEETs", album_code: "ANCD0024", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})
Album.create({title: "東方爆音ジャズ１２　針", artist: "Tokyo Active NEETs", album_code: "ANCD0025", preview_link: links.sample, user_id: 1, cover_link: "/assets/#{picture.sample}"})