//<continuation number="110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_005.nss_MAIN
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

	$GameName = "mc02_006.nss";

}

scene mc02_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc02_004.nss"

//◆景明の部屋

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm16",0,1000,true);

	CreateColorSP("黒幕１", 25000, "BLACK");

	OnBG(11, "bg030_ＧＨＱ監禁部屋_01.jpg");
	FadeBG(0, false);

	Delete("上背景");
	FadeDelete("黒幕１",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　我在一处未知之地醒来。

　那是一间纯白而富有清洁感的房间。
　不算宽敞。勉强有六块榻榻米大小。但看起来
很空旷，也许是因为没摆放什么物品。

  只有我刚刚横躺着的朴素床铺，还算是有存在感
的物体。
　另外还有一把椅子、几件杂物。

　定睛一看，墙上连窗户都没有。
　我之所以会觉得喘不上气，一定是因为这个。
虽然有通风口，但暂不谈身体方面，就心理而言，
那是完全不够的。

　在转动脑筋之前，灌了铅般沉重的大脑先一步要
求离开这里。
　
　我在房间的一角找到了门扉，并向其走去。

　我仅仅前进几步，却数次踉跄。
　不知为何，我感到手脚麻木。

　仿佛在用细线操纵着他人的身体一般，
好不容易走到门边。
　我抓住门把手，旋转并拉开。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガタ。開かない。
	OnSE("se日常_建物_扉開かず",1000);
	WaitKey(1500);
	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050010a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我又推了推。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガタ。開かない。
	OnSE("se日常_建物_扉開かず",1000);
	WaitKey(1500);
	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050020a00">
「…………唔。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　好吧。
　我发现了一个新情况。

　门打不开。
　锁上了。当然，是从外面锁上的。

　我舔舐般地来回审视把手，但上面
既没有钥匙孔，也没有按钮或铁链。
　根本不可能打开。

　也就是说，我被监禁了。

　……不。
　下结论还太早了吧。

　说不定这里只是医院里的病房，
而之所以会上锁，是为了禁止无关者入内。
　根据患者的情况，有时也必须将其安置在
无法从内侧开门的房间里吧。

　那——总之，我只应做一件事。
　先把自己已苏醒这一事实告知外界吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ノック。こんこん
	OnSE("se人体_動作_ドアノック01",1000);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050030a00">
「打扰一下。
　请问有人在吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(1000);

//◆こんこん
	OnSE("se人体_動作_ドアノック01",1000);

	SetFwC("cg/fw/fw景明_通常b.png");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050040a00">
「请问——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドカァッ。ドアをぶん殴る音
	OnSE("se人体_動作_叩く02",1000);
	CreatePlainEX("絵板写", 15);
	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 0, 20, 0, 0, 1000, DxlAuto, true);
	Delete("絵板写");
	WaitKey(1000);

	SetNwC("cg/fw/nw番兵.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆ボイス「ビー·クァイエット！」Be quiet!
//【ｅｔｃ／ＧＨＱ見張り】
<voice name="ｅｔｃ／ＧＨＱ見張り" class="その他男声" src="voice/mc02/0050050e000">
「给我安静一点！」


//◆ボイス「……オーケイ」OK.
{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050060a00">
「…………明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　看来我的确是被监禁了。

　不过话说回来，刚才那声音。
　毫无疑问，那是外语——英语。

　使用英语的人，要把我关在这一间房间里。
　
　……也就是说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050070a00">
（我被进驻军拘禁了吗）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　看来就是这样了。

　想不通监禁我的原因何在…………我如果敢这么说，
恐怕会被骂“健忘症”吧。
　现在还并未经过足够久的时间，能让我在江之岛
与ＧＨＱ的将校们对峙时的记忆被风化。

　那次由于银星号的登场，而使一切都在混沌的状态
下落下帷幕，但ＧＨＱ不可能改变主意，就此对我置
之不理。
　倒不如说他们当然会有下一步棋。

　但，太突然了。
　这些还不足以说明我为何毫无预兆地
陷入如此境地。

　不……预兆？
　
　预兆。

　我为救出亲王等人而前往建朝寺……

　没错……对建朝寺的袭击。
　也就是说，那是——进驻军的……？

　那么，那也是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆フラッシュバック。バロウズの署長射殺

	EfRecoIn1(18000,600);

	CreateTextureSP("イベ絵10", 11, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");

	EfRecoIn2(300);
	WaitKey(1000);

	EfRecoOut1(300);

	Delete("イベ絵*");

	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050080a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　……我头疼得像要裂开一般，刺痛不已。
　姑且先停下思考。

　先别想这些——<k>
　
　话说回来，村正怎么了？

　她无疑不在这间屋子里。
　这一目了然，我不看也知道。
把武者和剑胄关在一起，未免太过愚蠢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050090a00">
（村正？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　……………………………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050100a00">
「村正。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……………………………………………………………

　我出声呼唤她，可是没有剑胄传音的回答。
　不知是她没听见，还是听见了却无法回应……

　这种情况很少见。
　当然，是从坏的方面来说。

　结下因缘的操控者与剑胄，两人成为一骑武者。
　可以说是合为一体，所以两者是
<RUBY text="···">绝不会</RUBY>被拆散的。

　即使相隔甚远，看不见彼此，
也能如近在咫尺般对话。
　
　而如今却做不到。

　最大的可能性就是，她失去了
对话的能力。

　也就是说，她被彻底破坏了。

　死人不会说话。
　即使不能一概将剑胄定位为生物，
但他们也难逃这一格言。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/0050110a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　——除此之外，我只能想到“她被密封进通信屏蔽装置
了”这一种可能性。
　ＧＨＱ是否会为了他们视为障碍物并想要收拾掉的村正，
而如此大费周章，这很值得疑虑。

　只是……我这为剧毒所侵的肉体还生存着。
　若是村正帮我恢复的，那就说明至少到完成解毒
为止，她还健在……

　可是，现在无法确认真相。

　只能静待其变。
　既然我被夺走自由，且无法取回自由，
那这就是唯一的选项。

　……虽然我并不想称其为选项。
　
　我愿一心尽力而为，所以返回床上，
让如今仍倍感疲惫的身体躺下。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆フェードアウト
//◆ウェイト

}

..//ジャンプ指定
//次ファイル　"mc02_006.nss"