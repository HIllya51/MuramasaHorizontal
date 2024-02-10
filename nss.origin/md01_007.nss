//<continuation number="1530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_007.nss_MAIN
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
	#bg023_弥源太の家_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_008.nss";

}

scene md01_007.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_006.nss"

//◆裏里、家内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	StL(1000, @0, @0,"cg/st/st浦夢_通常_私服a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070010b16">
「村正大人……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070020b30">
「……是浦梦大人吗。
　汝还有伤在身，快去休息吧。」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070030b16">
「我不要紧。
　村正大人才要保重身体。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070040b16">
「饮酒过度，对身体有害。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070050b30">
「…………」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070060b16">
「北朝，让你憎恨吗。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070070b30">
「憎恨……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070080b30">
「多么……卑鄙啊……！
　不是人……是逆贼……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070090b30">
「不可原谅……！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070100b16">
「但是，南朝也是一样。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070110b30">
「汝、汝说什么?!」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070120b16">
「他们也做了很多同样肮脏的事。
　不，还有更加卑鄙的……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070130b30">
「不可能！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070140b16">
「是真的。
　我经常要参与南朝暗地的活动，
所以很清楚。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070150b16">
「很多人都成为了阴谋的牺牲品。
　其中大部分都是无辜无力的民众。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070160b30">
「…………」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070170b30">
「怎么会……这不可能。
　楠木大人他们，不可能做出这种事……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070180b16">
「吉野那些人，并不是坏人。
　大家都是很伟大的人。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070190b16">
「但是，之前我也说过。
　如今是恶世。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070200b16">
「现在的世界，就是好人们去做坏事的世界。」


