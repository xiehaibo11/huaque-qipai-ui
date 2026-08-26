---
name: huaque-game-ui-imagegen
description: Use when creating, rewriting, or stabilizing image-generation prompts for Huaque Mahjong / Zhejiang Game Hall UI screens, including loading, login, lobby, room selection, shop, profile, Mahjong in-game table, poker in-game table, and coordinate-safe game UI backgrounds.
---

# Huaque Game UI Imagegen

Use this skill when the user wants to generate or redesign UI images for `花雀棋牌`, `浙江游戏大厅`, `UI-skill install`, or related game lobby / in-game screens.

The core objective is stable generation: same canvas, same anchors, same visual language, and no layout drift between login, lobby, room, and in-game images.

## Mandatory references

Before producing prompts or image-generation instructions, read these files in order:

1. `references/source-map.md`
2. `references/layout-analysis.md`
3. `references/prompt-templates.md`

## Default canvas rules

Main game flow uses landscape `1920x1080`.

Use `1920x1080` for loading, login, lobby, room selection, shop, profile, Mahjong table, poker table, and full-screen backgrounds.

Use portrait `1080x1920` only when the user explicitly asks for mobile vertical marketing art or a portrait mockup. Do not silently convert the game UI to portrait, because the inspected project assets are landscape.

Coordinate origin is top-left. Every prompt spec must state:

```text
canvas: 1920x1080
origin: top-left
safe_area: x=60..1860, y=36..1044
screen_type: <loading | login | lobby_newgold | lobby_classic | choose_room | profile | shop | mahjong_game | poker_game>
```

## Required output format

For every screen prompt, output these sections:

```text
1. Screen decision
2. Source style used
3. Fixed layout table
4. Layer plan
5. Image-generation prompt
6. Negative prompt
7. Post-generation check
```

The fixed layout table must include `name`, `x`, `y`, `w`, `h`, `anchor`, and `content`. If a slot is intentionally empty for later UI composition, say `reserved empty slot`.

## Generation policy

Do not create one vague all-in-one prompt for production UI.

For stable results, split output into these layer classes whenever possible:

```text
background
character_or_mascot
large_ui_panels
buttons_and_icons
text_placeholders
foreground_effects
```

For background-only requests, explicitly forbid buttons, icons, readable text, cards, coins, badges, random logos, and extra characters.

For full-screen UI requests, use the layout table from `references/layout-analysis.md` and keep generated text as blank placeholders unless the user explicitly asks for final Chinese text baked into the image.

If the user asks to generate directly, produce the prompt using this skill and then call image generation. If the user asks for prompt review or "生图之前给我改提示词", output the prompt first and wait for their approval or edits.

## Visual direction

Prefer the unified redesign direction:

```text
Zhejiang Jiangnan water-town game UI, new Chinese game art, emerald cyan water atmosphere, warm gold UI accents, glassy rounded cards, subtle carved Chinese ornament, premium casual mahjong hall, 2.5D/3D polished assets, clean negative space for UI.
```

Use the older orange/gold heavy-outline style only when the user asks for classic compatibility with the existing lobby atlas.

Use the warm red-gold `霞光盛景` style for premium Mahjong table scenes, but keep functional game zones empty and aligned.

## Anti-drift rules

Never let the model invent UI structure.

Always include exact canvas, screen type, layout boxes, and reserved empty zones.

Always specify whether the output is `background-only`, `component-only`, or `full-composite`.

Never combine landscape lobby rules with portrait coordinates.

Never bake tiny Chinese text, numbers, coins, card faces, or rule labels into background art unless requested. These should be editable UI/text layers later.

Never put important visual details under fixed UI zones: top HUD, bottom dock, bottom hand cards, side avatars, operation buttons.

## Source paths

The local project source root is:

```text
/Users/mosc/Downloads/逆向
```

Use source assets from:

```text
/Users/mosc/Downloads/逆向/UI-skill install
/Users/mosc/Downloads/逆向/浙江游戏大厅
/Users/mosc/Downloads/逆向/UI设计.md
```

When the user asks to convert final generated images to PSD or editable layers, combine this skill with `bggg-creator-image2psd`.
