# Huaque / Zhejiang Game Hall Source Map

This file records the inspected sources and how they should influence image-generation prompts.

## Project roots

```text
/Users/mosc/Downloads/逆向/UI-skill install
/Users/mosc/Downloads/逆向/浙江游戏大厅
/Users/mosc/Downloads/逆向/UI设计.md
```

## Existing UI-skill install material

```text
/Users/mosc/Downloads/逆向/UI-skill install/README.md
/Users/mosc/Downloads/逆向/UI-skill install/花雀棋牌/棋牌游戏平台-花雀.psd
/Users/mosc/Downloads/逆向/UI-skill install/花雀棋牌/加载.psd
/Users/mosc/Downloads/逆向/UI-skill install/花雀棋牌/背景拆分.psd
/Users/mosc/Downloads/逆向/UI-skill install/花雀棋牌/加载背景原图
```

Observed generated loading images:

```text
UI-skill install/花雀棋牌/加载背景原图/jimeng-2026-03-08-2819-做一张精美细腻的棋牌游戏加载背景图，游戏CG,虚拟引擎，整体为春日温暖氛围，暖色....png    2560x1440
UI-skill install/花雀棋牌/加载背景原图/jimeng-2026-03-08-4647-做一张精美细腻的棋牌游戏加载背景图，王者荣耀插画风格，整体为春日温暖氛围，色彩鲜....png    5404x3040
UI-skill install/花雀棋牌/加载背景原图/jimeng-2026-03-08-4879-做一张精美细腻的棋牌游戏加载背景图，王者荣耀插画风格，整体为春日温暖氛围，色彩鲜....png    5404x3040
UI-skill install/花雀棋牌/加载背景原图/jimeng-2026-03-08-5326-做一张精美细腻的棋牌游戏加载背景图，王者荣耀插画风格，整体为春日温暖氛围，暖色调....png    2560x1440
```

Design implication:

The existing generated backgrounds are high-resolution `16:9` CG scenes with spring atmosphere, courtyard architecture, blossom branches, bird motifs, and a central female character. They are good style references, but they are not complete UI layout references. Use them for mood, lighting, and premium illustration quality only.

## Login and lobby source assets

```text
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/login_background.jpg    1920x1080
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/img_login.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/img_login.plist
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/lobby.png    1024x2048 atlas
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/zhejiang_dating-bg.jpg
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/hallBg/SpringLobby.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/hallBg/Spring_bg.jpg
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/LobbyBg/gold_lobby.jpg    1920x1080
```

Design implication:

`login_background.jpg` is a cyan-green Jiangnan water scene with willow branches, lotus, bridge, pagoda silhouette, and large center negative space. It is suitable for loading/login background and calm lobby background variants.

`gold_lobby.jpg` is an indoor Jiangnan hall, darkened for UI readability, with a window to water-town scenery and strong center-floor negative space. It is suitable for the main lobby background behind entry cards.

`lobby.png` is a classic sprite atlas, not a full-screen composition. It defines the old orange/gold heavy-outline button language and should not be used as a screen-size guide.

## NewGoldHall source assets

```text
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/NewGoldHall/Main/_Plist.png    2039x2048 atlas
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/NewGoldHall/Main/_Plist.plist
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/NewGoldHall/ChooseRoom/_Plist.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/NewGoldHall/Shop/_Plist.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/cocosStudio/hall/Image/NewGoldHall/PersonalCenter/_Plist.png
```

Useful animation/icon sources:

```text
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/animation/Lobby/Base/NewGoldHall/Role/zzb_ty_renwu.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/animation/Lobby/Base/NewGoldHall/EntryMahjong/zzb_jbdt_rk_mj.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/animation/Lobby/Base/NewGoldHall/EntryPoker/zzb_jbdt_rk_pk.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/animation/Lobby/Base/NewGoldHall/EntryFish/zzb_jbdt_rk_rrbu9.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/animation/Lobby/Base/NewGoldHall/EntryLight/zzb_jbdt_rk_sg.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/animation/Lobby/Base/NewGoldHall/QuickStart/zzb_jbdt_ksks.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/animation/Lobby/Base/NewGoldHall/StoreBtn/zzb_jbdt_sc.png
```

