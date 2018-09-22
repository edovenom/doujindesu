# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_details = {email: "hello@example.com", username:"helloworld", password:"helloworld"}
User.create(user_details)


Album.create({title: "Anime Violin EDM", album_code: "TAM3165", artist: "TAMusic", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "Vibrant Dancefloor", album_code: "FS0003", artist: "Frozen Starfall", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "Logistic Function", album_code: "LEM0008", artist: "Logical Emotion", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "Touhou Symphony Orchestra Vol3", album_code: "KNCD0006", artist: "Kokyo Active NEETs", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "花月夜", artist: "Yonder Voice", album_code: "YVCDN0004", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "蜃景1", artist: "Yonder Voice", album_code: "YVCDN0005", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "霊桜に眠る", artist: "Yonder Voice", album_code: "YVCDN0007", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "雪幻ティルナノーグ", artist: "Yonder Voice", album_code: "YVCDN0009", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "奏穹のラプソディア", artist: "Yonder Voice", album_code: "YVCDN0012", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "桜風の誓い", artist: "Yonder Voice", album_code: "YVCDN0014", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "PROMISED DANCEFLOOR", artist: "Frozen Starfall", album_code: "promised_dancefloor", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "OCEAN OF BLOSSOMS", artist: "Frozen Starfall", album_code: "ocean_of_blossoms", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "EXPEDITION", artist: "Frozen Starfall", album_code: "	expedition", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方フィルハーモ二ー交響楽団 紅", artist: "Kokyo Active NEETs", album_code: "KNCD0004", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方フィルハーモ二ー交響楽団２ 妖", artist: "Kokyo Active NEETs", album_code: "KNCD0005", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方フィルハーモニー交響楽団４ 永＆萃", artist: "Kokyo Active NEETs", album_code: "KNCD0008", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方フィルハーモニー交響楽団５ 花", artist: "Kokyo Active NEETs", album_code: "KNCD0010", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方フィルハーモニー交響楽団６ 風 第一幕", artist: "Kokyo Active NEETs", album_code: "KNCD0012", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方フィルハーモニー交響楽団７ 風 第二幕", artist: "Kokyo Active NEETs", album_code: "KNCD0016", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "BLUE NOTE 東方 Vol.1", artist: "Tokyo Active NEETs", album_code: "ANCD0019", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方爆音ジャズ１０", artist: "Tokyo Active NEETs", album_code: "ANCD0021", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方爆音ジャズBEST", artist: "Tokyo Active NEETs", album_code: "ANCD0022", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方爆音ジャズ１１　神", artist: "Tokyo Active NEETs", album_code: "ANCD0024", preview_link: "https://www.youtube.com", user_id: 1})
Album.create({title: "東方爆音ジャズ１２　針", artist: "Tokyo Active NEETs", album_code: "ANCD0025", preview_link: "https://www.youtube.com", user_id: 1})

Genre.create(genre: "jazz")
Genre.create(genre: "rock")
Genre.create(genre: "metal")
Genre.create(genre: "vocal")
Genre.create(genre: "instrumental")
Genre.create(genre: "pop")
Genre.create(genre: "edm")
Genre.create(genre: "eurobeat")
Genre.create(genre: "rap")