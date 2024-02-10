//<continuation number="150">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//あきゅん「ＣＰ：デバッグ用」
		$GameDebugSelect = 1;

		Reset();
	}

}

scene mc03_017vs.nss_MAIN
{

	

	//CP_AllSet("村正");

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
	#ev946_村正ＶＳガッタイダー_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc03_017vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_016.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//●戦闘開始
//◆村正ＶＳガッタイダー
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateTextureSP("絵背景", 1000, Center, Middle, "cg/bg/bg001_空e_01.jpg");
	CreateTextureSP("絵ＥＶ", 100, Center, -90, "cg/ev/ev946_村正ＶＳガッタイダー_b.jpg");
	Delete("上背景");
	FadeDelete("絵色黒", 2000, true);

	SoundPlay("@mbgm10",0,1000,true);

	WaitKey(1000);
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010a]
　太阳在西边的天上。
　很快太阳就会沉入山后，傍晚便会到来吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010b]
　我迫切希望在那之前分出胜负。
　不想和<RUBY text="····">那种东西</RUBY>在昏暗的世界中对峙，
　仅仅是这种理由也已经很充分了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガッタイダー迫る
//あきゅん「ＣＰ：必須定義まとめ」
	CreatePlainSP("絵板写", 20000);

	Cockpit_AllFade2();

	MyLife_Count(0,432);
	CP_IHPChange(0,6,null,false);
	CP_PowerChange(0,300,null,false);

	CP_SpeedChange(0,558,null,false);
	MyTr_Count(0,451);

	CP_HighChange(0,1212,null,false);
	CP_AziChange(0,90,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

	Delete("絵ＥＶ");
	FadeDelete("絵板写", 500, true);

	CockPit_LockSet(@0,@0);
	CreateTextureEX("絵演立絵合体", 1000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");
	CP_LockOnMove("@絵演立絵合体",0,@-100,@-60,null,true);
	Zoom("絵演立絵合体", 0, 100, 100, null, true);
	Request("絵演立絵合体", Smoothing);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵演立絵合体",300,@0,@-30,null,false);
	Fade("絵演立絵合体", 300, 1000, null, true);

	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(300,"off",true);

	Wait(300);

	CP_LockOnMove("@絵演立絵合体",1000,@0,@-100,null,false);
	Wait(800);
	CP_LockOnMove("@絵演立絵合体",1000,@0,@-30,null,false);
	Wait(200);

	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Zoom("絵演立絵合体", 400, 750, 750, Axl2, false);
	Rotate("絵演立絵合体", 400, @0, @0, @30, Axl2,false);
	CP_LockOnMove("@絵演立絵合体",400,@50,@40,Axl2,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0010a01">
《敌骑近身！》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0020a00">
「啊————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　但是，还有更深刻的问题。
　考虑到我现在身体的状况，和这种有着非同寻常
<RUBY text="Power">威势</RUBY>的敌人长时间消耗……<k>
　那太乱来了！

　现在<RUBY text="卡路里">热量</RUBY>不足！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc03/017vs0030b33">
《尸体什么的不错！　牙刷要什么颜色！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色黒", 20000, "#000000");

	CP_LockOnChange(200,false);
	Rotate("絵演立絵合体", 400, @0, @0, @10, Axl2,false);
	Zoom("絵演立絵合体", 400, 1500, 1500, Axl2, false);
	CP_LockOnMove("@絵演立絵合体",400,@50,@80,Axl2,false);

	Wait(300);

	Fade("絵色黒", 150, 1000, null, true);
	Delete("絵演立絵合体*");
	CP_LockOnDelete();

//◆チェーンソー
//◆避ける。でも軽く食らう。ズガー。
	CreateSE("SE01a","se戦闘_攻撃_チェーンソー02_L");
	MusicStart("SE01a",0,1000,0,1000,null,true);

	CreateTextureSPadd("絵演上上", 20120, Center, Middle, "cg/ef/ef044_火花b.png");
	SetVertex("絵演上上", 526, 287);
	Move("絵演上上", 0, @270, @280, null, true);
	Zoom("絵演上上", 0, 3000, 3000, null, true);

	CreateTextureSP("絵演", 20100, Center, Middle, "cg/ef/ef011_汎用斜め軌道.jpg");
	Zoom("絵演", 0, 1200, 1200, null, true);
	Request("絵演", Smoothing);

	Fade("絵演上上", 200, 0, null, false);
	Move("絵演上上", 200, -294, -285, null, false);
	Zoom("絵演上上", 200, 1000, 1000, null, false);
	Rotate("絵演上上", 200, @0, @0, @36000, null,false);
	Shake("絵演上上", 200, 40, 10, 0, 0, 500, Dxl2, false);

	Shake("絵演", 200, 100, 0, 0, 0, 1000, null, true);

	CreateColorSP("絵色白", 21000, "#FFFFFF");

	Delete("絵演*");
	Delete("絵色黒*");

	Wait(12);

	CreateTextureSP("絵演航空背景", 100, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");
	CreatePlainEXadd("絵板写", 1000);
	Fade("絵板写", 0, 500, null, true);

	FadeDelete("絵板写", 1500, false);
	Shake("絵板写", 1200, 0, 40, 0, 0, 500, null, false);
	Shake("@CP_Frame", 1700, 20, 20, 0, 0, 1000, null, false);

	FadeDelete("絵色白", 200, true);

	SetVolume("SE*", 1600, 0, null);

	CreateSE("SE02","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE02",0,1000,0,850,null,false);

	MyLife_Count(300,360);
	CP_IHPChange(300,5,null,false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0040a00">
「……可恶！
　没躲开吗!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0050a01">
《左肩装甲受损!!
　为什么啊，明明没有直接击中！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　手脚很沉。像是灌了铅。
　实际上里面灌了的，是自作自受四个字吧。


　这是任由愤怒进行粗野猛攻的<RUBY text="报应">债务</RUBY>。
　<RUBY text="Breath">呼吸</RUBY>，<RUBY text="Burn">燃烧</RUBY>，<RUBY text="Blood">血流</RUBY>——作为武者不得轻视的
<RUBY text="３Ｂ">身体机能</RUBY>全都变得混乱。

　我的战斗能力处于大幅跌落的状态。
　
　相对的，敌人和之前一样，<RUBY text="FullSpeed·And·FullSwing">全速突进＋全力攻击</RUBY>。

　与之前不同的是其武装。
　<RUBY text="ChainSaw">旋转锯刀</RUBY>——那本来不是用来挥击的道具，
但似乎是加入了用于战斗的改良，这样使用也能充分发
挥其性能。

　最厚重的肩部装甲也能像薄纸一样切开，那种便宜的
<RUBY text="StageSet">舞台道具</RUBY>一样的外表也让我无法嘲笑了。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0060a00">
「这么强的切断力……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0070a01">
《仅仅是擦过就会<RUBY text="··">这样</RUBY>……
　至于直接命中的情况，还是不要去考虑对心
理健康比较有利。》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0080a00">
「让她扔掉带毒的斧头看来是失策了。虽然这
只是事后看来……
　无论那样多么阴险，我感觉还是那个斧头比
较容易对付。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0090a01">
《大概吧……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵演航空背景前", 2000, Center, -864, "cg/bg/bg202_旋回演出背景山_01.jpg");

//◆旋回して対峙
	CreateTextureEX("絵演航空背景", 1100, Center, -960, "cg/bg/bg201_旋回演出背景市街地_01.jpg");
	CreateTextureSP("絵演空旋回専用", 100, InRight, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	SetBlur("絵演空旋回専用", true, 3, 500, 60, false);
	PlainSurface("絵演空旋回専用",1000,2000);

	FadeDelete("絵演航空背景前", 300, false);

	CreateSE("SE01","se戦闘_動作_空突進02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CP_ProcessDelete("ロール");
	CP_ProcessDelete("速度");
	CP_ProcessDelete("高度");
	CP_ProcessDelete("俯角");

	CP_AziChange(3000,270,DxlAuto,false);
	Move("絵演空旋回専用", 3000, 0, @0, AxlDxl, false);
	CP_AltChange(600,45,null,false);
	CP_RollBarMove2(600,-90,null,false);
	RotateSurface(600,90,DxlAxl,false);

	Wait(600);

	CreateSE("SE01a","se戦闘_動作_空急降下01");
	MusicStart("SE01a",2000,1000,0,1000,null,false);

	Wait(1800);

	CreateSE("SE01b","se戦闘_動作_空上昇01");
	MusicStart("SE01b",0,1000,0,1000,null,false);

	Wait(200);

	CP_AltChange(600,0,null,false);
	CP_RollBarMove2(600,0,DxlAuto,false);
	RotateSurface(600,0,DxlAuto,false);

	Wait(300);

	SetVolume("SE*", 2000, 0, null);
	Move("絵演航空背景", 300, @0, @40, DxlAuto, false);
	Fade("絵演航空背景", 300, 1000, DxlAuto, true);

	DeleteSurface();

	CockPit_LockSet(@0,@0);
	CreateTextureEX("絵演立絵合体", 2000, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘b.png");
	CP_LockOnMove("@絵演立絵合体",0,@100,@-60,null,true);
	Zoom("絵演立絵合体", 0, 100, 100, null, true);
	Request("絵演立絵合体", Smoothing);

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CP_LockOnMove("@絵演立絵合体",300,@0,@-30,null,false);
	Fade("絵演立絵合体", 300, 1000, null, true);

	CreateSE("SE02","se特殊_コックピット_ロックオン");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CP_LockOnFade(300,"off",true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……简要来说。
　我处于最差的状态，而敌人比之前更危险。

　现在我一击都承受不住。
　只要搞错了一击，我就会失去继续战斗的能力。

　自己招致的困境，只能用自己的才智来脱困。
　这一回合，以及下一回合，恐怕就是决定我生死的分
水岭。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆近付く。正面相撃
	CP_LockOnMove("@絵演立絵合体",1000,@0,@-100,null,false);
	Wait(800);
	CP_LockOnMove("@絵演立絵合体",1000,@0,@-30,null,false);
	Wait(200);

	CreateSE("SE02a","se戦闘_動作_空上昇01");
	MusicStart("SE02a",0,1000,0,1000,null,false);
	Rotate("絵演立絵合体", 400, @0, @0, @-20, Axl2,false);
	Zoom("絵演立絵合体", 400, 300, 300, Axl2, false);
	CP_LockOnMove("@絵演立絵合体",400,@-50,@40,Axl2,true);

	CreateColorEX("絵色黒", 19900, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　——考虑一下战术吧。
　现在，如果靠直觉来战斗，我会丧命。

　我已经呼吸不稳了，以现在的身体状态对抗强力的怪
物，到底如何才能免于战败呢。
　必须要慎重考虑再做决定。

　是前去一决胜负，还是重整旗鼓，还是说。
　
　……无论是怎样，只要决定之后，大概就没有进行修
改的余地了。

　发觉自己判断错误的时候，一定是已经走上了死路。
　所以——现在这一瞬间，一定要仔细考虑来决定。


　首先，我在头脑中整理了必须要确认的事项。
　我简短地按顺序问了村正。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵色黒", null);

	Delete("絵演合体*");
	Cockpit_AllFade0();
	CP_LockOnDelete();

	CreateTextureSP("絵演", 19000, Center, Middle, "cg/ev/ev504_村正突進.jpg");

	FadeDelete("絵色黒", 1000, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0100a00">
「阴义能用吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0110a01">
《现在使用阴义是自杀行为。这不是比喻。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0120a00">
「你认为敌骑还会<RUBY text="··">分离</RUBY>来攻击吗？」



{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0130a01">
《到底如何呢。
　各个骑体的性能似乎会显著降低……那是用
来奇袭或是紧急回避的机关，应该不会太频繁
地使用。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/017vs0140a00">
「……列车掉落的地点还在附近吗？」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc03/017vs0150a01">
《因为战斗时移动了位置，现在有些距离。
　方向几乎是正北。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　好。
　最低限度该问的事情都问了。也没时间继续再问了。


　决定作战计划吧。
　首先，第一回合……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆選択：攻める／防ぐ

}

..//ジャンプ指定
//◆攻める　"mc03_017vsa.nss"
//◆防ぐ　"mc03_017vsb.nss"

//★選択肢シーン
scene mc03_017vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm10",0,1000,true);

	CreateTextureSP("絵演", 5000, Center, Middle, "cg/ev/ev504_村正突進.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("进攻","防守");
	select
	{
		//カーソル用
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @選択肢１
		{
			ChoiceA02();
//◆攻める　"mc03_017vsa.nss"
				$GameName = "mc03_017vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆防ぐ　"mc03_017vsb.nss"
				$GameName = "mc03_017vsb.nss";
		}
	}
}

