//<continuation number="190">

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

scene mc01_020vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc01_020vs.nss","DelusionIn",true);
	Conquest("nss/mc01_020vs.nss","LensMove",true);
	

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

	Request("@レンズ１", UnLock);
	Request("@レンズプロセス１", UnLock);
	Request("レンズ１", UnLock);
	Request("レンズプロセス１", UnLock);
	Delete("@レンズプロセス１");
	Delete("レンズプロセス１");
	Delete("@レンズ１");
	Delete("レンズ１");

	Cockpit_AllFade0();

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc01_020vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc01_019vsaa.nss"
//前ファイル　"mc01_019vsab.nss"
//前ファイル　"mc01_019vsb.nss"

	if($GameDebugSelect==1){CP_AllSet("アベンジ");}

//◆合流
	SoundPlay("@mbgm10",0,1000,true);

	PrintBG("上背景", 30000);
	CreateSE("SEL01a","se戦闘_動作_空走行02_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	CreateColorSP("絵色黒", 20000, "#000000");
	CreateTextureSP("絵背景", 100, Center, InBottom, "cg/bg/bg202_旋回演出背景山a_01.jpg");
	CreateTextureSP("絵演村正立絵", 1000, Center, Middle, "cg/st/3d村正標準_騎航_通常3b.png");
	SetBlur("絵演村正立絵", true, 2, 300, 150, false);
	Move("絵演村正立絵", 0, @-380, @60, null, true);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);
	Shake("絵演村正立絵", 2160000, 2, 1, 0, 0, 1000, null, false);
	Move("絵演村正立絵", 2300, @30, @-60, Dxl2, false);
	Fade("絵演村正立絵", 300, 1000, null, true);

	Delete("上背景");
	FadeDelete("絵色黒", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……总之，趋势可说是已成定局。
　虽说现在关键是要攻下依靠重装甲对我方死死纠缠
的敌骑，但只要我方还未因焦躁而露出破绽，就不可
能战败。

　话虽如此，但却十分麻烦。
　我方确实有焦躁的理由——说不定有人现在正在袭
击建朝寺的舞殿宫，那个人恐怕和眼前的敌人是同一
阵营的吧。

　只要一想到这里，下腹中焦躁的火就<RUBY text="··">熊熊</RUBY>燃起。
　归根结底，最大的敌人正是自己的心。


　维持冷静比什么都重要……
　因心急而败北反而得不偿失。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);
	SetBlur("絵演村正立絵", true, 0, 500, 200, false);


