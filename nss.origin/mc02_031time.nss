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

scene mc02_031time.nss_MAIN
{

	if($Next_GameName == "mc02_031rouka2.nss"){
			$飛行船背景 = "bg082_飛行船廊下_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031daidokoro.nss"){
			$飛行船背景 = "bg080_飛行船船室Ac_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031innsyoku.nss"){
			$飛行船背景 = "bg080_飛行船船室Ab_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031innsyokuz.nss"){
			$飛行船背景 = "bg080_飛行船船室Ab_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031rouka1.nss"){
			$飛行船背景 = "bg082_飛行船廊下_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031rouka3.nss"){
			$飛行船背景 = "bg082_飛行船廊下_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031sennshitsu.nss"){
			$飛行船背景 = "bg082_飛行船廊下_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031shikann.nss"){
			$飛行船背景 = "bg080_飛行船船室Aa_01a.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko1.nss"){
			$飛行船背景 = "bg081_飛行船船室Bc_01.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2aa.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2ab.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2b.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031souko2c.nss"){
			$飛行船背景 = "bg081_飛行船船室Bb_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031syokuryou.nss"){
			$飛行船背景 = "bg081_飛行船船室Ba_01b.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else if($Next_GameName == "mc02_031tennbou.nss"){
			$飛行船背景 = "bg083_飛行船後部展望室_01.jpg";
			$飛行船背景 = "cg/bg/" + $飛行船背景;
	}else{
			$飛行船背景 = "ev119_一条と香奈枝海水浴_a.jpg";
			$飛行船背景 = "cg/ev/" + $飛行船背景;
	}
	mc02_SearchTime();
	$MainGameName="@->"+$GameName;
	GameMainSet();
	call_scene $MainGameName;
	GameMainSet2();

	//▼イベントＣＧ
	#イベントファイル名=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

//◆七時五五分になった→●挿入イベント
//◆八時二分になった→●タイムアップ

	if($mc02_TimeCount==18){$GameName = $Next_GameName;}
	else if($mc02_TimeCount>=60){$GameName = "mc02_031gameover.nss";}
	else{$GameName = $Next_GameName;}

}

scene mc02_031time.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　

	PrintBG("上背景", 30000);

//嶋：デバッグ用
//	CreateTextureSP("絵背景100", 100, Center, Middle, $飛行船背景);

	CreateColorSP("絵色100", 1500, "Black");

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

//――――――――――――――――――――――――――――――
//●時間管理
//◆移動一回につき３０秒が経過する
//◆移動する毎に時間表示を行う

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　<VALUE name=$mc02_时间>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　
　　　　　　　　　上午？时？？分？？秒

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	DrawDelete("上背景", 500, 1000, "blind_01_00_1", true);

*/

//◆七時五五分になった→●挿入イベント
//◆八時二分になった→●タイムアップ


//――――――――――――――――――――――――――――――
.//●挿入イベント
//◆艦橋
//◆横書き


if($mc02_TimeCount==18){

	PrintBG("上背景", 30000);
	SoundPlay("@mbgm21",0,1000,true);

	CreateColorSP("絵色100", 10000, "Black");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg084_飛行船艦橋_01.jpg");

	Fade("@boxC*", 0, 0, null, true);
	Fade("@boxR*", 0, 0, null, true);
	Fade("@boxL*", 0, 0, null, true);

	Delete("上背景");
	FadeDelete("絵色100", 1000, true);

	SetNwH("cg/fw/ny副官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0010e142">
「卡农中佐！」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0020b03">
「怎么回事？」

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0030e142">
「是位于后部的仓库。
　看样子敌骑是从那里打破墙壁，侵入
船内的！」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0040b03">
「果然被入侵了吗。
　……是哪里来的什么人？
在这种关键时刻。」

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0050e142">
「是六波罗的人。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0060b03">
「只有一个人吗？
　……也不是绝无可能吧。」

{	FwH("cg/fw/fwキャノン_通常b.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0070b03">
（更重要的是，他们可能会去的地方，
　——是<RUBY text="··">那里</RUBY>吧……？）

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0080e142">
「中佐，请您指示！」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0090b03">
「……」

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0100e142">
「要向后部派遣增援吗？」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0110b03">
「——不。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0120b03">
「现在赶快投入准备。
　把舰内的兵力都集中在防卫上。」

{	FwH("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0130b03">
「只要让那位压制入侵者就可以了。
　我直接过去。」

{	NwH("cg/fw/ny副官.png");}
//【ｅｔｃ／船副官】
<voice name="ｅｔｃ／船副官" class="その他男声" src="voice/mc02/031ti0140e142">
「了解！」

</PRE>
	SetTextEXH();
	TypeBeginHIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);


}else if($mc02_TimeCount>=60){


//――――――――――――――――――――――――――――――
.//●タイムアップ

//◆遠い爆音。わずかに揺れ
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se戦闘_破壊_爆発03");
	MusicStart("SE01",0,300,0,1000,null,false);

	CreateTextureSP("絵背景100", 100, Center, Middle, $飛行船背景);

	CreatePlainEX("絵板写", 5000);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 1000, 0, 4, 0, 0, 1000, Dxl2, true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031ti0150a00">
「……刚才那是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　很遥远——却又很<RUBY text="·">响</RUBY>的爆炸声。
　恐怕规模庞大无比。

　……难道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc02/031ti0160a00">
「难道！」

{//嶋：声だけなので、一時的にその他で退避
	NwC("cg/fw/nwその他.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0170b03">
「没错。你说对了。
　——村正。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆なんか針とか刺された。
//◆ホワイトアウト。倒れた音？
//◆フェードアウト

	CreatePlainEX("絵板写", 5000);
	OnSE("se戦闘_攻撃_刀刺さる04",1000);
	FadeFR2("絵板写",0,500,300,@0,@0,30,Dxl2, true);

	WaitKey(1000);

	OnSE("se人体_衝撃_転倒03",1000);
	Shake("絵板写", 300, 0, 10, 0, 0, 1000, Dxl2, false);

	CreateColorEX("絵色白", 10000, "#FFFFFF");
	Fade("絵色白", 3000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　……我顿时愕然忘我。
　
　面对瞬间向我袭来的骤变，做不出
任何抵抗。

　有什么尖锐物体刺入我的脖颈——无比尖锐。
　视野开始眩晕。

　<RUBY text="·········">等反应过来已经丧命</RUBY>。
　在逐渐消逝的意识之中，熟悉的声音远远传来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwキャノン_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0180b03">
「虽然我知道现在说这种话不过是伪善而已……
　不过，事到如今就算我不承认自己是伪善者
也无济于事。姑且请听我说吧。」

{	FwC("cg/fw/fwキャノン_通常a.png");}
//【キャノン】
<voice name="キャノン" class="キャノン" src="voice/mc02/031ti0190b03">
「对不起，大和人。
　……还有，永别了，凑斗景明。
你就安然地沉睡吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(3000, 2000);


//◆→●ゲームオーバー

..//ジャンプ指定
//次ファイル　"mc02_032gameover.nss"

}


//――――――――――――――――――――――――――――――
.//◆合流



}