Design implication:

NewGoldHall is the best redesign baseline. It uses a left-side 3D qipao guide character, large rounded glass cards, soft blue/yellow/orange gradients, warm gold highlights, and readable UI zones.

## In-game source assets

```text
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/Match/GameMainView.csb
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/Match/GameBaseView.csb
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/Match/TableWaiting.csb
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/Match/HeadInGameNode.csb
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/Match/gameMainView/gameMainView.png
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/Match/gameMainView/gameMainView.plist
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/Match/bigImg/gameBg.jpg    1280x720
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/tex/image/card_scene_bg_2d.jpg    1920x1080
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/tex/image/card_scene_bg_2d_2.jpg
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/tex/image/card_scene_bg_2d_3.jpg
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/tex/image/card_scene_bg.jpg
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/tex/image/xgsj_bg_mah.png    2048x2048 source texture
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/animation/Common/xiaguangshengjing/mahTable/XGSJTable.png    2048x2048 atlas
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/res/animation/Common/xiaguangshengjing/mahTable/zhuodi.png
```

Design implication:

In-game is landscape. Do not reuse vertical lobby assumptions. `gameMainView.png` shows classic dark-green table UI components and Mahjong/card panel pieces. `XGSJTable.png` shows a premium warm red-gold Mahjong table with dragon ornaments, autumn leaves, and stage lighting. Choose one table language per screen.

## Relevant code anchors

Mahjong in-game source:

```text
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/src/newgold/MatchGames/subMjGame/MJGamePublic/GameBase.lua
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/src/newgold/MatchGames/subMjGame/MJGamePublic/tablePlayer/TablePlayerBase.lua
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/src/newgold/MatchGames/subMjGame/MJGamePublic/tablePlayer/TablePlayerMy.lua
```

Key coordinate logic:

```text
shuffleAnimationPos.xia   = W / 2, 150
shuffleAnimationPos.you   = W - 200, H / 2 - 30
shuffleAnimationPos.shang = W / 2, H - 160
shuffleAnimationPos.zuo   = 200, H / 2 - 30
smallAniPos.xia           = W / 2, 200
smallAniPos.you           = W * 3 / 4 + 45, H / 2 + 30
smallAniPos.shang         = W / 2, H - 140
smallAniPos.zuo           = W / 4 - 15, H / 2 + 30
my hand cards             = centered around display.cx near bottom
my discard cards          = centered around display.cx and display.cy offset
operation buttons         = bottom-right / lower center, driven by g_gameConstant.MYSELF_MENU_POSITION_Y
```

Lobby entry source:

```text
/Users/mosc/Downloads/逆向/浙江游戏大厅/hotfix-decrypted/src/lobby/Modules/GoldNew/Views/GameEntry.lua
```

Key layout behavior:

```text
GameEntry has three panels.
Each panel can contain one big card or two cards.
One-card mode uses local button position x=193, y=340.
Two-card mode uses top local button position x=193, y=452.
Two-card mode uses bottom local button position x=193, y=97.
Main entry colors include yellow, red, blue, and black/dark variants.
Entry icons are Mahjong, Poker, Fish, Back/More, and other leisure game categories.
```

## UI design document interpretation

`/Users/mosc/Downloads/逆向/UI设计.md` defines the broad direction:

```text
江南水乡
浙江地域性
传统中式 + 现代游戏 UI
青绿 / 翡翠 / 暖金 / 橙红 / 米白
新大厅可用浅蓝、浅紫、玻璃质感、3D 角色
页面结构强调顶部标题、中间内容、底部操作
```

Use this as style intent. Use the inspected source assets above as layout truth.