//◆反転
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Zoom("絵演村正立絵", 600, 1250, 1250, Axl2, false);
	Move("絵演村正立絵", 600, @-700, @576, Axl2, true);

	SetBlur("絵背景", true, 2, 500, 60, false);
	Move("絵背景", 1800, @0, 0, Axl2, false);

	Wait(1400);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("絵背景", 100, Center, InTop, "cg/bg/resize/bg002_空a_01.jpg");
	Wait(700);

	Move("絵背景", 650, @0, @-100, Dxl2, false);
	DrawDelete("絵色黒", 150, 100, "slide_02_01_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　回旋着描绘出弧形轨迹，再次将敌影收入正面的视野中。
　
　————很好。腰部旋转性缓慢笨拙的敌骑重整攻击姿态
似乎迟缓了些。

　不如趁现在出动，保住优势！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆進撃
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒", 20000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete("絵演村正立絵");

	CreateSE("SEL01a","se戦闘_動作_空走行02_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	CreateTextureSP("絵背景", 100, Center, InTop, "cg/bg/bg201_旋回演出背景市街地_01.jpg");

//あきゅん「ＣＰ：必須定義まとめ」
	Cockpit_AllFade2();

//あきゅん「ＣＰ：ダメージフラグでライフ調整」
	$合体戦ライフ基本値 = 612;
	if($First_Battle_Damage >= 1){
		$合体戦ライフ調整値 = $合体戦ライフ基本値 - ($First_Battle_Damage*218);
	}else{
		$合体戦ライフ調整値 = $合体戦ライフ基本値 ;
	}

	MyLife_Count(0,$合体戦ライフ調整値);

	$合体戦生命基本値 = 9;
	if($First_Battle_Damage >= 1){
		$合体戦生命調整値 = $合体戦生命基本値 - ($First_Battle_Damage*3);
	}else{
		$合体戦生命調整値 = $合体戦生命基本値 ;
	}

	CP_IHPChange(0,$合体戦生命調整値,null,false);

	MyTr_Count(0,440);
	CP_SpeedChange(0,531,null,false);

	CP_PowerChange(0,680,null,false);

	CP_HighChange(0,1800,null,false);
	CP_AziChange(0,251,null,false);
	CP_AltChange(0,-2,null,false);
	CP_AltChangeA();

	CP_RollBarMove2(0,0,null,true);

	FrameShake();

//あきゅん「ＣＰ：俯角が下に向いているので微妙に降下させる」
	CP_HighChange(60000,1673,null,false);
	Move("絵背景", 60000, @0, @-288, null, false);

	MusicStart("SEL01a",1000,1000,0,500,null,true);
	MusicStart("SEL01b",1000,500,0,2000,null,true);

	DrawDelete("絵色黒", 150, 100, "circle_01_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　也许是翼甲的操纵错误，我们逼近到离敌骑近在咫尺
的距离时，敌骑才终于完成了回转。
　即使现在开始突击，也不可能顺利取得威势。

　现在正是——好机会！
　甚至有仅着重攻击易受损伤部位的余裕。


{	CreateSE("SE02","se戦闘_動作_刀構え02");
	MusicStart("SE02",0,1000,0,1000,null,false);}
　我重新握紧太刀，

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);
	SetVolume("@mbgm*", 100, 0, null);

//◆変なエフェクト。赤い走査線がみみっと？
//◆毒の効果っぽく見えれば良し。
	CreateSE("SE01","se人体_血_吐血01");
	CreateColorSPmul("絵色毒", 17010, "#9900CC");
	CreateTextureSPover("絵演効果", 17000, Center, Middle, "cg/data/worm_01_00_0.png");
	DrawTransition("絵演効果", 0, 0, 500, 500, null, "cg/data/zoom_01_00_0.png", true);

	MusicStart("SE01",0,1000,0,500,null,false);
	DelusionIn();

	FadeDelete("絵色毒", 600, false);
	DrawDelete("絵演効果", 600, 100, "worm_01_00_0", true);

//◆がくっと姿勢が崩れる
	MyTr_Count(300,262);
	CP_SpeedChange(2000,337,AxlDxl,false);

	CP_HighChange(60000,896,null,false);
	Move("絵背景", 60000, @0, @-576, null, false);

	CP_AltChange(0,-6,null,false);
	CP_AltChangeA();
	CP_RollBarMoveA();

	CP_RollBarMove2(300,10,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　——————————————手指，却。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0010a01">
《……主君？》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0020a01">
《你、你在做什么!?
　喂，现在可不是玩的时候——》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0030a00">
「手——指——不了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　<RUBY text="·····">手指动不了</RUBY>。
　
　……我理应回答的这句话，却化作了古怪的
呻吟声。

　舌头也是。
　舌头——连嘴唇也无法动弹。

　<RUBY text="··">麻痹</RUBY>了。
　手指、舌头、嘴唇。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0040a00">
（这——难道是）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　全身汗毛倒竖。
　想都不愿去想的可能性闪过脑海，而且，
无法通过分析去否定其可能性。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090a]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0050a01">
《主君!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆サーチ音
	CreateSE("SE03","se特殊_コックピット_起動音04");
	MusicStart("SE03",0,1000,0,1000,null,false);

	$残時間=RemainTime("SE03") / 2;

	CreateColorEXover("絵色探査", 20000, "#66FF66");
	Fade("絵色探査", $残時間, 1000, null, true);
	DrawDelete("絵色探査", $残時間, 1000, "slide_02_00_0", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090b]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0060a01">
《哎？
　……难道……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　察觉到异常的村正，探查着我的体内。
　得出的结论似乎印证了我那令人不快的假设。

　敌骑近在眼前。
　挥起重兵器的这个骑体中并没有寄宿着充分的突击
冲力——但是，与现在的村正相比……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreateTextureEX("絵演合体", 1100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Move("絵演合体", 0, @-300, @-120, null, true);
	Request("絵演合体", Smoothing);
	Zoom("絵演合体", 0, 150, 150, null, true);
	Move("絵演合体", 300, @0, @-30, null, false);
	Fade("絵演合体", 300, 1000, null, true);

	OnSE("se特殊_コックピット_ロックオン",1000);
	CockPit_LockSet(@-300,@-150);
	CP_LockOnFade(300,"on",false);

	SetFwC("cg/fw/fwガッタイダー_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/020vs0070b33">
《得把被咬到的手臂切断啊——！
　不，来不及了，把头砍下——吧!!》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0080a00">
「你……」

//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0090a00">
（你这——混蛋!!）


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0100a00">
（既然身为武士——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　闪烁着杀意的斧刃。
　那光泽……并不只是金属的光泽。

　上面涂抹着————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mc01/020vs0110a00">
（用毒吗——!?）


{	FwC("cg/fw/fwガッタイダー_通常.png");}
//【小夏】
<voice name="小夏" class="小夏" src="voice/mc01/020vs0120b33">
《呀————!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm08",0,1000,true);

//◆ガッタイダー
	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色黒", 30000, "#000000");
	DrawTransition("絵色黒", 150, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	CreateTextureSP("絵空背景", 100, -512, Middle, "cg/bg/bg204_横旋回背景_01.jpg");

	CreateTextureSP("絵演合体立絵", 17100, Center, Middle, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体立絵", Smoothing);
	Zoom("絵演合体立絵", 0, 100, 100, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	Request("@レンズ*", UnLock);

	Delete("@レンズプロセス１");
	Delete("@レンズ*");
	Delete("絵演合体");
	Delete("絵背景");

	DrawDelete("絵色黒", 150, 100, "slide_01_03_1", true);

	CreateSE("SE02","se戦闘_動作_空上昇01");
	CreateSE("SE02a","se戦闘_動作_空突進01");
	MusicStart("SE02",600,1000,0,1000,null,false);
	SetBlur("絵演合体立絵", true, 2, 500, 80, true);
	Zoom("絵演合体立絵*", 5000, 200, 200, null, false);
	Move("絵演合体立絵*", 1800, @0, @-80, DxlAuto, true);
	Wait(100);
	Zoom("絵演合体立絵*", 5000, 280, 280, null, false);

	Wait(800);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("絵演合体立絵*", 200, @0, @40, DxlAuto, false);
	Zoom("絵演合体立絵*", 200, 1000, 1000, null, true);

	CreatePlainEX("絵板写", 18010);
	CreatePlainEX("絵板写二", 18020);
	Fade("絵板写", 4000, 400, null, false);
	Fade("絵板写二", 4000, 200, null, false);
	Zoom("絵板写", 4000, 1100, 1100, Dxl2, false);
	Zoom("絵板写二", 4000, 1300, 1300, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　敌方恶魔般的外形……
　不懂得人伦武道，甚至连恶魔的本性都露骨地暴露出来。

　直到现在，我这才切身体会到刀刃相交的对手是怎
样的人物。
　但一切都已经太迟了。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc01/020vs0130a01">
《主君!!
　不行——》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　毒刃，
　朝向我——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆選択：受け止める／回避する

}

..//ジャンプ指定
//◆受け止める　"mc01_020vsa.nss"
//◆回避する　"mc01_020vsb.nss"

//★選択肢シーン
scene mc01_020vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	SoundPlay("@mbgm08",0,1000,true);

	CreateTextureSP("絵空背景", 100, -512, Middle, "cg/bg/bg204_横旋回背景_01.jpg");
	CreateTextureSP("絵演合体立絵", 17100, -338, -502, "cg/st/3dガッタイダー_騎突_戦闘a.png");
	Request("絵演合体立絵", Smoothing);
	Zoom("絵演合体立絵", 0, 100, 100, null, true);

	Cockpit_AllFade0();
	CP_LockOnDelete();
	Request("@レンズ*", UnLock);
	Delete("@レンズプロセス１");
	Delete("@レンズ*");

	Zoom("絵演合体立絵*", 0, 1000, 1000, null, true);

	CreatePlainEX("絵板写", 18010);
	CreatePlainEX("絵板写二", 18020);
	Fade("絵板写", 0, 400, null, false);
	Fade("絵板写二", 0, 200, null, false);
	Zoom("絵板写", 0, 1100, 1100, Dxl2, false);
	Zoom("絵板写二", 0, 1300, 1300, Dxl2, false);

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice02("接住","回避");
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
//◆受け止める　"mc01_020vsa.nss"
				$GameName = "mc01_020vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//◆回避する　"mc01_020vsb.nss"
				$GameName = "mc01_020vsb.nss";
		}
	}
}


.//プロセス用======================================================

..//毒の効果
function DelusionIn()
{
	$SYSTEM_effect_lens_curvature = 10000;
	$SYSTEM_effect_lens_distance = 15;

	CreateEffect("レンズ１", 19000, -88, -312, 1200, 1200, "Lens");
	SetAlias("レンズ１", "レンズ１");
	CreateProcess("レンズプロセス１", 1000, 0, 0, "LensMove");
	SetAlias("レンズプロセス１","レンズプロセス１");

	Request("レンズ１", Lock);
	Request("レンズプロセス１", Lock);

	Request("レンズプロセス１", Start);
}

..LensMove
function LensMove()
{
	while(1)
	{
		BezierMove("@レンズ１", 3000, (@0,@0){@5,@-30}{@25,@-30}(@30,@0){@25,@30}{@5,@30}(@0,@0), null, true);
		BezierMove("@レンズ１", 3000, (@0,@0){@-5,@-30}{@-25,@-30}(@-30,@0){@-25,@30}{@-5,@30}(@0,@0), null, true);
	}
}
