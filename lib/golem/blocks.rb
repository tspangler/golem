module Golem

  BLOCKS = {
    0  => :air,
    1  => :stone,
    2  => :grass,
    3  => :dirt,
    4  => :cobble,
    5  => :wood,
    6  => :sapling,
    7  => :bedrock,
    8  => :water,
    9  => :still_water,
    10 => :lava,
    11 => :still_lava,
    12 => :sand,
    13 => :gravel,
    14 => :gold_ore,
    15 => :iron_ore,
    16 => :coal_ore,
    17 => :log,
    18 => :leaves,
    19 => :sponge,
    20 => :glass,
    35 => :cloth,
    37 => :yellow_flower,
    38 => :red_rose,
    39 => :brown_mushroom,
    40 => :red_mushroom,
    41 => :gold_block,
    42 => :iron_block,
    43 => :double_step,
    44 => :step,
    45 => :brick,
    46 => :tnt,
    47 => :bookcase,
    48 => :mossy_cobble,
    49 => :obsidian,
    50 => :torch,
    51 => :fire,
    52 => :mob_spawner,
    53 => :wood_stairs,
    54 => :chest,
    55 => :redstone_wire,
    56 => :diamond_ore,
    57 => :diamond_block,
    58 => :workbench,
    59 => :crops,
    60 => :soil,
    61 => :furnace,
    62 => :burning_furnace,
    63 => :sign_post,
    64 => :wood_door,
    65 => :ladder,
    66 => :minecart_tracks,
    67 => :cobble_stairs,
    68 => :wall_sign,
    69 => :lever,
    70 => :stone_plate,
    71 => :iron_door,
    72 => :wood_plate,
    73 => :redstone_ore,
    74 => :glowing_redstone_ore,
    75 => :redstone_torch_off,
    76 => :redstone_torch_on,
    77 => :stone_button,
    78 => :snow,
    79 => :ice,
    80 => :snow_block,
    81 => :cactus,
    82 => :clay,
    83 => :reed,
    84 => :jukebox,
    85 => :fence,
    86 => :pumpkin,
    87 => :bloodstone,
    88 => :slow_sand,
    89 => :lightstone,
    90 => :portal,
    91 => :jack_o_lantern
  }

  ITEMS = {
   256 => :iron_shovel,
   257 => :iron_pickaxe,
   258 => :iron_axe,
   259 => :flint_and_steel,
   260 => :apple,
   261 => :bow,
   262 => :arrow,
   263 => :coal,
   264 => :diamond,
   265 => :iron_ingot,
   266 => :gold_ingot,
   267 => :iron_sword,
   268 => :wooden_sword,
   269 => :wooden_shovel,
   270 => :wooden_pickaxe,
   271 => :wooden_axe,
   272 => :stone_sword,
   273 => :stone_shovel,
   274 => :stone_pickaxe,
   275 => :stone_axe,
   276 => :diamond_sword,
   277 => :diamond_shovel,
   278 => :diamond_pickaxe,
   279 => :diamond_axe,
   280 => :stick,
   281 => :bowl,
   282 => :mushroom_soup,
   283 => :gold_sword,
   284 => :gold_shovel,
   285 => :gold_pickaxe,
   286 => :gold_axe,
   287 => :string,
   288 => :feather,
   289 => :sulphur,
   290 => :wooden_hoe,
   291 => :stone_hoe,
   292 => :iron_hoe,
   293 => :diamond_hoe,
   294 => :gold_hoe,
   295 => :seeds,
   296 => :wheat,
   297 => :bread,
   298 => :leather_helmet,
   299 => :leather_chestplate,
   300 => :leather_leggings,
   301 => :leather_boots,
   302 => :chainmail_Helmet,
   303 => :chainmail_Chestplate,
   304 => :chainmail_Leggings,
   305 => :chainmail_Boots,
   306 => :iron_helmet,
   307 => :iron_chestplate,
   308 => :iron_leggings,
   309 => :iron_boots,
   310 => :diamond_helmet,
   311 => :diamond_chestplate,
   312 => :diamond_leggings,
   313 => :diamond_boots,
   314 => :gold_helmet,
   315 => :gold_chestplate,
   316 => :gold_leggings,
   317 => :gold_boots,
   318 => :flint,
   319 => :raw_porkchop,
   320 => :cooked_porkchop,
   321 => :paintings,
   322 => :golden_apple,
   323 => :sign,
   324 => :wooden_door,
   325 => :bucket,
   326 => :water_bucket,
   327 => :lava_bucket,
   328 => :mine_cart,
   329 => :saddle,
   330 => :iron_door,
   331 => :redstone,
   332 => :snowball,
   333 => :boat,
   334 => :leather,
   335 => :milk,
   336 => :clay_brick,
   337 => :clay_balls,
   338 => :reed,
   339 => :paper,
   340 => :book,
   341 => :slimeball,
   342 => :storage_minecart,
   343 => :powered_minecart,
   344 => :egg,
   345 => :compass,
   346 => :fishing_rod,
   347 => :clock,
   348 => :glowstone_dust,
   349 => :raw_fish,
   350 => :cooked_fish,
   2256 => :gold_record,
   2257 => :green_record
  }

  CODES = BLOCKS.invert.merge ITEMS.invert

  SOLID = [
    :stone,
    :grass,
    :dirt,
    :cobble,
    :wood,
    :bedrock,
    # allow swimming
    # :water,
    # :still_water,
    :lava,
    :still_lava,
    :sand,
    :gravel,
    :gold_ore,
    :iron_ore,
    :coal_ore,
    :log,
    :leaves,
    :sponge,
    :glass,
    :cloth,
    :gold_block,
    :iron_block,
    :double_step,
    :step,
    :brick,
    :tnt,
    :bookcase,
    :mossy_cobble,
    :obsidian,
    :fire,
    :mob_spawner,
    :wood_stairs,
    :chest,
    :diamond_ore,
    :diamond_block,
    :workbench,
    :soil,
    :furnace,
    :burning_furnace,
    :sign_post,
    :wood_door,
    # :minecart_tracks,
    :cobble_stairs,
    :iron_door,
    :redstone_ore,
    :glowing_redstone_ore,
    :snow,
    :ice,
    :snow_block,
    :cactus,
    :clay,
    :jukebox,
    # special case needed for fence
    :fence,
    :bloodstone,
    :slow_sand,
    :lightstone
  ].map {|b| CODES[b] }

  WATER = [
    :water,
    :still_water
  ].map {|b| CODES[b] }

  TOOLS = {
    # shovel
    277 => [:grass, :dirt, :sand, :gravel, :soil, :snow, :snow_block, :slow_sand].map {|b| CODES[b] },
    # pick
    278 => [:stone, :cobble, :gold_ore, :iron_ore, :coal_ore, :gold_block, :iron_block, :double_step, :step, :brick, :mossy_cobble, :obsidian, :diamond_ore, :diamond_block, :cobble_stairs, :redstone_ore, :glowing_redstone_ore, :ice, :cactus, :bloodstone, :lightstone].map {|b| CODES[b] },
    # axe
    279 => [:wood, :log, :leaves, :fence].map {|b| CODES[b] }
  }

  DIGS = Hash[
    {
      :stone => 29,
      :grass => 12,
      :dirt => 10,
      :cobble => 38,
      :wood => 38,
      :sand => 10,
      :gravel => 12,
      :gold_ore => 57,
      :iron_ore => 57,
      :coal_ore => 57,
      :log => 38,
      :leaves => 30,
      :sponge => 90,
      :glass => 46,
      :cloth => 121,
      :gold_block => 57,
      :iron_block => 94,
      :brick => 301,
      :bookcase => 226,
      :mossy_cobble => 38,
      :obsidian => 1501,
      :chest => 376,
      :diamond_ore => 57,
      :diamond_block => 94,
      :workbench => 376,
      :soil => 90,
      :furnace => 350,
      :burning_furnace => 350,
      :sign_post => 151,
      :redstone_ore => 450,
      :glowing_redstone_ore => 450,
      :snow_block => 4,
      :clay => 90,
      :jukebox => 301,
      :fence => 301,
      :bloodstone => 8,
      :slow_sand => 76,
      :lightstone => 46
    }.map { |c, d| [CODES[c], d] }
  ]

  COMMON = [
    :cobble,
    :dirt,
    :gravel,
    :sand
  ].map { |c| CODES[c] }

end
