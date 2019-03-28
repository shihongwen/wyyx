-- 轮播图表
INSERT INTO yx.yx_index_carousel VALUES
(NULL,'img/index/banner/banner1.png','轮播广告商品1','detail.html?pid=1','carousel'),
(NULL,'img/index/banner/banner2.png','轮播广告商品2','detail.html?pid=1','carousel'),
(NULL,'img/index/banner/banner3.png','轮播广告商品3','detail.html?pid=1','carousel'),
(NULL,'img/index/banner/banner4.png','轮播广告商品4','detail.html?pid=1','carousel'),
(NULL,'img/index/floor/floor1-1.jpg','楼层1广告图1','detail.html?pid=1','floor1'),
(NULL,'img/index/floor/floor1-2.jpg','楼层1广告图2','detail.html?pid=1','floor1'),
(NULL,'img/index/floor/floor1-3.jpg','楼层1广告图3','detail.html?pid=1','floor1'),
(NULL,'img/index/floor/floor1-4.jpg','楼层1广告图4','detail.html?pid=1','floor1');
-- 首页推荐商品表
INSERT INTO yx.yx_index_recommend_product VALUES
(NULL,'【情人节礼盒】精致女孩礼盒',485,539,'img/index/news/new0.png','img/index/news/new0-1.png','detail.html?pid=1','new',NULL,NULL),
(NULL,'3色可选 远红外线近0辐射负离子电吹风',199,NULL,'img/index/news/new1.png','img/index/news/new1-1.png','detail.html?pid=1','new',NULL,NULL),
(NULL,'【情人节礼盒】保温随行杯礼盒',269,299,'img/index/news/new2.png','img/index/news/new2-1.png','detail.html?pid=1','new',NULL,NULL),
(NULL,'洗脱一体不脏手懒人拖把',139,NULL,'img/index/news/new3.png','img/index/news/new3-1.png','detail.html?pid=1','new',NULL,NULL),
(NULL,'德国米技电陶炉',999,NULL,'img/index/news/new4.png','img/index/news/new4-1.png','detail.html?pid=1','new',NULL,NULL),
(NULL,'茶垢咖啡垢清洁剂 450g',29,NULL,'img/index/news/new5.png','img/index/news/new5-1.png','detail.html?pid=1','new',NULL,NULL),
(NULL,'泰式蟹片',12,NULL,'img/index/news/new6.png','img/index/news/new6-1.png','detail.html?pid=1','new',NULL,NULL),
(NULL,'网易智造低压海盐热敷腰带',199,NULL,'img/index/news/new7.png','img/index/news/new7-1.png','detail.html?pid=1','new',NULL,NULL),
(NULL,'网易智造蒸汽沐足盆',379,449,'img/index/recommend/recommend1.png',NULL,'detail.html?pid=1','recommend','情人节特惠','big'),
(NULL,'泰国制造 天然乳胶床垫 7.5CM加厚款',2499,2899,'img/index/recommend/recommend2.png',NULL,'detail.html?pid=1','recommend','情人节特惠',NULL),
(NULL,'网易智造R1智能折叠跑步机',1899,2199,'img/index/recommend/recommend3.png',NULL,'detail.html?pid=1','recommend','情人节特惠',NULL),
(NULL,'比利时 巧克力礼盒 325克',129,189,'img/index/recommend/recommend4.png',NULL,'detail.html?pid=1','recommend','三石福利价',NULL),
(NULL,'智能马桶盖',1299,1599,'img/index/recommend/recommend5.png',NULL,'detail.html?pid=1','recommend','情人节特惠',NULL),
(NULL,'全棉针织条纹四件套 新款',299,NULL,'img/index/recommend/recommend6.png',NULL,'detail.html?pid=1','recommend','限时购',NULL),
(NULL,'全净皓齿变速式声波电动牙刷',219,NULL,'img/index/recommend/recommend7.png',NULL,'detail.html?pid=1','recommend',NULL,NULL);

