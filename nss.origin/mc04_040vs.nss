//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_040vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
	//CP_AllSet("バロウズ");

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

	CP_AllDelete();

	$GameName = "mc04_041vs.nss";

}

scene mc04_040vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc04_039.nss"

	PrintBG("上背景", 30000);

	CreateColorSPadd("絵色100", 18000, "WHITE");
	CreateTextureSP("絵背景50", 100, Center, -400, "cg/bg/bg202_旋回演出背景山_01.jpg");
//	SetBlur("絵背景50", true, 1, 800, 200, false);
	Request("絵背景50", Smoothing);

	CreateTextureEX("絵狸", 1590, center, middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Request("絵狸", Smoothing);
	Zoom("絵狸", 0, 100, 100, null, true);
	Move("絵狸", 0, @0, @-50, null, true);
	SetBlur("絵狸", true, 1, 200, 100, false);
	Fade("絵狸", 0, 1000, null, true);

$ループムーブナット名２ = "@絵狸";
$ループムーブタイム２ = 30000;

	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス２","プロセス２");

/*
	Move("絵狸", 1000, @100, @0, null, false);
	WaitAction("絵狸", null);
	Request("プロセス２", Start);
	WaitAction("絵狸", null);
*/
	Request("プロセス２", Start);


	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);

	CP_HighChange(500,500,null,false);
	CP_SpeedChange(500,500,null,false);
	MyLife_Count(500,472);
	MyTr_Count(500,325);

	Cockpit_AllFade2();

	Delete("上背景");

	Wait(1000);
	BGMoveAuto("@絵背景50",1);

	MoveFFP1("@CP_LockOff",30000);
	//MoveFFP2("@CP_LockOn",30000);

	FadeDelete("絵色100", 2000, true);


	Wait(500);

//◆ホワイトイン
//◆戦闘シーン戻り。バロウズサイド
//◆ＢＧＭ
	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw香奈枝_泣く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/040vs0010a03">
（下不了手）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　这样想着。

　凑斗景明太过愚蠢。
　太过无可救药。

　他仅仅只要承认一件事情就好。
　
　自己的不幸！

　凑斗景明的人生沾满血腥。
　可是，这能说是他的责任吗？

　他只不过是被命运将罪名强加在头上而已。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_泣く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/040vs0020a03">
（怎么可能下得了手）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　怀着悔恨与气愤，流着泪这样想着。

　只要现在表明自己的身份，他毫无疑问会马上停止战斗。
　尽管惧怕死亡，也会无视这份恐惧，解除剑胄献出生命。

　甚至连香奈枝杀死他的父亲这件事情，也会认定为自己
的责任。
　
　开什么玩笑！

　只要大声喊出不是自己的错就好！
　只要坚称自己已经竭尽全力做过就好！

　就算没人听见不也没有关系啊。
　因为真的努力过了。因为不断战斗到了呕心沥血的地步。
自己的这份苦斗，连自己也不承认的话要怎么办。

　为什么就偏要认定自己的一切都是无价值的！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw香奈枝_泣く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/040vs0030a03">
（才不会杀你！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　要是杀的话就相当于承认了他的愚蠢想法。

　就相当于承认凑斗景明的无价值，把他当成垃圾渣滓一
般埋葬。

　不行。
　无法将那种死法赋予这个男人。

　无法原谅那种死法。

　无法接受。
　怎么可能接受。

　应该让这个男人活下去，活得比谁都要幸福才对！
　将与他前半生所受痛苦相当的喜悦，不由分说地一股脑
硬塞给他就好！

　然后在几十年后，安享天年的他将要逝去之时，在早已
忘记过去的他耳边恶作剧般地轻声说道
——『你曾经，渴望过被人杀死吧？』。
　他估计会脸红吧。

　啊啊……
　要是能这样做的话，心里将会多么痛快啊。

　想这样做。
　这样做就好。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MoveFFP1stop();
	MoveFFP2stop();

//◆照準ブレる
//	FadeF4("絵背景50", 0, 1000, 10000, 0, 0, null, false);
	FadeF4("@CP_LockOff", 0, 1000, 3000, 0, 0, null, true);
	FadeF4("@CP_LockOff", 0, 1000, 10000, 0, 0, null, false);

	SetFwC("cg/fw/fw香奈枝_泣く.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/040vs0040a03">
（杀不了……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　不想杀他。
　想他活下去。

　
　　　　　　　大鸟香奈枝，
　　　　　　　不想看到凑斗景明的死。

　……恶魔终于，
　否定了自己的杀意。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ＢＧＭゆっくりフェードアウト。消えるまで待つ
	CreateSE("SEロックオン","se特殊_コックピット_起動音02");
	SetVolume("@mbgm*", 6000, 0, null);
	FadeF3("@CP_LockOff", 0, 1000, 4000, 0, 0, null, true);

//◆照準定め。発射
	Move("@CP_LockOff", 1000, 485, 220, AxlDxl, true);
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
	Move("@CP_LockOn", 0, 485, 220, null, true);
	CP_LockOnFade(100,"on",true);

	Wait(1500);

	ClearFadeAll(100, true);
	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_AllDelete();
	Wait(3000);
	SetVolume("SE*", 1000, 0, null);
	Wait(2000);


}

..//ジャンプ指定
//次ファイル　"mc04_041vs.nss"


