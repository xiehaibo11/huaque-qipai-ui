# Layout Analysis and Coordinate Lock

This skill uses `1920x1080` landscape as the canonical game canvas because the inspected login, lobby, and in-game sources are landscape.

Coordinate origin is top-left.

```text
canvas: 1920x1080
origin: top-left
center: x=960, y=540
safe_area: x=60..1860, y=36..1044
outer_margin: 60
top_hud_height: 110
bottom_hud_height: 130
```

## Global visual language

Recommended unified redesign:

```text
江南水乡新国风游戏 UI, emerald cyan water atmosphere, warm gold UI accents, jade green highlights, clean glass rounded cards, subtle carved Chinese ornament, premium casual Mahjong hall, 2.5D / 3D polished game assets, soft bloom, high readability.
```

Core palette:

```text
water_cyan: #48C7C2
jade_green: #169B7D
deep_emerald: #064A3D
warm_gold: #F5B84B
bright_gold: #FFD76A
coral_orange: #F26A3D
cream_white: #FFF4D8
deep_blue_shadow: #1C3562
table_red_gold: #B84A2D
table_dark_green: #053B2B
```

Typography direction:

```text
large labels: thick rounded Chinese display type, white or cream fill, dark teal/brown shadow, gold trim
small labels: clean sans-serif Chinese, high contrast, do not bake into generated backgrounds
numbers: editable UI layer, not generated into background art
```

Shape language:

```text
rounded cards radius 28..44
glass panels with inner highlight and soft shadow
gold bevel border 4..8 px equivalent
Chinese cloud / wave / lotus ornaments only on corners and dividers
buttons use strong silhouette and clear center label area
```

## Universal layer order

Use this order when designing full screens:

```text
0 background sky / room / table base
1 distant scenery and architectural depth
2 floor / water / table surface
3 decorative atmosphere, particles, leaves, light beams
4 large character or mascot
5 primary UI panels
6 secondary buttons and icons
7 editable text placeholders
8 foreground glow / guide highlights
```

For PSD conversion later, keep each class as a separate generated layer whenever practical.

## Loading screen

Use this layout for loading and pre-login backgrounds.

```text
screen_type: loading
canvas: 1920x1080
style source: UI-skill install generated spring backgrounds + login_background.jpg
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| bg_full | 0 | 0 | 1920 | 1080 | top-left | Jiangnan water-town or spring courtyard background |
| logo_reserved | 660 | 70 | 600 | 190 | top-left | reserved empty slot for game logo |
| center_negative_space | 520 | 250 | 880 | 470 | top-left | soft scenery only, no characters if UI will overlay |
| loading_bar_reserved | 650 | 918 | 620 | 34 | top-left | reserved empty slot for progress bar |
| bottom_tip_reserved | 560 | 965 | 800 | 42 | top-left | reserved empty slot for loading text |
| bottom_legal_reserved | 260 | 1018 | 1400 | 38 | top-left | reserved empty slot for compliance text |

Prompt constraints:

```text
Keep the lower center clean.
Do not add UI buttons, cards, readable text, logos, coins, badges, or random icons.
If a character is included, place the character outside center_negative_space, usually x=1170..1650, y=210..940.
```

## Login screen

Use this layout when generating a complete login UI composition.

```text
screen_type: login
canvas: 1920x1080
style source: login_background.jpg, img_login.png
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| bg_full | 0 | 0 | 1920 | 1080 | top-left | cyan-green Jiangnan lake, willow, lotus, distant pagoda |
| logo | 650 | 78 | 620 | 210 | top-left | game logo or reserved logo slot |
| account_panel | 640 | 370 | 640 | 340 | top-left | translucent jade/cream login panel |
| primary_login_button | 690 | 735 | 540 | 86 | top-left | large warm gold or jade button |
| secondary_login_button | 690 | 842 | 540 | 74 | top-left | guest/phone secondary button |
| region_switch | 80 | 46 | 260 | 62 | top-left | server/area switch placeholder |
| audio_network_group | 1550 | 44 | 300 | 64 | top-left | small utility icons |
| compliance_text | 300 | 992 | 1320 | 46 | top-left | reserved editable legal text |

Important visual rules:

