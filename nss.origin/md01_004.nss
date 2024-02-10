//<continuation number="310">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_004.nss_MAIN
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
	#bg093_山間の村b_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_005.nss";

}

scene md01_004.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_003.nss"

//◆村、炎上
//◆喚声やら悲鳴やら
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 5000, "#000000");
	OnBG(100,"bg093_山間の村b_03.jpg");
	//OnBG(100,"bg093_山間の村b_03.jpg");
	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	CreateSE("SEL01b","se背景_ガヤ_悲鳴01");
	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");
	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	MusicStart("SEL01b",2000,1000,0,1000,null,true);

/*
//あきゅん「演出：テストで降らせています」
	//$SYSTEM_effect_drop_image = "cg/ef/ゆっくり_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/火の粉１.png";
	$SYSTEM_effect_drop_dencity = 30;
	$SYSTEM_effect_drop_speed = 3;
	$SYSTEM_effect_drop_swing = 30;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("絵効果火粉壱", 2000, Center, Middle, 1030, 580, "Drop");
	SetAlias("絵効果火粉壱","絵効果火粉壱");
	Fade("絵効果火粉壱", 0, 1000, null, true);

	//$SYSTEM_effect_drop_image = "cg/ef/ゆっくり_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/火の粉2.png";
	$SYSTEM_effect_drop_dencity = 20;
	$SYSTEM_effect_drop_speed = 5;
	$SYSTEM_effect_drop_swing = 90;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("絵効果火粉弐", 2000, Center, Middle, 1030, 580, "Drop");
	SetAlias("絵効果火粉弐","絵効果火粉弐");
	Fade("絵効果火粉弐", 0, 1000, null, true);

	//$SYSTEM_effect_drop_image = "cg/ef/ゆっくり_S.png";
	$SYSTEM_effect_drop_image = "cg/ef/火の粉3.png";
	$SYSTEM_effect_drop_dencity = 10;
	$SYSTEM_effect_drop_speed = 10;
	$SYSTEM_effect_drop_swing = 180;
	//$SYSTEM_effect_drop_rotate_z = 360;
	CreateEffect("絵効果火粉参", 2000, Center, Middle, 1030, 580, "Drop");
	SetAlias("絵効果火粉参","絵効果火粉参");
	Fade("絵効果火粉参", 0, 1000, null, true);

	//Zoom("絵効果火粉*", 0, 2000, 2000, null, true);
	Request("絵効果火粉*", AddRender);
	Rotate("絵効果火粉*", 0, @0, @0, @-125, null,true);
*/

	WaitKey(2000);

	SetFwC("cg/fw/fw二世村正_叱咤.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040010a15">
「父亲，已经不行了！
　敌人的数量不是一两百。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040020a15">
「这样下去大家都会被杀的！」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040030b30">
「……吾……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL01b", 1000, 0, null);
	FadeDelete("絵暗転", 2000, true);

	StR(1000, @-30, @0,"cg/st/st二世村正_通常_私服.png");
	StL(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0013]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0040040a01">
「母亲，伤……！」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040050a15">
「别担心。
　只是被流箭伤到了。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040060a15">
「比起吾更要注意汝自己。
　被燃烧着倒塌的房屋压在下面的话，
我救不了你。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0040070a01">
「嗯，嗯……」

{	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,false);
	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040080a15">
「父亲，总之现在先撤退吧。
　逃到隐村的话，他们便无法追上。」

{	FadeStL(300,false);
	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040090b30">
「……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040100a15">
「父亲！」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040110b30">
「……为什么。
　北朝的军队能进攻到这里，
这不可能！」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040120b30">
「本不该如此……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(300,true);

//◆浦夢
	StL(1000, @30, @0,"cg/st/st浦夢_通常_私服a.png");
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

//嶋：修正（来られない）【090930】

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040130b16">
「不越过长岛，北朝就不能到这里……吗？」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040140b30">
「浦梦大人……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040150b16">
「那么，长岛便已失守。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040160b30">
「不可能！
　现在，守护长岛的不是别人，是饱间大人。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040170b30">
「是他的话，就算是一万大军，
也能抵抗数日……」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040180b16">
「如果开战，确实如此。
　假如不开战，那又会怎样？」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040190b30">
「什、什么?!」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040200b16">
「若是饱间大人让北朝军队长驱直入……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040210b30">
「别开玩笑了!!」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040220b16">
「……」

{	FwC("cg/fw/fw始祖村正_怒り.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040230b30">
「的确在当世，说到武人就是墙头草。
　时而向北朝，时而向南朝，见风使舵。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040240b30">
「但是饱间大人不会！
　他……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040250b30">
「……只有他……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0040260b16">
「村正大人……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040270a15">
「……父亲。
　现在没时间考虑。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040280a15">
「现在必须逃跑。
　忘了吗。父亲受先帝的赐诏，
还需打造大和第一的剑胄。」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0040290a15">
「不能在这里丧命！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0040300a01">
「外公。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0040310b30">
「……呜。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_005.nss"