#作品DB
[
  { id: 1, title: '鬼滅の刃', type: 'comics' },
  { id: 2, title: 'ハイキュー！！', type: 'comics' },
  { id: 3, title: '東京喰種', type:  'comics' },
  { id: 4, title: '化物語', type: 'comics' },
  { id: 5, title: '呪術廻戦', type: 'comics' },
  { id: 6, title: '青春ブタ野郎はバニーガール先輩の夢を見ない', type: 'animes' },
  { id: 7, title: '無能なナナ', type: 'animes' }, 
  { id: 8, title: 'Re:ゼロから始める異世界生活', type: 'animes' },
  { id: 9, title: '五等分の花嫁', type: 'animes' },
  { id: 10, title: 'ソードアートオンライン', type: 'animes' },
  { id: 11, title: 'PSYCHO-PASS', type: 'animes' },
  { id: 12, title: 'やはり俺の青春ラブコメは間違っている', type: 'animes' },
  { id: 13, title: 'あひるの空', type: 'comics' },
  { id: 14, title: 'ONEPIECE', type: 'comics' },
].each do |data|
  art_craft = ArtCraft.find_or_initialize_by(id: data[:id])
  art_craft.title = data[:title]
  art_craft.category = data[:type]
  art_craft.save!
end