-- 产品超小图片表
INSERT INTO yx.yx_product_xs_pic VALUES
(NULL,1,'img/product/xs/95ba5fff6761b7a754ed68fdec153620.png'),
(NULL,1,'img/product/xs/bd145c841927360f6ebd4e2da41c9d07.png'),
(NULL,1,'img/product/xs/cb023d795d27f8f376576e5bb40d9175.png');

-- 产品图片表
INSERT INTO yx.yx_product_pic VALUES
(NULL,1,1,'img/product/sm/7804feeafb48084c2421b5f6018d5b91.jpg','img/product/md/7804feeafb48084c2421b5f6018d5b91.jpg','img/product/lg/7804feeafb48084c2421b5f6018d5b91.jpg'),
(NULL,1,1,'img/product/sm/bc3631a0d87cd148c42afc10cc52187c.jpg','img/product/md/bc3631a0d87cd148c42afc10cc52187c.jpg','img/product/lg/bc3631a0d87cd148c42afc10cc52187c.jpg'),
(NULL,1,1,'img/product/sm/e8162b6511ea7d4cace9e62cee8215d8.jpg','img/product/md/e8162b6511ea7d4cace9e62cee8215d8.jpg','img/product/lg/e8162b6511ea7d4cace9e62cee8215d8.jpg'),
(NULL,1,1,'img/product/sm/f656e365c4a8ede6cf59efa279c20fff.jpg','img/product/md/f656e365c4a8ede6cf59efa279c20fff.jpg','img/product/lg/f656e365c4a8ede6cf59efa279c20fff.jpg'),
(NULL,1,1,'img/product/sm/fddaa18690fa0b53d2d59ab7bd26b8f9.png','img/product/md/fddaa18690fa0b53d2d59ab7bd26b8f9.png','img/product/lg/fddaa18690fa0b53d2d59ab7bd26b8f9.png');

