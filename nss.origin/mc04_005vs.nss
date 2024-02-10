//<continuation number="500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_005vs.nss_MAIN
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

	$GameName = "mc04_006.nss";

}

scene mc04_005vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"mc04_004vs.nss"


//◆応接間

	PrintBG("上背景", 30000);
	OnBG(100, "bg089_大鳥邸貴人の間_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm10", 0, 1000, true);

	StR(1000, @0, @0, "cg/st/st獅子吼_通常_制服.png");
	FadeStR(0, true);


	DrawDelete("上背景", 100, 100, "slide_01_00_1", true);

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0010a06">
「……敌人冲入了馆内？」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0020a06">
「邦氏殿下也在这里啊!!」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0030e173">
「属、属下无能！」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0040a06">
「袭击者的战力呢。」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0050e173">
「报告上说，只有一辆车冲了进来……
　……应该只有几个人而已。」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0060a06">
「只有几个人，也没能拦住吗。
　一辆车冲入了这个宅邸，你们就像是站在斑
马线前面看着红灯一样，只是看着他们开过去
吗？」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0070e173">
「是……可、可是……
　阁下您应该也清楚，现在本邸的防守措施实
在难以称为完备……」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0080a06">
「……啧。」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/005vs0090b18">
「…………」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0100a06">
（是什么人？
　是进驻军的谍报部队突破了国境吗）


{	FwC("cg/fw/fw獅子吼_遠想.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0110a06">
（不……ＧＨＱ的部队为什么要做这种愚蠢的
袭击？
　那些猪应该会多想些办法）


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0120a06">
（这样……<RUBY text="···">不合理</RUBY>。
　就是说，是那种已经舍弃逻辑的家伙所为）


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0130a06">
（单纯愚劣的暴力。
　不会思考，不会区分……
只因为自己想做就去做了，如此直线条的做法）

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0140a06">
（这是……谁呢？）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆だだだだ。将校Ａ、駆け込んで来る

	OnSE("se日常_建物_扉開く02", 1000);

	StL(1100, @-50, @0, "cg/st/st六波羅将校_通常_制服.png");
	Move("@StL*", 300, @50, @0, DxlAuto, false);
	FadeStL(300, true);

	SetNwC("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0150e167">
「阁、阁，阁下！
　中将阁下!!」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0160a06">
「吵死了！
　这可是在花枝大人面前！」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0170e167">
「抱、抱歉……
　呃不，花枝大人她……」

//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0180e167">
「花枝大人的!!」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/005vs0190b18">
「……？」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0200a06">
「太不像话了，鸟羽！
　你这样的男人怎么会露出如此丑态！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0210a06">
「难道看到亡灵了吗！」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0220e167">
「亡、亡灵……亡灵，对。
　那个野兽。那个魔物。那个可怕的，
那个狂人——」

//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0230e167">
「把那个人从大和放逐之后，我以为那个人早
就死了……！
　为、为、为什么，事到如今！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0240a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆チャキ。刀突きつけ
	DeleteStR(300,true);

	StR(1000, @0, @0,"cg/st/st獅子吼_戦闘_制服.png");
	OnSE("se戦闘_動作_刀構え01", 1000);
	FadeStR(300,true);

	WaitKey(300);

	SetNwC("cg/fw/nw大鳥軍将校Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0250e167">
「中——中将阁下!?」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0260a06">
「……恢复正常些了吗？
　那么听好。
我现在没有心情听你说没用的废话。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0270a06">
「简洁地报告。
　发生了什么事？」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0280e167">
「——是、是姐姐大人。」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0290a06">
「什么？」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0300e167">
「花枝大人的姐姐大人！
　香奈枝大人回来了!!」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0310a06">
「————」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/005vs0320b18">
「…………………………」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0330e173">
「……骗、骗人？」


{	NwC("cg/fw/nw大鳥軍将校Ａ.png");}
//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0340e167">
「她回来了！
　她回来杀我们了！」


//【ｅｔｃ／大鳥将校Ａ】
<voice name="ｅｔｃ／大鳥将校Ａ" class="その他男声" src="voice/mc04/005vs0350e167">
「我们都会让她杀掉！
　已、已经不行了。我们会成为她的猎物！
　成为让那个蚁狮一样的女人满足的猎物——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃。殺害
//◆将校倒れる
	SetVolume("@ｅｔｃ／大鳥将校Ａ", 300, 0, null);
	OnSE("se戦闘_攻撃_刀刺さる03", 1000);

	CreateTextureEX("刀", 16000, @0, @0, "cg/ef/ef014_汎用横軌道.jpg");
	Fade("刀", 300, 1000, null, true);
	DeleteStL(0,true);

	CreateTextureEX("血", 15000, @0, @0, "cg/ef/ef006_汎用血しぶき.jpg");
	Fade("血", 300, 1000, null, true);
	FadeDelete("刀",300,true);
	OnSE("se人体_衝撃_転倒02", 1000);

	StR(1000, @0, @0,"cg/st/st獅子吼_戦闘_制服.png");
	FadeStR(0,true);

	Wait(600);
	FadeDelete("血",700,true);

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0360a06">
「…………」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0370e173">
「阁、阁下!?」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0380a06">
「别吵。
　这是在花枝大人的面前。」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0390e173">
「可、可可，可是。
　他说香奈枝大人回来了——」


//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0400e173">
「那个……<RUBY text="··">那个</RUBY>香奈枝大人……
　那是非常，那个，无穷的危险啊!?」


//◆チャキ
{	OnSE("se戦闘_動作_刀構え01", 1000);
	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0410a06">
「……你想让我说几次？」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0420e173">
「————」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0430a06">
「这没什么。
　仅仅是让我得知了袭击者的身份。」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0440e173">
「是……是！」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0450a06">
「我去迎击。」


{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0460e173">
「……阁下亲自去!?」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0470a06">
「连鸟羽都这个样子。我不去指挥的话，
没办法应付。
　你们把花枝大人带到里面。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/005vs0480a06">
「还有，把外面的武者们叫回馆内。」



{	NwC("cg/fw/nw大鳥軍兵士Ｃ.png");}
//【ｅｔｃ／大鳥兵士Ｃ】
<voice name="ｅｔｃ／大鳥兵士Ｃ" class="その他男声" src="voice/mc04/005vs0490e173">
「明，明白了！」


{	FwC("cg/fw/fw花枝_通常.png");}
//【花枝】
<voice name="花枝" class="花枝" src="voice/mc04/005vs0500b18">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc04_006.nss"