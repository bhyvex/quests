# Cleric quests

sub EVENT_SAY {
  if($text=~/Hail/i){
    quest::say("May the fires of Solusek Ro warm your innards! I am Gavel the Temperant. I work with Sister Blaize to forge the most elegant finery for clerics known to man or beast. Because we have no need for material wealth here in the temple, we ask that you retrieve [ingots and icons] from the lost or fallen brothers and sisters of our order. When mixed with some enchanted, [galvanized], [vulcanized], or [magnetized] platinum into an alloy, the items I can forge are splendid indeed!");
  }
  if($text=~/ingots and icons/i){
    quest::say("The ingots and icons are all named after the virtues of the cleric who held them. The virtues I require are those of the [reverent], the [constant], and the [devout].");
  }
  if($text=~/reverent/i){
    quest::say("Regis the Reverent fell in love with a gypsy girl named Lianna Ferasa who lives in the Rathe Mountains. Ask her what has become of him. Bring me the ingot of the Reverent, the icon of the Reverent, and two enchanted platinum bars and I will forge them into a reward for you.");
  }
  if($text=~/constant/i){
    quest::say("Althuryn the Constant was brutally slain by two aqua goblins. The one called Sludge fled to Runnyeye. The one called Dwigus lives in Dagnor's Cauldron. Bring me the ingot of the Constant, the icon of the Constant, and two galvanized platinum bars and I will forge them into a reward for you.");
  }
  if($text=~/devout/i){
    quest::say("Nebbletob the Devout was once a slave in the mines of Meldrath. The Minotaur Sentry there was particularly cruel to him. He was in the expedition to Everfrost when Brother Theo drowned. When trying to rescue Theo, he came upon some caves under the river. He also narrowly escaped death when a great white beast attacked him. He never saw what the beast was, but it shredded his pack where he kept his icon. Bring me the ingot of the Devout, the icon of the Devout, and two vulcanized platinum bars and I will forge them into a reward for you.");
  }
  if($text=~/galvanized/i){
    quest::say("Enchanted platinum bars can be galvanized by Genni, vulcanized by Vilissia, and magnetized by Ostorm. Just give them the enchanted platinum bar and they will do the rest.");
  }
  if($text=~/vulcanized/i){
    quest::say("Enchanted platinum bars can be galvanized by Genni, vulcanized by Vilissia, and magnetized by Ostorm. Just give them the enchanted platinum bar and they will do the rest.");
  }
  if($text=~/magnetized/i){
    quest::say("Enchanted platinum bars can be galvanized by Genni, vulcanized by Vilissia, and magnetized by Ostorm. Just give them the enchanted platinum bar and they will do the rest.");
  }
}

sub EVENT_ITEM {

  #bracers turn in
  if(plugin::check_handin(\%itemcount,16507 => 2, 19010 => 1, 19009 => 1)) {
    quest::say("Wear this with pride!");
    quest::summonitem(4925);
    quest::faction("320","15");
    quest::faction("291","-15");
     quest::ding(); quest::exp(1000);
  }

  # Caduceus of Sacrament
  if(plugin::check_handin(\%itemcount,16507 => 2, 19016 => 1, 19015 => 1)) {
    quest::say("Wear this with pride!");
    quest::summonitem(6407);
    quest::faction("320","15");
    quest::faction("291","-15");
     quest::ding(); quest::exp(1000);
  }

  #chestplate turn in
  if(plugin::check_handin(\%itemcount,19047 => 2, 19011 => 1, 19012 => 1)) {
    quest::say("Wear this with pride!");
    quest::summonitem(4926);
    quest::faction("320","15");
    quest::faction("291","-15");
     quest::ding(); quest::exp(1000);
  }

  #shield turn in
  if(plugin::check_handin(\%itemcount,19048 => 2, 19013 => 1, 19014 => 1)) {
    quest::say("Wear this with pride!");
    quest::summonitem(9427);
    quest::faction("320","15");
    quest::faction("291","-15");
     quest::ding(); quest::exp(1000);
  }
   else {
    quest::say("I don't need this."); #text made up
    plugin::return_items(\%itemcount);
  }
}

# Quest edited by mystic414

