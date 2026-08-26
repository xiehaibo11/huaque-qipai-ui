# Prompt Templates

All templates use top-left coordinates and `1920x1080` unless the user explicitly asks for another size.

## Prompt assembly grammar

Use this structure:

```text
Create a <output_type> for <screen_type>.
Canvas: <canvas>.
Visual style: <style_source>.
Composition lock: <layout_boxes>.
Art direction: <materials, colors, lighting, rendering quality>.
Functional constraints: <reserved zones and forbidden details>.
Output requirements: <background-only | full-composite | transparent component | layered plan>.
Negative prompt: <negative_prompt>.
```

## Universal negative prompt

```text
no watermark, no random logo, no extra app name, no QR code, no phone number, no real personal data, no unreadable tiny text, no misspelled Chinese text, no random UI buttons, no random badges, no random cards, no misplaced icons, no cropped important element, no perspective-skewed flat UI panels, no overlapping player zones, no clutter in reserved UI slots, no low-resolution pixelation, no harsh purple default UI style
```

## Loading background prompt

```text
Create a background-only image for a Chinese casual Mahjong game loading screen.
Canvas: 1920x1080, origin top-left.
Visual style: Jiangnan water-town spring atmosphere, inspired by cyan-green lake mist, willow branches, lotus leaves, distant pagoda silhouette, premium mobile game CG lighting, soft bloom, clean illustration quality.
Composition lock:
- bg_full x=0 y=0 w=1920 h=1080: full scenery.
- logo_reserved x=660 y=70 w=600 h=190: keep visually calm and low-detail.
- center_negative_space x=520 y=250 w=880 h=470: soft mist and water only.
- loading_bar_reserved x=650 y=918 w=620 h=34: keep clean for progress bar.
- bottom_legal_reserved x=260 y=1018 w=1400 h=38: keep clean for legal text.
Art direction: emerald cyan water, warm sunlight, delicate Chinese garden silhouettes, light flower petals, calm premium game mood.
Functional constraints: background only, no UI controls, no readable text, no game logo, no cards, no coins, no characters in the center_negative_space.
Output requirements: one clean full-canvas PNG background suitable for later PSD layering.
Negative prompt: no watermark, no random logo, no text, no buttons, no icons, no cards, no QR code, no heavy clutter, no object crossing the loading_bar_reserved zone.
```

## Login full UI prompt

```text
Create a full-composite login screen for a Chinese casual Mahjong game.
Canvas: 1920x1080, origin top-left.
Visual style: Jiangnan water-town game UI, cyan-green lake mist, jade glass UI, warm gold buttons, subtle lotus and willow motifs, polished 2.5D casual game rendering.
Composition lock:
- bg_full x=0 y=0 w=1920 h=1080: lake, willow, lotus, distant bridge/pagoda.
- logo x=650 y=78 w=620 h=210: ornate blank logo plate, no readable text.
- account_panel x=640 y=370 w=640 h=340: translucent cream/jade rounded panel.
- primary_login_button x=690 y=735 w=540 h=86: warm gold large button, blank label center.
- secondary_login_button x=690 y=842 w=540 h=74: jade secondary button, blank label center.
- region_switch x=80 y=46 w=260 h=62: small server switch placeholder.
- audio_network_group x=1550 y=44 w=300 h=64: three small utility icon placeholders.
- compliance_text x=300 y=992 w=1320 h=46: empty legal text area.
Art direction: clean readable center, soft bevels, gold edge highlights, no visual noise under panel.
Functional constraints: keep all text editable later; do not render phone numbers, account fields, QR codes, or legal copy.
Output requirements: full screen concept image with stable UI positions.
Negative prompt: no readable Chinese text, no random app logo, no extra buttons, no QR code, no phone number, no dense bottom clutter, no misaligned panel, no portrait layout.
```

## NewGold lobby prompt

