# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
picture = ["https://en.touhouwiki.net/images/f/f9/ANCD-0019.jpg","http://neets.tokyo/_src/1318/jazz10_m.jpg","http://neets.tokyo/_src/1324/jazzb_m.jpg","http://neets.tokyo/_src/1406/jazz11-m.jpg","http://neets.tokyo/_src/1435/jazz12_m.jpg","http://neets.tokyo/_src/1029/tphill1_m.jpg","http://neets.tokyo/_src/1031/tphill2_m.jpg","http://neets.tokyo/_src/1148/tphill4_m.jpg","http://neets.tokyo/_src/1326/tphill5_m.jpg","http://neets.tokyo/_src/1387/tphill6_m.jpg","http://neets.tokyo/_src/1440/tphill7_m.jpg","https://lastfm-img2.akamaized.net/i/u/300x300/91498c1cffecdd926bb2c2969c483267.jpg","http://yondervoice.net/wp-content/uploads/2016/12/YVCDN0013-960.jpg","http://otakusync.thisistap.com/wp-content/uploads/LUNATICHEAVENS-350x350.jpg","https://petayuuchan.files.wordpress.com/2016/08/yvc90.jpg","http://otakusync.thisistap.com/wp-content/uploads/THEANCIENTBATTLEFIELDWHICHDYEDINTOAREDLOVESONG-350x350.jpg","http://otakusync.thisistap.com/wp-content/uploads/SAIMU-350x350.jpg"]
links = ["https://www.youtube.com/embed/o0_BDhvrKPQ","https://www.youtube.com/embed/BTe1JMTlwwc","https://www.youtube.com/embed/xOz-T3NPtLA","https://www.youtube.com/embed/ETTk83qis0w","https://www.youtube.com/embed/vS_a8Edde8k"]
user_details = {email: "darkwoodpresents@gmail.com", username:"WoodyDark", password:"2345"}
user_details = {email: "jeffreys466453@gmail.com", username:"Jeffrey", password:"2345", permission_level: 1}
User.create(user_details)

Album.create({title: "Anime Violin EDM", album_code: "TAM3165", artist: "TAMusic", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "Vibrant Dancefloor", album_code: "FS0003", artist: "Frozen Starfall", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "Logistic Function", album_code: "LEM0008", artist: "Logical Emotion", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "Touhou Symphony Orchestra Vol3", album_code: "KNCD0006", artist: "Kokyo Active NEETs", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "花月夜", artist: "Yonder Voice", album_code: "YVCDN0004", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "蜃景1", artist: "Yonder Voice", album_code: "YVCDN0005", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "霊桜に眠る", artist: "Yonder Voice", album_code: "YVCDN0007", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "雪幻ティルナノーグ", artist: "Yonder Voice", album_code: "YVCDN0009", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "奏穹のラプソディア", artist: "Yonder Voice", album_code: "YVCDN0012", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "桜風の誓い", artist: "Yonder Voice", album_code: "YVCDN0014", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "PROMISED DANCEFLOOR", artist: "Frozen Starfall", album_code: "promised_dancefloor", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "OCEAN OF BLOSSOMS", artist: "Frozen Starfall", album_code: "ocean_of_blossoms", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "EXPEDITION", artist: "Frozen Starfall", album_code: "	expedition", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方フィルハーモ二ー交響楽団 紅", artist: "Kokyo Active NEETs", album_code: "KNCD0004", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方フィルハーモ二ー交響楽団２ 妖", artist: "Kokyo Active NEETs", album_code: "KNCD0005", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方フィルハーモニー交響楽団４ 永＆萃", artist: "Kokyo Active NEETs", album_code: "KNCD0008", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方フィルハーモニー交響楽団５ 花", artist: "Kokyo Active NEETs", album_code: "KNCD0010", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方フィルハーモニー交響楽団６ 風 第一幕", artist: "Kokyo Active NEETs", album_code: "KNCD0012", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方フィルハーモニー交響楽団７ 風 第二幕", artist: "Kokyo Active NEETs", album_code: "KNCD0016", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "BLUE NOTE 東方 Vol.1", artist: "Tokyo Active NEETs", album_code: "ANCD0019", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方爆音ジャズ１０", artist: "Tokyo Active NEETs", album_code: "ANCD0021", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方爆音ジャズBEST", artist: "Tokyo Active NEETs", album_code: "ANCD0022", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方爆音ジャズ１１　神", artist: "Tokyo Active NEETs", album_code: "ANCD0024", preview_link: links.sample, user_id: 1, cover_link: picture.sample})
Album.create({title: "東方爆音ジャズ１２　針", artist: "Tokyo Active NEETs", album_code: "ANCD0025", preview_link: links.sample, user_id: 1, cover_link: picture.sample})