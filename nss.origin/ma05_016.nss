//<continuation number="1300">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_016.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_017.nss";

}

scene ma05_016.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_015.nss"


//◆山賊砦
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg055_山賊アジト_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm20",0,1000,true);

	SetNwC("cg/fw/nw山賊Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160010e083">
「准备好了吗？」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160020e084">
「再等会儿。
　自行火炮还没装好。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160030e083">
「那种东西不需要吧？」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160040e084">
「是不需要。
　可是好久都没用了。拿来试射不是
也挺好的吗？」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160050e083">
「那倒也是。
　算了，动作快点。被发现就
麻烦了。」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160060e084">
「哦。」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160070b31">
「慢着。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領
	StL(1000, @0, @0,"cg/st/st首領_通常_制服.png");
	FadeStL(300,true);

	SetNwC("cg/fw/nw山賊Ｄ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160080e084">
「呃……」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160090b31">
「被谁，发现什么就麻烦了？
　小子们。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160100e083">
「不，没什么……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160110b31">
「枪、车，还有……
　自行火炮？」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160120b31">
「连这些东西都拿了出来，你们想干什么？
　种地用不着这些吧？」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160130e084">
「……」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0160140e085">
「喂，你们还没好吗！
　不快点的话会被首领——<?>
{Wait(1000);}
呃！」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160150b31">
「……」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0160160e086">
「糟糕……」

{	FwC("cg/fw/fw首領_通常a.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160170b31">
「一二三四……真是络绎不绝啊。
　愈发悬乎了。」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160180b31">
「差不多该给我解释一下了吧。
　聚众全副武装，是打算到哪里
干什么去？」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0160190e085">
「……不……那个。
　就是，想去采购点食材。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160200e083">
「储备一点点地减少了……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160210b31">
「我说过吧。
　所需物资，由我和镇里交涉获取。」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160220b31">
「但是，田地的耕种却没有一丁点进展。
　我们没有按照约定好好种田，镇子也不
可能会守约吧。」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160230b31">
「我们不是乞丐。」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160240e084">
「…………」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0160250e086">
「…………」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160260b31">
「……满脸不耐烦的表情。」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160270e084">
「没有……」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160280b31">
「我可是已经不耐烦了。
　同样的话重复说了多少遍。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160290b31">
「但是，如果你们还不能理解的话，
那就没办法了。
　正好——」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160300b32">
「好了。
　很烦啊，姐姐。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆首領弟
	StR(1000, @0, @0,"cg/st/st首領弟_通常_制服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw首領_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160310b31">
「……一磨。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160320b32">
「你到底是怎么了，姐姐。
　最近很奇怪哦。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160330b31">
「一点儿也不奇怪。
　我跟平常一样。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160340b32">
「是吗？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160350b31">
「没错。
　只是改变了方针而已。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160360b32">
「因为输给了凑斗那小子？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160370b31">
「……对。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160380b32">
「为何？
　那种事怎样都无所谓吧。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160390b31">
「……我是你们之中最强的。
　对吧。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160400b32">
「嗯。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160410b31">
「那个男人战胜了我。
　他在那座城镇里。」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160420b31">
「你说怎样都无所谓？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160430b32">
「嗯。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160440b31">
「为什么？
　你是觉得你能赢过他吗？」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160450b32">
「能赢啊。
　因为那家伙既没有把敌将杀掉，也没
掳为人质，而是将姐姐你给放了，实在
是天真的可以，不是吗？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160460b31">
「……」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160470b32">
「就算略有点本事，也不过是个蠢货。
　只要趁夜偷袭，就能轻松把他给结果了。」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160480b32">
「只剩下镇里那群想利用那个蠢货
操纵我们的窝囊废。
　就能跟从前一样做山贼了。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160490b31">
「…………」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160500b32">
「对吧？　姐姐。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160510b31">
「……也许你说得对。
　不过，那件事不过是契机罢了。」

{	FwC("cg/fw/fw首領_失意.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160520b31">
「不管怎样，继续做山贼是没有出路的。
　幕府是不可能一直放任我们为所欲为的。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160530b31">
「终有一天会前来讨伐。
　与其那样，倒不如融入镇中，静待时机
更为明智。难道不是吗？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160540b32">
「是吗？
　我觉得还有别的办法。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160550b31">
「……说说看。」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160560b32">
「渡海去大陆。
　只要攒够了钱，就能置办偷渡船了。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160570b31">
「……那么多钱从哪里筹措？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160580b32">
「从这镇中搜刮不就行了？
　还是不够的话……我想想。把人也掳来。」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160590b32">
「然后只要设法让他们搭上<RUBY text="···">奴隶船</RUBY>就行了。
　现在这种事情可是很常见哦？
需求与供给兼顾。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160600b32">
「大陆城市中劳动力不足，而国内贫苦人家
养不起孩子。
　奴隶商人生意似乎挺兴隆的。只要给他们
<RUBY text="··">商品</RUBY>，一定会给我们打折的。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぱーん。ビンタ。
	CreateSE("SE01","se人体_動作_ビンタ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 0, 1000, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, true);

	SetFwC("cg/fw/fw首領弟_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160610b32">
「……」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160620b31">
「不知羞耻！
　你想玷污家族声望吗！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160630b32">
「……什么啊。
　与之前的山贼行径没什么区别。」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160640b31">
「……」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160650b32">
「不是吗？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160660b31">
「对。没错。
　基本上没什么区别。」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160670b31">
「是程度的问题。
　但是……<RUBY text="·····">程度的差距</RUBY>不可无视！」

//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160680b31">
「太卑劣了。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160690b32">
「……」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160700e083">
「……不过。
　那也比种地好吧？」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160710b31">
「你……」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160720e084">
「要我说哪个更好……
　还是尊弟的方案吧……」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0160730e080">
「……你话太多了。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160740e083">
「呃。」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0160750e082">
「听从首领的命令总没错吧。
　这次也这样做不就行了。」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0160760e085">
「等到发现有错，就晚了。」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0160770e080">
「喂……」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160780b31">
「够了。
　不想与你们理论了。」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160790b31">
「听从我的命令。
　解散！　把武器收回库里，回去种田。」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0160800e086">
「…………」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160810e084">
「…………」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160820b31">
「……你们。
　敢不听我的命令吗？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160830b32">
「怎么可能有人听。
　你在说什么啊，姐姐。」

{	FwC("cg/fw/fw首領_驚き.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160840b31">
「一磨？」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160850b32">
「别总摆出一副首领的架子来。
　因为姐姐你已经<RUBY text="··">隐居</RUBY>了。」

{	FwC("cg/fw/fw首領_不快.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160860b31">
「！」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0160870e084">
「嘿嘿……
　这样说来，倒也是。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160880e083">
「亲属不能多插嘴什么的，
我记得曾经听过。没错。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160890b31">
「…………」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0160900e085">
「……<RUBY text="··">首领</RUBY>。
　请下命令。」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160910b32">
「嗯。
　那，兄弟们一起去镇里。」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160920b32">
「当然要全副武装。」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0160930e086">
「明白！」

{	CreateSE("SEL01","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL01",1000,1000,0,850,null,true);
	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0160940e083">
「是——!!」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆動き出そうとする連中
//◆しゃきん。首領が太刀抜いた。
	CreateSE("SE01","se戦闘_動作_刀構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @0, @0,"cg/st/st首領_戦闘_制服.png");
	FadeStL(300,true);
	SetVolume("SEL*", 3000, 0, null);

	SetFwC("cg/fw/fw首領弟_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160950b32">
「…………
　你要干什么？　姐姐。」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160960b32">
「很碍事。
　让开。」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160970b31">
「……不会让你们通过。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0160980b32">
「为什么？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0160990b31">
「约好了部下由我来约束。
　说话不管用的话……只好诉诸武力了。」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161000b32">
「喂。
　当真？」

{	FwC("cg/fw/fw首領_通常b.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0161010b31">
「我可曾有教过你，
拔出太刀是闹着玩的？」

{	FwC("cg/fw/fw首領弟_通常.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161020b32">
「……」

{	NwC("cg/fw/nw山賊Ｂ.png");}
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0161030e082">
「尊、尊弟。
　此时还请遵照首领的命令……」

{	NwC("cg/fw/nw山賊Ａ.png");}
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0161040e080">
「你们也快点散了！
　总之，先把武器放下！」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161050b32">
「够了。」

{	SetVolume("@mbgm*", 1000, 0, null);}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161060b32">
「——尽忠报国。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆弟、装甲。九〇竜騎兵
	CreateSE("SE01","se特殊_鎧_装着02");
	CreateSE("SE02","se特殊_鎧_装着03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	StR(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_通常.png");
	FadeStR(0,true);
	FadeDelete("絵フラ", 1000, true);

	SetNwC("cg/fw/nw山賊Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【ｅｔｃ／山賊Ａ】
<voice name="ｅｔｃ／山賊Ａ" class="その他男声" src="voice/ma05/0161070e080">
「尊弟——!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずばー。山賊Ａ死す
	CreateColorSP("絵黒", 4000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	CreateSE("SE01b","se人体_血_血しぶき01");
	MusicStart("SE01",0,1000,0,850,null,false);
	SL_left2(5000,@0, @0,1500);

	MusicStart("SE01b",0,1000,0,800,null,false);
	SL_leftfade2(0);
	CreateTextureEX("絵演血", 5100, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Rotate("絵演血", 0, @0, @180, @0, null,true);
	Fade("絵演血", 0, 1000, null, true);

	SetNwC("cg/fw/nw山賊Ｂ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【ｅｔｃ／山賊Ｂ】
<voice name="ｅｔｃ／山賊Ｂ" class="その他男声" src="voice/ma05/0161080e082">
「什么……啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずばしゅ。山賊Ｂ死す
	Delete("絵演血");
	CreateTextureEX("絵演血", 5100, Center, Middle, "cg/ef/ef006_汎用血しぶき.jpg");
	Rotate("絵演血", 0, @0, @180, @0, null,true);
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	CreateSE("SE01c","se人体_血_血しぶき01");
	SL_rightdown2(5000,@0, @0,1500);
	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_rightdownfade2(0);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	Fade("絵演血", 0, 1000, null, true);
	Wait(10);
	CreatePlainSP("絵板写",6000);
	Delete("絵黒");
	Delete("絵演血");
	StR(1000, @0, @0,"cg/st/3d九〇式指揮官_立ち_抜刀.png");
	FadeStR(0,true);
	Wait(500);
	FadeDelete("絵板写", 1000, true);

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0161090b31">
「…………!!」

{	FwC("cg/fw/fw首領弟_冷笑.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161100b32">
「这副剑胄已经是我的了。
　对吧？　姐姐。」

{	FwC("cg/fw/fw首領_怒り.png");}
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0161110b31">
「一磨!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぼく。殴った。
	CreateSE("SE01","se戦闘_攻撃_殴る01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵白転", 5000, "#FFFFFF");
	DeleteStL(0,true);
	WaitKey(10);
	Delete("絵白転");

	SetFwC("cg/fw/fw首領_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【首領】
<voice name="首領" class="首領姉" src="voice/ma05/0161120b31">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ばた。
	CreateSE("SE02","se人体_衝撃_転倒03");
	MusicStart("SE02",0,1000,0,1000,null,false);

	SetNwC("cg/fw/nw山賊Ｃ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161130e083">
「……」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0161140e084">
「……」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161150b32">
「我说。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161160e083">
「是——
　什么事!?」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161170b32">
「姐姐她啊。
　你们不觉得她能卖个<RUBY text="···">好价钱</RUBY>吗？」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161180e083">
「呃……」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0161190e084">
「……是吗。」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161200b32">
「不过，我想姐姐多半还未领略过男人。
　这样就价值减半了。」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161210b32">
「所以呢。
　你们教教她吧。」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161220e083">
「……什么？」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0161230e085">
「这个……
　……可以吗？」

{	FwC("cg/fw/fw首領弟_冷酷.png");}
//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161240b32">
「可以啊。
　倒不如说这是命令。」

//【首領弟】
<voice name="首領弟" class="首領弟" src="voice/ma05/0161250b32">
「做个够吧。
　忍很久了吧？」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0161260e086">
「……那倒是。」

{	NwC("cg/fw/nw山賊Ｅ.png");}
//【ｅｔｃ／山賊Ｅ】
<voice name="ｅｔｃ／山賊Ｅ" class="その他男声" src="voice/ma05/0161270e085">
「唔……」

{	NwC("cg/fw/nw山賊Ｃ.png");}
//【ｅｔｃ／山賊Ｃ】
<voice name="ｅｔｃ／山賊Ｃ" class="その他男声" src="voice/ma05/0161280e083">
「……既然您都下命令了。」

{	NwC("cg/fw/nw山賊Ｄ.png");}
//【ｅｔｃ／山賊Ｄ】
<voice name="ｅｔｃ／山賊Ｄ" class="その他男声" src="voice/ma05/0161290e084">
「那就上吧。」

{	NwC("cg/fw/nw山賊Ｆ.png");}
//【ｅｔｃ／山賊Ｆ】
<voice name="ｅｔｃ／山賊Ｆ" class="その他男声" src="voice/ma05/0161300e086">
「放开手脚上吧。
　无需顾忌。」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_017.nss"