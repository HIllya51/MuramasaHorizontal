//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_012.nss_MAIN
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

	$GameName = "mc04_013vs.nss";

}

scene mc04_012.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_011vs.nss"


//◆獅子吼
//◆どっかの廊下へ走り込み

	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateTextureSP("絵背景10", 12, Center, Middle, "cg/bg/bg090_大鳥邸通路a_01.jpg");

	OnSE("se人体_足音_走る07", 1000);

	Delete("上背景");
	DrawDelete("黒幕１", 400, 100, "slide_01_02_1", true);

	StL(1000, @-30, @0,"cg/st/st獅子吼_通常_制服.png");
	Move("@StL*", 300, @30, @0, Dxl2, false);
	FadeStL(300,true);

	SetVolume("@OnSE*", 1000, 0, null);

	SoundPlay("@mbgm36", 0, 1000, true);

	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120010a06">
「——乐翁阵！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆さっさっさっ。忍者が数人集まった風ＳＥ

	OnSE("se戦闘_特殊_忍数人集結", 1000);
	WaitKey(500);

	SetNwC("cg/fw/nw楽翁陣.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/0120020e036">
「承您召唤。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120030a06">
「先报告现状。
　邦氏殿下现在身边什么状况？」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/0120040e036">
「有近卫武者三骑在守卫。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120050a06">
「三骑……我不放心。
　那边由我带着铭伏去守卫。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120060a06">
「让阵中一组绕到屋后，准备逃生的路。
　如果形势无法得到恢复，
首先要让殿下逃离这个宅邸。」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/0120070e036">
「受到这么少的敌人攻击，就让主君离开吗。
　这是耻辱啊。」


{	FwC("cg/fw/fw獅子吼_驚き.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120080a06">
「只不过是大志完成之后，我必须要切腹谢罪
的事情增加了一个而已。
　殿下的身体更加重要。」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/0120090e036">
「遵命。
　那么，我们呢？」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120100a06">
「香奈枝追在我身后。
　杀了她。」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/0120110e036">
「——」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120120a06">
「这件事不能派普通的士兵去。
　那些家伙只是听到香奈枝
这三个字就会魂飞魄散……」


//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120130a06">
「对于废嫡公主的敬畏，过了十年似乎也没有
抹平啊。」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/0120140e036">
「大概确实是吧。」


{	FwC("cg/fw/fw獅子吼_冷笑.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120150a06">
「你们不会给我出丑吧？」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/0120160e036">
「我们也同样惧怕那位公主。
　但我们本来就是拼命用的棋子。」


//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/0120170e036">
「既然已经没有任何不舍，那么去同归于尽也
没有问题。」


{	FwC("cg/fw/fw獅子吼_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120180a06">
「好。去吧！」


{	NwC("cg/fw/nw楽翁陣.png");}
//【ｅｔｃ／楽翁陣】
<voice name="ｅｔｃ／楽翁陣" class="その他男声" src="voice/mc04/0120190e036">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ひゅんひゅん。忍者去るＳＥ
//◆獅子吼、再び走る
	OnSE("se戦闘_特殊_忍数人集結", 1000);
	WaitKey(1500);

//◆ばたーん。乱暴に戸を開ける音
//◆適当な部屋。bg018c？

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 500, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	SetVolume("@mbgm*", 300, 0, null);
	CreateTextureSP("絵背景20", 12, Center, Middle, "cg/bg/bg089_大鳥邸貴人の間_01.jpg");
	DeleteStL(0, true);
	Delete("絵背景10");
	WaitKey(1500);
	OnSE("se日常_建物_扉開く02", 1000);
	DrawDelete("黒幕１", 300, 100, "slide_06_00_0", true);

	StL(1100,@0,@30,"cg/st/st獅子吼_通常_制服.png");
	FadeStL(300,false);
	SetFwC("cg/fw/fw獅子吼_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/0120200a06">
「铭伏啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆銘伏·ナナフシ形態
//◆擬態で隠れていたっぽさを出す。じわっと滲み出るように登場？
	CreateSE("nabuse", "se特殊_鎧_銘伏出現01");
	MusicStart("nabuse", 0, 1000, 0, 1000, null,false);

	CreateStencil("絵演型",1000,center,middle,128,"cg/st/3d銘伏七節_正面.png",false);
	SetAlias("絵演型","絵演型");
	Move("絵演型", 0, -403, -554, null, true);

	CreatePlainEX("絵演型/絵板写", 990);
	SetShade("絵演型/絵板写", HEAVY);
	Fade("絵演型/絵板写", 1600, 1000, null, true);

	Wait(300);

	CreatePlainSP("絵板写", 5000);
	Delete("絵演型");
	CreateTextureSP("絵七節", 1000, Center, Middle, "cg/st/3d銘伏七節_正面.png");
	Move("絵七節", 0, -403, -554, null, true);

	FadeDelete("絵板写", 1000, false);
	SetVolume("nabuse", 1000, 0, null);

	WaitKey(1000);

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"mc04_013vs.nss"