```text
Main composition is calm and symmetrical.
Logo and login controls sit on clear lake mist or soft floor, never over high-detail flowers.
Do not generate readable account text, phone numbers, QR codes, or legal text.
```

## NewGold lobby

This is the recommended lobby redesign baseline.

```text
screen_type: lobby_newgold
canvas: 1920x1080
style source: gold_lobby.jpg + NewGoldHall/Main/_Plist.png + Role/zzb_ty_renwu.png
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| bg_full | 0 | 0 | 1920 | 1080 | top-left | indoor Jiangnan hall, balcony, water-town view, dark readable floor |
| top_profile | 54 | 34 | 410 | 96 | top-left | avatar, nickname, level placeholder |
| top_currency_1 | 500 | 42 | 260 | 70 | top-left | coin capsule placeholder |
| top_currency_2 | 784 | 42 | 260 | 70 | top-left | diamond/card capsule placeholder |
| top_utilities | 1570 | 36 | 300 | 72 | top-left | settings, mail, event icons |
| left_role | 48 | 150 | 360 | 820 | top-left | qipao guide character, no UI overlap |
| entry_panel_1 | 438 | 164 | 410 | 620 | top-left | Mahjong category card stack |
| entry_panel_2 | 872 | 164 | 410 | 620 | top-left | Poker category card stack |
| entry_panel_3 | 1306 | 164 | 410 | 620 | top-left | Leisure/fish/more card stack |
| quick_start | 712 | 804 | 496 | 122 | top-left | large CTA placeholder |
| bottom_dock | 450 | 954 | 1380 | 92 | top-left | 9 icon slots, evenly spaced |
| left_notice | 36 | 820 | 330 | 110 | top-left | activity/announcement placeholder |

Entry panel card modes:

| mode | local x | local y | w | h | content |
|---|---:|---:|---:|---:|---|
| one_big_card | 12 | 112 | 386 | 420 | one large game entrance |
| two_card_top | 12 | 20 | 386 | 275 | top game entrance |
| two_card_bottom | 12 | 332 | 386 | 245 | bottom game entrance |

GameEntry code basis:

```text
three panels are used
one-card mode local button center approximates x=193, y=340
two-card mode local button centers approximate x=193, y=452 and x=193, y=97 in Cocos local space
```

Prompt constraints:

```text
Keep all game card titles as blank title zones unless text is explicitly requested.
Do not move the guide character into entry_panel_1.
Do not place bottom dock icons below y=1044.
Do not create extra panels beyond three primary entry panels.
```

## Classic lobby compatibility

Use only when the user asks to preserve the old orange/gold style.

```text
screen_type: lobby_classic
canvas: 1920x1080
style source: lobby.png atlas
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| bg_full | 0 | 0 | 1920 | 1080 | top-left | warm festive game hall, red-orange/gold |
| top_banner | 46 | 36 | 920 | 230 | top-left | match/event banner |
| right_join_room | 1428 | 80 | 420 | 310 | top-left | join room / create room block |
| game_grid | 430 | 300 | 950 | 520 | top-left | Mahjong/poker/fish game icons |
| side_tabs_left | 30 | 300 | 210 | 430 | top-left | announcements/tasks tabs |
| quick_buttons | 520 | 836 | 860 | 110 | top-left | quick game buttons |
| bottom_dock | 230 | 960 | 1460 | 86 | top-left | invite, health notice, settings, shop, more |

Visual rules:

```text
Use thick white text placeholders with orange/brown shadows.
Use bright turquoise secondary buttons only for confirmation/important CTAs.
Use classic style for compatibility, not for the new unified redesign unless requested.
```

## Choose room

Use for room selection after the lobby.

