
sub EVENT_ITEM {
	if(plugin::check_handin(\%itemcount, 18721 => 1)) { #Blood Stained Note
		quest::say("So, you wish to to walk with the dead, eh? The army of the Plaguebringer is quietly amassing its diseased soldiers in the shadows and sewers of Norrath. Go to Brother Bruax. He will turn you into something useful, I hope.");
		quest::summonitem(13552); #Dark Stained Purple Robe*
		quest::ding();
		quest::faction(21,100); #Bloodsabers
		quest::faction(135,-15); #Guards of Qeynos
		quest::faction(235,10); #Opal Dark Briar
		quest::faction(257,-25); #Priest of Life
		quest::faction(53,5); #Corrupt Qeynos Guards
		quest::exp(100);
	}
	plugin::return_items(\%itemcount);
}
