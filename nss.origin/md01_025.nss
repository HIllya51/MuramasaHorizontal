//<continuation number="420">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_025.nss_MAIN
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

	//▼背景ＣＧ
	#イベントファイル名=true;
	#ev214_足利護氏の行列=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_026.nss";

}

scene md01_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_024.nss"

//◆鎌倉、大路
//◆ざっ、ざっ、ざっ。行列が進む音

//◆ＥＶ：行列
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵背景", 100, Center, Middle, "cg/bg/bg007_若宮大路a_01.jpg");
	CreateTextureSP("絵ＥＶ", 4000, Center, Middle, "cg/ev/ev214_足利護氏の行列.jpg");
	CreateSE("SEL01","se背景_ガヤ_大名行列_L");
	MusicStart("SEL01",1000,1000,0,750,null,true);

	Wait(2000);

	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SoundPlay("@mbgm24",0,1000,true);

	WaitKey(1000);

	SetVolume("SEL*", 2000, 0, null);
	FadeDelete("絵ＥＶ", 1000, true);

	StL(1000, @60, @0,"cg/st/st茶々丸_通常_私服.png");
	Move("@StL*", 300, @-60, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250010a07">
「呀呵。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250020a05">
「茶茶丸……
　汝在此地是为何事。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250030a07">
「参观祭祀。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250040a05">
「……汝乃东都守卫的当班。
　若有袭击镰仓之外敌，迎敌而上
保卫镰仓是汝之职责。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250050a05">
「切勿马虎大意。
　速速回和田馆。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250060a07">
「哎呀，老爷子。不要这么一板一眼嘛。
　总这样会便秘的哦？」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250070a07">
「我随便瞧瞧就马上回去啦。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250080a05">
「但……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250090a07">
「守卫的执勤很无聊哦。
　又没有事情要做。就只是在馆里上个岗，
定时提交报告。真的只是一味在做这点事。」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250100a07">
「受不了了啦。
　哪怕真有敌军来袭也好啊，
又不来。哎呀我转换一下想法，干脆我自己
变成敌人吧。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250110a07">
「这样好吗，老爷子？
　要是那样的话，大和史上因最无聊的理由
引起的反叛就要发生了哦？　想阻止的话
只有趁现在哦？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250120a05">
「……茶茶丸。
　汝虽年轻却好歹也乃朝廷官员。」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250130a05">
「烦请有点自觉。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250140a07">
「哼……老爷子你才是。
　应该正视现实吧。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250150a07">
「反正我茶茶丸就是这样。
　你到底在期待些什么啊，嗯？」

{//◆肩ぽんぽん
	CreateSE("SE01","se人体_動作_３回叩く");
	MusicStart("SE01",0,1000,0,1000,null,false);
//◆溜息
	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250160a05">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250170a07">
「真的马上就回去啦。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250180a05">
「明白了。
　真是……明明亦无特别有趣之事。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250190a07">
「啊呀，因为是我才会这么认为啦。
　我可是对局大人期待得不得了。没办法啊。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250200a05">
「局？
　……啊啊，是那名唤作长庚的女人？」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250210a05">
「初春在堀越见到时，看上去病得
厉害。
　既然能坚持来到镰仓，应该多少
恢复些许了吧。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250220a07">
「倒也不是。
　遇上了死皮赖脸的要求就更没法了。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250230a07">
「今天会在医生的陪同下出去。
　看，那边的车子。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250240a05">
「……哼。
　关于伊也有些许传言……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250250a07">
「你是指，她可能是我母亲？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250260a05">
「见汝如此照顾她，就觉传闻或许属实。」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250270a07">
「我的妈妈究竟如何了，<RUBY text="·····">如今究竟在</RUBY>
<RUBY text="··">哪里</RUBY>，且不说别的家伙，
你可是清楚得很啊。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250280a05">
「呵。玩笑而已。」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250290a07">
「我会那么照顾长庚局是因为……
　那个，就是。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250300a07">
「我喜欢她，就是那样。」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250310a05">
「…………」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250320a07">
「怎么了？」

{	FwC("cg/fw/fw護氏_通常.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250330a05">
「……虽一直考虑迟早将汝嫁予四郎……
　但，莫非……」

//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250340a05">
「汝，莫非有那种奇怪癖好……？」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250350a07">
「……喂！六卫大将领。
　一脸正经地说什么呢。」

{	FwC("cg/fw/fw護氏_微笑.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250360a05">
「啊啊，嗯。
　……抱歉。刚才之事忘了吧。」

{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250370a07">
「被满脸胡渣的老头子怀疑同性恋什么的，
拜托了这种记忆千万别留下。」

{//◆必要に応じて伏字
//あきゅん「演出：要確認」
	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250380a07">
「我非常喜欢肉棒！
　虽然没有看见过！」

{	FwC("cg/fw/fw護氏_怒り.png");}
//【護氏】
<voice name="護氏" class="護氏" src="voice/md01/0250390a05">
「别那么大声！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆小ウェイト
	CreateSE("SEL02","se背景_ガヤ_ざわめく01_L");
	MusicStart("SEL02",0,1000,0,1000,null,true);

	WaitKey(1000);

	SetNwC("cg/fw/nw六波羅兵士Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／幕兵Ａ】
<voice name="ｅｔｃ／幕兵Ａ" class="その他男声" src="voice/md01/0250400e270">
（……喜欢吗……）

{	NwC("cg/fw/nw六波羅兵士Ｂ.png");}
//【ｅｔｃ／幕兵Ｂ】
<voice name="ｅｔｃ／幕兵Ｂ" class="その他男声" src="voice/md01/0250410e271">
（……没看到过啊……）

{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md01/0250420a07">
「嗯？
　为什么感觉下人的忠诚度突然
上升了？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_026.nss"