```text
screen_type: choose_room
canvas: 1920x1080
style source: NewGoldHall/ChooseRoom/_Plist.png
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| bg_full | 0 | 0 | 1920 | 1080 | top-left | subdued lobby continuation |
| title_bar | 560 | 34 | 800 | 86 | top-left | room title placeholder |
| back_button | 48 | 42 | 92 | 82 | top-left | back icon |
| top_currency | 1290 | 42 | 520 | 74 | top-left | currency/status capsules |
| room_card_1 | 180 | 185 | 500 | 250 | top-left | beginner/low room |
| room_card_2 | 710 | 185 | 500 | 250 | top-left | standard room |
| room_card_3 | 1240 | 185 | 500 | 250 | top-left | advanced room |
| room_card_4 | 180 | 475 | 500 | 250 | top-left | expert room |
| room_card_5 | 710 | 475 | 500 | 250 | top-left | master room |
| room_card_6 | 1240 | 475 | 500 | 250 | top-left | custom/more room |
| quick_start | 710 | 806 | 500 | 118 | top-left | quick start CTA |
| rules_footer | 360 | 960 | 1200 | 70 | top-left | reserved rule text |

Prompt constraints:

```text
Room cards must share identical size and baseline.
Do not randomly tilt or stagger room cards.
Keep chip/coin icons as editable component slots.
```

## Profile / personal center

Use for user profile and account pages.

```text
screen_type: profile
canvas: 1920x1080
style source: NewGoldHall/PersonalCenter/_Plist.png
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| modal_bg | 260 | 110 | 1400 | 860 | top-left | cream/jade rounded panel |
| title | 760 | 144 | 400 | 68 | top-left | title placeholder |
| avatar_block | 350 | 250 | 360 | 360 | top-left | avatar, frame, level |
| info_list | 760 | 250 | 740 | 360 | top-left | editable text rows |
| action_row | 430 | 690 | 1060 | 120 | top-left | bind phone, copy id, account actions |
| close_button | 1570 | 124 | 72 | 72 | top-left | close icon |

Prompt constraints:

```text
Generate the panel and decorative frame only.
Keep personal text, user IDs, phone numbers, and QR codes blank.
```

## Shop

Use for store, item, recharge, and VIP-like purchase pages.

```text
screen_type: shop
canvas: 1920x1080
style source: NewGoldHall/Shop/_Plist.png
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| modal_bg | 220 | 92 | 1480 | 900 | top-left | large rounded shop panel |
| title | 760 | 128 | 400 | 70 | top-left | shop title placeholder |
| left_tabs | 260 | 230 | 190 | 650 | top-left | vertical category tabs |
| product_grid | 500 | 230 | 1040 | 640 | top-left | 2 rows x 3 columns product cards |
| product_card_1 | 500 | 230 | 320 | 280 | top-left | item card |
| product_card_2 | 860 | 230 | 320 | 280 | top-left | item card |
| product_card_3 | 1220 | 230 | 320 | 280 | top-left | item card |
| product_card_4 | 500 | 590 | 320 | 280 | top-left | item card |
| product_card_5 | 860 | 590 | 320 | 280 | top-left | item card |
| product_card_6 | 1220 | 590 | 320 | 280 | top-left | item card |
| close_button | 1610 | 112 | 72 | 72 | top-left | close icon |

Prompt constraints:

```text
Product cards must align to a grid.
Do not generate real prices, QR codes, payment provider marks, or user balances.
```

## Mahjong in-game table

Use this for 局内 Mahjong screens.

```text
screen_type: mahjong_game
canvas: 1920x1080
style source: XGSJTable.png, xgsj_bg_mah.png, gameMainView.png, GameBase.lua, TablePlayerMy.lua
```

Choose one of these table styles:

```text
premium_xiaguang: warm red-gold table, dragon ornaments, autumn leaves, polished 3D table, ceremonial lighting
classic_green: dark green flat table, simple readable Mahjong surface, white outlines, lower visual cost
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| bg_full | 0 | 0 | 1920 | 1080 | top-left | background room / stage / table atmosphere |
| top_hud | 0 | 0 | 1920 | 108 | top-left | room info, timer, rules, menu buttons |
| table_core | 400 | 175 | 1120 | 650 | top-left | Mahjong table surface and center action area |
| center_action | 720 | 350 | 480 | 260 | top-left | dice, turn indicator, current action zone |
| player_bottom_avatar | 70 | 830 | 180 | 180 | top-left | self avatar and status |
| player_left_avatar | 70 | 430 | 150 | 150 | top-left | left player avatar |
| player_top_avatar | 870 | 112 | 180 | 130 | top-left | top player status |
| player_right_avatar | 1700 | 430 | 150 | 150 | top-left | right player avatar |
| discard_bottom | 610 | 640 | 700 | 150 | top-left | self discard zone |
| discard_left | 300 | 330 | 250 | 360 | top-left | left discard zone |
| discard_top | 610 | 230 | 700 | 150 | top-left | top discard zone |
| discard_right | 1370 | 330 | 250 | 360 | top-left | right discard zone |
| hand_bottom | 300 | 858 | 1320 | 190 | top-left | self hand cards, 13+1 card row |
| meld_bottom | 300 | 766 | 560 | 90 | top-left | self exposed melds |
| operation_buttons | 1060 | 700 | 760 | 120 | top-left | chi/peng/gang/hu/guo buttons |
| chat_tools_right | 1810 | 180 | 76 | 620 | top-left | chat, emoji, settings, tool icons |

