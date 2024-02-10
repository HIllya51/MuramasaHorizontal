//<continuation number="20">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_051vs.nss_MAIN
{

	
//コックピット用Ｓｅｔ
	CP_AllSet("バロウズ");

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
	#ev207_最後の術技を放つ村正_a=true;
	#ev207_最後の術技を放つ村正_b=true;
	#ev207_最後の術技を放つ村正_c=true;


	//▼ルートフラグ、選択肢、次のGameName
	#msong05=true;
	#msong02=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "mc04_052.nss";

	//★ＥＤロール超速対応
	PreSetRoll(1);
	TheEND(1);
}

scene mc04_051vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_049vs.nss"

	PrintBG("上背景", 30000);

	SetVolume("@mbgm*", 1000, 0, null);



	CreateColorSP("黒幕１", 16000, "BLACK");

	Delete("上背景");



//●正解
//◆降下直進

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg001_空a_02.jpg");
//	CreateTextureSP("絵村正", 200, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureSP("絵背景200", 100, 0, -388, "cg/ev/resize/ev207_最後の術技を放つ村正_al.jpg");

	CreateEffect("絵効果雨", 18000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Request("絵効果雨", AddRender);
	Move("絵効果雨", 0, 200, 144, null, true);
	Zoom("絵効果雨", 0, 5000, 5000, null, true);
	Rotate("絵効果雨", 0, @0, @0, @90, null,true);
	Fade("絵効果雨", 0, 100, null, true);

	CreateSE("SE10","se戦闘_動作_空突進05");
	MusicStart("SE10",2000,1000,0,1200,null,true);
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進03",1000);


	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", false);
	Move("絵背景200", 500, -1024, @0, null, true);
	Move("絵背景200", 20000, -1724, @0, null, false);

	Wait(1000);
	SetVolume("SE10", 3000, 200, null);

	SoundPlay("@msong05_short",0,1000,true);

//◆村正突進

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　笔直地——
　敌影从正面飞驰而来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//	Zoom("絵村正", 500, 2000, 2000, Axl3, false);
//	FadeDelete("絵村正", 500, false);
//	EffectZoomDXadd(10000, 500, 100, "#FFFFFF", "cg/ev/ev207_最後の術技を放つ村正_a.jpg", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
　太刀直直地朝着前方。
　
　我也化作一支箭朝敌骑迎了上去。

　化作一支尖端锋利的杀戮锐器。

　这个技能是从大鸟狮子吼那里学来的。
　眩惑之剑——用尖端刺向对手视线的焦
点，使其失去精神和感觉平衡的妖术。

　……当然，我很清楚。
　正因为是距离非常接近的白刃战，那个技能
的效果才特别显著。

　从远处以音速接触敌人之后再远远离开，
若是遇到与空中武者对战的情况，能够详细观
察对方战形的机会只有太刀相触的那一刹那。
　没有其他动用妖刀的余地。

　但若加上常识外的因素就另当别论。
　常识范围外的——那只眼睛。

　是的。
　敌人正从如此远的距离，精确地掌握着这
边的动静……

　<RUBY text="·····">能够看得见</RUBY>。
　令人恐惧的凶瞳里，是这把剑。

　既然如此。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆香奈枝サイド
//◆バロウズモニター。村正ロックオン中
//◆レイヤ重ねでev207a？
	OnSE("se戦闘_動作_空突進06",1000);
	Move("絵背景200", 500, -1024, -576, Axl2, false);
	Zoom("絵背景200", 500, 500, 500, Axl2, false);

	Wait(300);
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵効果雨");
	Delete("絵背景200");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(100,"off",true);
	CP_EnemyFade(0,2,420,300);

	MyLife_Count(0,180);
	MyTr_Count(0,250);
	CP_PowerChange(0,205,null,true);
	CP_IHPChange(0,3,null,false);

	CreateSE("SEロックオン","se特殊_コックピット_起動音02");

	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_a.jpg");
	CreateTextureEX("絵背景300", 18000, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_a.jpg");
	SetBlur("絵背景300", true, 2, 300, 100, false);

	CreateTextureSP("絵村正", 1010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵村正", 0, 100, 100, null, true);


	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", false);

	FadeF4("@CP_LockOff", 50, 1000, 1000, 0, 0, null, false);
	FadeF3("絵村正", 50, 1000, 1000, 0, 0, null, true);

//	Move("@CP_LockOff", 1000, 485, 180, AxlDxl, true);
	MusicStart("SEロックオン",0,1000,0,1000,null,false);
//	Move("@CP_LockOn", 0, 485, 180, null, true);
	CP_LockOnFade(100,"on",true);

	Zoom("絵背景300", 500, 1100, 1100, Dxl2, false);
	Fade("絵背景300", 300, 1000, null, false);
	Fade("絵背景200", 300, 1000, null, true);
	FadeDelete("絵背景300", 200, false);

	Wait(500);

	SetFwC("cg/fw/fw香奈枝_警戒.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/051vs0010a03">
「…………?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆景明サイド
	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	CP_LockOnDelete();
	Cockpit_AllFade0();

	Delete("絵村正");
	Delete("絵背景200");
	Delete("絵背景300");
	CreateTextureSP("絵背景100", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_02.jpg");
	CreateTextureSP("絵演村正", 1010, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	CreateTextureSP("絵演バロウズ", 1010, Center, Middle, "cg/st/3dバロウズ_騎航_陰義.png");
	Rotate("絵演バロウズ", 0, @0, @180, @0, null,true);
	Zoom("絵演バロウズ", 0, 50, 50, null, true);

	SetBlur("絵演村正", true, 1, 300, 100, false);
	SetBlur("絵演バロウズ", true, 1, 300, 100, false);



	Move("絵演村正", 0, @-400, @60, null, true);
	Move("絵演バロウズ", 0, @200, @-60, null, true);

	CloudZoomSet(2500);
	CloudZoomStart(700,1000,1000,800,900);
	CloudZoomVertex(0,@100,@-50,null,true);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

$ループムーブナット名 = "@絵演バロウズ";
$ループムーブタイム = 30000;
//$ループムーブテンポ = "null";
//$ループムーブ待ち = "true";

$ループムーブナット名２ = "@絵演村正";
$ループムーブタイム２ = 10000;

	CreateProcess("プロセス１", 150, 0, 0, "FlyMoving");
	CreateProcess("プロセス２", 150, 0, 0, "FlyMoving2");
	SetAlias("プロセス１","プロセス１");
	SetAlias("プロセス２","プロセス２");


	Request("プロセス１", Start);

	Move("絵背景100", 30000, @0, @200, null, false);

//	FadeF3("絵演バロウズ", 0, 1000, 101000, 0, 0, null, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", false);
	Move("絵演村正*", 1000, @20, @-60, Dxl2, true);

//	FlyMoving("絵演バロウズ", 10000);
//	FlyMoving("絵演村正", 10000);
//	FadeF4("絵演村正*", 0, 1000, 100000, 0, 0, null, false);

	Request("プロセス２", Start);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　晕眩效果只是一瞬间，无法持续。
　但现在，这一瞬便等于永远。

　敌人不等感觉恢复便发动了攻击。
　等待我攻上前去的话，会失去先机，
除此以外别无他选。

　晕眩的时候，要怎样才能确定攻击点呢？
　
　……方法只有一个。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆香奈枝サイド
//◆切先最先端に照準合わせて
//◆射撃
	CreateColorSP("黒幕１", 18500, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	SetVolume("SE10", 3000, 0, null);
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");

	CloudZoomVertex(0,0,0,null,true);

	Cockpit_AllFade2();
	CP_HighChangeA();
	CP_AltChangeA();

	CP_EnemyFade(0,3,200,250);

	CP_AltChangeA();
	CP_HighChange(0,453,null,false);
	CP_SpeedChange(0,440,null,false);
	CP_AziChange(0,-189,nul,false);

	MyLife_Count(0,189);
	MyTr_Count(0,160);
	CP_PowerChange(0,205,null,false);
	CP_IHPChange(0,3,null,false);

	Request("プロセス１", Stop);
	Request("プロセス２", Stop);
//	Delete("プロセス１");
//	Delete("プロセス２");
	Delete("絵演*");


	CreateSE("SE01","se戦闘_バロウズ_ボーガン射撃02");

	CreateColorEXadd("絵色100", 18500, "WHITE");

	CreateTextureEX("絵背景100", 18000, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureEX("絵村正", 18010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureSP("絵村正下", 10010, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_b.jpg");
	Zoom("絵村正*", 0, 50, 50, null, true);
	SetBlur("絵村正*", true, 1, 300, 100, false);


	Zoom("絵村正*", 1100, 100, 100, null, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", false);


	Wait(1000);

	Fade("絵背景100", 300, 1000, Axl2, false);
	FadeF4("絵村正下", 0, 1000, 500, 0, 0, Axl3, false);
	FadeF4("絵村正", 300, 1000, 500, 0, 0, Axl3, false);
	Zoom("絵村正*", 500, 500, 500, Axl2, false);


//	ClearFadeAll(100, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵色100", 500, 1000, Axl3, true);
	CloudZoomDelete(0,true);

//◆景明サイド
	Delete("絵背景100");
	Delete("絵村正*");
	Fade("絵背景200", 0, 1000, null, true);
	FadeDelete("絵色100", 2000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　是的。
　只能看到剑尖的话，<RUBY text="··········">那就只瞄准剑尖而攻击</RUBY>。

　因为那里有对手，这样就行了。
　被准确袭击的我，如果不鲁莽地杀退敌人，
就只能回避了。

　前者还是不作考虑为好。
　如果我做了回避动作的话——对方就会从
我剑尖的束缚中解脱。敌骑阴义的威力
便能毫无阻碍地发挥出来。

　射击曲折地，从无法想象的角度向我袭来。
　然后就结束了。

　敌人的决断是正确的。
　完全没有任何问题。
　
　问题，只在这之前的阶段是存在的。

　敌人应该一秒都不考虑就开始与我作战，
立马向我展开袭击。
　差不多瞄准一下即可。反正用阴义修正很有效。
发射时即便没有瞄准也并无大碍。

　但是，射手的自尊心不能容忍这种低劣
的射击……
　敌人为了瞄准，浪费了那一点点的时间。

　失误就在这里。
　这唯一的错误，导致了弓骑士的死亡。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆疾る矢
//◆村正直進
	CreateTextureEX("絵背景EF", 18000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");

	OnSE("se戦闘_バロウズ_ボーガン射撃01",1000);

	Fade("絵背景EF", 100, 1000, null, false);
	EffectZoomDXadd(18050, 1000, 100, "#FFFFFF", "cg/ef/ef038_汎用射撃.jpg", true);

	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc04/051vs0020a03">
「————啊————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　没有回避。
　也没有迎击。

　面对迎面而来的一击，什么反应也没有。
　因为我相信。
　相信着魔弹的射手。

　绝对不会偏离。
　哪怕是太刀尖端的那一点。

　既不用躲避也无需防御。
　只用继续笔直地冲上前去。

　敌人一定会成为我的剑的目标！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆矢と剣先。正面衝突。
	CreateTextureEX("絵背景200", 18000, Center, Middle, "cg/ev/ev207_最後の術技を放つ村正_c.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	CreateTextureEXadd("絵スパーク", 18500, Center, Middle, "cg/ef/ef044_火花c.png");

	CreateColorEXadd("絵色100", 18500, "WHITE");

	CreateSE("SE01","se特殊_電撃_放電02");
	CreateSE("SE02","se戦闘_動作_空突進04");

	OnSE("se戦闘_攻撃_鎧_剣戟04",1000);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("絵背景200", 500, 10, 15, 0, 0, 1000, Dxl2, false);
	Fade("絵背景200", 200, 1000, null, false);
	Zoom("絵背景200", 300, 1000, 1000, Dxl2, true);

	Wait(500);

	EffectZoomadd(18050, 2000, 100, "cg/ev/ev207_最後の術技を放つ村正_c.jpg", false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵スパーク", 150, 1000, null, false);
	Rotate("絵スパーク", 2000, @0, @0, 60000, null,false);
	Zoom("絵スパーク", 2000, 2000, 2000, null, false);


	Wait(500);

//◆なんかグワキャーと炸裂。ホワイトアウト
	Fade("絵色100", 1500, 1000, Axl3, true);
	Delete("絵スパーク");
	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　太刀弯曲，折断，破碎。
　连右手腕也被斩飞。

　但仍然留了条命在。
　虽然如同破布一般，但仍有余力。

　足够了。
　全部寄托在那一点力量上。

　继续向前。
　还有一步。那之后再一步。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトを突き抜けるような感じで戦闘画面戻り
//◆直進
//◆バロウズ。抜剣
	CreateTextureSP("絵背景200", 18000, Center, Middle, "cg/ev/ev949_バロウズ構え.jpg");
	Zoom("絵背景200", 0, 1200, 1200, null, true);
	SetBlur("絵背景200", true, 3, 300, 50, false);

	OnSE("se戦闘_動作_空突進08",1000);

	DrawDelete("絵色100", 300, 500, "circle_01_00_1", false);
	Zoom("絵背景200", 1200, 1000, 1000, Dxl1, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　我用左手拔出腰刀。
　最后的武器。

　敌人也再次拔出了剑。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆激突
	SetVolume("@msong*", 1000, 0, null);
	CreateColorEXadd("絵色100", 18500, "WHITE");
	CreateSE("SE01","se戦闘_破壊_鎧01");
	CreateSE("SE04","se戦闘_破壊_鎧04");
	CreateSE("SE05","se戦闘_攻撃_鎧_剣戟05_L");

	Fade("絵色100", 2000, 1000, Axl3, false);
	Zoom("絵背景200", 2000, 2000, 2000, Axl3, true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE05",0,1000,0,1000,null,false);

	Wait(1500);
	SetVolume("SE05", 1000, 0, null);
	Wait(1500);

	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(1500);
	Delete("絵背景200");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　斩到了吗。
　还是被斩了？

　……我已经不知道了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆終了
	SetVolume("SE*", 6000, 0, null);
	ClearFadeAll(6000, true);
	CP_AllDelete();

	SoundPlay("@msong02_full",0,1000,true);
	Wait(4000);

}

..//ジャンプ指定
//次ファイル　"mc04_052.nss"