```text
Create a full-composite main lobby screen for a Chinese casual Mahjong and card game.
Canvas: 1920x1080, origin top-left.
Visual style: NewGoldHall redesign, Jiangnan indoor hall, water-town balcony view, warm gold and jade accents, glass rounded game cards, 3D qipao guide character, premium casual game UI.
Composition lock:
- bg_full x=0 y=0 w=1920 h=1080: darkened indoor Jiangnan hall background with center floor negative space.
- top_profile x=54 y=34 w=410 h=96: avatar and nickname placeholder.
- top_currency_1 x=500 y=42 w=260 h=70: currency capsule placeholder.
- top_currency_2 x=784 y=42 w=260 h=70: currency capsule placeholder.
- top_utilities x=1570 y=36 w=300 h=72: settings/mail/event icon row.
- left_role x=48 y=150 w=360 h=820: friendly 3D qipao guide character, do not overlap entry panels.
- entry_panel_1 x=438 y=164 w=410 h=620: Mahjong category card stack.
- entry_panel_2 x=872 y=164 w=410 h=620: Poker category card stack.
- entry_panel_3 x=1306 y=164 w=410 h=620: Leisure/fish/more category card stack.
- quick_start x=712 y=804 w=496 h=122: large CTA button placeholder.
- bottom_dock x=450 y=954 w=1380 h=92: 9 evenly spaced icon slots.
- left_notice x=36 y=820 w=330 h=110: activity/notice placeholder.
Entry card style: rounded glass cards with gold trim, soft inner glow, large illustration area, blank title ribbon.
Functional constraints: no readable Chinese text; labels are blank placeholders; no extra panels beyond the three entry panels; no object below y=1044.
Output requirements: full screen lobby concept with stable aligned panels.
Negative prompt: no random extra icons, no extra character, no text baked into game cards, no tilted cards, no overlapping bottom dock, no old heavy orange atlas style unless requested.
```

## NewGold lobby background-only prompt

```text
Create a background-only image for the main lobby of a Chinese casual Mahjong game.
Canvas: 1920x1080, origin top-left.
Visual style: Jiangnan indoor game hall, elegant balcony facing water-town houses, soft sunlight through curtains, warm wood, jade-green and cyan atmosphere, premium casual mobile game illustration.
Composition lock:
- top_hud_reserved x=0 y=0 w=1920 h=130: keep low detail.
- left_role_reserved x=48 y=150 w=360 h=820: keep background soft enough for character.
- entry_area_reserved x=438 y=164 w=1278 h=620: keep low contrast behind cards.
- quick_start_reserved x=712 y=804 w=496 h=122: keep clean.
- bottom_dock_reserved x=450 y=954 w=1380 h=92: keep clean.
Art direction: readable darkened floor, background depth, no central clutter.
Functional constraints: background only, no buttons, no panels, no icons, no characters, no readable text.
Output requirements: clean full-canvas PNG background.
Negative prompt: no UI, no text, no logo, no cards, no coins, no people, no bright object behind entry panels, no clutter in bottom_dock_reserved.
```

## Choose room prompt

```text
Create a room selection screen for a Chinese casual Mahjong game.
Canvas: 1920x1080, origin top-left.
Visual style: NewGoldHall glass UI, jade/cream panels, warm gold trim, refined Chinese cloud corner ornaments, premium casual game readability.
Composition lock:
- bg_full x=0 y=0 w=1920 h=1080: subdued lobby continuation.
- title_bar x=560 y=34 w=800 h=86: blank room title plate.
- back_button x=48 y=42 w=92 h=82: back icon placeholder.
- top_currency x=1290 y=42 w=520 h=74: currency/status capsules.
- room_card_1 x=180 y=185 w=500 h=250.
- room_card_2 x=710 y=185 w=500 h=250.
- room_card_3 x=1240 y=185 w=500 h=250.
- room_card_4 x=180 y=475 w=500 h=250.
- room_card_5 x=710 y=475 w=500 h=250.
- room_card_6 x=1240 y=475 w=500 h=250.
- quick_start x=710 y=806 w=500 h=118: CTA placeholder.
- rules_footer x=360 y=960 w=1200 h=70: blank rule text area.
Functional constraints: all six room cards must be same size and aligned to the grid; leave text and numbers blank.
Output requirements: full screen UI concept with exact grid.
Negative prompt: no random prices, no QR code, no readable text, no uneven card sizes, no tilted cards, no extra room cards.
```

## Mahjong premium table background prompt

```text
Create a background-only Mahjong in-game table scene.
Canvas: 1920x1080, origin top-left.
Visual style: premium_xiaguang, warm red-gold Chinese ceremonial Mahjong table, subtle dragon ornaments, autumn leaves, polished 3D table, cinematic warm light, premium casual game quality.
Composition lock:
- bg_full x=0 y=0 w=1920 h=1080: full in-game scene.
- top_hud_reserved x=0 y=0 w=1920 h=108: keep low detail.
- table_core x=400 y=175 w=1120 h=650: centered Mahjong table surface.
- center_action_reserved x=720 y=350 w=480 h=260: keep clean for dice/turn marker.
- discard_bottom_reserved x=610 y=640 w=700 h=150: clean table surface.
- discard_left_reserved x=300 y=330 w=250 h=360: clean table surface.
- discard_top_reserved x=610 y=230 w=700 h=150: clean table surface.
- discard_right_reserved x=1370 y=330 w=250 h=360: clean table surface.
- hand_bottom_reserved x=300 y=858 w=1320 h=190: clean high-contrast zone for hand cards.
- operation_buttons_reserved x=1060 y=700 w=760 h=120: clean zone for action buttons.
- side_tools_reserved x=1810 y=180 w=76 h=620: clean zone for tool icons.
Functional constraints: background only; do not render actual Mahjong tile faces, buttons, avatars, readable text, player names, numbers, or random UI icons.
Output requirements: one full-canvas background suitable for later UI/card overlay.
Negative prompt: no tile faces, no cards, no buttons, no avatars, no text, no random coins, no center clutter, no bright ornament under hand_bottom_reserved, no asymmetrical table drift.
```

