#Issva_H-Rugla.pl
#Orc Slayer Armor

sub EVENT_SAY { 
	if($text=~/Hail/i){
		quest::say("If you're looking for chit chat you can bugger off. I'm here to sell supplies not company.");
	}
  if($text=~/gauntlets/i) {
		quest::say("To craft Orc Slayer Gauntlets you require two [silk thread], a cracked pyre beetle carapace, and two orc finger bones. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Glove Pattern.");
		quest::summonitem(19559);#Tattered Glove Pattern
  }
  if($text=~/boots/i) {
		quest::say("To craft Orc Slayer Boots you require two [silk thread], two cracked pyre beetle carapaces, and two orc foot bones. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Boot Pattern.");
		quest::summonitem(19561);#Tattered Boot Pattern
  }
  if($text=~/bracer/i) {
		quest::say("To craft an Orc Slayer Bracer you require a [silk thread], a cracked pyre beetle carapace, and an orc ulna bone. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Bracer Pattern.");
		quest::summonitem(19558);#Tattered Wristband Pattern
	}
  if($text=~/helm/i) {
		quest::say("To craft an Orc Slayer Helm you require two [silk thread], a cracked pyre beetle carapace, and an orc skull. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Cap Pattern.");
		quest::summonitem(19555);#Tattered Cap Pattern
	}
  if($text=~/greaves/i) {
		quest::say("To craft Orc Slayer Greaves you require three [silk thread], a pyre beetle carapace, two orc tibia, and an orc pelvis bone. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Leggings Pattern.");
		quest::summonitem(19560);#Tattered Pant Pattern
  }
  if($text=~/vambraces/i) {
		quest::say("To craft Orc Slayer Vambraces you require two [silk thread], a pyre beetle carapace, and two orc humerus bones. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Sleeves Pattern.");
		quest::summonitem(19557);#Tattered Sleeve Pattern
  }
  if($text=~/breastplate/i) {
		quest::say("To craft an Orc Slayer Breastplate you require four [silk thread], a pristine pyre beetle carapace, an orc sternum, and an orc ribcage. Once you have the necessary components combine them in your Mail Assembly Kit with this Tattered Tunic Pattern.");
		quest::summonitem(19556);#Tattered Tunic Pattern
  }
  	if($text=~/loom/i){
		quest::say("A sewing kit may be purchased at the Furrier Royale in Neriaks Third Quarter or at the Silk Underground in Neriaks Foreign Quarter. A community loom may be found at the Silk Underground in Neriaks Foreign Quarter.");
	}
	if($text=~/sewing kit/i){
		quest::say("A sewing kit may be purchased at the Furrier Royale in Neriaks Third Quarter or at the Silk Underground in Neriaks Foreign Quarter. A community loom may be found at the Silk Underground in Neriaks Foreign Quarter.");
	}
	if($text=~/silk thread/i){
		quest::say("Silk Thread is sewn by a tailor using a [sewing kit] or a community [loom]. Two spiderling silks combined in the sewing kit or loom will create one silk thread.");
	}
}
sub EVENT_ITEM{
	if(plugin::check_handin(\%itemcount, 31753 => 1)) {#Request Form
		quest::say("So you are one of Jarrex's new recruits. You are to assist in the construction of the armor you will don as a new Warrior of the Indigo Brotherhood. I have assembled a kit that is used in the crafting of Orc Slayer Mail. You must travel beyond Neriak into the Nektulos Forest for the [materials] that compose the armor.");
		quest::summonitem(17124);#Mail Assembly Kit
	}
	else{	
		quest::say("I don't need this."); #text made up
		plugin::return_items(\%itemcount);
		return 1;
	}
}#END of FILE Zone:neriakb  ID:41064 -- Issva_H`Rugla 