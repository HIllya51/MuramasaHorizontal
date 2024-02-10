//<continuation number="830">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_010.nss_MAIN
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
	#bg094_宮中庭_01=true;
	#ev001_銀星号事件イメージ１=true;
	#bg054_湊斗家祭殿b_02=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_011.nss";

}

scene md01_010.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_009.nss"

//◆宮中、庭から？
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg094_宮中庭_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　那里是优雅而宁静的地方。
　是某处的宅邸、内庭……那样的感觉。

　在那里，我——村正跪拜在地。
　有人站在我面前的台阶上，俯视着我。

　人只有这么多。
　周围虽然还有存在感，但似乎都被疏远了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ネームプレート「？」
	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100010b47">
「汝乃村正之孙……第三代吗。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100020a01">
「是……是。
　此、此番朝见陛下——」

{	NwC("cg/fw/nwその他.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100030b47">
「无碍。此非公众之所，亦非朝议之庭。
　不必勉用不惯之语。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100040a01">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　……陛下。
　那么，这位是帝王吗。大概是南朝的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ネームプレート「帝」
	SetNwC("cg/fw/nw帝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100050b47">
「汝应已闻……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100060a01">
「……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100070b47">
「村正，其家门——即此断绝。
　任何继承皆禁。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100080b47">
「剑胄锻造右卫门尉村正，以汝为终。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100090a01">
「…………
　我，知道。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100100a01">
「想到我们一族犯下的罪……招来的灾难……
　即便株连九族也无言以对。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100110a01">
「感谢……陛下的慈悲……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100120b47">
「……嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　家门断绝。
　以中世纪的价值观看来，这件事究竟有多么沉重。
现代的人是无法知晓的。

　这仅能从村正双手的颤抖中……
　还有落到白砂之上的水滴，才能够推测出吧。

　一切都是因为罪。因为招来的灾祸。<k>

　<RUBY text="··">灾祸</RUBY>。
　村正的心中现出了这景象，也映刻在我的心中。

　我知道。
　南北朝时代最后的惨剧——其中隐藏的真实。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆大災厄。ev001？
	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateSE("SEL01","se背景_ガヤ_合戦01");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	Fade("絵演", 1600, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　————仅仅是一次事故，就令一切变得疯狂。

　受赠始祖村正的北朝军主将，当时身处的状况，很难
说是有着牢固的权力基础。
　与其说是统治者，他更接近于调整
各将领间利害关系的立场。

　他的亲弟弟有着政治才能。他借助于弟弟的力量，逐
渐统领了军队。
　形势上细微的变化，利害关系的变动令他树立了敌人。
昨天还是部下的人，也会加害于他。

　那是发生在他刚刚得到村正后不久的事。
　刺客趁着出战前的忙乱，潜入主将身边，突然发动了
袭击。

　熟悉战斗的主将条件反射地拔刀，斩向刺客——
　将其杀死了。

　村正的戒律带来的约束力是绝对的。
　他杀掉敌人之后，与自己意志无关地翻转刀尖，斩
倒了站在身边的同伴。

　他斩杀了在公私两面支持自己的，最亲密的弟弟。

　……从那一天开始，北朝军就成为疯狂的集团。
　发狂的主将不分目标地释放“精神同步”之波，
令自己的疯狂蔓延至全军。

　狂将率领着狂兵之群，在其对面——
　持有二世村正的南朝主将，为了从狂气之『波』中守
护己方，所以先一步将全军放在了自己的精神影响之下，
除此之外没有其他方法。

　地面上出现了前所未有的地狱般的争斗。

　一方，是破坏杀尽眼前一切的魔兽之群。
　另一方，是每次杀死一个敌兵之后，也会杀死并肩作
战之战友的悲怆军团。

　那就是末世之相。
　在这个世界中，人类的生命就像是秋天田地的稻穗一
样，被轻易地割下，流放到三途川的彼岸。

　到底死了多少人，毁灭了多少村镇……
　没有人知道正确的数量。大概也没有人想要去了解吧。

　在乱世之中，人们只是为了活命而挣扎。乱世结束之
后，世间的惨状让人只能呆然眺望。

　挥洒神力的始祖村正和北朝主将，与南朝之将及其麾
下十三骑战斗，终被击败，断绝了战乱之源——有道是
「现在大和之中，食死肉之猫狗比人更加昌荣」……

　这是某个僧人的叹息。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	SetVolume("SE*", 1000, 0, null);
	FadeDelete("絵演", 1000, true);

	SetNwC("cg/fw/nw帝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100130b47">
「村正啊……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100140a01">
「……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100150b47">
「朕知汝一族无意为恶。
　仅为平复乱世……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100160b47">
「究其源，朕不顾民众苦难而久战，罪更
深重……
　若早与北朝讲和，事不至此。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100170a01">
「…………」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100180b47">
「朕之罪亦将遭天谴吧。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100190b47">
「但……即便如此，村正啊。朕肩负社稷，而
汝一族为国土招致灾祸，实难原谅。
　汝之祖父与母亲……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100200b47">
「始祖村正已粉碎不留踪影。
　楠木之二世村正身负重伤……但仍未毁
灭……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100210b47">
「其……不可如此放置不顾。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100220a01">
「……！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100230b47">
「近期将其粉碎而销毁……
　谨记。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100240a01">
「……请、请等一下……
　陛下！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100250b47">
「……」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100260a01">
「请一定……不要这样做！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100270b47">
「汝意……不灭二世村正？」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100280a01">
「对于虾夷来说，成为剑胄正合心意。
　死于战场，腐为尘土也为本意。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100290a01">
「但、但是……
　已成剑胄之后，在战场之外的地方被废弃为
铁屑——作为虾夷，作为锻造师，这是胜于死
亡和地狱的痛苦！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100300b47">
「……是吗。
　是啊……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100310b47">
「但若欲葬于战斗，必有人再次装备那恐怖剑
胄……
　汝以为，朕会应允吗。」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100320a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100330a01">
「武器必将腐朽于战场……
　若是不能实现，那还是将其封印，永远沉睡，
令人遗忘吧。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100340a01">
「请陛下一定……！
　我可以献上自己的首级来请愿——」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100350b47">
「……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100360a01">
「之前，陛下也认同了……
　祖父和母亲并无恶意。他们只是想要终结乱
世。」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100370a01">
「确实如此！
　即使我的祖父做错了什么，他的愿望也……
应该是正确的……！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100380a01">
「如果<RUBY text="母亲">二世</RUBY>作为剑胄迎来了最悲惨的结局……
那<RUBY text="愿望">理念</RUBY>也会遭到玷污！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100390b47">
「…………」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100400a01">
「即使埋入土中也可以。
　即使沉入海中也可以。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100410a01">
「只有销毁，请一定不要……」

{	SetVolume("@mbgm*", 2000, 0, null);
	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100420b47">
「……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100430b47">
「埋入土中，可能挖出。
　沉入海中，亦可捞起。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100440b47">
「其后村正之剑胄归于大和……
　世间重归地狱亦未尝可知。」

{	FwC("cg/fw/fw村正_苦悶.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100450a01">
「……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100460b47">
「村正啊。
　愿献首级之语，乃汝真意否。」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100470a01">
「是——是！」

//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100480a01">
「如果能得到陛下的宽恕，随时都可以。」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100490b47">
「善。
　即此，三世村正，朕命汝。」

{	SoundPlay("@mbgm14",0,1000,true);}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100500b47">
「锻造剑胄。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100510a01">
「……?!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetNwC("cg/fw/nw帝.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100520b47">
「锻造比肩二世之剑胄。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100530b47">
「并与二世同眠于山阴之中。
　愿至永远。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100540b47">
「然……将汝同封之理由无他。
　汝应知之。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100550a01">
「……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100560b47">
「将来若有破除封印之人得二世村正。
　汝亦应寻汝之<RUBY text="主">操控者</RUBY>。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100570b47">
「并且监视二世。
　若如汝祖父之愿，用于引导世间和平之力尚
可。但若如当世而成灾厄武者之时——」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100580b47">
「汝必须击倒二世村正。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100590a01">
「…………」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100600b47">
「若汝无法完成，则只得销毁二世村正。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100610b47">
「回答朕，三世。
　汝能击倒二世吗……？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100620a01">
「我——我能！
　我一定按照陛下说的去做！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100630b47">
「善。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100640b47">
「朕复述一遍。
　汝成剑胄，与武人结缘，只可在二世解放之
时。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100650b47">
「在此之前，不可与任何人结下佩刀礼。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100660a01">
「是。」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100670b47">
「另。
　以祖父之秘法锻造剑胄，汝亦应具备其忌惮
之力。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100680b47">
「侵入人心之“波”，汝亦应可控。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100690a01">
「……是……」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100700b47">
「朕以为，此为汝祖父唯一之过……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100710b47">
「汝之祖父操之过急。
　即使心愿正确……强迫人心遵从之法，实为
过于性急。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100720b47">
「故……至此……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100730a01">
「…………」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100740b47">
「村正啊。朕命汝。
“波”之使用，以朕之名而禁。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100750b47">
「无论有何理由，破此禁之时，汝已非朕之民，
而为逆贼也。」

{	FwC("cg/fw/fw村正_驚きa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100760a01">
「……!!」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100770b47">
「遵朕之命。
　朕现已命汝！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100780a01">
「是……！」

{	NwC("cg/fw/nw帝.png");}
//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100790b47">
「……嗯……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100800b47">
「朕祈愿，千子右卫门尉村正。
　愿汝与二世，不再复苏……」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100810b47">
「长久年月之末，即使得到解放……愿那时，
也以汝祖父之愿而行使其力。」

//【南朝帝】
<voice name="南朝帝" class="その他男声" src="voice/md01/0100820b47">
「愿汝与二世永不相斗……
　朕向天地神明祈愿。」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0100830a01">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	Delete("上背景");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　……就这样，村正的<RUBY text="梦">过去</RUBY>结束了。

　村正成为了剑胄——
　与母亲一起，托付给一位武士，封印在了深山之中。

　白银女王蚁与深红蜘蛛。
　两副剑胄，在沉睡中度过了漫长的年月。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想：光と銀星号
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 7000, Center, Middle, "cg/bg/bg054_湊斗家祭殿b_02.jpg");
	StL(8100, @0, @0,"cg/st/st光二年前_通常_私服.png");
	StR(8000, @0, @0,"cg/st/3d銀星号_立ち_通常b.png");
	Rotate("@StR*", 0, @0, @180, @0, null,true);
	Request("@StR*", Smoothing);
	FadeStA(0,true);
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);
	Fade("絵白転", 300, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　————————直到那一天。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("絵白転", 400, 1000, null, true);
	ClearWaitAll(2000, 5000);

}

..//ジャンプ指定
//次ファイル　"md01_011.nss"