Code-derived anchor reminders:

```text
shuffle xia: x=960, y=150
shuffle you: x=1720, y=510
shuffle shang: x=960, y=920 in Cocos bottom-origin, reserve visual top-player effect area
shuffle zuo: x=200, y=510
small animation xia: x=960, y=200
small animation you: x=1485, y=570
small animation shang: x=960, y=940 in Cocos bottom-origin, reserve visual top area
small animation zuo: x=465, y=570
```

Important coordinate note:

Cocos code uses bottom-left origin for runtime positions. Prompt specs use top-left origin. When converting code values to visual prompt boxes, preserve the same screen role and relative distance, not the raw y direction.

Prompt constraints:

```text
Do not render actual Mahjong tile faces into background-only art.
Do not put decorative dragons, trees, lamps, or highlights under hand_bottom or operation_buttons.
Do not place a character behind discard zones.
Do not add random extra player seats.
Keep table_core centered and symmetric.
```

## Poker / Paodekuai / Dou Dizhu in-game table

Use this for poker and card-game screens.

```text
screen_type: poker_game
canvas: 1920x1080
style source: card_scene_bg_2d.jpg, NewGoldRes poker/card assets
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| bg_full | 0 | 0 | 1920 | 1080 | top-left | card room or table background |
| top_hud | 0 | 0 | 1920 | 108 | top-left | room info and utilities |
| center_play_area | 480 | 250 | 960 | 420 | top-left | played cards and action effects |
| player_bottom_avatar | 80 | 815 | 180 | 180 | top-left | self avatar |
| player_left_avatar | 110 | 360 | 160 | 160 | top-left | opponent |
| player_right_avatar | 1650 | 360 | 160 | 160 | top-left | opponent |
| player_top_avatar | 860 | 120 | 200 | 110 | top-left | optional top opponent |
| hand_bottom | 250 | 760 | 1420 | 300 | top-left | fan or row of self cards |
| action_buttons | 1080 | 640 | 720 | 110 | top-left | pass/play/hint buttons |
| side_tools | 1810 | 170 | 76 | 640 | top-left | chat, emoji, settings |

Prompt constraints:

```text
Do not render actual card values into background-only art.
Leave center_play_area readable and calm.
Keep bottom hand zone clean and high contrast.
```

## Dialog and popup system

Use the same modal grid for settings, rules, announcements, VIP, health notices, and customer service.

```text
screen_type: modal
canvas: 1920x1080
```

Fixed layout:

| name | x | y | w | h | anchor | content |
|---|---:|---:|---:|---:|---|---|
| dim_overlay | 0 | 0 | 1920 | 1080 | top-left | 45% dark transparent overlay |
| modal_panel | 360 | 150 | 1200 | 780 | top-left | cream/jade/gold rounded panel |
| title | 760 | 190 | 400 | 70 | top-left | editable title |
| content_area | 450 | 290 | 1020 | 500 | top-left | scrollable content |
| primary_cta | 780 | 820 | 360 | 88 | top-left | confirmation button |
| close_button | 1500 | 164 | 72 | 72 | top-left | close icon |

Prompt constraints:

```text
Use the same modal size across all secondary pages unless the user gives a specific exception.
Never bake dense paragraph text into modal images.
```

## Alignment checklist

Use this checklist before finalizing any prompt:

```text
canvas is explicitly 1920x1080 unless portrait was requested
screen_type is explicit
all major elements have x/y/w/h
background-only prompt forbids UI/text/cards/logos
full UI prompt reserves editable text zones
bottom hand cards and operation buttons are clear in game screens
top HUD is not blocked by scenery
entry panels in lobby are aligned to the same y and size
style source is one clear direction, not mixed randomly
```