{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070210b30">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_沈鬱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070220b30">
「那么，吾该如何是好……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070230b16">
「……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070240b30">
「吾不知道谁是同伴。
　吾不知道谁是敌人。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070250b30">
「吾不知道什么是正确。
　吾不知道什么是错误。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070260b30">
「吾不知道该相信什么……！」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070270b16">
「村正大人……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070280b30">
「吾……
　该为了什么……而锻造剑胄呢……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070290b16">
「……」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070300b16">
「为了纠正错误的世界……
　难道不是这样吗？」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070310b30">
「吾不知道如何去做！
　既然连南朝的大义都无法相信……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070320b16">
「村正大人。
　请你仔细听我接下来说的话。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070330b16">
「我必须要教给你的事，
其实还剩下一件。
　现在我就将它告诉你。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070340b30">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆浦夢、フード脱ぐ
//◆ニコラ＝フラメル。深い知性を湛えた老賢者。髭豊か？
//◆怪しい感じにはならんように。
	SetVolume("@mbgm*", 1000, 0, null);
	CreatePlainSP("絵板写", 10000);
	StL(1000, @0, @0,"cg/st/st浦夢_通常_私服b.png");
	CreateSE("SE01","se人体_動作_外套纏う01");
	FadeStL(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵板写", 300, true);
	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆ボイスは「ニコラフラメル」をなるたけナチュラルに
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070350b16">
「我真正的名字……
　叫做<RUBY text="·····">尼可·勒梅</RUBY>。」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070360b30">
「尼可……？」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070370b16">
「很难称呼吧。还是叫我浦梦吧。
　我出生的国度，其语言和大和完全不同。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070380b16">
「因为那里，距离这里很远很远。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070390b30">
「……浦梦大人，是天竺的人吗？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070400b16">
「不。
　要比天竺更远。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070410b30">
「是从西方净土来的……？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070420b16">
「是啊……是西方尽头的国度。
　但是，那里并非净土。」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070430b16">
「我出生的国度，总是发生战争。
　和现在的大和一样。」

//嶋：修正（私、）【090930】
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070440b16">
「所以，我为了寻求和平的乐园，出门旅行。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070450b30">
「……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070460b16">
「可是我无论在哪儿都找不到那种国度。
　无论哪个国家，都重复着短暂的和平与长久
的争斗。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070470b16">
「我彷徨着探寻和平的世界，逐渐开始考虑到，
应该寻找能让世界和平的方法。
　于是……我遇到了你。」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070480b30">
「……吾只是一介锻造师。
　而且现在还迷失了方向。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070490b30">
「吾无法帮助浦梦大人。」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070500b16">
「不。
　必须是这样的你才能做到。」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070510b16">
「剑胄就是神的孩子……
　是带有奇迹碎片的圣择者。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070520b16">
「最高贵的剑胄之诞生，会昭雪人类的原罪。
　神会恩赦万民，令大地成为乐园吧。」

{	FwC("cg/fw/fw浦夢_祈念.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070530b16">
「对……
　拥有正确之心的锻造师，追求真理而挥下锻
锤之时，痛苦的时代一定会宣告结束！」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070540b30">
「……？
　抱歉，吾不明白……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070550b30">
「吾……不了解真理……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070560b16">
「我会告诉你。
　村正大人，请听好。」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070570b16">
「并且请实现我的<RUBY text="梦">理想</RUBY>吧……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070580b30">
「…………」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070590b16">
「很久以前……
　<RUBY text="··">希腊</RUBY>有一位贤者，叫<RUBY text="·····">恩培多克勒</RUBY>。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070600b16">
「那是理解了宇宙之理的人物。
　在人类的历史上，能够称为具有真正睿智的
人，只有他一人。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070610b30">
「宇宙的……？
　这是汝以前说过的那件事吗。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070620b30">
「是那个，说世界是由磁气、辰气、创气三种
<RUBY text="力量">源气</RUBY>构成的——」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070630b16">
「那是我在恩培多克勒的想法上试着发展的理
论。
　虽然靠近了<RUBY text="··">物理</RUBY>……
　但却远离了<RUBY text="··">真理</RUBY>。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070640b30">
「……？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070650b16">
「他这样说的。
　世界是由四种元素和两种力构成的……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070660b16">
「“地”“阳”“海”“空”四种元素在“爱”
的力量下结合，又因“争斗”的力量而分离，
如此显现出世间的万象。
　他是这样说的。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070670b16">
「比如说人类，就是四种元素几乎平均以
“爱”来结合而诞生的。
　并且比“爱”更强的“争斗”之力——伤痛
和疾病——被此侵袭会令其死亡。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070680b30">
「唔……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070690b16">
「这种理论，可以用来说明世间所有事物。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070700b30">
「那么浦梦大人，正义是怎样的？
　还有，邪恶呢？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070710b16">
「正义和邪恶。
　善与恶吗。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070720b30">
「嗯。
　请一定要告诉吾。」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070730b16">
「……没有的。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070740b30">
「什么？」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070750b16">
「那种东西，并不存在。」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070760b30">
「不、不可能没有吧！」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070770b16">
「……是啊。
　实质上什么也没有，如果只作为看待事物的
方法，那也可以说是有。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070780b30">
「看法？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆かちゃかちゃ。フラスコとか準備
	CreateSE("SE01","se人体_動作_フラスコ準備");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052a]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070790b16">
「村正大人。
　现在，我在这里创造了一个世界。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070800b16">
「我在<RUBY text="··">烧瓶</RUBY>中加入了盐和水搅拌，
盖上盖子。
　在这封闭的世界中，只有盐水和空气。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070810b30">
「……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070820b16">
「如果在下面用火加热。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆そんな音
	CreateSE("SEL01","se擬音_雰囲気_フラスコ熱する");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	WaitKey(1000);

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052b]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070830b16">
「“争斗”的力量发挥效果。
　结合的盐与水分离，水成为水蒸气与空气混
合，盐恢复成为结晶。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070840b30">
「嗯……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070850b16">
「那么。
　善和恶，会在哪里呢……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070860b30">
「……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070870b16">
「请换成我们的世界来思考吧。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070880b30">
「……令盐和水分离的“争斗”之力……
　火是恶吧？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070890b16">
「是啊。
　人们的联系和羁绊是尊贵的东西。将其分离
可以说是罪恶吧……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070900b30">
「令盐和水形成盐水的“爱”是正义，而令其
分离的火是邪恶吗……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070910b16">
「可是村正大人。
　请仔细看。」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070920b16">
「盐和水虽然分离了，但之后水和空气混合，
产生了雾霭。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070930b30">
「……嗯？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070940b16">
「水和空气之间，有“爱”在起作用。
　也就是说……火也是善。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070950b30">
「…………」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070960b16">
「这次，试着让这个世界冷却吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――

//◆それっぽい音。水かけた？
	CreateSE("SE01","se擬音_雰囲気_フラスコ冷やす");

	SetVolume("SEL*", 300, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070970b16">
「让雾霭冷却……
　水会成为水滴而落下。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0070980b16">
「水滴溶解了盐，再次成为盐水。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0070990b30">
「……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071000b16">
「因为产生了盐水，所以冷却是善行吧。
　但是因为令雾霭分解了，所以亦是恶行。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071010b30">
「呜……呜……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071020b16">
「村正大人。你明白了吗。」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071030b16">
「善与恶——」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071040b30">
「……只是<RUBY text="····">正反两面</RUBY>而已？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071050b16">
「是的。
　某种行为，从特定的角度看来会称为善，而
从反方向看来则称为恶。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071060b16">
「仅仅如此而已。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071070b30">
「…………」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071080b16">
「但是人们却把善恶当做很重大的问题。
　无意识地——或者是有意识地。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071090b30">
「为什么……？」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071100b16">
「为了要肯定对自己有利的“爱”，否定对自
己不利的“争斗”。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071110b30">
「……」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071120b16">
「这种独善，才是束缚人们内心的恶魔诅咒。」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071130b16">
「村正大人……你已经明白了吧。
　为什么和平无法永远持续下去？
　为什么战争会一次次重复？」

{	FwC("cg/fw/fw浦夢_祈念.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071140b16">
「那是因为——
　水只追求属于水的爱，空气只追求属于空
气的爱，而盐只追求属于盐的爱！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071150b30">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――

	SetFwC("cg/fw/fw浦夢_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071160b16">
「村正大人……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071170b30">
「那么——」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071180b30">
「想要纠正世界——」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071190b16">
「就要毁灭“独善”！」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071200b16">
「请让人们了解恩培多克勒发现的真理吧。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071210b16">
「把他们从诅咒中解放出来！
　从那个囚禁于只属于自己的爱而互相争斗的
诅咒中解放出来！」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071220b16">
「能完成这种奇迹的……只有剑胄。
　你要锻造神的剑胄！」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071230b30">
「…………
　能做到吗……？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071240b30">
「吾村正……能做到如此伟大的事吗……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071250b16">
「能做到！」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071260b16">
「你有技术。
　知识，我也教给了你。」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071270b16">
「并且，力量在这里——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆金神片を取り出す。フラッシュで誤魔化すか。
	CreateSE("SE01","se特殊_雰囲気_共鳴01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("絵色白", 600, false);

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071280b30">
「这是？
　水晶……不，不是……?!」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071290b30">
「……吾、吾不知道！
　不可能，竟然有虾夷不知道的矿物!!」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071300b16">
「不知道也是理所当然的。
　这恐怕是地上仅有一个的东西……」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071310b16">
「<RUBY text="Ｌａｐｉｓ Ｓａｇｇｉ">圣骸碎片</RUBY>。
　这是神的血肉。」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071320b30">
「……神……?!
　不，吾能明白！　确实这是——了不得的东
西!!」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071330b16">
「对。
　这石头有着能让人不死的力量。」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071340b16">
「就像这样……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆ばさっ。ローブを広げた
	CreatePlainSP("絵板写", 10000);
	StL(1000, @0, @0,"cg/st/st浦夢_通常_私服c.png");
	CreateSE("SE01","se人体_動作_外套纏う01");
	FadeStL(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw始祖村正_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071350b30">
「浦、浦梦大人……
　汝这身体?!」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071360b16">
「……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071370b30">
「和这石头……一样？」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//嶋：修正「この石」【090930】
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071380b16">
「嗯。
　得到这个石头之后，我就不再衰老……并且
身体逐渐变成了这副模样。」

{	FwC("cg/fw/fw浦夢_通常.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071390b16">
「在全身变化之前，见到了你……
　能够把一切都告诉你，真是太好了。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071400b16">
「看来我……
　完成了神授予我的使命。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆がた。倒れる浦夢
	CreateSE("SE01","se人体_衝撃_転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 300, @10, @30, null, false);
	DeleteStL(300,true);

	SetFwC("cg/fw/fw始祖村正_険しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071410b30">
「浦梦大人！」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071420b16">
「……太久了……
　我实在活了太久了……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071430b16">
「终于能够安眠了……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071440b30">
「不可以！
　用这个——用这石头——」

{	FwC("cg/fw/fw浦夢_瞑目.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071450b16">
「不行。
　那个要由你来使用。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071460b16">
「为了锻造至高的剑胄。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071470b30">
「可、可是——」

{	FwC("cg/fw/fw浦夢_祈念.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071480b16">
「拜托了。
　一切都……托付给你了。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071490b16">
「要将人类从独善中解放。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071500b16">
「并不只是单人的爱，而是全员的爱……
　不会发起争斗，万物都毫无隔阂地结合，追
求普遍之爱的道路——向那里而去吧！」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0071510b16">
「请一定……！
　将神之爱——带来这个世界!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぴきぴき。ひび割れ音
//◆ぱしゃーん。砕け散った
	CreateSE("SE01","se特殊_鎧_アベンジ_ひび割れ");//ダミー注意
	CreateSE("SE01b","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵フラッシュ白", 5000, "#FFFFFF");
	Wait(30);
	Fade("絵フラッシュ白", 100, 0, null, true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("絵フラッシュ白", 0, 1000, null, true);
	WaitKey(200);
	FadeDelete("絵フラッシュ白", 1500, true);

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071520b30">
「浦、浦梦大人……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0071530b30">
「浦梦大人————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_008.nss"