## Mahjong full-composite prompt

```text
Create a full-composite Mahjong in-game screen concept.
Canvas: 1920x1080, origin top-left.
Visual style: premium_xiaguang Mahjong table, warm red-gold atmosphere, jade/gold UI, polished 3D casual game assets, clear functional zones.
Composition lock:
- bg_full x=0 y=0 w=1920 h=1080.
- top_hud x=0 y=0 w=1920 h=108: room info and utility placeholders.
- table_core x=400 y=175 w=1120 h=650.
- center_action x=720 y=350 w=480 h=260: dice/turn marker placeholder.
- player_bottom_avatar x=70 y=830 w=180 h=180.
- player_left_avatar x=70 y=430 w=150 h=150.
- player_top_avatar x=870 y=112 w=180 h=130.
- player_right_avatar x=1700 y=430 w=150 h=150.
- discard_bottom x=610 y=640 w=700 h=150.
- discard_left x=300 y=330 w=250 h=360.
- discard_top x=610 y=230 w=700 h=150.
- discard_right x=1370 y=330 w=250 h=360.
- hand_bottom x=300 y=858 w=1320 h=190: blank Mahjong tile backs or placeholders only.
- meld_bottom x=300 y=766 w=560 h=90.
- operation_buttons x=1060 y=700 w=760 h=120: five blank rounded action buttons.
- chat_tools_right x=1810 y=180 w=76 h=620.
Functional constraints: use blank tile placeholders instead of real tile glyphs; no readable player names; all text remains editable later.
Output requirements: full screen concept image, no random seats beyond four players.
Negative prompt: no real Mahjong characters on tiles, no extra avatars, no random text, no extra operation buttons, no overlapping card row, no portrait UI, no bottom-hand clutter.
```

## Poker table prompt

```text
Create a full-composite poker/card game in-game screen concept.
Canvas: 1920x1080, origin top-left.
Visual style: refined Jiangnan card room, dark teal table, gold and jade UI accents, clean casual competitive card-game interface.
Composition lock:
- bg_full x=0 y=0 w=1920 h=1080.
- top_hud x=0 y=0 w=1920 h=108.
- center_play_area x=480 y=250 w=960 h=420.
- player_bottom_avatar x=80 y=815 w=180 h=180.
- player_left_avatar x=110 y=360 w=160 h=160.
- player_right_avatar x=1650 y=360 w=160 h=160.
- player_top_avatar x=860 y=120 w=200 h=110.
- hand_bottom x=250 y=760 w=1420 h=300: blank playing-card backs or placeholders only.
- action_buttons x=1080 y=640 w=720 h=110: pass/play/hint button placeholders.
- side_tools x=1810 y=170 w=76 h=640.
Functional constraints: no actual card values; no readable text; center play area clean and readable.
Output requirements: stable full-screen poker table concept.
Negative prompt: no random card ranks, no casino branding, no poker chips clutter, no extra players, no misaligned bottom hand, no text.
```

## Transparent component prompt

```text
Create a transparent PNG UI component for <component_name>.
Canvas: <component_width>x<component_height>, transparent background.
Visual style: same as <screen_type>, jade/cream/warm-gold game UI, rounded bevel, soft inner highlight, subtle Chinese cloud or lotus ornament.
Component box: x=0 y=0 w=<component_width> h=<component_height>.
Label area: keep center blank for editable text.
Functional constraints: no background scenery, no readable text, no watermark.
Output requirements: isolated component with alpha, centered in canvas, clean edges, suitable for PSD layer import.
Negative prompt: no text, no logo, no background, no shadow cut off, no uneven border, no extra icons unless requested.
```

## Prompt review response

When the user asks to review or adjust a prompt before generation, answer with:

```text
屏幕类型:
画布:
采用风格:
固定布局:
生图提示词:
负面提示词:
需要你确认的变量:
```

Keep the prompt editable and do not call image generation until the user confirms or explicitly asks for direct generation.
