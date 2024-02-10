//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc03_002.nss_MAIN
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

	$GameName = "mc03_003.nss";

}

scene mc03_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_001.nss"

//◆回想
//◆飛行艦
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateColorSP("絵色黒下", 10, "#000000");
	CreateTextureSP("絵背景10", 1000, Center, Middle, "cg/ev/ev173_鍛造雷弾保管器.jpg");
	CreateEffect("絵Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");
	SoundPlay("@mbgm32", 0, 1000, true);

	Delete("上背景");
	FadeDelete("黒幕１", 1500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　我和大鸟主从，为了阻止进驻军利用“<RUBY text="Forged Bomb">锻造雷弹</RUBY>”毁
灭幕府的计划，入侵了飞行艇——
　但却失败了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景9", 990, Center, Middle, "cg/ev/ev174_鍛造雷弾投下.jpg");
	FadeDelete("絵背景10", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　我们的努力没有得到成果，锻造雷弹被投下了。
　
　但是，对于作战主任卡农中佐来说，他所预料到的似
乎也仅此而已。

　爆炸的冲击波，猛烈地波及到了飞行艇。
　从计划上来说，一定是充分地保证了飞行艇的安全，
所以大概是哪里出现了未能预料的因素吧。是炸弹的异
常吗——还是别的原因呢。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景*", 600, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0012]
　飞行艇受到了极大的损伤，被迫进行了迫降。我们趁
此机会得以逃脱。
　但是ＧＨＱ并不可能就此善罢甘休，卡农中佐也不可
能这样放着我们不管。

　我们九死一生逃脱之后，等着我们的是和进驻军追兵
之间激烈的对抗。
　不区分昼夜，不掩人耳目，只是袭击、袭击、袭击。

　在不停的逃亡途中，我听说大鸟狮子吼的军队因某种
原因——<k>之后我听香奈枝说，是有人送信报告雷弹的事
——<k>免于炸弹的袭击，回到了会津篠川，于是我们前往
了那里。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景", 100, Center, Middle, "cg/bg/bg053_永倉家の庭_01.jpg");
	Fade("絵背景", 600, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0016]
　越过国境之后，追兵终于在篠川军的压力之下放缓了
脚步，被我们甩掉了。
　就这样，我们终于到达了这里——纱代侍从的老家，
永仓家。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
//◆庭
	WaitAction("絵背景", null);
	PrintBG("上背景", 30000);

	OnBG(100,"bg053_永倉家の庭_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……从结果看来。
　大和失去独立主权的事态，是我想要避免的。这种事
态并没有发生。

　炸弹投下了。
　但是作为四大公方一角的大鸟狮子吼没有死掉……并
且他将护氏亡故之后足利一族的首领四郎邦氏也一同救
出，这是已经公布的事实。

　六波罗没有毁灭。篠川公方府和辖区军尚且健在，有
与进驻军对峙的态势。
　虽然还无法确定真伪，但据说普陀乐城还有其他人活
了下来，其中很多人都相继来到了会津。

　如果这是事实，那么锻造雷弹大概并没有产生卡农中
佐想要达到的效果吧。
　因而，虽然这件事一定是对大和国民的心理产生了相
当大的影响，但却也并不是决定性的。

　进驻军终于对六波罗进行了攻击，但这次大打击并没
有得到太多的赞赏之声。所以，最终也无法说民众能够
接受进驻军成为取代幕府的支配者。


　假设现在ＧＨＱ发布了这种宣言，反对的声音会立刻
席卷大和全土吧。
　如果这样，一切都白费了。

　所以。
　进驻军——卡农中佐如果执意要支配大和，那么只能
弥补锻造雷弹未能取得的战果。


　尽可能地迅速进军，灭掉迁移至会津的六波罗。
　只得这样去做。


　只要时间不会停止，这就已经是确定的事了。
　这个会津国被战火蹂躏的未来，已经是确定的了。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"mc03_003.nss"