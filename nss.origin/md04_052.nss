//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_052.nss_MAIN
{

	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#bg004_鄙びた村a_01=true;
	#ev220_茶々丸の世界=true;
	#bg053_堀越御所の庭_01=true;
	#ev234_座る茶々姫=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md04_053.nss";

}

scene md04_052.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_051.nss"


//◆回想·村

	PrintBG("上背景", 30000);
	CreateColorSP("白", 1000, "WHITE");
	OnBG(100, "bg004_鄙びた村a_01.jpg");
	FadeBG(0, true);
	CreateEffect("Memory_cover", 900, 0, 0, 1024, 576, "Sepia");

	SoundPlay("@mbgm31", 0, 1000, true);

	Delete("上背景");
	FadeDelete("白",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　出生后的头三年是幸福的。
　虽然表面来看，这正为今后的不幸埋下伏笔。

　关东边境的山村。

　在此山村居住的无名小孩。
　尽管有一对老夫妻收养她，但他们与这孩子完全
没有血缘关系。

　老夫妻并非圣人，他们只是平凡人，也就正好只有普
通人程度的善心而已。
  像对邻居家的小孩那般，对不知因何收养来的毫无血
缘的孩子，他们也同样疼爱着。

　在这座贫困的山村里，不知名的小孩过着平静而安逸
的生活。

　她是幸福的。
  仅仅在那三年内。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血
	OnSE("se戦闘_攻撃_刀刺さる03", 1000);
	WaitKey(250);
	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,false);
	CreateTextureEX("絵ＥＦ15", 102, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	CreateTextureEX("絵ＥＦ15いろ", 1200, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵ＥＦ15*", 0, 1000, null, true);
	Fade("フラッシュ",1000,1000,null,false);
	FadeDelete("フラッシュ", 500, true);
	FadeDelete("絵ＥＦ15いろ", 1500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　出生后的第四年，家里遭到强盗袭击。
　两个强盗先是杀害了老夫妻，接着抓住无名小孩并向
她挥刀。

　无名小孩的幸福消失殆尽了。
　取而代之的是接踵而来的不幸。

　养父母被杀。
　自己也即将被杀。
　
　然而，自己<RUBY text="····">没能被杀</RUBY>。

　唤醒沉睡的本性，侥幸存活了下来。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸世界
//◆音響
	OnSE("se特殊_陰義_発動04", 1000);

	CreateColorEXadd("フラッシュ", 15000, "WHITE");
	Fade("フラッシュ",1000,1000,null,true);
	CreateTextureEX("絵背景", 103, Center, Middle, "cg/ev/ev220_茶々丸の世界.jpg");
	Fade("絵背景", 0, 1000, null, true);
	Delete("絵ＥＦ15");
	Fade("フラッシュ",1000,0,null,true);
	FadeDelete("フラッシュ", 500, true);
	Fade("絵背景", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　受急剧转变的<RUBY text="··">世界</RUBY>伤害的同时，无名小孩杀死了强盗。
　用奇异的力量砍碎了两人的手臂、折断了他们的脊骨，
并拧断了他们的脖子。

　无名小孩并没有死去。

　村人并不怜悯这个在悲剧中唯一幸存的孩子。
　倒不如说他们恐惧、害怕，并想要将她赶出去。

　无名小孩不为自己争辩。
　在被村人赶出来之前，自己主动离开了村子。

　并不是村子里有人叫她滚出去。
　即使没有人当面对她说，对于整个村子都在低语着想
赶她走的事实，无名小孩是清楚的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸世界
//◆音響
	OnSE("se特殊_陰義_発動04", 1000);

	Fade("絵背景", 1000, 1000, null, true);
	Fade("絵背景", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　无名小孩并没有去城里，而是躲藏在山野深处。
  孩子惧怕人类。

　只要有人在，就会听到人的说话声。
　即使塞住耳朵，人声也会如怒涛般涌进来。

　远离人的居所，就能稍微远离人的声音。

　但是。
　有一个声音，无论逃往何处都不会变得微弱。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆神の絶叫
	OnSE("se特殊_その他_神の絶叫", 1000);

	Fade("絵背景", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　那是从地底传来的响声。

　无名小孩无法入眠。
　好几个月都是日夜清醒着度过的。

　不知为何，她没死。

　但是很痛苦。
　孩子记得，出生后头三年，平静幸福生活着的日子。

　她还记得当时安稳的睡眠。

　如今再也无法像那样好好睡，好痛苦。

　无论什么时候都很痛苦。
　因为无名小孩睡不着，也没有死去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@OnSE*", 1000, 0, null);


//◆堀越御所

	CreateTextureEX("絵背景2", 104, Center, Middle, "cg/bg/bg053_堀越御所の庭_01.jpg");
	Fade("絵背景2", 1000, 1000, null, true);

	Delete("@OnBG*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　时光流逝。
　无名小孩遇到寻找了孩子很久的人们，再次被带到了
城里。

　巨大的宅邸中，她被清洗干净，穿上了华丽夺目的和服。
　接着，来了一个眼神温柔的英俊男人。

　他抱住无名小孩，开口。
　说自己是她父亲。

　他与虾夷之女生下了无名小孩，但孩子母亲不久
便去世，而由于某些隐情他不得不将孩子送走。
  他将孩子寄养在山村的老夫妻家，本打算一有机
会就去将孩子接回来。

　但是老夫妻的家被盗贼袭击，孩子去向不明。
　叫做父亲的男人一边落泪一边告诉孩子，我很
担心，我找了你很久啊。

　不过——我的女儿啊，我们再也不会分开了。
　今后我们父女俩一起生活吧——

　——首先，给你起个名字——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＥＶ：茶々姫。茶々丸より幼く無表情
	CreateTextureEX("絵背景いろ", 1200, Center, Middle, "cg/ev/ev234_座る茶々姫.jpg");
	Fade("絵背景いろ", 1000, 1000, null, true);
	CreateTextureSP("絵背景", 105, Center, Middle, "cg/ev/ev234_座る茶々姫.jpg");
	WaitKey(1500);
	FadeDelete("絵背景いろ",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　无名小孩被命名为茶茶，再也不是无名小孩了。
　
　堀越足利家的独生女，茶茶公主大人。

　豪华的宅邸。
　漂亮的衣服。
　美味的餐点。
　众多的家臣。

　然而。
　不再没有名字的茶茶公主大人跟躲藏在山野中时一样，
她还是不幸福。

　因为，她听得见。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nw堀越家重臣.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【ｅｔｃ／守政家臣】
<voice name="ｅｔｃ／守政家臣" class="その他男声" src="voice/md04/0520010e107">
『殿下！
　难道您真的打算让那个
半虾夷人成为继承人吗？』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520020e106">
『问什么蠢问题。
　那只是权宜之计。』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520030e106">
『因为继承人死于流行病啊
……再这么下去本王一族会绝嗣。
　就算与畜生无异，吾儿毕竟是吾儿，
将她置于身边是必要的。』

{	NwC("cg/fw/nw堀越家重臣.png");}
//【ｅｔｃ／守政家臣】
<voice name="ｅｔｃ／守政家臣" class="その他男声" src="voice/md04/0520040e107">
『那也不必如此着急……』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520050e106">
『混账话！　你忘了那可憎的护氏正虎视眈眈地
伺机钻本王空隙吗？
　对那家伙来说，堀越家绝嗣可是绝好的攻击
素材啊！』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520060e106">
『说不定会强行将次男纳为养子。』

{	NwC("cg/fw/nw堀越家重臣.png");}
//【ｅｔｃ／守政家臣】
<voice name="ｅｔｃ／守政家臣" class="その他男声" src="voice/md04/0520070e107">
『确实有可能——』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520080e106">
『哼……若非为了这理由，本王又怎会领回
那样可疑的小鬼。
　那家伙就连出生都透着诡异。』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520090e106">
『一时冲动勾搭上的虎彻女门主怀孕了，因此
我命令她在产生麻烦前锻造自身以<RUBY text="····">成为剑胄</RUBY>。
　可不知为何，产出的却是婴儿。』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520100e106">
『那群虾夷人坚称她是第二十八代虎彻入道兴
永——是剑胄。
  实在令人不快。』

{	NwC("cg/fw/nw堀越家重臣.png");}
//【ｅｔｃ／守政家臣】
<voice name="ｅｔｃ／守政家臣" class="その他男声" src="voice/md04/0520110e107">
『因此您便将她放逐到边境的村落去了。』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520120e106">
『什么也没交代便将她扔给那村子，本以为在
那种草率照料下很快就会死掉。
  三年后为了慎重起见调查了一下，结果不幸
的是她居然还顽强地活着。』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520130e106">
『嫌麻烦便派出了刺客……
　不过这是一大失误啊。』

{	NwC("cg/fw/nw堀越家重臣.png");}
//【ｅｔｃ／守政家臣】
<voice name="ｅｔｃ／守政家臣" class="その他男声" src="voice/md04/0520140e107">
『为何？』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520150e106">
『那小鬼，到底是那种出身，也许她拥有妖
异的力量。
  哼，一想到自己的种竟然成了那种魔物，
心情就坏得不得了！』

{	NwC("cg/fw/nw堀越家重臣.png");}
//【ｅｔｃ／守政家臣】
<voice name="ｅｔｃ／守政家臣" class="その他男声" src="voice/md04/0520160e107">
『可是殿下……现在想来这可是大幸啊。
  正是因为没能杀掉她，才可以利用她
来救家族于水火啊。』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520170e106">
『唔……
　但是，无论如何这只是权宜之策。』

{	NwC("cg/fw/nw足利守政.png");}
//【ｅｔｃ／守政】
<voice name="ｅｔｃ／守政" class="その他男声" src="voice/md04/0520180e106">
『一旦下一个孩子诞生，就必须把那家伙处
理掉。』

{	NwC("cg/fw/nw堀越家重臣.png");}
//【ｅｔｃ／守政家臣】
<voice name="ｅｔｃ／守政家臣" class="その他男声" src="voice/md04/0520190e107">
『哈哈。』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景",1500,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　……听得见。
　全都听得见。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	ClearFadeAll(1500,true);

	CreateColorEX("黒", 15000, "BLACK");
	Fade("黒", 1000, 1000, Axl1, true);
	Delete("Memory_cover");

}

..//ジャンプ指定
//次ファイル　"md04_053.nss"