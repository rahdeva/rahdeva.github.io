'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"canvaskit/canvaskit.js": "76f7d822f42397160c5dfc69cbc9b2de",
"canvaskit/canvaskit.wasm": "f48eaf57cada79163ec6dec7929486ea",
"canvaskit/skwasm.worker.js": "19659053a277272607529ef87acf9d8a",
"canvaskit/skwasm.wasm": "6711032e17bf49924b2b001cef0d3ea3",
"canvaskit/chromium/canvaskit.js": "8c8392ce4a4364cbb240aa09b5652e05",
"canvaskit/chromium/canvaskit.wasm": "fc18c3010856029414b70cae1afc5cd9",
"canvaskit/skwasm.js": "1df4d741f441fa1a4d10530ced463ef8",
"assets/assets/fonts/visuelt/VisueltPro-Medium.ttf": "cf4dbc20776a2b309fe30a9bbfe7de0a",
"assets/assets/fonts/visuelt/VisueltPro-Thin.ttf": "82d7b5b67c24f00acb08f2dccf1fd03b",
"assets/assets/fonts/visuelt/VisueltPro-Black.ttf": "691b6f9aa3ee625e3cd8da2f8849a126",
"assets/assets/fonts/visuelt/VisueltPro-Light.ttf": "2a1df2ff00c2611bf1b7fdeeaeebfa59",
"assets/assets/fonts/visuelt/VisueltPro-Bold.ttf": "18acd33c965a455418d4204f0f334ea8",
"assets/assets/fonts/visuelt/VisueltPro-Regular.ttf": "0f8cd2494eb8c5e3a33352b2dd38fd61",
"assets/assets/fonts/visuelt/VisueltPro-ExtraLight.ttf": "90bfa0766e43260710e3c6ac0f78c9e9",
"assets/assets/images/android_basics_cert.png": "3279aee63a95e1b4df4e4999364f8749",
"assets/assets/images/up-arrow.png": "d0c6457f5704962b99f0e6aa3e9b18e7",
"assets/assets/images/cmu_cert.png": "522cfd8c2bf621d86dbbca32c7624377",
"assets/assets/images/my-photos.png": "3ab7df11def33ece424e7c64de48866d",
"assets/assets/images/CV_GustiNgurahDevaWirandanaPutra.pdf": "cc04c65f7c73e95e0eb1ed8950718a5f",
"assets/assets/images/right-arrow.png": "62a7bab73a0fe40acd3f4555adfcab91",
"assets/assets/images/rahdeva-projects/masakin/masakin-2.png": "aa25b0ac781b073dab39aa726c2c7012",
"assets/assets/images/rahdeva-projects/masakin/masakin-1.png": "7e6ee320b8c30aa6b02c25197c10ae57",
"assets/assets/images/rahdeva-projects/masakin/masakin-cover.png": "7e6ee320b8c30aa6b02c25197c10ae57",
"assets/assets/images/rahdeva-projects/masakin/masakin-3.png": "0a990c9c641d64014e0ebceaad7b0489",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-6.png": "146682ebedb4cd6a2d93c0b0574cb0bb",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-15.png": "4b1e41f5f921b031afbfa401541564dc",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-1.png": "0539870766a2d63c3e2be9209c729ce9",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-14.png": "db8419dcac4694c15b915d1c56746470",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-13.png": "570a885e19bb23e9b26100d9211855f1",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-4.png": "2769c34f7714bec1833244985f2674e4",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-5.png": "d9c62183172b1e012f4df52910c5051b",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-18.png": "75da80334888ac7725ac87bc52a81243",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-cover.png": "ff51e69921ca545f41a74b65d1285096",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-16.png": "2e6b4655306f7179e6efc651f42eca4e",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-17.png": "48dc443e1fa0ddc4a284488bbb457147",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-9.png": "9a28f51a7b7e4df390340b0959b66342",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-19.png": "0cab6f474fe9bb7f912377bfbbd01475",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-2.png": "6c556104d392faa0f553d22b9b342a89",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-7.png": "e3ed435569c5a57984c4922d4a2af599",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-12.png": "61e5cc8daedbb8fa7c77a22cc6dd1a5e",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-8.png": "b6b01497624def6959699eb0688fd9fe",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-11.png": "28055de43e8491a3775a6df4c4f9daa9",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-3.png": "afda3e69229489090ee7eea9f0619a78",
"assets/assets/images/rahdeva-projects/edgestore/edgestore-10.png": "ff51e69921ca545f41a74b65d1285096",
"assets/assets/images/rahdeva-projects/plantist/plantist_2.png": "d5f366b1d4bf6c87ec8bdad8af91ddcd",
"assets/assets/images/rahdeva-projects/plantist/plantist_3.png": "cf8239308c8b695d49e96b63439cc6fe",
"assets/assets/images/rahdeva-projects/plantist/plantist_1.png": "cedb4507177b4d7b14c95a34d76dd80c",
"assets/assets/images/rahdeva-projects/plantist/plantist_cover.png": "d5f366b1d4bf6c87ec8bdad8af91ddcd",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-4.png": "ca388e9de256f2bfc54b08e098f392f6",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-6.png": "60406ab019f76dcea1c0c66e5eb6a072",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-cover-detail.png": "3c2aec1337fda0fc27d5c56a35f8395e",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-7.png": "d10afc9a76c2d7d7a51ee65766ed15ca",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-8.png": "632659eeb996ce53df0c40a8127082a7",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-3.png": "9e805c65ea1b8e39050202d469a493d0",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-10.png": "bcb50960d1d3833b32d95155da498a12",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-9.png": "1d7107eff50af4276555b7720bbc221e",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-cover.png": "21f2cbc85aa498f02ca6f30b1b20fb5a",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-2.png": "c22d28a4392def1dd5ff067765376522",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-5.png": "5f22aba7e96e8b8623ebecf1358afc66",
"assets/assets/images/rahdeva-projects/buahtangan/buahtangan-1.png": "946c8082fc068a35a75c8e77cf3aa8ba",
"assets/assets/images/rahdeva-projects/bookshelf/bookshelf-cover.png": "7d2fc3028d83b9e3c34b0b69981d8bb2",
"assets/assets/images/rahdeva-projects/bookshelf/bookshelf-3.png": "b3000645c5237fc46f5005eeea0c9301",
"assets/assets/images/rahdeva-projects/bookshelf/bookshelf-2.png": "7d2fc3028d83b9e3c34b0b69981d8bb2",
"assets/assets/images/rahdeva-projects/bookshelf/bookshelf-1.png": "54d179493056207945cee01d60c11f73",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-9.png": "0ad0746b234a5e6974ab15d20118d0a3",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-6.png": "99ee16e30a6ace3aca005841672fd99a",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-3.png": "d3667ba147b56e3d7f290b756f4bd89f",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-2.png": "dc3885159513cf5ba62b68d6315d8eda",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-4.png": "3e847ee8ced070740ab2faace110836c",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-7.png": "147ecd1abc95bf1ecccc935fbe259bef",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-5.png": "5164ef5e2d2bc56c22765ecedb5ec1a2",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-1.png": "dab22991cbba0b9b20848231f8be0efb",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-cover.png": "147ecd1abc95bf1ecccc935fbe259bef",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-8.png": "261b7245c6a393d3efb493a91de62c7d",
"assets/assets/images/rahdeva-projects/tabletop/tabletop-0.png": "66d98f26659693d6e127fa0a6d3bdfe1",
"assets/assets/images/rahdeva-projects/kenak/kenak-cover.png": "fcff85c76e1d01a4221ca7cbb58315cd",
"assets/assets/images/rahdeva-projects/kenak/kenak-1.png": "037365f5940ca871ea3ebc316c1ea774",
"assets/assets/images/rahdeva-projects/kenak/kenak-2.png": "fcff85c76e1d01a4221ca7cbb58315cd",
"assets/assets/images/rahdeva-projects/kenak/kenak-3.png": "560c7ce89761621372bbb862ed27a3cb",
"assets/assets/images/rahdeva-projects/restaurant/restaurant-4.png": "4ebbbd7b50d15d85cc55a3dfda34da8e",
"assets/assets/images/rahdeva-projects/restaurant/restaurant-cover.png": "eb472735e22652a1cc732dba05ce8ecb",
"assets/assets/images/rahdeva-projects/restaurant/restaurant-1.png": "db60a1d1f3f5b73cbef6bd24c0ba0b17",
"assets/assets/images/rahdeva-projects/restaurant/restaurant-2.png": "eb472735e22652a1cc732dba05ce8ecb",
"assets/assets/images/rahdeva-projects/restaurant/restaurant-3.png": "ee1eb34dbb123d0d4a3de2713bb288a5",
"assets/assets/images/text-logo.png": "eafd16c14a37a78dbe8d2d6341f122b8",
"assets/assets/images/circle.png": "663d5187ada8666bfa87120d1665605f",
"assets/assets/images/ios-down-arrow.png": "fa4679d2972f1d11355142a60ed34ede",
"assets/assets/images/down-arrow-2.png": "de203dedb01f2871b4ebbec490c20a6c",
"assets/assets/images/down-arrow.png": "4393cd5feeb20fb468c7eb223d1bbd06",
"assets/assets/images/google_play.png": "7c42f3803d546db3d393106501dba541",
"assets/assets/images/data_science_cert.png": "1364c23105bfbb8c9197f7ad1f9dd245",
"assets/assets/images/works.png": "5c6f8eb3a22f703781aad6c2528cf0cd",
"assets/assets/images/projects/login_catalog/login8.png": "2bf8b3ab8d940dfb5c48069195c2d039",
"assets/assets/images/projects/login_catalog/login_catalog_cover.jpg": "8142a609044c0f5b26df2964fe9304c4",
"assets/assets/images/projects/login_catalog/login4.png": "f5eb46c00b1ad99b48dc75648ae232c0",
"assets/assets/images/projects/login_catalog/login5.png": "bafb620a4388df5ef86cff21ef895491",
"assets/assets/images/projects/login_catalog/login7.jpeg": "34412e31d874c3147f29d3bc522efbd2",
"assets/assets/images/projects/login_catalog/login9.png": "4eb5737139e26eb31c1bea5e6e2c0a6b",
"assets/assets/images/projects/flutter_catalog/activities.png": "56b8a82f91b3bb17fc2da735be8309e2",
"assets/assets/images/projects/flutter_catalog/screens.png": "f384d904e19edcdf3b83ac9fab4a2514",
"assets/assets/images/projects/flutter_catalog/onboarding.png": "78cd62661bd65bca48016781ec5af76d",
"assets/assets/images/projects/flutter_catalog/thanks.png": "f23385476a0df7db049d7b8f94714706",
"assets/assets/images/projects/flutter_catalog/stats.png": "c6c5da388e4771644e3a0057737cc018",
"assets/assets/images/projects/flutter_catalog/flutter_catalog_cover.png": "529c018ceb7db5d85e0bba13a4cd19c3",
"assets/assets/images/projects/flutter_catalog/typography.png": "b12b17f85e8e12bd2ccab08e987c640c",
"assets/assets/images/projects/disneyplus/disneyplus_the_end.png": "32e658209ce45e9227860a8c0fbf1b54",
"assets/assets/images/projects/disneyplus/disneyplus_great_menu.png": "d13b01ee672be2e3e884fe866db90359",
"assets/assets/images/projects/disneyplus/disneyplus_mockups.png": "ec3d2333044bc2622030e38eb84a1b90",
"assets/assets/images/projects/disneyplus/disneyplus_home.png": "7c3f46edc91974a22db6ecab11e49cbd",
"assets/assets/images/projects/disneyplus/disneyplus_profiles.png": "ee5c8f987396dbb6157911982b9e983d",
"assets/assets/images/projects/disneyplus/disneyplus_theme.png": "b4a28335035d4b169f1033313801fcc5",
"assets/assets/images/projects/disneyplus/disneyplus_designs.png": "084289a49e4ec07af37d41eb0b919123",
"assets/assets/images/projects/disneyplus/disneyplus_header.png": "1ef584f42c10fd2f994f44e35d281751",
"assets/assets/images/projects/disneyplus/disneyplus_components.png": "74d9e2263cebd38337ac2ae9d2f23b16",
"assets/assets/images/projects/disneyplus/disneyplus_description.png": "f049e03a0d786b44d57f80e702f10a5c",
"assets/assets/images/projects/disneyplus/disneyplus_downloads_feature.png": "3bb3d18e2b7af7b62e3bc90a8deed037",
"assets/assets/images/projects/disneyplus/mockups.png": "bfec31223be46e6c269d8bc71f3f707e",
"assets/assets/images/projects/disneyplus/disneyplus_more_description.png": "54c40930e0035fee095cc5f26e09e8d4",
"assets/assets/images/projects/disneyplus/disneyplus_cover.png": "ffa11a0c8f114e0a24b31bb1790f2ef8",
"assets/assets/images/projects/nimbus/nimbus_cover.jpg": "454409edbf32cc8432d70c69155a6016",
"assets/assets/images/projects/nimbus/nimbus.jpg": "9f925a888c2ff02c9f1206f99c2b155d",
"assets/assets/images/projects/aerium-v1/portfolio_cover.png": "44d787594b26ade2562489ced20d9914",
"assets/assets/images/projects/aerium-v1/portfolio_design_3.png": "4b8a024161c0d3f30b858ac60b9286d0",
"assets/assets/images/projects/aerium-v1/portfolio_design_2.png": "415b12138860ce60055b3ce39e517fde",
"assets/assets/images/projects/roam/wireframes_signup_login.jpeg": "3f9c2d5af711cbc401036749fca0ec76",
"assets/assets/images/projects/roam/roam_explore.jpeg": "545a73fcfd824fdc7aa66ec3b5601cf8",
"assets/assets/images/projects/roam/roam_onboarding.jpeg": "d6f2a2c09df8af0fc8708db8bd3c9a93",
"assets/assets/images/projects/roam/roam_cover.jpeg": "a67b0ed338d81feb4cf60955c3a821b2",
"assets/assets/images/projects/roam/wireframes_onboarding.jpeg": "0793bcaad704dc77c2115eca32ec488b",
"assets/assets/images/projects/roam/roam_flow_chart.png": "50aa1d22e98a682fb24ad8beca7f306f",
"assets/assets/images/projects/roam/roam_profile.jpeg": "3351fb0171a75f53d2974e20e586db86",
"assets/assets/images/projects/roam/wireframes_app.jpeg": "2fba25598d725ec44a6b828448535e3a",
"assets/assets/images/projects/roam/roam_overall.jpeg": "5c76cf22ede0a7955733f39d4439a055",
"assets/assets/images/projects/roam/roam_home.jpeg": "9bcacb5453047dca89cf69352742765f",
"assets/assets/images/projects/foodybite/foodybite_typography.png": "af6e1b156ad00cfb382824b30ba38a35",
"assets/assets/images/projects/foodybite/foodybite_home.png": "831c86f2e1dd6fa238acd532e41b3607",
"assets/assets/images/projects/foodybite/foodybite_cover.png": "969daa4932408c630eb26f795cd84840",
"assets/assets/images/projects/foodybite/foodybite_home_flow.png": "f144497bae302b17e440392f547410e7",
"assets/assets/images/projects/foodybite/foodybite_review_favorite_notifications_flow.png": "e80ce1073e823a2fc83ddbf1515794f7",
"assets/assets/images/projects/foodybite/foodybite_starting_flow.png": "77c7833485f0a71c95e3a74f3f01b7c4",
"assets/assets/images/projects/otp_package/otp_cover.png": "6fc7ff3a9d1b6d8cbb81348c8f2df184",
"assets/assets/images/projects/drop/drop_flowchart.png": "6601108c834215bb982c5fa49f586591",
"assets/assets/images/projects/drop/drop_cover.png": "c50dd8fc206812051747e58cf5a8b345",
"assets/assets/images/projects/drop/drop_easy_access.gif": "7657c8f99a7a3a405cb71cb1f4bee892",
"assets/assets/images/projects/drop/drop_minimal_design.png": "06c3434542050151428b3f66a0193244",
"assets/assets/images/projects/drop/drop_description.gif": "7a0eede4ed79d2468eeaec6d30347b3c",
"assets/assets/images/projects/drop/drop_simple.png": "c4c00ba6b1933a304067dda102a922dd",
"assets/assets/images/projects/drop/drop_thanks.gif": "7f63f39ed7c894ee6e0755f77a39afb5",
"assets/assets/images/projects/drop/drop_wireframes.gif": "155af5f6c5def746328626cfce09c163",
"assets/assets/images/projects/aerium-v2/typography.jpg": "e16664ace87aa12b2266e6f8127ca05f",
"assets/assets/images/projects/aerium-v2/aerium_v2.jpg": "33ec4d62fe74fb6ee3b01301f92ceb9c",
"assets/assets/images/projects/aerium-v2/last.jpg": "ee1b6eee2d5df5a5bfdcb686266b75a0",
"assets/assets/images/projects/aerium-v2/overall.jpg": "f114c609432d9115658f5477900f66a7",
"assets/assets/images/projects/aerium-v2/first.jpg": "d7a4be69fcea5718ce8fdaa844ce0988",
"assets/assets/images/projects/outfitr/outfitr_1.jpeg": "5a72c14039670e01bcbfaccbff889551",
"assets/assets/images/projects/outfitr/outfitr_2.jpeg": "b5c6638904552202a14d3d65f6d69116",
"assets/assets/images/projects/outfitr/outfitr_4.jpeg": "4f45a2d1f2735a813f9e3ce4ca83f351",
"assets/assets/images/projects/outfitr/outfitr_5.jpeg": "32317c7e7d7bf50c3ca110d6d393e670",
"assets/assets/images/projects/outfitr/outfitr_6.jpeg": "8a986255dfcd301d00891cf0a6288df8",
"assets/assets/images/projects/outfitr/outfitr_cover.jpg": "73c49501f831207eb63ca115c5b1dd31",
"assets/assets/images/cloud_developer_cert.png": "1ca2e8a34f3acd90d81a67673b3b42be",
"assets/assets/images/associate_android_dev.png": "496dc53d08eec0434eeeae9887955ec8",
"assets/assets/screenshots/8.jpg": "95799f71c9817f376085c3898b75d287",
"assets/assets/screenshots/5.gif": "63b922b2439e4b9d8c82cb0d70d49b29",
"assets/assets/screenshots/2.jpg": "e16664ace87aa12b2266e6f8127ca05f",
"assets/assets/screenshots/4.jpg": "f114c609432d9115658f5477900f66a7",
"assets/assets/screenshots/3.gif": "045c76d00225ca68992c0dfdeca8d667",
"assets/assets/screenshots/9.jpg": "e727c315acf66548049c51eb6c6bbc9e",
"assets/assets/screenshots/1.jpg": "396c571e13c03fa3ddd14f13c601b8ad",
"assets/assets/screenshots/0.jpg": "d7a4be69fcea5718ce8fdaa844ce0988",
"assets/assets/screenshots/10.jpg": "ee1b6eee2d5df5a5bfdcb686266b75a0",
"assets/assets/screenshots/11.jpg": "865a19485fc0879161062afd25ce23bf",
"assets/assets/screenshots/6.gif": "73e6970dd99c11e67c4ef508b6375487",
"assets/assets/screenshots/7.jpg": "2a56579d6ae3958c6ef6e14285d436dd",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/fonts/MaterialIcons-Regular.otf": "e5882d14f52144f8162a0bc557718bb3",
"assets/NOTICES": "fdfe1a1d44613d803d1859e884a419a2",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "57d849d738900cfd590e9adc7e208250",
"assets/packages/flutter_feather_icons/fonts/feather.ttf": "a2bbdbf8ee3e7b49dc5c43e73e125ec0",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "c1f7bee6dc88bb2f86e340540e6c9c6b",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "1fe526163e8ee2932b100a259fa4d909",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "64ecb2bd0f2860faeedc699ed9ef26d3",
"assets/FontManifest.json": "a78f950d25c1e29b92a4a309465e60cd",
"assets/AssetManifest.json": "e5571c1faa6bc92d0f69814db383942c",
"assets/AssetManifest.smcbin": "64830f821a71496f895bcb03c3623236",
"index.html": "11df2ee8d156690ab6bb01dd0ab67615",
"/": "11df2ee8d156690ab6bb01dd0ab67615",
"version.json": "3906fc5d38199c243ab81a45fee32c66",
"icons/logo-aerium-1.png": "c9c1749b275f61ebc563d6596ccf2569",
"icons/text-logo.png": "ae09e8c19ec5c8ced20082bcf1945e91",
"icons/logo-aerium-2.png": "58b131c1e81194452cb702693c040a92",
"main.dart.js": "82584bac7d2448dcb8833cd41f786dda",
"manifest.json": "2e28cebc1e27a999e5b0da349afad267"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