-- 产品表
INSERT INTO yx.yx_product VALUES
(NULL,'3色可选 远红外线近0辐射负离子电吹风','速干护发 吹出来的光泽水润',199,NULL,189,193,19,96.8,'<p><img data-original="img/product/detail/462d6d6c66f1f4c4284a081dc3bf1d72.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/462d6d6c66f1f4c4284a081dc3bf1d72.jpg"
              _src="img/product/detail/462d6d6c66f1f4c4284a081dc3bf1d72.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/3c24bed657fec6b48a855bceea68be17.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/3c24bed657fec6b48a855bceea68be17.jpg"
              _src="img/product/detail/3c24bed657fec6b48a855bceea68be17.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/fc398f3ef82c3dcf384f192f3218eb53.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/fc398f3ef82c3dcf384f192f3218eb53.jpg"
              _src="img/product/detail/fc398f3ef82c3dcf384f192f3218eb53.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/01e44626c8b562c6c10065bc939e0243.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/01e44626c8b562c6c10065bc939e0243.jpg"
              _src="img/product/detail/01e44626c8b562c6c10065bc939e0243.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/883be787479ddd898425cf9dbb343f03.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/883be787479ddd898425cf9dbb343f03.jpg"
              _src="img/product/detail/883be787479ddd898425cf9dbb343f03.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/c8e21633481cdb676375171dcee556c3.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/c8e21633481cdb676375171dcee556c3.jpg"
              _src="img/product/detail/c8e21633481cdb676375171dcee556c3.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/3753b10f4da1ef22b11fada6a7677ada.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/3753b10f4da1ef22b11fada6a7677ada.jpg"
              _src="img/product/detail/3753b10f4da1ef22b11fada6a7677ada.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/d20a13f9bb04d174ea2a2dc052528344.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/d20a13f9bb04d174ea2a2dc052528344.jpg"
              _src="img/product/detail/d20a13f9bb04d174ea2a2dc052528344.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/2081b17e4f2de2a6b7b160b4a89c6c37.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/2081b17e4f2de2a6b7b160b4a89c6c37.jpg"
              _src="img/product/detail/2081b17e4f2de2a6b7b160b4a89c6c37.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/d8a80f26acf7335088dca65da662dc9b.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/d8a80f26acf7335088dca65da662dc9b.jpg"
              _src="img/product/detail/d8a80f26acf7335088dca65da662dc9b.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/b2080b5d5c66cfe65b1258e9b6eaf2ff.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/b2080b5d5c66cfe65b1258e9b6eaf2ff.jpg"
              _src="img/product/detail/b2080b5d5c66cfe65b1258e9b6eaf2ff.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/08a6112b994bd62f70ceb287742bec18.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/08a6112b994bd62f70ceb287742bec18.jpg"
              _src="img/product/detail/08a6112b994bd62f70ceb287742bec18.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/ad2b0b90684142dac47bb5082f566e12.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/ad2b0b90684142dac47bb5082f566e12.jpg"
              _src="img/product/detail/ad2b0b90684142dac47bb5082f566e12.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/ed701801e0c3de5740ad199e29a17195.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/ed701801e0c3de5740ad199e29a17195.jpg"
              _src="img/product/detail/ed701801e0c3de5740ad199e29a17195.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/c09fce6d51823b6582e2c9758f83f59f.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/c09fce6d51823b6582e2c9758f83f59f.jpg"
              _src="img/product/detail/c09fce6d51823b6582e2c9758f83f59f.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/236dad5bfa2d2a50e7d6b9cefaaf0ea8.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/236dad5bfa2d2a50e7d6b9cefaaf0ea8.jpg"
              _src="img/product/detail/236dad5bfa2d2a50e7d6b9cefaaf0ea8.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/d8a4b83065eaddfbf88ef8401499bcf9.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/d8a4b83065eaddfbf88ef8401499bcf9.jpg"
              _src="img/product/detail/d8a4b83065eaddfbf88ef8401499bcf9.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/1f4a236a676da8d26ba5d1d951157e87.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/1f4a236a676da8d26ba5d1d951157e87.jpg"
              _src="img/product/detail/1f4a236a676da8d26ba5d1d951157e87.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/1760b8f020e827ec5e964e2d1398652b.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/1760b8f020e827ec5e964e2d1398652b.jpg"
              _src="img/product/detail/1760b8f020e827ec5e964e2d1398652b.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/3e46ca6c73913d91a984d027e08fc10e.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/3e46ca6c73913d91a984d027e08fc10e.jpg"
              _src="img/product/detail/3e46ca6c73913d91a984d027e08fc10e.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/e662bdc1f235393ee3037b009d56a62e.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/e662bdc1f235393ee3037b009d56a62e.jpg"
              _src="img/product/detail/e662bdc1f235393ee3037b009d56a62e.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/80eae20a1976cd84f35322792cf442fa.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/80eae20a1976cd84f35322792cf442fa.jpg"
              _src="img/product/detail/80eae20a1976cd84f35322792cf442fa.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/a3cd97319b9feb3935130d06ff88ffcc.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/a3cd97319b9feb3935130d06ff88ffcc.jpg"
              _src="img/product/detail/a3cd97319b9feb3935130d06ff88ffcc.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/21f735be2f8196915e60846930224d98.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/21f735be2f8196915e60846930224d98.jpg"
              _src="img/product/detail/21f735be2f8196915e60846930224d98.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/9d96b6a65ce0e9adbd1ad1f80166e347.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/9d96b6a65ce0e9adbd1ad1f80166e347.jpg"
              _src="http://yanxuan.nosdn.127.net/9d96b6a65ce0e9adbd1ad1f80166e347.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/1415e1a60fff327499c960bcfef0b026.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/1415e1a60fff327499c960bcfef0b026.jpg"
              _src="img/product/detail/1415e1a60fff327499c960bcfef0b026.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/652bf19081d868ad0754e7ffb321d0b0.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/652bf19081d868ad0754e7ffb321d0b0.jpg"
              _src="img/product/detail/652bf19081d868ad0754e7ffb321d0b0.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/da1d385ba390b84be1bb18e59c4442b5.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/da1d385ba390b84be1bb18e59c4442b5.jpg"
              _src="img/product/detail/da1d385ba390b84be1bb18e59c4442b5.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/f02a19c34d426d1d7ce321a1d6f00dc2.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/f02a19c34d426d1d7ce321a1d6f00dc2.jpg"
              _src="img/product/detail/f02a19c34d426d1d7ce321a1d6f00dc2.jpg" style="height: 200px;"></p>
      <p><img data-original="img/product/detail/5a6f77e283f21f16abc3684cfdd018a9.jpg"
              class="img-lazyload img-lazyloaded" src="img/product/detail/5a6f77e283f21f16abc3684cfdd018a9.jpg"
              _src="img/product/detail/5a6f77e283f21f16abc3684cfdd018a9.jpg" style="height: 69px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/d89176a453ad47572671f839ebddf6fb.gif"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/d89176a453ad47572671f839ebddf6fb.gif"
              _src="http://yanxuan.nosdn.127.net/d89176a453ad47572671f839ebddf6fb.gif" style="height: 422px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/e34bc213f466a5214cf050428ffab2e2.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/e34bc213f466a5214cf050428ffab2e2.jpg"
              _src="http://yanxuan.nosdn.127.net/e34bc213f466a5214cf050428ffab2e2.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/01e7974162974506a2a36b6889555d59.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/01e7974162974506a2a36b6889555d59.jpg"
              _src="http://yanxuan.nosdn.127.net/01e7974162974506a2a36b6889555d59.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/835fb6bf860f14c62e37dcd138dc9af1.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/835fb6bf860f14c62e37dcd138dc9af1.jpg"
              _src="http://yanxuan.nosdn.127.net/835fb6bf860f14c62e37dcd138dc9af1.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/4bd5ff0e2528e6071f7aa75b18369bc1.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/4bd5ff0e2528e6071f7aa75b18369bc1.jpg"
              _src="http://yanxuan.nosdn.127.net/4bd5ff0e2528e6071f7aa75b18369bc1.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/fbe217151b9432f20a30a5eccfd75fbd.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/fbe217151b9432f20a30a5eccfd75fbd.jpg"
              _src="http://yanxuan.nosdn.127.net/fbe217151b9432f20a30a5eccfd75fbd.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/e40c095cecf0b875edbfe207a883f0a0.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/e40c095cecf0b875edbfe207a883f0a0.jpg"
              _src="http://yanxuan.nosdn.127.net/e40c095cecf0b875edbfe207a883f0a0.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/17e1d6ed48cb8884a4897dde17ade3a0.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/17e1d6ed48cb8884a4897dde17ade3a0.jpg"
              _src="http://yanxuan.nosdn.127.net/17e1d6ed48cb8884a4897dde17ade3a0.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/02a902888f03809e2fae45c60da18227.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/02a902888f03809e2fae45c60da18227.jpg"
              _src="http://yanxuan.nosdn.127.net/02a902888f03809e2fae45c60da18227.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/35031211e51644990cc6746d843f0ee8.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/35031211e51644990cc6746d843f0ee8.jpg"
              _src="http://yanxuan.nosdn.127.net/35031211e51644990cc6746d843f0ee8.jpg" style="height: 200px;"></p>
      <p><img data-original="http://yanxuan.nosdn.127.net/8e77ff32b0709f33f8a841577747ec35.jpg"
              class="img-lazyload img-lazyloaded"
              src="http://yanxuan.nosdn.127.net/8e77ff32b0709f33f8a841577747ec35.jpg"
              _src="http://yanxuan.nosdn.127.net/8e77ff32b0709f33f8a841577747ec35.jpg" style="height: 157px;"></p>',1);
