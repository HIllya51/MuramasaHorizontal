//<continuation number="2570">

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

scene ma04_016vs.nss_MAIN
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

	#bg073_海a_03=true;

//	#ev996_景明カットイン=true;
	#ev914_九〇式竜騎兵魔剣インメルマンターン=true;
	#ev270_インメルマンターン回想_a=true;
	#ev270_インメルマンターン回想_b=true;
	#ev947_村正斬撃汎用=true;

	//▼ルートフラグ、選択肢、次のGameName
	CP_AllDelete();

	$PreGameName = $GameName;

	$GameName = "ma04_017.nss";

}

scene ma04_016vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	if($GameDebugSelect==1){CP_AllSet("村正");}

	PrintBG("上背景", 30000);

	LoadImage("旋回イメージ１", "cg/bg/bg204_横旋回背景_03.jpg");
	SetAlias("旋回イメージ１", "旋回イメージ１");
	LoadImage("旋回イメージ２", "cg/bg/bg201_旋回演出背景市街地_03.jpg");
	SetAlias("旋回イメージ２", "旋回イメージ２");
	LoadImage("旋回イメージ３", "cg/bg/bg203_旋回演出背景海a_03.jpg");
	SetAlias("旋回イメージ３", "旋回イメージ３");

	CreateTextureSP("背景１", 100, 0, -100, "cg/bg/bg001_空a_03.jpg");
	Zoom("背景１", 0, 1500, 1500, Dxl2, true);
	CreateTextureEX("背景２", 10, 0, 0, "旋回イメージ２");

	MoveFFP1("@背景１",5000);//固定値ランダム

//あきゅん「ＣＰ：ちょい前のファイルでも使用してるのでここでは外しておくよ」
	//▼コクピット（定義）
	//CP_AllSet("アベンジ");
	//▼コクピット（瞬間表示）
	Cockpit_AllFade2();
	//▼コクピット（自機情報：振動）
	FrameShake();

	//▼コクピット（自機情報：振動）
	FrameShake();
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(0,0,null,true);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(0,450,null,true);
	//▼コクピット（自機情報：高度）
	CP_HighChange(0,1500,null,true);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(0,0,null,true);
	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(0,432);
		//▼コクピット（自機情報：出力）
		MyTr_Count(0,366);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,500,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,5,null,false);

	//▼雲正面
	CloudZoomSet(1000);
	CloudZoomStart(400,800,800,300,800);

	CreateSE("サウンド１","se戦闘_動作_空走行01_L");
	SoundPlay("サウンド１",500,1000,true);

	FadeDelete("上背景", 500, true);

..//ジャンプ指定
//前ファイル　"ma04_015vs.nss"

//●１５
	SoundPlay("@mbgm08",0,1000,true);

//◆村正ＶＳ雪車町
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0010a01">
《敌骑，<RUBY text="由午至丁下部起">于一九〇度稍下方</RUBY>……
　调转方向！》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0020a00">
「明白。
　村正，不要将翼甲过于展开。
这边已然是强弩之末。
为了稳定性只能作出牺牲了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0030a01">
《——了解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("背景２", 0, 1000, null, false);

	//▼サフ設置
	CreateSurfaceEX("絵Suf",99,2000,"背景２");
	Fade("絵Suf", 0, 1000, null, true);

	//▼コクピット（自機情報：速度）
	CP_SpeedChange(3000,550,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(3000,1300,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(3000,-25,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(3000,-30,AxlDxl,false);

	//▼コクピット（自機情報：出力）
	MyTr_Count(1500,433);

	OnSE("se戦闘_動作_空突進08",1000);
	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("サウンド２",2000,700,true);

	MoveSSP1("@背景２",100000,0,2,0,2,300,"null");//シェイク
	Move("背景２", 3000, @0, @-100, Dxl1, false);
	Fade("背景１", 3000, 0, null, 1500);

	//▼雲消去
	CloudZoomFade(500,false);

//◆下降反転
//◆正面激突。高度優勢は村正。
//◆村正、やや乱れ。負傷の影響
	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0040a00">
「……啧！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		CreateTextureEX("エフェクト１", 20000, 0, -288, "cg/ef/ef008_汎用上下軌道.jpg");
		Zoom("エフェクト１", 0, 5000, 2000, Dxl2, true);
	
		CreateTextureSP("エフェクト２", 20000, 0, 0, "cg/ef/ef014_汎用横軌道.jpg");
		CreateSurfaceEX("絵Suf2",20000,2000,"エフェクト２");
		Zoom("エフェクト２", 0, 10000, 0, Dxl2, true);
		SetVertex("絵Suf2", 512, 188);
	
		CreateColorEX("色１", 20000, "#FFFFFF");
	
		CreateTextureSP("敵機１", 100, -1000, -200, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");//後ほど中段を発注
		SetVertex("敵機１", 800, middle);
		Zoom("敵機１", 0, 50, 50, Dxl2, true);

		CreateSE("ＳＥ１","se戦闘_攻撃_剣戟弾く03");
		CreateSE("ＳＥ２","se戦闘_攻撃_刀衝突01");

	OnSE("se戦闘_動作_空突進06",1000);

	CloudZoomStart(200,400,400,200,400);
	CloudZoomVertex(3000,@0,@200,Dxl1,false);

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	CP_RollBar_ADelete();

	//▼コクピット（自機情報：速度）
	CP_SpeedChange(4000,650,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(4000,1000,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(4000,-55,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(4000,-70,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(4000,-80,null,false);

	//▼コクピット（自機情報：出力）
	//MyTr_Count(3000,433);

	//▼サフ回転
	Rotate("絵Suf", 7000, @0, @0, 180, DxlAuto, false);
	Move("背景２", 3500, @0, @-3000, AxlAuto, false);
	Wait(2500);

	Move("敵機１", 1000, @1000, @0, Dxl3, false);
	Zoom("敵機１", 1000, 1500, 1500, Axl3, false);
	Wait(950);

	Fade("エフェクト１", 50, 1000, null, false);
	Zoom("エフェクト１", 400, 2000, 2000, Dxl3, false);
	Move("エフェクト１", 400, @0, @576, null, false);
	Wait(200);

//	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	SoundPlay("ＳＥ１",0,1000,false);

	Fade("絵Suf2", 100, 1000, null, false);
	Rotate("絵Suf2", 400, @0, @0, 720, DxlAxl, false);
	Zoom("エフェクト２", 400, 10000, 10000, Axl1, false);

	Fade("色１", 0, 200, null, true);
	Fade("色１", 100, 0, null, false);
	Wait(80);
	Fade("色１", 0, 400, null, true);
	Fade("色１", 100, 0, null, false);
	Wait(80);

//	OnSE("se戦闘_攻撃_刀衝突01",1000);
	SoundPlay("ＳＥ２",0,1000,false);
	Fade("色１", 100, 1000, null, true);

	MoveFFPstop();
	Delete("敵機*");
	Delete("絵Suf2");
	Delete("エフェクト*");

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	//CP_RollBar_ADelete();
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,420,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1300,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,15,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,-70,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,0,null,false);

	SetVolume("サウンド２", 2000, 0, NULL);

	CloudZoomVertex(2000,@0,@-400,Dxl1,false);
	Move("背景２", 2000, @0, @-2000, Dxl2, false);
	Fade("色１", 300, 0, null, true);

	//▼雲移動
	CloudZoomVertex(1000,@0,@-200,Dxl1,false);
	Fade("背景１", 1000, 1000, null, false);

//◆村正上段
//◆雪車町中段
//◆太刀打。がきがきーっと。
//◆行き違う。双方被弾せず。
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0050a01">
《——躲开了?!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0060a00">
「竟然<RUBY text="·········">卷住刀锋以抑制攻势</RUBY>！
　此招甚为巧妙啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	MoveSSP1stop();

		CreateTextureEX("背景３", 100, 0, -288, "cg/bg/bg001_空c_03.jpg");
		Zoom("背景３", 0, 2000, 2000, Dxl1, true);
		CreateColorEX("色１", 18000, "#000000");

		CreateSE("ＳＥ３","se戦闘_動作_空突進08");

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	//CP_RollBar_ADelete();
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,520,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1500,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,45,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,0,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,50,null,false);

//	OnSE("se戦闘_動作_空突進08",1000);
	SoundPlay("ＳＥ３",0,1000,false);

	Move("背景３", 2000, @-512, @576, Axl1, false);
	Fade("背景３", 1000, 1000, null, true);
	Fade("色１", 700, 1000, null, true);

	SoundPlay("サウンド１",1000,1,true);

	MoveFFP1stop();
	Delete("絵Suf");
	Fade("背景１", 0, 0, null, true);
	Fade("背景２", 0, 0, null, true);
	Fade("背景３", 0, 0, null, true);
	//▼雲消去
	CloudZoomFade(0,true);

	CreateColorSP("色２", 19999, "#000000");

	CreateTextureEX("背景３", 19100, -5000, 3200, "旋回イメージ１");
	CreateTextureEX("背景４", 19100, -5000, 3200, "旋回イメージ１");
	Zoom("背景３", 0, 2000, 2000, null, true);
	Rotate("背景３", 0, @0, @0, @-45, null, true);
	Zoom("背景４", 0, 2000, 2000, null, true);
	Rotate("背景４", 0, @0, @0, @-45, null, true);

	//▼雲正面
	CloudZoomSet2("マド",19900,0,0,1024,600);

	CreateTextureSP("自機１", 19500, -329, -332, "cg/st/3d村正標準_騎航_戦闘b.png");
	Zoom("自機１", 0, 700, 700, Dxl2, true);

	CreateWindow("ウィンドウ１", 19500, 512, 0, 512, 600, false);
	SetAlias("ウィンドウ１", "ウィンドウ１");
	CreateColorSP("ウィンドウ１/色１", 19500, "#000000");
	CreateTextureSP("ウィンドウ１/敵機１", 19500, 62, -355, "cg/st/3d九〇式竜騎兵_騎航_戦闘c.png");
	Zoom("ウィンドウ１/敵機１", 0, 700, 700, Dxl2, true);

	Fade("色２", 500, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　武者与武者之间的较量——双轮悬，通常主要由以
下四要素所决定。
　上升性能、最大速率、加速性能、回转性能这四点。

　上升性能的重要性自是不言而喻。
　在战斗开始时，高度优势的确保便取决于这项能力。


　最初的猛烈交锋后，靠的便是回转性能了。
　越是能快速回转的骑体就越是容易取得高度的优势。

　最大速率，可以说是在较量时最重要的初次交锋中，
攻击力的决定性因素。
　在速率上取胜，意味着能够比敌方更快地拔刀挥斩，
并使出比敌方更强力的一击。

　而加速性能，则左右着第二回合之后的速率。
　恢复因剧烈交锋而减弱的速率，靠的便是此项性能。

　完全具备以上四种能力的完美骑体，是不存在的。

　因为想要追求一种能力，往往离不开对其他能力的削
减。

　若扩大翼甲，则会增加回转性而丧失加速性。
　若坚固翼甲使其加厚，则会提高最大速率而牺牲上升
性能。

　一般而言，任何骑体都无法逃脱这个关联性。
　无论哪个锻造师，都在相较理想而言，无疑更为狭窄
的框架中，艰难摸索，追求最高境界。

　在真打剑胄与真打剑胄的对决中，虽能藉此看出锻造
师水准的高低，但这多半并非绝对。综合评价较差的剑
胄，也会在四要素中的某一项胜过对方，利用这一点，
必然有可能开辟出反败为胜的道路。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	//CP_RollBar_ADelete();
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,650,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1000,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,-45,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,180,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,0,null,false);

	SoundPlay("サウンド１",2000,1000,true);

		CreateTextureSP("敵機１", 19500, -1400, 900, "cg/st/3d九〇式竜騎兵_騎航_戦闘c.png");
		Rotate("敵機１", 0, @0, @0, -40, null, true);
		SetBlur("敵機１", true, 1, 500, 30, true);

		CreateSE("サウンド２","se戦闘_動作_空突進05");

	SoundPlay("サウンド２",2000,700,true);

	Move("ウィンドウ１", 500, @512, @0, null, false);
	Fade("自機１", 500, 1000, null, false);

	CloudZoomStart2(700,1000,1000,500,1000);
	CloudZoomVertex2(0,@-500,@0,Dxl1,true);

	CreateSCR1("@背景３","@背景４",2000,1200,-3100);

	//Ｘ軸ランダムＹ軸均等
	MoveFTP1("@自機１",20000,3,5);

	SetBlur("自機１", true, 2, 500, 200, false);
	Fade("自機１", 500, 1000, null, false);
	Fade("色２", 500, 0, null, true);

	Delete("ウィンドウ１/*");
	Delete("ウィンドウ１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0041]
　若差距到了无法反败为胜的地步，那便是真打与数打
较量之时了。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEX("色１", 20000, "#FFFFFF");
	CreateColorEX("色２", 19900, "#000000");
	CreateSurfaceEX("絵Suf",99,2000,"背景２");

	CreateTextureEX("エフェクト１", 19900, 300, 1200, "cg/ef/ef011_汎用斜め軌道.jpg");
	SetVertex("エフェクト１", 300, 288);
	Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);

	CreateTextureEX("エフェクト２", 19900, -5224, 1500, "cg/ef/ef014_汎用横軌道.jpg");
	SetVertex("エフェクト２", 512, 300);
	Zoom("エフェクト２", 0, 10000, 10000, Dxl2, true);
	Rotate("エフェクト２", 0, @0, @0, @-20, Axl2, true);
	Request("エフェクト２", AddRender);

//◆下降反転
//◆正面会撃
//◆村正下段ＶＳ雪車町中段
//◆きんきーん。互角。

		CreateSE("ＳＥ４","se戦闘_動作_空突進01");
		CreateSE("ＳＥ５","se戦闘_衝撃_攻撃交錯01");

	MoveFTP1stop();
	SetBlur("自機１", true, 1, 500, 30, true);

	SetVolume("サウンド２", 1000, 1000, NULL);
	OnSE("se戦闘_動作_空上昇01",1000);

	Zoom("自機１", 1200, 1000, 1000, Dxl1, false);
	Move("自機１", 700, @50, @150, DxlAuto, true);
	Move("自機１", 500, @1000, @-700, Axl2, false);
	Wait(200);

	//OnSE("se戦闘_動作_空突進01",1000);
	SoundPlay("ＳＥ４",0,1000,false);

	Fade("敵機１", 0, 1000, null, false);
	Move("敵機１", 400, 750, -1100, null, true);

	Fade("色２", 0, 1000, null, true);
	Fade("エフェクト１", 0, 1000, null, true);
	Fade("エフェクト２", 0, 1000, null, true);

//	OnSE("se戦闘_衝撃_攻撃交錯01",1000);
	SoundPlay("ＳＥ５",0,1000,false);

	Rotate("エフェクト１", 600, @0, @0, 55, null, false);
	Zoom("エフェクト１", 600, 5000, 5000, Dxl1, false);
	Move("エフェクト１", 600, -400, -2000, null, 200);

	Move("エフェクト２", 400, 1500, -100, Dxl1, false);
	Rotate("エフェクト２", 400, @0, @0, 2, null, false);
	Zoom("エフェクト２", 400, 5000, 5000, Dxl1, false);
	Fade("色１", 400, 1000, Axl2, true);

	OnSE("se戦闘_攻撃_剣戟弾く03",1000);
	OnSE("se戦闘_攻撃_鎧_剣戟03",1000);

		//▼雲消去
		CloudZoomDelete2(0,true);
		//▼ロール停止
		SCR1stop();
		//▼雲開始
		CloudZoomStart(400,800,800,300,800);
	
		MoveFFP1("@背景１",5000);//固定値ランダム

		Move("背景２", 0, 0, -2500, Axl1, false);
		Fade("色２", 0, 0, Axl2, false);
		Rotate("絵Suf", 0, @0, @0, @240, Dxl1, false);
		Fade("絵Suf", 0, 1000, null, true);
		Delete("自機１");
		Delete("敵機１");
		Delete("背景３");
		Delete("背景４");
		Delete("エフェクト*");

		SetVolume("サウンド２", 4000, 0, NULL);

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();
	//▼コクピット（自機情報：回転軸停止）
	//CP_RollBar_ADelete();
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,450,AxlDxl,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1300,AxlDxl,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,25,AxlDxl,false);
	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,50,AxlDxl,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,0,null,false);

	Fade("色１", 500, 0, null, false);
	Fade("背景２", 500, 1000, null, false);
	Move("背景２", 2000, @0, @-3000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, @-60, null, false);
	Wait(700);

	CloudZoomVertex(1500,@0,@200,Dxl1,false);

	Move("背景１", 1000, 0, -100, Dxl1, false);
	Fade("背景１", 1000, 1000, Axl1, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0070a01">
《……啊啊，够了！
　真屈辱！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0080a01">
《若是在完美状态，这种山寨货算什么！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0090a00">
「别激动。
　你勿需焦躁。即便是现在，
你的性能也比敌骑优越。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0100a00">
「是我，不如雪车町一藏。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　我品味着右前臂那几不可察的残渣。
　理应必定击坠的一击，不痛不痒地<RUBY text="···">被化解</RUBY>的感触。

　雪车町一藏十分勇猛。
　居然用自己的剑术来填补骑体性能的弱点。


　他所骑乘的九〇式龙骑兵甲是载入军史的名骑，但
无奈它不仅是数打剑胄，还是十年前的旧式骑体。
　无论从哪个方面来说，它与村正的差距都不知几许
——把这个差距，缩短到零的才能。

　客观来看，与无法突破庸才限制的我相比，根本上
的<RUBY text="··">东西</RUBY>是不同的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0110a01">
《若是没受伤，便能扭转这种
局面了吧！》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0120a00">
「到底怎样呢。
　值得怀疑啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0130a00">
「无论如何，在现今的状况下，他只不过是
在远方吠叫的丧家之犬罢了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0140a01">
《嗯，你说的是。
　那么，一起去出家吧？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0150a00">
「那也不错啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　转身。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
		CreateTextureSP("背景３", 100, -512, -780, "旋回イメージ２");
		CreateSurfaceEX("絵Suf2",200,2000,"背景３");
		Rotate("絵Suf2", 0, @0, @0, 90, null, true);
		CreateTextureSP("背景２", 100, -4000, 0, "旋回イメージ１");
		CreateSurfaceEX("絵Suf",200,2000,"背景２");

		CreateSE("ＳＥ１","se戦闘_動作_空突進04");

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		SoundPlay("@サウンド２",2000,600,true);

	OnSE("se戦闘_動作_空突進08",1000);


	//▼コクピット（自機情報：方位）
	CP_AziChange(5000,180,AxlDxl,false);

	//▼コクピット（自機情報：速度）
	CP_SpeedChange(4000,640,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(4000,1400,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(4000,0,Dxl1,false);

	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(2000,-40,Dxl1,false);

	Move("背景２", 4000, 0, 0, AxlDxl, false);
	Rotate("絵Suf", 4000, @0, @0, -90, AxlDxl, false);
	Fade("絵Suf", 1000, 1000, null, false);

	//▼固定値ランダム：停止
	MoveFFP1stop();
	//▼固定値ランダム
	MoveFFP2("@絵Suf2",10000);

	Wait(2000);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	Fade("絵Suf2", 0, 1000, null, false);

	SetVolume("サウンド２", 2000, 200, NULL);
	//se戦闘_動作_空突進04.ogg
	SoundPlay("ＳＥ１",0,1000,false);

	Rotate("絵Suf2", 2000, @0, @0, 30, Dxl1, false);
	Move("背景３", 2000, -100, -780, Dxl2, false);
	Fade("絵Suf", 1000, 0, null, false);

	//Wait(2000);
	//Move("背景３", 20000, -50, -780, null, false);

	SetFwC("cg/fw/fw景明_戦闘.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0160a00">
「至少报个一箭之仇吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0170a01">
《一箭就足够了吗！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　为了使自己焦躁的情绪趋于平静，应答毫无营养的玩
笑是必要的。
　意识在每一瞬间，都像是要飘到不同的地方一样。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("色０", 17000, "#000000");
	CreateTextureEX("イベント１", 17000, 0, 0, "cg/ev/ev909_荒覇吐.jpg");
	SetTone("イベント１", Monochrome);

	SetVolume("サウンド１", 1000, 1, NULL);
	SetVolume("サウンド２", 1000, 1, NULL);

	Fade("色０", 500, 1000, null, true);
	Fade("イベント１", 1000, 500, null, true);

		CreateTextureEX("背景１", 18000, 0, -1000, "旋回イメージ２");
		CreateTextureEXover("エフェクト１", 19000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
		CreateColorEXadd("色２", 18000, "#FFFFFF");
		CreateColorEXadd("色１", 19999, "#FFFFFF");

		CreateTextureEX("敵機１", 19000, -272, -373, "cg/st/3d九〇式竜騎兵_騎航_戦闘b.png");
		Rotate("敵機１", 0, @0, @0, -40, null, true);
		CreateTextureSP("敵機３", 1000, -1000, -600, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機３", 0, 100, 100, Dxl2, true);

		CreateTextureEX("背景２", 18000, -256, -200, "cg/bg/resize/bg002_空a_03l.jpg");

		CreateTextureSP("自機１", 19000, 0, -1100, "cg/st/3d村正標準_騎突_戦闘.png");
		Zoom("自機１", 0, 100, 100, Dxl2, true);
		CreateTextureSP("敵機２", 19000, 0, 1000, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機２", 2000, 1500, 1500, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
　——那架巨大骑体。
　明明一定要由我来解决才行。

　就这么不断地浪费时间……
　在那里面的人们会……

　代替被困住的我，被迫首当其冲面对怪物
的人们会……！

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0180a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("背景３", 0, -200, -880, Dxl2, true);

//◆雪車町、機銃掃射。少し被弾
		CreateSE("ＳＥ１","se戦闘_銃器_機関銃乱射02");
		CreateSE("ＳＥ２","se戦闘_動作_空突進01");
		CreateSE("ＳＥ３","se戦闘_動作_空突進07");
		CreateSE("ＳＥ０","se戦闘_銃器_跳弾04");

		CreateSE("ＳＥ４","se戦闘_動作_空突進03");

	SoundPlay("ＳＥ１",0,1000,false);
	Wait(300);
	SetVolume("サウンド２", 0, 600, NULL);
	SoundPlay("サウンド１",0,1000,true);

	Fade("色０", 0, 0, null, false);
	Fade("イベント１", 0, 0, null, false);

	Fade("エフェクト１", 0, 1000, null, false);
	Fade("色２", 0, 500, null, false);
	Fade("背景１", 0, 1000, null, true);
	Fade("敵機１", 0, 1000, null, true);


	Fade("エフェクト１", 2000, 0, null, false);
	Fade("色２", 2000, 0, null, false);
	Move("背景１", 2000, @-100, @200, null, false);
	Move("敵機１", 2000, @100, @-100, null, false);
	Shake("敵機１", 2000, 0, 10, 0, 0, 700, Dxl1, false);
	Shake("エフェクト１", 2000, 10, 10, 0, 0, 700, Dxl1, 1500);

	SoundPlay("ＳＥ２",0,1000,false);
	Move("敵機１", 300, @1000, @-1000, Axl1, 200);

	SoundPlay("ＳＥ０",0,1000,false);

	Fade("色１", 100, 1000, null, true);
		Rotate("エフェクト１", 0, @180, @180, @0, null, false);
		Fade("エフェクト１", 0, 1000, null, false);
		Fade("色２", 0, 500, null, false);
		Fade("背景１", 0, 0, null, true);
		Move("背景３", 0, -250, -1380, Dxl2, true);

	SetVolume("ＳＥ１", 2000, 0, NULL);
	SoundPlay("ＳＥ３",0,1000,false);
	SoundPlay("ＳＥ４",0,1000,false);

	Zoom("敵機３", 1000, 1000, 1000, Axl3, false);
	BezierMove("敵機３", 1000, (@0,@0){@600,@0}{@800,@0}(@800,@600), Dxl1, false);

	Fade("色１", 300, 0, null, false);
	Fade("色２", 600, 0, null, false);
	Fade("エフェクト１", 600, 0, null, false);
	Shake("エフェクト１", 600, 10, 10, 0, 0, 700, Dxl1, false);
	Shake("背景３", 600, 0, 10, 0, 0, 700, Dxl1, false);
	Move("背景３", 1000, -300, -1180, Dxl1, false);
	Wait(1000);

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 1, NULL);

	Fade("背景２", 0, 1000, null, false);
	Move("背景２", 1000, @0, @200, Dxl1, false);
	Zoom("自機１", 1000, 300, 300, Dxl2, false);
	Move("自機１", 1000, @0, @700, Dxl1, false);
	Zoom("敵機２", 1000, 1000, 1000, Dxl2, false);
	Move("敵機２", 1000, @0, @-1000, Dxl1, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……情况不妙！
　躲到下方去了！

　我方的姿势是常规的举刀过顶。
　这种位置关系会使斩击失败。

　相对的，敌方也仍举刀过顶。
　条件逆转，形式绝妙！

　若要调整姿势就会晚一步了——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0190a00">
「……唔！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("敵機１", 18500, 0, 0, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
	Zoom("敵機１", 600, 800, 800, Axl2, false);
	CreateTextureEXadd("エフェクト１", 19998, 0, 0, "cg/ef/ef040_汎用衝突.jpg");
	SetBlur("エフェクト１", true, 2, 500, 500, false);
	Rotate("エフェクト１", 0, @0, @180, @0, null, true);

	CreateSE("ＳＥ４","se戦闘_動作_空突進02");
	CreateSE("ＳＥ５","se戦闘_動作_空突進04");

	CreateSE("ＳＥ６","se戦闘_動作_空突進03");

//◆１８０度ロール。上下反転
//◆村正反転上段
	SetVertex("敵機３", 700, 300);

	OnSE("se戦闘_動作_空突進06",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Zoom("背景２", 300, 1200, 1200, Axl2, false);
	Rotate("自機１", 400, @0, @0, -180, null, false);
	Zoom("自機１", 300, 700, 700, Axl2, false);
	Zoom("敵機２", 300, 800, 800, Axl2, false);
	Fade("自機１", 300, 0, null, false);
	Fade("敵機２", 300, 0, null, false);
	Fade("背景２", 300, 0, null, false);

	Rotate("敵機３", 600, @0, @0, 180, null, false);
	Rotate("絵Suf2", 600, @0, @0, 180, null, 550);
	Fade("色１", 50, 1000, null, true);

		OnSE("se戦闘_攻撃_剣戟弾く03",1000);
		OnSE("se戦闘_攻撃_刀衝突01",1000);

//◆太刀打。ガキーン。
	Fade("エフェクト１", 0, 1000, null, true);
	Zoom("エフェクト１", 800, 1500, 1500, Dxl1, false);
//	Fade("色１", 100, 0, null, true);
//	Fade("色１", 100, 1000, null, true);

	Fade("エフェクト１", 700, 0, null, false);
	Fade("自機１", 0, 1000, null, false);
	Fade("敵機１", 0, 1000, null, false);
	Fade("背景２", 0, 1000, null, true);
	Fade("色１", 300, 0, null, false);

//◆交差
	SoundPlay("ＳＥ４",0,1000,false);
	SetVolume("サウンド１", 1000, 1000, NULL);
	SetVolume("サウンド２", 2000, 500, NULL);

	Shake("敵機１", 500, 0, 5, 0, 0, 700, Dxl1, false);
	Shake("自機１", 500, 0, 10, 0, 0, 700, Dxl1, false);

	Zoom("背景２", 1000, 1400, 1400, Dxl2, false);
	Zoom("自機１", 1000, 1000, 1000, Dxl1, false);
	Zoom("敵機１", 1000, 300, 300, Dxl1, 500);

	SoundPlay("ＳＥ６",0,1000,false);

	Move("敵機１", 500, @100, @500, Axl1, false);
	Move("自機１", 500, @-100, @-1000, Axl1, true);


//斜め演出
	CreateTextureSP("背景０", 20000, 0, 0, SCREEN);
		Delete("自機*");
		Delete("敵機*");
		Fade("絵Suf2", 0, 0, null, true);
		Fade("背景２", 0, 0, null, true);
	
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼固定値ランダム：停止
		MoveFFP2stop();

		CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		Zoom("背景１", 0, 1100, 1100, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@背景１",10000);

		SetVolume("サウンド２", 2000, 0, NULL);
		SoundPlay("ＳＥ５",0,1000,false);

		//▼コクピット（自機情報：方位）
		CP_AziChange(500,120,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(500,450,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(500,1400,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(500,10,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(500,0,Dxl1,false);

	FadeDelete("背景０", 500, true);

	SetFwC("cg/fw/fw雪車町_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0200a12">
《……诶嘿！
　没想到，你出乎意料地高明啊……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　含笑的剑胄传音传到耳边。
　他的声音让人觉得，无论是冷嘲热讽还是认真钦佩，
都说得通。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		CreateWindow("ウィンドウ２", 150, -300, -432, 2000, 576, false);
		SetAlias("ウィンドウ２", "ウィンドウ２");
		Rotate("ウィンドウ２", 0, @0, @0, -29, null, true);
		CreateTextureEX("ウィンドウ２/背景１", 17000, 0, 0, "cg/bg/bg002_空a_03.jpg");
		CreateTextureEX("ウィンドウ２/自機１", 17000, -160, -304, "cg/st/3d村正標準_騎航_戦闘e.png");

		CreateWindow("ウィンドウ１", 150, -100, 110, 2000, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		Rotate("ウィンドウ１", 1000, @0, @0, -29, null, true);
		CreateTextureEX("ウィンドウ１/背景１", 17000, 0, -2000, "旋回イメージ２");
		CreateTextureEX("ウィンドウ１/敵機１", 17000, -14, -392, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");


		Fade("ウィンドウ２/*", 0, 1000, null, false);
		Move("ウィンドウ２/自機１", 0, @-100, @-100, Dxl1, true);

	Wait(400);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0210a00">
《吉野御流的一招，霞返。……并不是什么
值得夸赞的招数。
　类似的技巧你也会吧……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0220a00">
《一刀流的雪车町一藏。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


		Fade("ウィンドウ１/*", 0, 1000, null, false);
		Move("ウィンドウ１/敵機１", 0, @100, @100, Dxl1, true);

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);
		//▼雲消去
		CloudZoomFade(0,true);

		//▼固定値ランダム：停止
		MoveFFP1stop();

	Wait(400);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0161]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0230a12">
《嘿嘿……
　眼光也十分毒辣啊。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0240a00">
《之前的过招中，多少能看出一两招刀法。
  再加上，那可是享誉大和的名流。》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0250a12">
《不胜惶恐……
　不过……还真是奇怪啊。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0260a00">
《什么？》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0270a12">
《刚才那刀，如果<RUBY text="····">一斩到底</RUBY>不就是
你胜了吗？
　那样我现在就一头坠入海中了……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0280a00">
《……》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0290a12">
《为什么，你没有这么做？
　警察小哥……》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


.//◆小分岐
..//◆一条のみ生存ルートの場合

if($Kanae_Dead == true){

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0300a00">
《……你才是。
　刚才的动作是发疯了吗？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0310a12">
《嗯？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0320a00">
《…………
　那一瞬间，遏止怪物獠牙的……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0330a00">
《雪车町一藏。不正是你吗？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0340a12">
《啊……
　你在说什么呢……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0350a00">
《……》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　果然是误解吗……？
　但我无论如何都无法接受……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0360a00">
《那先将这件事放在一边，告诉我刚才的事吧。
　为什么，要故意拖延交手的时间？》

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


}else{

..//◆両者生存or香奈枝のみ生存ルートの場合

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0370a00">
《你才是。
　为什么要恶意拖延交手的时间？》

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

}

.//◆合流

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0380a00">
《这数次的交锋。
　将我斩落的机会难道一次都
没有吗？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0390a12">
《嘿、嘿、嘿……
　真是的，什么呀。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪车町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0400a12">
《<RUBY text="···">想确认</RUBY>一下……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0410a00">
《确认什么？》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0420a12">
《咯～咯咯咯咯咯咯咯咯咯！
　嘿～嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿嘿!!》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0430a00">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0440a00">
《说到底，你为何在这里。
　为何要袭击我。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0450a00">
《你应该并未从六波罗的御用雇员，转调为
研究所的警备部队吧……
　前几天的报复吗？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0460a12">
《<RUBY text="··">就算</RUBY>真是这样我也无所谓……
　嘿嘿，小哥觉得我是那种会来向你讨回人情
的刻板的人吗？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0470a00">
《……那么。
　是因为你替ＧＨＱ工作吗？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0480a12">
《…………》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0490a00">
《因为我妨碍到ＧＨＱ的<RUBY text="····">统治政策</RUBY>了——
　所以来解决我的吗？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0500a12">
《是吗。
　你在说什么呢……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0510a00">
《铃川令法。》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0520a12">
《……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0530a00">
《风魔小太郎。
　……让并非幕府高官的他们携带真打剑胄，
这是为何？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0540a00">
《难道不是你用自己的双手，从进驻军的仓库
里拿出剑胄交给他们的吗。
　雪车町一藏。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0550a12">
《……嘿嘿。
　败给你了啊。小太郎爷爷，似乎在临终前
说了很多多余的话呢……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0560a00">
《……为何ＧＨＱ容许了这种行为？
　只有一种可能，那就是你的行动，是遵照
ＧＨＱ的目的来的。》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　ＧＨＱ的目的——
　完全占领大和。

　那个叫做雪车町的男人，以他那乍一看无法理解的各
种行迹为参考。
　就这样，署长得出了一个结论。

　如同记住苦味一般容易理解，兼具说服力的推测。
　就这样，我抛出了这个推测。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0570a00">
《<RUBY text="···········">让大和武者加害大和民众</RUBY>。
　让大和接受ＧＨＱ这个支配者，
为此而打下根基。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0580a00">
《不是吗……
　卖国贼。》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0590a12">
《咦嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻嘻!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　这几声怪笑——
　是在肯定我方才所说的话。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想

	CreateColorEX("色０", 19999, "#000000");

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("@mbgm*", 2000, 500, NULL);
//	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色０", 500, 1000, null, true);
		CreateTextureSP("背景２", 18000, 0, 0, "cg/bg/bg018_署長執務室_01.jpg");
		SetTone("背景２", Sepia);
		StL(18000, @0, @0,"cg/st/st署長_通常_制服.png");
		SetTone("@StL*", Sepia);
		FadeStL(0,true);
	Fade("色０", 500, 0, null, true);

	SetFwC("cg/fw/fw署長_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0600a11">
「进驻军的任务，一言以敝之就是
将我国军事基地化。
　作为对俄罗斯帝国战略的一环。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0610a11">
「为此，便需要笼络大和民众。
仅靠武力进行铁血统治，最终致使民怨
爆发掀起抵抗运动就会更为棘手，对俄
的牵制更是无从谈起。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0620a11">
「正因如此，他们才默认六波罗的专制统治。
　对暴虐的支配者，从大和的国民中响起谋求
拯救的呼声……进驻军因响应呼声而站出来。
真是理想的剧本啊。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0630a11">
「不过，仅是如此还不够。
　就算煽动对六波罗的憎恶，大和民众首先依
赖的大概是六波罗以外的大和武者，而不是占
领军。」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0640a11">
「为了把这个可能扼杀在摇篮里，就要进行剑
胄狩猎，根除幕府军以外的武者——
　所以特意将这些剑胄提供给危险人物，让他
们犯下凶行吧？」

{	FwC("cg/fw/fw署長_通常.png");}
//【署長】
<voice name="署長" class="署長" src="voice/ma04/016vs0650a11">
「为了将大和国民对大和武者的信赖……
　完全地，抹杀。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色０", 500, 1000, null, true);
		Delete("背景２");
		DeleteStL(0,true);

	SetVolume("サウンド１", 1000, 1000, NULL);
	SetVolume("@mbgm08", 1000, 1000, NULL);
	Fade("色０", 500, 0, null, true);
	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0660a00">
《如此一来，袭击我的理由也完全明了。
　并非在图谋着什么，从结果上来看，
将破坏ＧＨＱ阴谋的我视为妨碍者也是
理所当然的……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0670a12">
《如果只是斩杀那些人的话也就算了。
　你的行动成为传闻而散布于世间，
这可不太妙……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0680a12">
《你若成为英雄的话就困扰了。
　英雄只要有进驻军就够了……就是这样。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
//◆再び正面からー。
		CreateTextureSP("背景３", 100, 0, 0, "旋回イメージ１");
		SetSurface("背景３","絵Suf2");
		Rotate("絵Suf2", 0, @0, @0, 0, null, false);
		Fade("絵Suf2", 0, 0, null, true);

		CreateWindow("ウィンドウ３", 150, 0, 0, 513, 576, false);
		SetAlias("ウィンドウ３", "ウィンドウ３");
		CreateTextureEX("ウィンドウ３/背景１", 16100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureEX("ウィンドウ３/自機１", 16100, -457, -273, "cg/st/3d村正標準_騎突_戦闘.png");

		CreateWindow("ウィンドウ４", 150, 512, 0, 1024, 576, false);
		SetAlias("ウィンドウ４", "ウィンドウ４");
		CreateTextureEX("ウィンドウ４/背景１", 16100, 0, -1252, "旋回イメージ２");
		CreateTextureEX("ウィンドウ４/敵機１", 16100, 28, -221, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");

	//▼雲正面
	CloudZoomStart(700,1000,1000,500,1000);

	//▼コクピット（瞬間表示）
	Cockpit_AllFade2();
	//▼コクピット（自機情報：振動）
	FrameShake();

	Move("ウィンドウ１", 1000, @0, @1000, Axl1, false);
	Move("ウィンドウ１/*", 1000, @0, @1000, Axl1, 500);
	Move("ウィンドウ２", 1000, @0, @-1000, Axl1, false);
	Move("ウィンドウ２/*", 1000, @0, @-1000, Axl1, true);

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);
	OnSE("se戦闘_動作_空突進08",1000);

	//▼コクピット（自機情報：方位）
	CP_AziChange(4000,0,AxlDxl,false);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(4000,650,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(4000,1200,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(4000,-30,Dxl1,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(4000,70,null,false);

	//▼雲移動
	CloudZoomVertex(4000,@500,@200,null,false);
	Fade("絵Suf2", 1000, 1000, null, false);
	Move("背景３", 4000, @-4000, @0, null, false);
	Rotate("絵Suf2", 4000, @0, @0, 90, null, 3500);

	SetVolume("サウンド２", 2000, 0, NULL);

	Move("ウィンドウ３/自機１", 500, @0, @50, Dxl1, false);
	Move("ウィンドウ４/敵機１", 500, @0, @-50, Dxl1, false);
	Move("ウィンドウ４/背景１", 500, @0, @30, Dxl1, false);
	Fade("ウィンドウ３/*", 500, 1000, null, false);
	Fade("ウィンドウ４/*", 500, 1000, null, true);

	Delete("ウィンドウ１");
	Delete("ウィンドウ２");

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);
		//▼雲消去
		CloudZoomFade(0,true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0690a12">
《所以<RUBY text="··">这次</RUBY>才过来……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0700a00">
《什么……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　他的言外之意让我听了十分在意。
　听上去，他似乎不仅仅是为了像这样袭击我。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0710a12">
《真是的……
　我可没有做什么了不起的工作哦。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0720a12">
《只是将幕府在此处研究兵器的情报
稍加修饰泄露到<RUBY text="··">那边</RUBY>而已。
　强调银色之类的话，他们应该会
上钩吧……结果嘛，果然不出所料。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0730a00">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　如果是这个与风魔小太郎有关联的男人，
知道我追逐银星号也并非什么不可思议之事。

　在那里埋下陷阱了吗……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0740a00">
《用岛上的警备力量将我杀掉就好了。
　即便我破坏了六波罗的兵器研究，
也是件可喜可贺之事。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0750a00">
《无论结果如何，冷眼旁观的ＧＨＱ
都会不劳而获赚得盆满钵满……
　是这种打算吗？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0760a12">
《嘿、嘿……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0770a00">
《……那么，你为何要出场？
　雪车町一藏。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0780a00">
《直到我与那只怪物分出胜负之前，
为何不一直袖手旁观？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0790a12">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　说着这些，我发觉了。
　……也就是说，目前尚存交涉的余地？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0800a00">
《这么做对你们那边才更为有利吧。
　从这里让开，雪车町一藏！》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0810a12">
《什么？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0820a00">
《并非逃避。
　我与你约定，解决那只怪物之后，
再来当你的对手。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0830a00">
《虽然也许是我被那只怪物
所击败……
　但即便如此，你也并无困扰。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　现在，一定要火速解决那只巨大兵器。
　虽然无法避免地要与这个身为ＧＨＱ走狗的男人做个
了结，但这件事延后亦可。

　我与他利害一致。
　将我与怪物的战斗优先，无论对我还是雪车町，都应
是有利的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0840a12">
《嘿。虽然，或许是这样……
　但对你来说，就算先同我较量
也是没有关系的吧？》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0850a00">
《不。
　那只怪物，是以监禁在胎内的人们
作为燃料而运行的。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0860a00">
《必须要尽快将他们救出。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0870a12">
《嘿、嘿、嘿……
　真是一副了不起的正义之士的模样呢。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0880a00">
《……随你怎么理解。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0890a12">
《真是真是……
　我只能理解成这样呢……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町中段

	CreateTextureEX("敵機１", 18000, -222, -350, "cg/st/3d九〇式竜騎兵_騎突_戦闘b.png");
	SetBlur("敵機１", true, 1, 500, 50, false);

	CreateColorEX("色３", 19000, "#000000");
	CreateTextureEX("エフェクト１", 19000, 0, 0, "cg/ef/ef013_汎用斜め軌道.jpg");
	Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);
	SetVertex("エフェクト１", 650, 288);

		CreateSE("ＳＥ１","se戦闘_動作_刀構え01");

		CreateSE("サウンド２","se戦闘_動作_空突進07");
		SoundPlay("サウンド２",2000,500,true);

		OnSE("se戦闘_動作_空突進03",1000);
		SoundPlay("ＳＥ１",0,1000,false);

	Move("ウィンドウ４/背景１", 500, -50, @0, Dxl1, false);
	Move("ウィンドウ４/敵機１", 500, -222, -350, Dxl1, false);
	Move("ウィンドウ４", 500, @-512, @0, Dxl1, false);

	Fade("ウィンドウ４/敵機１", 500, 0, null, false);
	Fade("敵機１", 500, 1000, null, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,3,10);
	//▼完全ランダム
	MoveFRP1("@ウィンドウ４/背景１",20000,5,5);

	//▼雲正面
	CloudZoomSet2("マド",18000,0,0,1024,576);
	//▼雲開始
	CloudZoomStart2B(700,1000,1000);

	SetFwR("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0900a12">
《这样的话……
　我就是坏人的保镖了！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆斬撃
//◆弾く
//◆交差
		CreateSE("ＳＥ１","se戦闘_動作_空突進06");

		CreateSE("ＳＥ２","se戦闘_攻撃_剣戟弾く03");
		CreateSE("ＳＥ３","se戦闘_攻撃_鎧_剣戟03");
		CreateSE("ＳＥ４","se戦闘_攻撃_刀衝突02");

		CreateSE("ＳＥ５","se戦闘_攻撃_剣戟弾く01");

		CreateSE("ＳＥ６","se戦闘_動作_空上昇01");


	OnSE("se戦闘_動作_空突進02",1000);

	Zoom("敵機１", 500, 2000, 2000, Dxl1, 450);
	Fade("色１", 50, 1000, null, true);

		//OnSE("se戦闘_攻撃_剣戟弾く03",1000);
		//OnSE("se戦闘_攻撃_鎧_剣戟03",1000);
		//OnSE("se戦闘_攻撃_刀衝突02",1000);
		SoundPlay("ＳＥ２",0,1000,false);
		SoundPlay("ＳＥ３",0,1000,false);
		SoundPlay("ＳＥ４",0,1000,false);

		Fade("色３", 0, 1000, null, true);
		Fade("エフェクト１", 0, 1000, null, true);
	Fade("色１", 200, 0, null, false);
	Move("エフェクト１", 500, @0, @200, Dxl1, false);
	Rotate("エフェクト１", 500, @0, @0, 400, Dxl1, false);
	Zoom("エフェクト１", 500, 10000, 10000, Axl2, 300);
	Fade("色１", 200, 1000, null, true);

		//OnSE("se戦闘_攻撃_剣戟弾く01",1000);
		SoundPlay("ＳＥ５",0,1000,false);

		//▼雲消去
		CloudZoomFade2(0,false);

		//▼完全ランダム：停止
		MoveFRP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		Delete("ウィンドウ３");
		Delete("ウィンドウ４");
		Delete("敵機*");
		Delete("エフェクト*");
		Delete("色３");

		//OnSE("se戦闘_動作_空突進04",1000);
		SoundPlay("ＳＥ１",0,1000,false);

		CreateTextureSP("背景３", 100, 0, -2000, "旋回イメージ２");
		SetSurface("背景３","絵Suf2");
		Rotate("絵Suf2", 0, @0, @0, 0, null, false);
		Fade("絵Suf2", 0, 1000, null, true);

		CreateTextureEX("背景１", 100, Center, -288, "cg/bg/resize/bg001_空a_03.jpg");
		//CreateTextureEX("背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		Zoom("背景１", 0, 2000, 2000, Dxl2, true);

		CreateTextureEX("背景４", 100, 0, -5000, "旋回イメージ３");
		SetSurface("背景４","絵Suf2");

		//▼固定値ランダム
		MoveFFP1("@背景４",20000);

		//▼雲開始
		CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex(0,@-500,@-200,Dxl2,true);

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();

		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,Dxl1,true);
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

	SoundPlay("ＳＥ６",0,1000,false);

	//▼コクピット（自機情報：方位）
	CP_AziChange(2000,-30,AxlDxl,false);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(2000,450,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(2000,1500,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(2000,30,Dxl1,false);

	Move("背景３", 2000, @0, @1800, Dxl2, false);
	Fade("色１", 500, 0, null, true);
	Fade("背景１", 1500, 1000, Axl3, false);

	SetVolume("サウンド２", 2000, 0, NULL);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0910a00">
《雪车町……！》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0920a12">
《嘿嘿嘿！
　想去救人的话，不过我这一关
可不行！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0930a00">
《……唔……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　为什么。
　这个男人，在想什么？

　难道说这不仅仅关系到利害吗？
　袭击我是——

　无论如何。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs0940a01">
《谈判破裂！
　忘掉多余的事！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0950a00">
「唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　我调转刀锋。
　虽然很遗憾，但正如村正所说。

　果然，只有斩刀突破这一条路了！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0960a12">
《嘿、嘿嘿……
　小哥，你能杀掉我吗……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0970a00">
《不退……
　即斩。》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs0980a12">
《小哥……
　我，刚才在说<RUBY text="······">你能杀掉我吗</RUBY>……
这句话啊。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs0990a00">
《……什么？》

{	FwC("cg/fw/fw雪車町_通常b.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1000a12">
《现在……
　小哥的刀锋，可是连一丝杀气
都没有啊……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　——这个男人。

　的确，我毫无杀死雪车町的意愿。
　他并不是持有“卵”的寄生体。

　并没有非杀他不可的理由。
　——这一点，被他看穿了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1010a00">
《……无用的杀生应当禁止。
　这是理所当然的法则。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1020a12">
《这样吗……
　可是，如今你也说不出这句话
了吧？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1030a12">
《若无杀意，你就会一直
被困在这里哦……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1040a00">
《……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1050a12">
《能将我……
　杀死吗？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1060a00">
《如果没有其他办法的话……
　万不得已之时，挥刀杀人，开路前行。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　我说了无法做到的事。
　事实上，无论表面状况如何，都不得不将弱点隐藏。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1070a12">
《嘿、嘿！
　这才是“英雄”啊！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("背景３");

//◆反転
	CreateTextureSP("敵機１", 500, -300, 710, "cg/st/3d八八式指揮官_騎突_戦闘.png");
	Zoom("敵機１", 0, 50, 50, Dxl2, true);

		CreateSE("ＳＥ１","se戦闘_動作_空突進07");

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);
	OnSE("se戦闘_動作_空突進08",1000);
	OnSE("se戦闘_動作_空急降下01",1000);

	//▼コクピット（自機情報：回転軸停止）
	CP_RollBar_ADelete();

	//▼コクピット（ロックオン：設置）
	//CockPit_LockSet(@0,@0);

	//▼コクピット（自機情報：方位）
	CP_AziChange(4000,30,AxlDxl,false);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(4000,650,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange2(4000,1100,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(4000,-30,Dxl1,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(4000,360,Dxl1,false);

	//▼雲移動
	CloudZoomVertex(1000,@0,@-300,Axl2,false);

	Fade("背景４", 500, 1000, null, false);

	Move("背景４", 4000, @0, -50, AxlDxl, false);
	Rotate("絵Suf2", 4000, @0, @0, 180, AxlDxl, 3000);

		SoundPlay("ＳＥ１",0,1000,false);
		SetVolume("サウンド２", 2000, 0, NULL);

	Move("敵機１", 1000, @0, @-1000, Dxl2, false);

	//▼雲移動
	CloudZoomVertex(1000,@0,@300,Dxl2,true);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,1,3);
	//▼コクピット（ロックオン：自動追尾）
	//CP_LockOnGet("敵機１",500,20,20,Dxl1,false);
	//▼コクピット（ロックオン：切替）
	//CP_LockOnFade(500,"on",false);

	Delete("背景１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　雪车町调侃地说着，改变了方向。
　我方也相应地转头，紧盯着闯入正面的敌影。

　……对于胆识过人的对手，花多少时间
都不足为奇。
　一定要做个了结……！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, NULL);
	SoundPlay("@mbgm13",0,1000,true);
	SetVolume("サウンド１", 2000, 1, NULL);


//◆接近
//◆村正中段
//◆雪車町上段
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進04",1000);
	OnSE("se戦闘_動作_空突進06",1000);

	Zoom("敵機１", 500, 1000, 1000, Axl2, false);
	Zoom("絵Suf2", 500, 2500, 2500, Axl2, false);
	Fade("色０", 500, 1000, null, true);

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼雲消去
		CloudZoomFade(0,false);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼完全ランダム：停止
		MoveFRP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼コクピット（ロックオン：削除）
		CP_LockOnDelete();

		Delete("背景*");
		Delete("絵Suf2");
		CreateTextureSP("背景１", 100, Center, Middle, "cg/bg/resize/bg073_海a_03l.jpg");
		Rotate("背景１", 0, @0, @0, @40, null, true);

		Zoom("自機１", 0, 500, 500, Dxl2, true);
		CreateTextureSP("自機１", 100, 129, -345, "cg/st/3d村正標準_騎航_戦闘d.png");
		Zoom("自機１", 0, 100, 100, Dxl2, true);
		CreateTextureEX("自機２", 100, 250, -513, "cg/st/3d村正標準_騎航_戦闘e.png");
		CreateTextureSP("敵機１", 100, -434, -404, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Zoom("敵機１", 0, 100, 100, Dxl2, true);
	Fade("色０", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　将太刀摆在体侧，骑航中段的位置。
　雪车町则举过头顶置于右上方。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("色０", 1000, 1000, null, true);

	Move("自機１", 0, @0, @50, Axl1, true);
	Move("敵機１", 0, @0, @-50, Axl1, true);

	Zoom("背景１", 0, 1200, 1200, Dxl2, true);
	Zoom("自機１", 0, 300, 300, Dxl2, true);
	Zoom("敵機１", 0, 300, 300, Dxl2, true);
	Fade("色０", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0471]
　雪车町想要拔刀向下侧砍去，我先发制人地
躲到更下方以封锁他的行动。<k>
{
	Fade("色０", 1000, 1000, null, true);

	Move("自機１", 0, @0, @-50, Axl1, true);
	Move("敵機１", 0, @0, @50, Axl1, true);

	Zoom("背景１", 0, 1400, 1400, Dxl2, true);
	Zoom("自機１", 0, 500, 500, Dxl2, true);
	Zoom("敵機１", 0, 500, 500, Dxl2, true);
	Fade("色０", 1000, 0, null, true);
}
　封锁，被封锁——<k><?>
{
	Fade("色０", 1000, 1000, null, true);

	Move("自機１", 0, @0, @-100, Axl1, true);
	Move("敵機１", 0, -443, -243, Axl1, true);

	Zoom("背景１", 0, 1600, 1600, Dxl2, true);
	Zoom("自機１", 0, 1000, 1000, Dxl2, true);
	Zoom("敵機１", 0, 1000, 1000, Dxl2, true);
	Fade("自機１", 0, 0, null, true);
	Fade("自機２", 0, 1000, null, true);
	Fade("色０", 1000, 0, null, true);
}
交锋失败。

　我所夺取的位于下方的敌骑轨道。
　被封锁了——在那个瞬间。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣閃
	CreateTextureEX("エフェクト１", 1000, 0, 0, "cg/ef/ef012_汎用斜め軌道.jpg");

	//Fade("色０", 500, 1000, null, true);
	Fade("エフェクト１", 1000, 500, null, true);
	//Fade("色０", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　我将太刀从平端转为向下，并快速行驶。
　以摆弄刀柄的架势虚晃一招骗过对手，这只不过是
为了将刀法隐蔽起来的烟幕弹而已。

{	Fade("エフェクト１", 500, 1000, null, false);}
　我用最适合的角度以太刀自下方向上斩去，迎击雪车
町欲向我方下砍的攻击。
　我的确比敌方的太刀更为迅速。确实地先发制人，深
深地砍入肩口，夺取对方的战斗力。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("エフェクト１", null);

//	SoundPlay("サウンド１",1000,1,true);
	SetVolume("@mbgm*", 1000, 0, NULL);

	Fade("色１", 500, 1000, null, false);
	Zoom("エフェクト１", 500, 2000, 2000, Axl2, true);
	Delete("エフェクト１");
	Fade("色０", 500, 1000, null, true);
	Fade("色１", 0, 0, null, true);
	
		Wait(2000);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1080a12">
《……喀喀。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　目标——
　刀尖——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEXover("エフェクト１", 19000, 0, 0, "cg/ef/ef002_汎用移動.jpg");

	Fade("背景１", 0, 0, null, true);
	Move("自機２", 0, -167, -487, Axl1, true);
	Move("敵機１", 0, -500, -322, Axl1, true);
	Fade("エフェクト１", 0, 1000, null, true);
	Fade("色０", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501]
　<RUBY text="···">将脖颈</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1090a00">
《——什——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　怎么会这样。
　雪车町微微扭动上身，将脖颈暴露在迫近的刀锋下。


　若是通常的姿势，脖颈应是在头盔的保护之下。
　但像他那样，特意将脖颈暴露出来的话——装甲便等
同于空气——更不可能阻挡太刀的进攻。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("エフェクト０", 99, 0, 0, "cg/ef/ef007_汎用血しぶき.jpg");
	Rotate("エフェクト０", 0, @180, @180, @0, null, true);
	Fade("エフェクト０", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0521]
　<RUBY text="··">去死</RUBY>。
　<RUBY text="··">杀死</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("エフェクト２", 19000, 0, 0, "cg/ef/ef002_汎用移動.jpg");
	Fade("エフェクト２", 300, 1000, null, true);

	SetFwC("cg/fw/fw雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1100a12">
《喀喀喀喀喀喀喀喀喀喀喀!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1110a00">
《做什么——！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆両騎交差

	SL_leftup2(19000,@0,@0,1000);

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);
	SL_leftupfade2(0);

	Fade("色１", 300, 1000, null, true);

		Delete("敵機１");
		Delete("自機*");
		Delete("エフェクト*");

		CreateTextureEX("エフェクト１", 19001, 286, -103, "cg/ef/efRec_雲a01.png");
		Zoom("エフェクト１", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト２", 19001, 0, -70, "cg/ef/efRec_雲a02.png");
		Zoom("エフェクト２", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト３", 19001, -55, 3, "cg/ef/efRec_雲a03.png");
		Zoom("エフェクト３", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト４", 19001, -105, 3, "cg/ef/efRec_雲a04.png");
		Zoom("エフェクト３", 0, 100, 100, Dxl2, true);

		//▼雲開始
		CloudZoomStart2(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex2(0,@-500,@0,Dxl2,true);

		CreateTextureSP("背景３", 100, -4000, 0, "旋回イメージ１");
		CreateTextureSP("背景４", 100, -4000, 0, "旋回イメージ１");

		CreateSCR1("@背景３","@背景４",1000,0,@0);
		CreateTextureSP("自機１", 100, -73, -286, "cg/st/3d村正標準_騎航_戦闘e.png");

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@自機１",10000,5,10);

		OnSE("se戦闘_動作_空上昇01",1000);

	Wait(3000);

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,300,true);
	SoundPlay("サウンド１",2000,1000,true);

	Fade("色１", 2000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　……勉强赶上了。
　刀尖在雪车町脖子的寸许处成功转向，掠过皮肤，滑
向虚空。

　强制转动手腕的动作，令如同电击般的激痛直达脑髓。

　伴随着痛楚，我挤出一声痛呼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm34",0,1000,true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1120a00">
《你在，做什么?!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

			CreateTextureEX("背景１", 19000, Center, Middle, "cg/bg/resize/bg001_空c_03l.jpg");
			CreateTextureEX("敵機１", 19000, -500, -300, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
			Zoom("背景１", 0, 1200, 1200, Dxl2, false);
			Move("背景１", 0, @100, @0, Dxl1, false);
			Rotate("背景１", 0, @0, @0, 60, Dxl1, false);
			Rotate("敵機１", 0, @0, @0, 60, Dxl1, false);
			Zoom("敵機１", 0, 2000, 2000, Dxl2, true);

	SoundPlay("@サウンド２",2000,1,true);
	SoundPlay("サウンド１",2000,1,true);

	Fade("背景１", 1000, 1000, null, false);

	SetFwC("cg/fw/fw雪車町_哄笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0551]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1130a12">
《不行啊————!!
　杀不了我杀不了我杀不了我——————!!》
{
	WaitAction("背景１", null);

	OnSE("se戦闘_動作_空突進03",1000);
	Fade("敵機１", 0, 1000, null, false);
	Zoom("敵機１", 1000, 0, 0, Dxl1, false);
	Move("敵機１", 1000, @1000, @0, Axl1, false);
	Move("背景１", 1000, @-100, @0, Dxl1, false);

	Rotate("エフェクト４", 2000, @0, @0, 180, Dxl3, false);
	Zoom("エフェクト４", 2000, 1000, 1000, Dxl3, false);
	Fade("エフェクト４", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト４", 1000, 0, null, false);

	Rotate("エフェクト３", 2000, @0, @0, 120, Dxl3, false);
	Zoom("エフェクト３", 2000, 1000, 1000, Dxl3, false);
	Fade("エフェクト３", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト３", 1000, 0, null, false);

	Rotate("エフェクト２", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト２", 2000, 800, 800, Dxl3, false);
	Fade("エフェクト２", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト２", 1000, 0, null, false);

	Rotate("エフェクト１", 2000, @0, @0, 60, Dxl3, false);
	Zoom("エフェクト１", 2000, 500, 500, Dxl3, false);
	Fade("エフェクト１", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト１", 1000, 0, null, false);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　侮辱、讥笑、嘲弄的喊声划破夜空。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitFade("エフェクト*", null);

	Move("エフェクト１", 0, 246, -164, null, false);
	Rotate("エフェクト１", 0, @0, @0, 0, null, false);
	Zoom("エフェクト１", 0, 100, 100, null, false);
	Move("エフェクト２", 0, 180, -100, null, false);
	Rotate("エフェクト２", 0, @0, @0, 0, null, false);
	Zoom("エフェクト２", 0, 100, 100, null, false);
	Move("エフェクト３", 0, 254, 64, null, false);
	Rotate("エフェクト３", 0, @0, @0, 0, null, false);
	Zoom("エフェクト３", 0, 100, 100, null, false);
	Move("エフェクト４", 0, 355, 186, null, false);
	Rotate("エフェクト４", 0, @0, @0, 0, null, false);
	Zoom("エフェクト４", 0, 100, 100, null, false);
	Move("エフェクト*", 0, @-200, @0, Axl1, true);

	CreateTextureSP("背景０", 19900, 0, 0, SCREEN);
		CreateTextureSP("背景１", 19000, 0, 0, "cg/bg/resize/bg002_空a_03l.jpg");
		CreateTextureSP("自機２", 19000, -520, -400, "cg/st/3d村正標準_騎航_通常4a.png");
		CreateTextureSP("敵機１", 19001, -300, -600, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("自機２", 0, 50, 50, Dxl2, false);
		Zoom("敵機１", 0, 0, 0, Dxl2, true);

	SetFwC("cg/fw/fw雪車町_哄笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1140a12">
《嘿嘿！　嘿、嘿嘿嘿嘿嘿！
　你果然不是当英雄的料啊！
　觉悟不够！　不行，不行啊！》
{
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進04",1000);

	FadeDelete("背景０", 300, false);
	Move("自機２", 1000, @-100, @0, null, false);
	Zoom("自機２", 1000, 0, 0, null, false);
	Zoom("敵機１", 1000, 2000, 2000, Dxl1, false);
	Move("敵機１", 1000, @700, @2000, Axl1, false);
	Move("背景１", 1000, @-200, @0, Dxl1, false);

	Rotate("エフェクト１", 2000, @0, @0, 60, Dxl3, false);
	Zoom("エフェクト１", 2000, 500, 500, Dxl3, false);
	Fade("エフェクト１", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト１", 1000, 0, null, false);

	Rotate("エフェクト２", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト２", 2000, 800, 800, Dxl3, false);
	Fade("エフェクト２", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト２", 1000, 0, null, false);

	Rotate("エフェクト３", 2000, @0, @0, 120, Dxl3, false);
	Zoom("エフェクト３", 2000, 1000, 1000, Dxl3, false);
	Fade("エフェクト３", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト３", 1000, 0, null, false);

	Rotate("エフェクト４", 2000, @0, @0, 180, Dxl3, false);
	Zoom("エフェクト４", 2000, 1000, 1000, Dxl3, false);
	Fade("エフェクト４", 150, 1000, null, false);
	Wait(150);
	Fade("エフェクト４", 1000, 0, null, false);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("サウンド２",2000,300,true);
	SoundPlay("サウンド１",2000,1000,true);

	FadeDelete("エフェクト*", 500, false);
	FadeDelete("背景１", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　雪车町一边嘲笑着我，一边将龙骑兵甲驶远。
　就连后方喷出的烟尘都像是在嘲笑一般卷起旋涡。

　……为什么。
　为什么那个男人，这么有把握。

　我不认为他是对世持有达观之人，甚至能够
为了毫无意义的赌局奉上生命。
　那个男人十分确信……！

　我是不会如此轻易杀人这件事。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19900, 0, 0, SCREEN);

		//▼雲消去
		CloudZoomFade2(0,false);
		SCR1stop();
		//▼固定値ランダム：停止
		MoveFTP1stop();

//		CreateTextureSP("背景１", 100, Center, Middle, "cg/bg/resize/bg001_空a_03.jpg");
		CreateTextureSP("背景１", 100, 0, -800, "旋回イメージ２");
		CreateSurfaceEX("絵Suf",200,2000,"背景１");
		Fade("絵Suf", 0, 1000, null, true);
		Rotate("絵Suf", 0, @0, @0, @-40, null, true);

		//▼雲正面
		CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex(0,@700,@0,Dxl2,true);

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,500,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(0,1400,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,25,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,20,null,true);

		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		CreateTextureSP("敵機１", 200, -500, -200, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Rotate("敵機１", 0, @0, @0, -45, null, true);
		Zoom("敵機１", 0, 0, 0, Dxl2, true);

	SoundPlay("サウンド２",1000,0,true);

	Zoom("敵機１", 30000, 200, 200, Dxl1, false);
	Move("敵機１", 30000, 500, -500, null, false);
	Move("背景１", 30000, @-450, @0, null, false);
	FadeDelete("背景０", 500, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1150a00">
《……方才，你说过。
　确认一下。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1160a00">
《究竟要向我确认什么。
　雪车町一藏。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1170a12">
《真是的，确认什么……
　当然是，你是一个无聊的废物
这件事呀！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆騎航－転回
//◆対峙

	CreateTextureEX("背景２", 17000, -100, -1500, "旋回イメージ２");
	CreateTextureEX("敵機２", 18000, -48, -342, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機２",10000,3,10);
	//▼固定値ランダム
	MoveFFP2("@背景２",10000);

	//▼雲消去
	CloudZoomFade(500,false);

	Fade("背景２", 1000, 1000, null, false);
	Fade("敵機２", 1000, 1000, null, false);
	Wait(1000);

	//▼雲開始
	CloudZoomStart2B(700,1000,1000);
	//▼雲移動
	CloudZoomVertex2(0,@1000,@-200,Dxl2,true);

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFFP1stop();

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1180a12">
《不愿意吧？
　不愿意杀死我吧……？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1190a12">
《因为啊……
　杀了我的话，又必须要<RUBY text="····">再杀一个</RUBY>
无罪的人吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();

	SetBlur("敵機２", true, 1, 500, 50, false);

	OnSE("se戦闘_動作_空突進01",1000);

	Fade("色１", 300, 1000, null, false);
	Zoom("敵機２", 300, 2000, 2000, Axl1, false);
	Move("敵機２", 300, @100, @-300, Axl1, true);

	//▼固定値ランダム：停止
	MoveFFP2stop();

	CreateTextureSP("敵機２", 17100, -408, -327, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
	Zoom("敵機２", 0, 600, 600, Axl2, false);
	CreateTextureSP("自機２", 17100, 4, -261, "cg/st/3d村正標準_騎航_通常4a.png");
	Move("背景２", 0, -400, -500, Axl1, true);

	//▼雲消去
	CloudZoomFade2(1000,false);

	OnSE("se戦闘_動作_空突進07",1000);
	Fade("色１", 500, 0, null, false);

	Move("自機２", 500, @0, @50, Dxl1, false);
	Move("敵機２", 500, @0, @-100, Dxl1, false);
	Move("背景２", 500, @0, @-200, Dxl1, true);

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0601]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1200a12">
《是吧？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetBacklog("「!?」", "voice/ma04/016vs1210a00", 景明);
	SetBacklog("《!?》", "voice/ma04/016vs1220a01", 村正さん);

	CreateVOICE("景明","ma04/016vs1210a00");
	CreateVOICE("村正さん","ma04/016vs1220a01");
	SoundPlay("景明",0,1000,false);
	SoundPlay("村正さん",0,1000,false);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0604]
//（景明）（村正）
「!?」
《!?》

</PRE>
	SetTextEXC();
	Request("@text0604", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

/*
//◆声用一時退避
//◆同時
{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1210a00">
「?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1220a01">
《?!》
*/

//◆雪車町突進
//◆剣撃。がきーん。

	CreateTextureEX("エフェクト１", 18000, 0, 0, "cg/ef/ef045_スパーク.jpg");
	SetBlur("エフェクト１", true, 2, 500, 50, false);
	Zoom("エフェクト１", 0, 2000, 2000, Dxl2, true);



	OnSE("se戦闘_動作_空突進07",1000);

	Zoom("自機２", 300, 900, 900, Axl2, false);
	Zoom("敵機２", 300, 700, 700, Axl2, false);
	Fade("色１", 300, 1000, null, true);

	OnSE("se戦闘_攻撃_剣戟弾く01",1000);
	OnSE("se戦闘_攻撃_剣戟弾く02",1000);

	Fade("エフェクト１", 0, 1000, null, true);

	Shake("エフェクト１", 1000, 0, 30, 0, 0, 700, Dxl1, false);
	Zoom("エフェクト１", 1000, 1200, 1200, Dxl1, false);
	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
　反射性地抽出太刀接下，太刀被弹开，火花四溅。
　然而传到手腕的冲击，与心中所受到的冲击相比，
完全不值一提。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵Suf*");
	Delete("背景*");
	Delete("敵機*");
	Delete("自機*");

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);

		CreateTextureSP("背景２", 100, Center, -2000, "旋回イメージ２");
		//CreateSurfaceEX("絵Suf",200,2000,"背景２");
		//Fade("絵Suf", 0, 1000, null, true);
		//Rotate("絵Suf", 0, @0, @0, @-40, null, true);

		CreateTextureEX("背景１", 300, Center, -288, "cg/bg/resize/bg001_空a_03.jpg");

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,true);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,650,Dxl1,true);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(0,1000,Dxl1,true);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,-25,Dxl1,true);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,null,true);

	FadeDelete("エフェクト１", 500, false);
	Shake("背景２", 1000, 0, 30, 0, 0, 700, Dxl1, false);
	Zoom("背景２", 1500, 1500, 1500, Dxl1, false);
	Move("背景２", 1500, @-200, @0, Dxl1, false);

	SetFwC("cg/fw/fw景明_驚き.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1230a00">
《为——为什么？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("背景２", null);

		CreateSE("ＳＥ１","se戦闘_動作_空突進03");
		CreateSE("ＳＥ２","se戦闘_動作_空突進04");

	OnSE("se戦闘_動作_空突進08",1000);
	OnSE("se戦闘_動作_空上昇01",1000);

		//▼雲正面
		CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex(0,@-600,@-100,Dxl2,true);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(3000,500,AxlDxl,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(3000,1600,AxlDxl,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(3000,25,AxlDxl,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(3000,0,null,false);

	Zoom("背景２", 2000, 1000, 1000, Axl1, false);
	Move("背景２", 2000, @0, @2000, Axl1, 1500);

	SoundPlay("ＳＥ１",0,1000,false);
	SetVolume("サウンド２", 1000, 0, NULL);
	SoundPlay("ＳＥ２",0,1000,false);

	Fade("背景１", 500, 1000, Axl2, false);
	Move("背景１", 500, @0, @100, Dxl1, true);


	SetFwC("cg/fw/fw景明_警戒.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0621]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1240a00">
《为什么，你会知道<RUBY text="··">这个</RUBY>！》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1250a12">
《我看到了哦。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
　看到——？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1260a12">
《那个夜晚。
　那个村庄。
　在那座山的独栋房中。》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1270a12">
《……你哭喊着杀死两个
虾夷的小孩……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。姉妹殺害

	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);

		CreateTextureSP("背景０", 18000, 0, 0, "cg/bg/bg023_弥源太の家_03a.jpg");
		SetTone("背景０", Monochrome);
		CreateTextureSP("立ち絵１", 18000, 622, InBottom, "cg/st/stふき_通常_私服.png");
		SetTone("立ち絵１", Monochrome);
		CreateTextureSP("立ち絵２", 18000, 531, InBottom, "cg/st/stふな_通常_私服.png");
		SetTone("立ち絵２", Monochrome);
	Fade("色１", 1000, 0, null, true);

	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);
		Delete("背景０");
		Delete("立ち絵*");
		CreateTextureSP("エフェクト１", 18000, 0, 0, "cg/ef/ef007_汎用血しぶき.jpg");
		SetTone("エフェクト１", Monochrome);
	Fade("色１", 1000, 0, null, true);

	Fade("色１", 0, 1000, null, true);
			Delete("エフェクト１");
	Fade("色１", 300, 0, null, true);

	SetFwC("cg/fw/fw景明_疲労.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1280a00">
《……!!》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1290a12">
《为什么像你这样的家伙会做这种事情呢？
我完全不理解……
　所以调查了一下……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1300a12">
《调查叫做村正的剑胄。
　结识了在那边做文献收集工作的
和尚…………这样一来。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1310a01">
《……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1320a12">
《发现唯一一个与你相符的
传说……
　存在着……<RUBY text="··">诅咒</RUBY>吧？　在这个
剑胄上。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。実家の宝殿？
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("エフェクト１", 18000, 0, 0, "cg/bg/bg054_湊斗家祭殿a_01a.jpg");
		SetTone("エフェクト１", Monochrome);
	Fade("色１", 1000, 0, null, true);
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　
　　　　　　　　　吾名村正

　
　　　　　　吾遇鬼斩鬼

　
　　　　　　逢佛弑佛

　
　　　　　　　　　吾非善

　
　　　　　　　　　吾无义

　
　　　　　　　　　吾弃正道

　
　　　　　　　　吾正邪俱断

　
　　　　　　　　　吾乃一柄凶刃也

　
　　　　　欲求同吾契约者
　　　　　可有与吾共化凶刀之觉悟

　
　　　　　　　　　若无速散

　
　　　　　　　　若有
　　　　　　　　须誓言汝之觉悟

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色１", 500, 1000, null, true);
			Delete("エフェクト１");
	Fade("色１", 500, 0, null, true);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1330a00">
《………………》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1340a12">
《据说南北朝时代的斗争陷入泥沼深渊，
是因为村正将这个诅咒<RUBY text="··">扩散</RUBY>的
关系……
　嘿、嘿！　真是了不起啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。銀星号に汚染された人々？
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("エフェクト１", 18000, 0, 0, "cg/ev/ev001_銀星号事件イメージ１.jpg");
		SetTone("エフェクト１", Monochrome);
	Fade("色１", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　
　　　　　磁气污染：敕令封印／绝对规戒

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("色１", 500, 1000, null, true);
			Delete("エフェクト１");
	Fade("色１", 500, 0, null, true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1350a12">
《……我说，你啊。
　为什么不隐居到哪个深山老林里去呢。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1360a12">
《身怀如此麻烦的诅咒……
　为何还要在世上到处徘徊呢？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1370a00">
《…………》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1380a12">
《咯、咯咯……
　明明用着被诅咒的剑胄，却干着
惩办坏人的事。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1390a12">
《惩办邪恶的地方官员后，
　又去杀死可爱的村姑。》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1400a12">
《咯、咯、咯咯咯！
　你究竟，想做什么呢？》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1410a00">
《……闭嘴……
　混蛋！》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1420a12">
《为了与坏人们相争，无论如何都
想要强大的剑胄吗？
　如果是为了拯救多数人的话，即便有
少数的牺牲也无可奈何……对吗？》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1430a12">
《真好啊。这才是正义的英雄。
　但是英雄的话，必须得更加
光明磊落才行啊……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1440a00">
《你这混蛋！》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1450a12">
《还是说你只是喜欢杀人？
　真好啊。这就是所谓的恶鬼。》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1460a12">
《不过恶鬼的话，必须得更加
高兴地杀人才行啊……》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1470a00">
《说了闭嘴！》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1480a12">
《咯、咯、咯哈哈哈哈哈哈!!
　不管哪边啊，都是半吊子的废物！　你是
半吊子的废物啊！》

{	FwC("cg/fw/fw雪車町_哄笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1490a12">
《真——无趣啊——!!
　嘻呀嘻呀嘻呀嘻呀嘻呀嘻呀嘻呀嘻呀嘻呀!!》

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1500a00">
《我都说了闭嘴!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突進
		CreateTextureSP("背景２", 100, 0, 0, "旋回イメージ１");
		CreateSurfaceEX("絵Suf",200,2000,"背景２");
		Rotate("絵Suf", 0, @0, @0, -30, null, false);
		Fade("絵Suf", 0, 1000, null, true);

		CreateTextureEX("背景３", 17000, 0, -5000, "旋回イメージ２");
		CreateTextureEX("自機１", 18000, -100, -250, "cg/st/3d村正標準_騎航_戦闘a2.png");
		SetBlur("自機１", true, 1, 500, 50, false);

		//▼固定値ランダム：停止
		MoveFFP1stop();

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);
	OnSE("se戦闘_動作_空突進08",1000);


		//▼コクピット（自機情報：方位）
		CP_AziChange(4000,100,Dxl1,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(4000,650,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(4000,1200,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(4000,-25,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(4000,40,null,false);

		//▼コクピット（自機情報：出力）
		MyTr_Count(4000,471);


	Move("背景１", 500, @-200, @-476, Axl1, false);
	Fade("背景１", 500, 0, null, false);
	Rotate("絵Suf", 2000, @0, @0, -60, null, false);
	Move("背景２", 2000, @-3000, @0, Axl1, 1500);

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 0, NULL);

	Fade("色０", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　混蛋。
　混蛋。
　混蛋混蛋混蛋混蛋混蛋————

　什么都不知道的家伙。
　凭什么自说自话地掺和进来血口喷人。

　什么光明磊落地杀人？
　什么兴高采烈地杀人？

　做不到这一点的话就是废物了？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 1000, 1000, NULL);

	Fade("背景３", 0, 1000, null, false);
	Fade("自機１", 0, 1000, null, false);
	Move("背景３", 120000, @-400, @5000, null, false);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@自機１",10000,3,10);

	//▼雲消去
	CloudZoomFade(0,true);

	//▼雲開始
	CloudZoomStart2(700,1000,1000);
	//▼雲移動
	CloudZoomVertex2(0,@500,@100,Dxl2,true);

	Fade("色０", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0701]
　用自己的标准来衡量万物，说出一堆自以为是的话！

　若是想法不坚定的半吊子……
　一定，不会有如我这般的行为。

　一定会捂住耳朵，闭上眼睛，杜绝一切信息，正如他
所言那样隐居深山吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("色１", 0, 1000, null, true);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		Delete("自機*");
		CreateTextureEX("背景２", 17000, 0, 0, "旋回イメージ２");
		Zoom("背景２", 0, 1500, 1500, Dxl2, true);
		CreateTextureEX("自機２", 17000, -456, -1111, "cg/st/resize/3d村正最終_騎航_戦闘2_m.png");
		SetBlur("自機２", true, 1, 500, 50, false);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@自機２",10000,3,10);

	SetVolume("@mbgm*", 2000, 0, NULL);

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,300,true);

	Move("背景２", 60000, @-400, @-4500, Axl1, false);
	Fade("背景２", 0, 1000, null, false);
	Fade("自機２", 0, 1000, null, false);

	Fade("色１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0702]
　——混蛋。
　如果，那是<RUBY text="·····">被容许的话</RUBY>！

　该是多么美好的事啊！
　该是多么幸福的事啊！

　这一点——
　那个男人——
　什么都不了解——

　什么都不了解——！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 0, NULL);

	Fade("色１", 0, 1000, null, true);

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP2stop();

	//▼雲消去
	CloudZoomDelete2(0,true);

	Delete("背景２");
	Delete("自機２");

	CreateTextureSP("背景１", 17000, 0, 0, "cg/bg/bg001_空a_03.jpg");
	CreateTextureSP("自機１", 17000, -1495, -1708, "cg/st/resize/3d村正最終_騎航_戦闘2_l.png");

	CreateColorSP("色３", 19000, "#000000");
	CreateTextureSP("イベント１", 19000, -1000, 0, "cg/ev/ev996_景明カットイン.png");
	Rotate("イベント１", 0, @0, @180, @0, null, true);

	//▼シェイク
	MoveSSP1("@自機１",100000,0,1,0,1,500,null);

	SoundPlay("@mbgm10",0,1000,true);

	Move("イベント１", 1000, @700, @0, Axl1, false);
	Fade("色１", 1000, 0, null, false);

//	SetFwR("cg/fw/fw景明_怒りb.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1510a00">
《雪车町一藏——————!!》
{	WaitAction("イベント１", null);
	Move("イベント１", 10000, @200, @0, null, false);
	Fade("イベント１", 1000, 500, null, false);
	Fade("色３", 1000, 0, null, true);}<BR>

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("敵機１", 18000, -171, -369, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
	Zoom("敵機１", 0, 0, 0, Dxl2, true);
	SetBlur("敵機１", true, 1, 500, 50, false);
	CreateTextureEXadd("エフェクト１", 19000, 0, 0, "cg/ef/ef003_汎用移動.jpg");
	Zoom("エフェクト１", 0, 2100, 2100, Dxl2, true);

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		CreateSE("ＳＥ１","se戦闘_動作_空突進03");

	//▼シェイク：停止
	MoveSSP1stop();

	//▼固定値ランダム
	MoveFFP1("@敵機１",5000);

	OnSE("se戦闘_動作_空急降下01",1000);
	OnSE("se戦闘_動作_空突進01",1000);

	FadeDelete("イベント１", 500, false);
	Fade("自機１", 500, 0, null, false);
	Move("自機１", 1000, @3000, @0, Axl1, 500);

		SoundPlay("@サウンド２",1000,600,true);
		SoundPlay("ＳＥ１",0,1000,false);

	Fade("エフェクト１", 500, 1000, null, false);
	Fade("敵機１", 500, 1000, null, false);

	Rotate("エフェクト１", 6000000, @0, @0, 3600000, null, false);
	Zoom("敵機１", 500, 500, 500, Dxl2, true);

	SetFwR("cg/fw/fw雪車町_哄笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0711]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1520a12">
《嘻呀、嘻呀、嘻呀————!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆剣撃交差
	OnSE("se戦闘_動作_空突進03",1000);
	SoundPlay("@サウンド２",1000,1000,true);

	Zoom("敵機１", 300, 1000, 1000, Axl2, false);
	Fade("色１", 300, 1000, null, true);

		Delete("敵機１");
		Delete("エフェクト１");
		Delete("背景*");
		Delete("絵Suf");
		Delete("イベント１");

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼完全ランダム：停止
		MoveFRP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		//▼シェイク：停止
		MoveSSP1stop();

		CreateTextureSP("背景３", 100, -4516, 220, "旋回イメージ１");
		CreateTextureEX("背景４", 100, -4516, 220, "旋回イメージ１");
		SetVertex("背景３", 5120, 864);
		SetVertex("背景４", 5120, 864);
		Rotate("背景３", 0, @0, @0, 40, null, true);
		Rotate("背景４", 0, @0, @0, 40, null, true);
		Zoom("背景３", 0, 2000, 2000, Dxl2, true);
		Zoom("背景４", 0, 2000, 2000, Dxl2, true);


		CreateTextureSP("自機１", 100, 326, -419, "cg/st/3d村正標準_騎航_戦闘e.png");
		Rotate("自機１", 0, @0, @0, -40, null, true);

		CreateWindow("ウィンドウ１", 150, 512, 0, 512, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		CreateTextureSP("ウィンドウ１/背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("ウィンドウ１/敵機１", 100, -576, -478, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("ウィンドウ１/敵機１", 0, @0, @0, -40, null, true);
		CreateTextureSPadd("ウィンドウ１/エフェクト１", 100, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
		Zoom("ウィンドウ１/エフェクト１", 0, 1200, 1200, Dxl2, true);

		CreateTextureSPadd("エフェクト３", 20100, -300, 200, "cg/ef/ef008_汎用上下軌道.jpg");
		SetVertex("エフェクト３", 512, 576);
		Rotate("エフェクト３", 0, @0, @0, @-90, Axl1, true);
	
		CreateTextureSPadd("エフェクト２", 20100, 300, 200, "cg/ef/ef008_汎用上下軌道.jpg");
		SetVertex("エフェクト２", 512, 576);
		Rotate("エフェクト２", 0, @0, @0, @90, Axl1, true);

		CreateSE("ＳＥ２","se戦闘_攻撃_鎧_剣戟02");
		CreateSE("ＳＥ３","se戦闘_攻撃_鎧_剣戟01");

		CreateSE("ＳＥ４","se戦闘_攻撃_鎧_吹っ飛ぶ01");
		CreateSE("ＳＥ５","se戦闘_攻撃_剣戟弾く02");
		CreateSE("ＳＥ６","se戦闘_攻撃_剣戟弾く03");
		CreateSE("ＳＥ７","se特殊_雰囲気_発光03");

	SetVolume("サウンド２", 1000, 1, NULL);

	Fade("色０", 200, 1000, null, false);

	SoundPlay("ＳＥ２",0,1000,false);

	Move("エフェクト３", 600, @1000, @0, Axl1, false);
	Rotate("エフェクト３", 600, @0, @0, @180, Axl1, false);
	Zoom("エフェクト３", 600, 5000, 5000, Dxl2, 200);

	SoundPlay("ＳＥ３",0,1000,false);

	Move("エフェクト２", 600, @-1000, @0, Axl1, false);
	Rotate("エフェクト２", 600, @0, @0, @-180, Axl1, false);
	Zoom("エフェクト２", 600, 5000, 5000, Dxl2, 500);

	SoundPlay("ＳＥ６",0,1000,false);

	Fade("色０", 100, 0, null, true);

	Delete("エフェクト２");
	Delete("エフェクト３");

	SoundPlay("ＳＥ５",0,1000,false);
	SoundPlay("ＳＥ４",0,1000,false);
	SoundPlay("ＳＥ７",0,1000,false);

	Shake("ウィンドウ１/エフェクト１", 500, 0, 30, 0, 0, 700, Dxl1, false);
	Fade("ウィンドウ１/エフェクト１", 1000, 0, null, false);

	Shake("ウィンドウ１/敵機１", 800, 0, 50, 0, 0, 700, Dxl1, false);
	Move("ウィンドウ１/敵機１", 1000, @600, @100, Dxl2, false);
	Move("自機１", 1000, @-600, @100, Dxl1, false);

	Fade("色１", 500, 0, null, true);

	Wait(200);

		CreateSE("ＳＥ８","se戦闘_動作_空突進03");
		CreateSE("ＳＥ９","se戦闘_動作_空突進07");

		SoundPlay("ＳＥ８",0,1000,false);

	Move("自機１", 500, @-500, @1000, Axl1, false);
	Move("ウィンドウ１/敵機１", 800, @500, @-500, Axl1, 300);
	Move("ウィンドウ１", 500, @513, @0, Axl1, true);

		CreateTextureSP("自機１", 100, 300, 1000, "cg/st/3d村正標準_騎航_戦闘e.png");
		Rotate("自機１", 0, @0, @0, 40, null, true);

	CreateSCR1("@背景３","@背景４",1000,0,4000);

		SetVolume("サウンド２", 2000, 400, NULL);
		SoundPlay("ＳＥ９",0,1000,false);

	Move("自機１", 1500, -259, -324, Dxl1, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@自機１",10000,3,5);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
　将雪车町的太刀格开，砍到他的肩口。
　虽浅，但能确实地从刀刃上感觉到。

　原本骑体的性能便不同。不但力量上更胜一筹，而且
还保持着高度的优势。
　即便只能使用一只手，但若单纯比拼力量，
毫无败下阵的理由。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		CreateWindow("ウィンドウ１", 150, 1024, -850, 512, 2276, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		Zoom("ウィンドウ１", 0, 0, 1000, Dxl2, true);
		CreateTextureSP("ウィンドウ１/背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("ウィンドウ１/敵機１", 100, -300, -282, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		CreateTextureEX("ウィンドウ１/背景２", 300, 0, -5000, "旋回イメージ２");
		//CreateSurfaceEX("ウィンドウ１/絵Suf2",300,2000,"ウィンドウ１/背景２");
		CreateTextureEX("ウィンドウ１/敵機２", 300, 167, 506, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");

		CreateTextureSP("背景１", 100, 0, -5000, "旋回イメージ３");
		CreateSurfaceEX("絵Suf1",200,2000,"背景１");
		CreateTextureEX("自機２", 200, -2236, -931, "cg/st/3d村正標準_騎航_通常3a.png");

		CreateSE("ＳＥ１","se戦闘_動作_空突進02");
		CreateSE("ＳＥ２","se戦闘_動作_空突進07");
		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);

	Zoom("ウィンドウ１", 1000, 600, 1000, Dxl1, false);
	Rotate("ウィンドウ１", 1000, @0, @0, 225, Dxl1, false);
	Move("ウィンドウ１", 1000, @-480, @0, Dxl1, false);
	Move("ウィンドウ１/敵機１", 1000, @300, @0, Dxl1, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@ウィンドウ１/敵機１",20000,2,10);

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1530a12">
《嘿、嘿、嘿！
　废物一旦被人叫做废物，好像就
会当真动怒呢。》

{	FwC("cg/fw/fw雪車町_嘲笑.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1540a12">
《剑招也稍微变得像样一点了呢！
　咯、咯～咯咯咯咯咯咯咯咯！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　这家伙——
　还在喋喋不休吗?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1550a00">
「给我闭嘴……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1560a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
//◆村正上段
//◆雪車町下段

		CreateSE("ＳＥ１","se戦闘_動作_空突進01");
		CreateSE("ＳＥ２","se戦闘_動作_空突進06");

		CreateSE("ＳＥ３","se戦闘_動作_空突進02");
		CreateSE("ＳＥ４","se戦闘_動作_空突進07");

		CreateSE("ＳＥ５","se戦闘_動作_空上昇01");
		CreateSE("ＳＥ６","se戦闘_動作_空上昇01");
		CreateSE("ＳＥ７","se戦闘_動作_空急降下01");
		CreateSE("ＳＥ８","se戦闘_動作_空急降下01");

		CreateSE("ＳＢ１","se戦闘_動作_空突進03");
		CreateSE("ＳＢ２","se戦闘_動作_空突進07");


	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();


		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);

	Move("自機１", 1000, @100, @2000, Axl1, false);
	Zoom("自機１", 1000, 2000, 2000, Dxl1, true);

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP2stop();

		SetVolume("サウンド２", 1000, 600, NULL);
		SoundPlay("ＳＥ３",0,1000,false);
		SoundPlay("ＳＥ４",0,1000,false);
		MusicStart("ＳＥ５",0,1000,0,1000,null,false);

	Move("自機２", 500, @0, @500, Dxl1, false);
	Fade("自機２", 500, 1000, null, false);

	Fade("絵Suf1", 1000, 1000, null, false);
	Move("背景１", 4000, @0, 0, AxlDxl, false);
	Rotate("絵Suf1", 4000, @0, @0, 180, null, false);

	Rotate("ウィンドウ１/敵機１", 1000, @0, @0, 360, null, false);
	Move("ウィンドウ１/敵機１", 1000, @1000, @-300, null, 500);

		MusicStart("ＳＥ６",0,1000,0,1000,null,false);

	Move("自機２", 4000, @0, @400, null, false);

	Move("ウィンドウ１/敵機２", 500, @0, @-500, Dxl1, false);
	Fade("ウィンドウ１/敵機２", 500, 1000, null, false);

	Zoom("ウィンドウ１", 1000, 1000, 1000, Dxl1, false);
	Rotate("ウィンドウ１", 1000, @0, @0, 0, null, false);
	Move("ウィンドウ１", 1000, 512, -750, Dxl1, false);

	//Fade("ウィンドウ１/絵Suf2", 1000, 1000, null, false);
	//Rotate("ウィンドウ１/絵Suf2", 4000, @0, @0, 180, null, false);
	Fade("ウィンドウ１/背景２", 500, 1000, null, false);
	Move("ウィンドウ１/背景２", 4000, @0, -400, AxlDxl, 500);

		MusicStart("ＳＥ７",0,1000,0,500,null,false);
		MusicStart("ＳＥ８",0,1000,0,500,null,false);

	Move("ウィンドウ１/敵機２", 4000, @0, @-400, null, 2500);

		SoundPlay("ＳＢ１",0,1000,false);
		SoundPlay("ＳＢ２",0,1000,false);

	Move("自機２", 500, @0, @1500, Axl1, 200);
	Move("ウィンドウ１/敵機２", 500, @-0, @-1500, Axl1, true);

	SCR1stop();
	Delete("背景３");
	Delete("背景４");

	WaitAction("ウィンドウ１/背景２", null);

	CreateTextureSP("上背景", 19100, 0, 0, SCREEN);

		Delete("ウィンドウ１/*");
		Delete("ウィンドウ１");
		Delete("背景*");
		Delete("絵*");
		Delete("自機*");

		//▼雲正面
		CloudZoomSet3("マド２",10000,0,288,1024,576);
		//▼雲開始
		CloudZoomStart3(700,1000,1000);
		//▼雲移動
		CloudZoomVertex3(0,@500,@0,Dxl2,true);

		//▼雲正面
		CloudZoomSet2("マド",18000,0,0,1024,576);
		//▼雲開始
		CloudZoomStart2(700,1000,1000);
		//▼雲移動
		CloudZoomVertex2(0,@-500,@0,Dxl2,true);

		Move("マド", 0, @0, @-288, Axl1, true);

		CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("敵機１", 100, -1047, -242, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		CreateTextureSP("マド/背景１", 1000, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("マド/自機１", 1000, 768, -455, "cg/st/3d村正標準_騎航_戦闘a.png");

	SetVolume("ＳＥ７", 1000, 0, NULL);
	SetVolume("ＳＥ８", 1000, 0, NULL);

	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se戦闘_動作_空突進08",1000);

		SetVolume("サウンド２", 1000, 400, NULL);

	Move("敵機１", 300, @1000, @0, Dxl1, false);
	Move("マド/自機１", 300, @-1000, @0, Dxl1, false);
	FadeDelete("上背景", 300, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@マド/自機１",20000,3,10);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@敵機１",10000,3,5);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　对像是阻拦一般的剑胄传音置若罔闻，我将太刀架于
右肩，调转刀锋举刀过顶。
　相对的，敌方的身影则摆出刀尖向下的架势。

　——并不打算故布疑阵。
　我处于下方，他位于上方，这一点毫无争议。


　一刀流若是作出这个举动，便是已经找到了下手的目
标。

　————一刀流，奥义之一
　
　　　　　　　　　　　“切落”

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1570a00">
《你觉得我做不到吗！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆剣撃交差

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();
	MoveFTP2stop();

		CreateSE("ＳＥ１","se戦闘_攻撃_鎧_剣戟04");
		CreateSE("ＳＥ２","se戦闘_衝撃_攻撃交錯01");
		CreateSE("ＳＥ３","se戦闘_動作_空突進07");
		CreateSE("ＳＥ４","se戦闘_破壊_金属");
		CreateSE("ＳＥ５","se戦闘_攻撃_剣戟弾く02");

		CreateSE("ＳＢ１","se戦闘_動作_空突進03");
		CreateSE("ＳＢ１","se戦闘_動作_空突進08");

		OnSE("se戦闘_動作_空突進01",1000);
		OnSE("se戦闘_動作_空突進02",1000);
		OnSE("se戦闘_動作_空突進08",1000);

	//▼雲消去
	CloudZoomDelete(500,false);

	Move("敵機１", 500, @1000, @0, Axl1, false);
	Move("マド/自機１", 500, @-1000, @0, Axl1, 200);

	DrawTransition("背景１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", false);
	DrawTransition("マド/背景１", 300, 1000, 0, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureSP("背景０", 19000, 0, 0, SCREEN);
		Delete("敵機１");
		Delete("マド/*");

		//kopipe
		CreateTextureSP("背景１", 100, Center, Middle, "cg/bg/resize/bg002_空a_03l.jpg");
		Rotate("背景１", 0, @0, @0, 40, null, true);

		CreateTextureSP("敵機１", 200, -1398, -543, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		SetBlur("敵機１", true, 1, 500, 50, false);
		CreateTextureSP("自機１", 200, 1078, -163, "cg/st/3d村正標準_騎航_戦闘a.png");
		SetBlur("自機１", true, 1, 500, 50, false);

		CreateTextureEXadd("エフェクト１", 300, 0, 0, "cg/ef/ef040_汎用衝突.jpg");

	MusicStart("ＳＢ１",0,1000,0,1500,null,false);
	MusicStart("ＳＢ２",0,1000,0,1500,null,false);

	FadeDelete("背景０", 300, false);

	Move("敵機１", 500, @1000, @0, Axl1, false);
	Move("自機１", 500, @-1000, @0, Axl1, 450);

		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);
		SoundPlay("ＳＥ５",0,1000,false);

	Shake("自機１", 500, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("敵機１", 500, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("エフェクト１", 50, 1000, null, true);

	MusicStart("ＳＥ４",0,1000,0,1500,null,false);

	Move("敵機１", 1000, @100, @0, null, false);
	Move("自機１", 1000, @-100, @0, null, false);
	Fade("色１", 300, 1000, null, true);

		CreateTextureSP("敵機１", 200, -398, -543, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		SetBlur("敵機１", true, 1, 500, 50, false);
		CreateTextureSP("自機１", 200, 078, -163, "cg/st/3d村正標準_騎航_戦闘e.png");
		SetBlur("自機１", true, 1, 500, 50, false);

		SetVolume("サウンド１", 1000, 1, NULL);
		SetVolume("サウンド２", 1000, 1, NULL);

		SoundPlay("ＳＥ３",0,1000,false);

	Rotate("敵機１", 1000, @0, @0, 90, Dxl1, false);

	Move("敵機１", 1000, 167, -499, Dxl1, false);
	Move("自機１", 1000, -306, -236, Dxl1, false);

	Fade("色１", 500, 0, null, true);
	Fade("エフェクト１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
　略胜一筹。
　正面相对交错攻击的刃与刃，我的刀尖将敌方的刀刃
格开，直指锁骨附近，发出尖锐的声响。

　似乎夺走了一块骨头。
　手上仅有这样的触感。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		OnSE("se戦闘_動作_空突進06",1000);
		OnSE("se戦闘_動作_空突進02",1000);
		OnSE("se戦闘_動作_空上昇01",1000);

		SetVolume("サウンド１", 1000, 1000, NULL);
		SetVolume("サウンド２", 1000, 200, NULL);


	Rotate("敵機１", 300, @0, @0, 180, Dxl1, false);
	Move("敵機１", 300, @1000, @0, Dxl1, false);
	Move("自機１", 300, @-1000, @0, Dxl1, true);

		Delete("自機１");
		Delete("敵機１");

		CreateTextureEX("背景２", 17000, Center, -512, "cg/bg/resize/bg001_空c_03l.jpg");
		CreateTextureEX("敵機１", 17000, 0, 0, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");


		OnSE("se戦闘_動作_空突進01",1000);
		OnSE("se戦闘_動作_空突進08",1000);


	Zoom("敵機１", 1000, 500, 500, Dxl1, false);
	Move("敵機１", 1000, @300, @-1000, Axl1, false);
	Fade("敵機１", 1000, 1000, null, false);

	Move("背景２", 1000, @0, @200, Dxl1, false);
	Fade("背景２", 1000, 1000, null, false);

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 0, NULL);

	SetFwC("cg/fw/fw雪車町_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1580a12">
《诶嘿?!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		CreateTextureSP("背景１", 100, -300, -4000, "cg/bg/bg203_旋回演出背景海_03.jpg");
		CreateSurfaceEX("絵Suf",100,2000,"背景１");
		Rotate("絵Suf", 0, @0, @0, 180, null, true);

		CreateTextureEX("背景３", 100, -512, -576, "cg/bg/resize/bg001_空c_03l.jpg");
		Request("背景３", Smoothing);
		CreateTextureSP("敵機１", 100, -190, -500, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機１", 0, 50, 50, Dxl2, true);

		CreateTextureSP("背景４", 17100, -300, -1000, "旋回イメージ２");
		CreateSurfaceEX("絵Suf2",17100,2000,"背景４");
		Rotate("背景４", 0, @0, @180, @0, null, true);
		Rotate("絵Suf2", 0, @0, @0, 40, AxlDxl, true);
		CreateTextureEX("敵機２", 17100, 66, -440, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Rotate("敵機２", 0, @0, @0, -40, null, true);

		//▼雲正面
		CloudZoomSet(1000);
		//▼雲移動
		//CloudZoomVertex(1000,@500,@200,Dxl2,true);

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
	
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,680,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(0,1200,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,-25,Dxl1,false);
	
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,Dxl1,false);

		//▼雲開始
		CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		CloudZoomVertex(0,@0,@-300,Axl1,false);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",5000);

		SetVolume("サウンド１", 1000, 1000, NULL);

	Fade("絵Suf", 0, 1000, null, true);
	FadeDelete("背景２", 1000, false);

	SetFwC("cg/fw/fw景明_怒りb.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0791]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1590a00">
《感觉到了吗——雪车町！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
　一刀流的“切落”，是以相对于敌方的攻击完全对称
的一击相迎，斩断对方的攻击，甚至能斩断敌人身体的
招式。

　在双方都以相同目的较量之时，以剑击的威力与精确
度占优的一方获胜。
　刚才的那次交锋，是我占上风。

　给予对方的伤害定是不浅。
　这样一来一定能扭转局面！

　在下次的交锋中决胜吧。
　
　……与这个男人的胜负，到此为止了。

　虽然不会杀了他，但我一定要将他打到无法动弹，然
后去迎战那只怪物。
　是的——这种走狗。现在真不是把他当作对手的时
候。

　平白无故地浪费了时间……！
　翻来覆去的真可恨！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1600a01">
《——主君！
　敌骑，并未调头！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1610a00">
《什么?!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆反転
//調整
	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,600,true);

	OnSE("se戦闘_動作_空突進08",1000);

	CreateSE("ＳＥ１","se戦闘_動作_空突進03");

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,180,AxlDxl,false);
	
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(5000,440,AxlDxl,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(5000,1400,AxlDxl,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(5000,25,AxlDxl,false);
	
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(5000,360,Dxl1,false);

		//▼雲移動
		CloudZoomVertex(3000,@0,@300,Axl1,false);

	Rotate("絵Suf", 4000, @0, @0, 0, AxlDxl, false);
	Move("背景１", 4000, @0, @4000, AxlDxl, 3000);

	SoundPlay("ＳＥ１",0,1000,false);

	//▼雲消去
	CloudZoomFade(2000,false);

	Move("敵機１", 2000, @0, @100, Dxl1, false);
	Fade("背景３", 1000, 1000, null, false);
	Move("背景３", 2000, @0, @288, Dxl1, true);

	//▼固定値ランダム：停止
	MoveFFP1stop();
	Delete("背景１");
	Delete("絵Suf");

	CreateTextureSP("背景０", 17000, 0, 0, SCREEN);
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

	//▼雲正面
	CloudZoomSet2("マド",18000,0,0,1024,576);
	//▼雲開始
	CloudZoomStart2B(700,1000,1000);
	//▼雲移動
	CloudZoomVertex2(0,@-500,@0,Dxl2,true);

	//▼固定値ランダム
	MoveFFP1("@絵Suf2",20000);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@敵機２",20000,3,5);

	SetVolume("サウンド２", 1000, 1, NULL);

	Move("背景４", 120000, @0, @1000, null, false);
	Fade("敵機２", 1000, 1000, null, false);
	Fade("絵Suf2", 1000, 1000, null, true);
	FadeDelete("背景０", 0, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820]
　相互过招，交错而过的雪车町就这样向上空飞升——
不停地向上飞。
　若要遵循骑航战的定律，那便一定要围绕头盔降低飞
行，为下一次的交锋积蓄速度才行。

　打算逃走吗。
　不——就算要脱离战斗范围，向下方飞行以储备速度
才是定则。

　那就是为夺取高度优势而出的奇招了——不会吧。
　用那种方法占得上方位置毫无意义。太耗费时间了。
待到取得高度、转身、再要发起突击，这时敌方早已做
完一切准备攻到面前了吧。

　……或者说。
　让我看到他准备逃走的姿态，当我马上赶往怪物那边
时再阻挠吗。

　这样一来他就会瞄准我下降时的漏洞，从上空攻击。
　——这，有可能。如果是那个男人的话，就会轻而
易举地耍这种手段吧。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_怒りa.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1620a00">
（我不会上当）

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆進突
		CreateSE("ＳＥ１","se戦闘_動作_空突進01");
		CreateSE("ＳＥ２","se戦闘_動作_空突進06");

	//▼コクピット（瞬間表示）
	Cockpit_AllFade2();
	//▼コクピット（自機情報：振動）
	FrameShake();

	//▼コクピット（自機情報：速度）
	CP_SpeedChange(120000,200,DxlAuto,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange(120000,2500,DxlAuto,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(120000,60,DxlAuto,false);

	//▼雲消去
	CloudZoomDelete2(500,false);

	//▼雲開始
	CloudZoomStart(700,1000,1000,500,1000);
	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	SoundPlay("ＳＥ１",0,1000,false);
	SoundPlay("ＳＥ２",0,1000,false);

	SetVolume("サウンド２", 1000, 400, NULL);

	Zoom("敵機１", 120000, 100, 100, DxlAuto, false);
	Move("背景３", 1000, @0, -30, Dxl1, false);
	Move("敵機１", 1000, @0, -245, Dxl1, false);

	FadeDelete("敵機２", 1000, false);
	Fade("絵Suf2", 1000, 0, null, true);

	//▼完全ランダム
	MoveFRP1("@背景３",20000,15,15);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,2,2);

	//▼固定値ランダム：停止
	MoveFFP1stop();
	MoveFTP2stop();
	Delete("背景４");
	Delete("絵Suf");
	
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
　我追赶着雪车町上升的骑影。
　缩短距离毫不费力。不断违反重力飞行的敌骑速率
已大幅下降。

　虽然如此，但仍在上升。
　而且，速率还在增加。

　在速率就是一切的空中战中挥洒昂贵的代价，龙骑兵
贪图着高度。
　没有限度。没有止境。没有满足。

　向着苍穹。
　以那无法触及的白色圣殿为目标。

{	SetVolume("@mbgm*", 3000, 0, NULL);}
　雪车町在想什么。
　即使被尾随也不改变方针，只是因为一不做，二不休
吗。

　就算是我这边，速度也渐渐开始减缓了。
　然而充分确认优势后再转向上升的村正，与交锋后就
一直持续上升的龙骑兵，其间的差距仍然不容乐观。
但差距正在缩短，优劣还是十分明确。

　捕捉到它只是需要一点时间。
　即使雪车町转身迎击，在他调整好姿态之前，我便能
将他斩倒。

　他应该已经意识到自己功亏一篑了吧。
　然而他并未停止飞翔。

　是被月夜的疯狂所蛊惑，将战斗忘记了吗——
　我甚至想到了这种事。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19100, 0, 0, SCREEN);

		//▼固定値ランダム：停止
		MoveFRP1stop();
		MoveFTP1stop();

		//▼雲消去
		CloudZoomDelete(0,true);

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		CreateTextureSP("背景１", 17000, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureSP("エフェクト１", 17000, -400, 10, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト１", 0, 576);
		Zoom("エフェクト１", 0, 2000, 2000, Dxl2, false);
		CreateTextureSP("エフェクト２", 18100, 0, 10, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト２", 0, 576);
		Zoom("エフェクト２", 0, 1500, 1500, Dxl2, false);

		CreateTextureSP("敵機１", 17100, -1000, 1000, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Rotate("敵機１", 0, @0, @0, -60, null, true);
		CreateTextureSP("自機１", 17100, -1000, 1000, "cg/st/3d村正標準_騎航_戦闘a2.png");
		Rotate("自機１", 0, @0, @0, -60, null, true);

		CreateSE("ＳＥ１","se戦闘_動作_空突進01");
		CreateSE("ＳＥ２","se戦闘_動作_空突進03");
		CreateSE("ＳＥ３","se戦闘_動作_空突進01");
		CreateSE("ＳＥ４","se戦闘_動作_空突進03");

	SetVolume("サウンド２", 2000, 0, NULL);

	FadeDelete("背景０", 500, false);

	SoundPlay("ＳＥ１",0,1000,false);
	SoundPlay("ＳＥ２",0,1000,false);

	Move("敵機１", 300, @1500, @-2300, null, 200);
	Fade("エフェクト*", 300, 600, null, false);
	Shake("エフェクト*", 300, 0, 10, 0, 0, 700, Dxl1, false);
	Zoom("エフェクト１", 300, 2200, 2200, Dxl1, false);
	Zoom("エフェクト２", 300, 1700, 1700, Dxl1, false);

	SoundPlay("ＳＥ３",0,1000,false);
	SoundPlay("ＳＥ４",0,1000,false);

	Move("自機１", 300, @1500, @-2000, null, 200);
	Fade("エフェクト*", 1000, 0, null, false);
	Shake("エフェクト*", 300, 0, 20, 0, 0, 700, Dxl1, false);
	Zoom("エフェクト１", 300, 2400, 2400, Dxl1, false);
	Zoom("エフェクト２", 300, 1900, 1900, Dxl1, true);

	Wait(1000);

		CreateTextureEX("背景２", 17100, 0, -576, "cg/bg/resize/bg001_空a_03.jpg");

		CreateTextureEX("自機１", 17100, -337, -189, "cg/st/3d村正標準_騎航_戦闘a2.png");
		Rotate("自機１", 0, @0, @0, -40, null, true);
		Zoom("自機１", 0, 100, 100, Dxl2, true);
		CreateTextureEX("敵機１", 17100, 100, -561, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
		Rotate("敵機１", 0, @0, @0, -40, null, true);
		Zoom("敵機１", 0, 100, 100, Dxl2, true);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",20000,2,2);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP2("@自機１",25000,2,2);

	Move("背景２", 120000, @-1024, @576, null, false);
	Fade("背景２", 1000, 1000, null, false);
	Fade("敵機１", 1000, 1000, null, false);
	Fade("自機１", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0841]
　该令人感到战栗的是他对低速域的制御力。
　一般这么做的话速度会急剧下降——不，应该是已经
减速到了会导致急速下降的危险值，但他用看不见的
缰绳完美地驾御了骑体。

　即便是在精锐上不落人后的六波罗正规兵，在这个速
域上，除了借助升力，回旋下落之外，也没有其他方法
了吧。
　号称百万骑的六波罗，又有几人能像这个男人一样呢。

　我无论如何都不认为这是九〇式龙骑兵甲的性能。
　这只能是雪车町一藏的能力了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		Delete("背景２");

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP2stop();

		CreateTextureSP("背景１", 17000, 0, -2000, "旋回イメージ２");
		CreateTextureSP("エフェクト１", 17000, 0, 0, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト１", 0, 576);
		CreateTextureSP("エフェクト２", 17000, 0, -577, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト２", 1024, 576);
		Rotate("エフェクト２", 0, @180, @0, @0, null, true);

		CreateTextureSP("自機１", 17100, -350, -300, "cg/st/3d村正標準_騎突_戦闘.png");
//		Zoom("自機１", 0, 500, 500, Dxl2, true);
		CreateTextureSP("敵機１", 17100, 286, -271, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機１", 0, 3000, 3000, Dxl2, true);
		SetShade("敵機１", MEDIUM);
		Request("敵機１", Smoothing);

		Zoom("エフェクト*", 120000, 10000, 10000, DxlAuto, false);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機１",20000,10,10);
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP2("@自機１",25000,5,5);

	FadeDelete("背景０", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0842]
　逼近敌尾。
　我方的速率已经到了危险值。即使放松少许，在放松
的那个瞬间，我也会从空中摔落到地上吧。


　就算不会那样，我也不能暴露出狼狈的一面。
　即使现在速度的差距正不断向零靠近，但这个差距仍
然确实地存在。敌骑正在完成更为严酷的飞行，而在此
之前，先倒下的会是我吗。

　还差一步。
　还差一步就能砍到他。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機１",20000,2,2);
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP2("@自機１",25000,2,2);

		Delete("背景１");
		Delete("エフェクト*");

			//▼コクピット（瞬間表示）
			Cockpit_AllFade2();
			//▼コクピット（自機情報：振動）
			FrameShake();
	
			//▼コクピット（自機情報：速度）
			CP_SpeedChange(0,165,DxlAuto,false);
			//▼コクピット（自機情報：高度）
			CP_HighChange(0,2800,DxlAuto,false);
			//▼コクピット（自機情報：仰角）
			CP_AltChange2(0,85,DxlAuto,false);
	
			//▼コクピット（自機情報：回転軸自動化）
			CP_RollBarMoveA();

		Fade("自機１", 0, 0, null, true);
		Fade("敵機１", 0, 0, null, true);

		Request("背景３", Smoothing);
		Zoom("背景３", 0, 1500, 1500, Dxl2, true);
		Move("背景３", 0, @0, 120, Axl1, true);

		CreateTextureSP("敵機２", 200, -170, -234, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機２", 0, 500, 500, Dxl2, true);

		//▼完全ランダム
		MoveFRP1("@背景３",20000,15,15);
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機２",10000,2,2);

	FadeDelete("背景０", 500, true);

	CreateTextureEX("背景０", 19998, 0, 0, SCREEN);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0843]
　敌我双方骑体的飞行轨道已经接近垂直上升。
　这样的飞行已然维持不了几秒了。

　这已是骑体的极限。

{	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 1, NULL);}
　雪车町————<k>
{	Fade("背景０", 2000, 1000, null, true);}<?>
　停下来了。

　终于，完全失去了速度。
　<RUBY text="··">倒下</RUBY>。

　翻倒——
　坠落——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――



		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼完全ランダム：停止
		MoveFRP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();
		//▼シェイク：停止
		MoveSSP1stop();

		CreateTextureEX("イベント１", 100, -437, -249, "cg/ev/resize/evex003_雪車町_嘲笑.png");

	Fade("背景０", 1000, 0, null, false);
	Fade("イベント１", 1000, 500, null, false);

//	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1630a12">
《咯—————————咯——————
　　咯咯————————咯—————咯咯——》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Fade("背景０", 1000, 1000, null, true);

//	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);

		CreateTextureSP("敵機２", 200, -170, -184, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		//SetVertex("敵機２", 650, 650);

		CreateTextureEX("敵機３", 200, -199, -519, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機３", 0, 800, 800, Dxl2, false);
		Rotate("敵機３", 0, @0, @0, 180, null, true);
		//SetBlur("敵機３", true, 1, 500, 100, true);

		Move("背景３", 0, -512, 288, Axl1, true);
		Zoom("背景３", 0, 2000, 2000, Dxl2, true);
	
		Delete("イベント１");

//	FadeDelete("背景０", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
　坠落<k>
{	SoundPlay("@mbgm12",0,1000,true);
	FadeDelete("背景０", 500, true);
}
　　　　　　　　　<RUBY text="···">并没有</RUBY>。

　雪车町一藏并未坠落。
　在上升到顶点时，扭转了方向舵。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

		CreateTextureEX("背景４", 200, 0, 0, "cg/bg/bg001_空a_03.jpg");
		CreateTextureEX("敵機４", 200, 100, -350, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("敵機４", 0, @0, @0, -60, Dxl1, true);

		CreateTextureEX("背景５", 17000, 0, -2000, "旋回イメージ２");
		CreateTextureEX("エフェクト１", 17000, 0, 0, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト１", 0, 576);
		CreateTextureEX("エフェクト２", 17000, 0, -577, "cg/ef/resize/efRec_雲_ex.png");
		SetVertex("エフェクト２", 1024, 576);
		Rotate("エフェクト２", 0, @180, @0, @0, null, true);

		CreateTextureEX("自機５", 17100, -226, -173, "cg/st/3d村正標準_騎突_戦闘.png");
//		Zoom("自機５", 0, 500, 500, Dxl2, true);
		CreateTextureEX("敵機５", 17100, 286, -271, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機５", 0, 3000, 3000, Dxl2, true);
		SetShade("敵機５", MEDIUM);
		Request("敵機５", Smoothing);
		CreateTextureEX("敵機９", 17100, -345, -1600, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機９", 0, 3000, 3000, Dxl2, true);
		SetShade("敵機９", MEDIUM);
		Request("敵機９", Smoothing);

	OnSE("se特殊_雰囲気_発光02",1000);
	OnSE("se特殊_雰囲気_発光04",1000);

	Wait(1500);

	Fade("色０", 400, 1000, null, false);
	Rotate("敵機２", 400, @0, @0, 20, Axl1, false);
	Move("敵機２", 400, @-20, @-10, Axl1, true);

		Rotate("敵機２", 0, @0, @0, 0, Axl1, false);

		Fade("背景４", 0, 1000, null, false);
		Fade("敵機４", 0, 1000, null, false);
		Fade("色０", 0, 0, null, true);

	Fade("色０", 400, 1000, null, false);
	Rotate("敵機４", 400, @0, @0, @-30, Axl1, false);
	Move("敵機４", 400, @-300, @0, Dxl1, true);

		Delete("背景４");
		Delete("敵機４");

		Fade("エフェクト*", 0, 1000, null, false);
		Fade("背景５", 0, 1000, null, false);
		Fade("自機５", 0, 1000, null, false);
		Fade("敵機５", 0, 1000, null, false);
		Fade("色０", 0, 0, null, true);

	Fade("色０", 400, 1000, Axl2, false);
	Fade("敵機５", 400, 0, Axl2, false);
	Move("敵機５", 400, @200, @-1000, Axl1, false);
	Fade("敵機９", 400, 1000, Dxl2, false);
	Move("敵機９", 400, @0, @1000, Dxl1, true);

		Delete("背景５");
		Delete("敵機５");
		Delete("敵機９");
		Delete("自機５");
		Delete("エフェクト*");

		Fade("エフェクト*", 0, 1000, null, false);
		Fade("背景５", 0, 1000, null, false);
		Fade("自機５", 0, 1000, null, false);
		Fade("敵機５", 0, 1000, null, false);
		//Fade("色０", 0, 0, null, true);

	CreatePlainSP("絵板写", 100);
	Request("絵板写", AddRender);

	Fade("色１", 0, 1000, null, true);
	Fade("色０", 0, 0, null, true);
	Fade("色１", 1000, 0, null, false);

	Zoom("絵板写", 2000, 1500, 1500, Dxl1, false);
	Fade("絵板写", 2000, 0, null, false);

	Rotate("敵機２", 1000, @0, @0, 80, Axl1, false);
	Move("敵機２", 1000, @0, @-50, Axl1, false);
	Zoom("敵機２", 1000, 800, 800, Axl2, false);
	Fade("敵機２", 1000, 0, null, 500);

	Fade("敵機３", 500, 1000, null, false);
	Rotate("敵機３", 1000, @0, @0, 0, Dxl1, false);
	Move("敵機３", 1000, @0, @200, Dxl2, false);
	Zoom("敵機３", 1000, 1000, 1000, Dxl1, true);

	WaitAction("絵板写", null);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0861]
　骤然地扭转。
　像魔术一般巧妙地，骑体在不到眨眼的时间内上下
翻了个身。

　雪车町的头盔，向着重力的方向——
　<RUBY text="··">向我</RUBY>直冲过来。

　垂直逆转。
　把握住于上升速度消失的瞬间所产生的下落重力，
利用这一点方才达成的行为。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	Request("敵機３", Smoothing);

	CreateTextureEX("イベント１", 100, -473, -210, "cg/ev/resize/evex003_雪車町_嘲笑.png");
	Fade("イベント１", 1000, 500, null, true);

//	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1640a12">
　　　　　　　　《咯咯。》

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1650a12">

　　　　　　　《喀喀喀喀。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateEffect("エフェクト１", 1000, 0, 0, 1024, 576, "Monochrome");
	SetAlias("エフェクト１", "エフェクト１");
	Fade("エフェクト１", 0, 0, null, true);
	Fade("エフェクト１", 1000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
　突然，我明白了。
　毫无预兆。亦无根据。

　只是，上天赐予的一闪而过的灵感。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	WaitAction("エフェクト１", null);

	CreateWindow("ウィンドウ１", 150, 512, 0, 512, 576, false);
	SetAlias("ウィンドウ１", "ウィンドウ１");
	CreateTextureEX("ウィンドウ１/イベント４", 3000, 324, -211, "cg/ev/resize/evex003_景明_戦闘.png");
	Fade("ウィンドウ１/イベント４", 500,1000, null, true);

	CreateWindow("ウィンドウ２", 150, 0, 0, 512, 576, false);
	SetAlias("ウィンドウ２", "ウィンドウ２");
	CreateTextureEX("ウィンドウ２/イベント０", 3000, -473, -210, "cg/ev/resize/evex003_雪車町_嘲笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0881]
　
　　　凑斗景明的敌人便是<k>
{	Fade("ウィンドウ２/イベント０", 500, 1000, null, true);}
　　　　　　　　　　　　　雪车町一藏。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("サウンド２",2000,300,true);

	SetVolume("サウンド１", 1000, 1000, NULL);

	CreateTextureSP("背景０", 19999, 0, 0, SCREEN);
	Delete("エフェクト１");
	Delete("ウィンドウ*");
	Delete("イベント*");
	FadeDelete("背景０", 500, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0882]
　时间在流动。
　所谓重力的力量在流动。

　现在雪车町毫无劣势。
　姿势完备。

　速度差距——逆转。
　因为，纯正的重力——垂直方向的重力，为雪车町
提供了帮助。

　垂直方向的重力。
　是我如今，正面迎接的敌人。

　转瞬之间开始随即结束的，完美的逆转剧。
　用旁观者的心境，我想到了那个已经毫无用处的知识。

　…………那是。
　从一刀流的始祖·伊东一刀斋的师父，中条流的钟卷
自斋处所继承的五个秘法——

　一刀流的最终奥义。
　妙剑／绝妙剑／真剑／独妙剑……

　于是。
　这个————

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

		CreateTextureSP("敵機２", 200, -199, -319, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Request("敵機２", Smoothing);

		CreateTextureEX("イベント２", 3000, 117, -163, "cg/ev/resize/evex003_雪車町_哄笑.png");
//		Zoom("イベント２", 0, 3000, 3000, Dxl2, true);
		SetBlur("イベント２", true, 2, 500, 100, false);

		CreateTextureEXadd("エフェクト１", 1000, 0, 0, "cg/ef/ef003_汎用移動.jpg");
		Zoom("エフェクト１", 0, 20000, 20000, Dxl2, true);

		CreateSE("ＳＥ１","se戦闘_動作_空突進02");
		CreateSE("ＳＥ２","se戦闘_動作_空突進06");
		CreateSE("ＳＥ３","se戦闘_動作_空突進07");
		CreateSE("ＳＥ４","se戦闘_攻撃_殴る05");

		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);
		SoundPlay("ＳＥ３",0,1000,false);
		SoundPlay("ＳＥ４",0,1000,false);

	SetVolume("サウンド１", 2000, 1, NULL);
	SetVolume("サウンド２", 2000, 0, NULL);

	Fade("エフェクト１", 300, 500, null, false);
	Zoom("エフェクト１", 500, 1000, 1000, Dxl1, false);

	Move("背景３", 500, @200, @-200, Dxl1, false);

	Fade("敵機２", 500, 500, null, false);
	Move("敵機２", 500, -528, -247, Dxl1, false);
	Move("敵機３", 500, -528, -247, Dxl1, false);
	Zoom("敵機２", 500, 1800, 1800, Axl1, false);
	Zoom("敵機３", 500, 1500, 1500, Axl1, false);

//	Zoom("イベント２", 500, 1000, 1000, Dxl1, false);
	Fade("イベント２", 500, 600, null, false);

//	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1660a12">
　
　　《喀～～～～喀喀喀喀喀喀喀——————!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆金翅鳥王剣
		CreateSE("ＳＥ５","se戦闘_攻撃_鎧_剣戟02");
		CreateSE("ＳＥ６","se戦闘_動作_空突進03");
		CreateSE("ＳＥ７","se特殊_雰囲気_発光03");
		CreateSE("ＳＥ８","se特殊_雰囲気_鎧登場演02");

	OnSE("se戦闘_動作_空突進08",1000);

	Fade("色１", 500, 1000, null, false);
	Zoom("イベント２", 500, 3000, 3000, Axl1, false);
	Rotate("エフェクト１", 500, @0, @0, 36000, null, false);

	Move("背景３", 500, @-200, @-200, Axl1, false);

	Fade("敵機２", 500, 0, null, false);
	Move("敵機２", 500, 0, -200, Dxl1, false);
	Move("敵機３", 500, 0, -200, Dxl1, false);
	Zoom("敵機２", 500, 2000, 2000, Axl1, false);
	Zoom("敵機３", 500, 1800, 1800, Axl1, true);

		Delete("エフェクト*");
		Delete("イベント２");
		Delete("敵機*");
		Delete("自機*");

		CreateTextureSP("イベント１", 100, -1000, -576, "cg/ev/resize/ev914_九〇式竜騎兵魔剣インメルマンターン_l.jpg");
		Zoom("イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("イベント１", true, 1, 500, 50, false);

		CreateTextureEX("イベント２", 200, 0, 0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
		SetVertex("イベント２", 628, 138);
		Zoom("イベント２", 0, 2000, 2000, Dxl2, true);
		SetBlur("イベント２", true, 2, 500, 100, false);

	SoundPlay("ＳＥ５",0,1000,false);
	SoundPlay("ＳＥ７",0,1000,false);

	Fade("色１", 500, 0, null, false);
	BezierMove("イベント１", 1000, (@0,@0){1000,700}{0,700}(-1200,100), Dxl2, 500);
	Fade("色１", 500, 1000, null, true);

	SoundPlay("ＳＥ６",0,1000,false);

		Fade("イベント２", 0, 1000, null, true);
	Fade("色１", 500, 0, null, false);
	Zoom("イベント２", 1000, 1000, 1000, Dxl2, false);

	Wait(500);

	SoundPlay("ＳＥ８",0,1000,false);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　
　　　　　　　　“金翅鸟王剑”

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆どかーん。
	OnSE("se戦闘_動作_空突進04",1000);

	Zoom("イベント２", 1000, 3000, 3000, Axl1, false);
	Fade("色１", 1000, 1000, null, true);

	CreateMovie("ムービー１", 17100, 0, 0, false, false, "dx/mvインメルマン.ngs");
	SetAlias("ムービー１", "ムービー１");
	Request("ムービー１", Stop);

	Fade("色１", 500, 0, null, false);
	OnSE("se特殊_mv用_インメルマン",1000);
	Request("ムービー１", Play);
	WaitAction("ムービー１", null);

	Fade("色１", 0, 1000, null, true);

		Delete("ムービー１");
		Delete("イベント１");
		Delete("イベント２");
		Delete("背景*");
		Delete("絵Suf*");

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);
	OnSE("se戦闘_攻撃_鎧攻撃命中03",1000);
	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_破壊_鎧02",1000);
	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se戦闘_攻撃_鎧_吹っ飛ぶ02",1000);

	Wait(3000);
	Fade("色１", 1000, 0, null, true);
	Wait(3000);

//◆イメージ画像？
	CreateTextureEX("イベント１", 17000, 0, 0, "cg/ev/ev270_インメルマンターン回想_a.jpg");
	CreateTextureEX("イベント２", 17000, 0, 0, "cg/ev/ev270_インメルマンターン回想_b.jpg");


	Fade("イベント１", 500, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　马克思·殷麦曼中尉。
　在自西历一九一四年持续至一九一八年的欧洲战争中，
有一位威名无与伦比，声名远播，德国之傲的击坠王。


　他的名字中没有“侯”之一字，所以显而易见地，与
他的名字相符，他虽然从属龙骑兵团，但并非骑士阶级
出身。
　并非真打剑胄的继承者。

　那个时代，必须说，他那样的击坠王是个特例。
　西历一九〇〇年代初期（国历二五〇〇年代中期），
那是个连数打剑胄也才刚开发出来不久的时代，同现
在相比其性能滞留在相当低的水准。

　他的爱骑福克Ｅ３亦是如此。
　采用拉线支撑的单翼骑——虽说是凝聚了当代技术结
晶的骑体，但终究无法弥补同真打剑胄性能间的差距。


　那时，为战场增添色彩的各国击坠王——渊源正统的
名门骑士，同时也是最强剑胄的继承者们——与区区一
介骑兵军官的殷麦曼之间，在骑体的性能这一点上，便
必定有着天壤之别。

　然而，他被分配到的法国北部战线，敌方有许多正规
骑士，与此相对，己方的骑士由于是从对俄战线中调度
而来，数量上几乎等于没有，状况委实严酷到了极点。


　战友都是如他一般新加入的弱小龙骑兵。
　敌方则是众多训练有素的强大骑士。
　……不用说获得战功了，仅仅是存活下来都是个相当
大的难题。

　在这个生死关头，使殷麦曼成为击坠王的，是他在少
年时期，与一个偶然相遇的外国人的经历。

　德川时代拉下帷幕之后，大和大量吸收在闭关锁国的
前朝被视为反动的西洋文化，虽然学得东拼西凑，但在
军事编制上向普鲁士——德国效仿的地方非常多。


　因为普鲁士军看上去才是欧洲最精锐最强大的军队。

　大和曾数次派遣军事交流团去普鲁士，贪婪地吸收着
技术知识。

　然后，一个远渡至德国的男子……
{	Wait(1000);
	Fade("イベント２", 500, 1000, null, true);}
　小野派一刀流十六代宗家，笹木纯藏。

　他因偶然的机会认识了少年时期的殷麦曼，向他传授
了一刀流的入门剑术，然后发现殷麦曼颇有天分，便连
奥义都传授给了他。……是该说他过于轻率呢，还是气
度慷慨呢，总之似乎是个有点奇怪的人。

　然而在他归国之后，便因这出卖国粹文化的行为广受
批判，对此，他用以下的回应驳倒这些质疑。
　——只学习，不教授的人，即是智慧的盗贼。我们向
德军学习，作为回礼，我便教授那位少年。

　如此一来，殷麦曼拜领了一刀流的奥秘，可一定就连
亲自教授他的笹木本人，都未曾料到他能够活用这一秘
技。

　虽说一刀流五大秘技的传授从未间断，但由于其十分
晦涩难懂，所以自始祖以来，从未有人能熟练运用，使
得这份奥义并非成为技巧，仅仅成为了知识。
　同门真传的本领也只是成为了一种形式而已。

　然而，在法国北部战线的极限状况下——
　被敌方勇猛的骑士所追赶的马克思·殷麦曼，在命悬
一线的抗争旋涡之中，终于，使秘剑之一得以复苏。


　金翅鸟王剑。
　垂直飞行后翻转下落的攻击。
　攻克对于自己有压倒性优势的敌人，起死回生的剑术。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("イベント１", 0, 0, null, true);

	Fade("イベント２", 1000, 0, null, true);
	Fade("イベント１", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0911]
　之后，殷麦曼便时常使用这个技巧，将许多骑士从空
中击坠，使敌我双方都惊叹不已。
　他的人与他的技法齐名，一同席卷欧洲，成为如恶魔
般使人恐慌，如战神般令人畏惧的存在。

　直到一九一六年战死时，一生中共击坠十七骑。
　全部都是名震法国的骑士。

　现在，他的美名仍然不断被歌颂，无人不晓。
　最强、无敌、魔剑、神技——已经同他的死亡一起消
逝，就像战场上出现的幻影一般，各国的军人以及历史
书都会永恒地称颂他的名字。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("イベント１", 500, 0, null, true);

	CreatePlainSP("絵板写", 18010);
	CreateTextureSP("イベント２", 1000, -915, -168, "cg/ev/resize/ev914_九〇式竜騎兵魔剣インメルマンターン_l.jpg");
	Request("イベント２", Smoothing);
	Zoom("イベント２", 0, 900, 900, Dxl2, true);
	CreateTextureSPadd("イベント１", 17000, 400, 0, "cg/ev/ev270_インメルマンターン回想_a.jpg");
	Fade("イベント２", 0, 500, null, true);
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0912]
“<RUBY text="·Ｔｕｒｎ">翻转</RUBY>”。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆現実復帰
//◆モニターが赤く点滅。露骨にヤバイ。

	SetVolume("@mbgm*", 3000, 0, NULL);

	Fade("色１", 3000, 1000, null, true);

		Delete("イベント*");

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();
	
		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
	
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,150,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(0,2800,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,20,Dxl1,false);
	
		//▼コクピット（自機情報：装甲）
		MyLife_Count(0,250);
		//▼コクピット（自機情報：出力）
		MyTr_Count(0,180);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(100,200,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,2,null,false);
		
		//▼コクピット（自機情報：回転軸）
		//CP_RollBarMove2(0,0,Dxl1,false);
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();
	
		//▼雲開始
		//CloudZoomStart(700,1000,1000,500,1000);
		//▼雲移動
		//CloudZoomVertex(0,@0,@-300,Axl1,false);

		CreateTextureSP("背景１", 100, -700, 0, "cg/bg/resize/bg001_空c_03l.jpg");
		Request("背景１", Smoothing);
		Zoom("背景１", 0, 2000, 2000, Dxl1, true);

		//▼固定値ランダム
		MoveFFP1("@背景１",5000);

		CreateTextureSPover("ノイズ１", 10000, 0, 0, "cg/data/noize_01_00_0.png");
		Zoom("ノイズ１", 0, 1200, 1200, Dxl2, true);

		CreateColorSPmul("上色１", 17000, "#772222");

		CreateColorSPmul("エフェクト１", 19000, "#AA2222");
		CreateColorSPmul("エフェクト２", 19000, "#AA2222");
		Request("エフェクト２", Erase);
		//▼繰り返し
		CreateAFB1("@エフェクト１","@エフェクト２",500,700,700,2);

	SetVolume("サウンド１", 4000, 1000, NULL);

	Shake("ノイズ１", 4000, 0, 50, 0, 0, 700, null, false);
	Fade("ノイズ１", 4000, 0, null, false);
	Fade("色１", 2000, 0, null, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//◆「御堂、聞こえている!?
//◆　騎体を立て直して！　動けないの!?」
//◆と収録後に電波状況の悪い無線っぽく加工か。
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1670a01">
《主君……听……了吗?!
　将……骑………不………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　村正的声音很遥远。
　视野昏暗——赤红。

　究竟受了多重的伤呢。
　仿佛在思考他人之事的意识，从现状推理出来。

　濒死。

　还活着就算不可思议了。
　不，说不定正在走向死亡。

　……金翅鸟王剑。
　没想到，那种亡灵会从墓地中爬出来。


　殷麦曼没有继承者。
　他的剑是他一个人的技术，到他本人便失传了。

　<RUBY text="··············">熟练驾御失速状态的骑体制御力</RUBY>。
　那样的技术，自他之后谁也不曾拥有过，这种事情，
与其说是遗憾，不如说是理所当然。

　然而。
　这个男人——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雪車町_嘲笑.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1680a12">
《嘿、嘿、嘿……
　嘿～嘻呀嘻呀嘻呀嘻呀嘻呀嘻呀!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　雪车町一藏。
　居然有这种男人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一瞬ブラックアウト
	CreatePlainEX("背景０", 19998);
	SetShade("背景０", MEDIUM);
	Fade("背景０", 300, 1000, null, true);

	SetVolume("サウンド１", 300, 1, NULL);
	Fade("色０", 300, 1000, null, true);

		CreatePlainEX("背景９", 18000);

	SetVolume("サウンド１", 1000, 1000, NULL);

	Fade("色０", 300, 0, null, false);
	FadeDelete("背景０", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　眩晕。
　我，还在飞行吗。

　我，还在那个瞬间之中吗……
　还是说，其实我已经下落，只不过自己没有意识到
而已呢……

　到底如何，我无法判断。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 1000, 1, NULL);

	//▼繰り返し：停止
	AFB1stop();
	Fade("エフェクト*", 500, 0, null, true);

	Fade("背景９", 1000, 1000, null, true);

		Shake("ノイズ１", 0, 0, 50, 0, 0, 700, null, false);
		Fade("ノイズ１", 0, 0, null, true);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFFP1stop();

		//▼コクピット（自機情報：振動停止）
		FrameShakeDelete();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：仰角）
		CP_AltChange(0,20,null,true);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange2(0,150,null,true);
		//▼コクピット（自機情報：高度）
		CP_HighChange2(0,2800,null,true);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0961]
　……对了。
　我知道一件事。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("サウンド２","se戦闘_動作_空突進05");
	SoundPlay("@サウンド２",2000,200,true);

	CreatePlainSP("絵板写", 19999);
		FadeDelete("背景９", 0, false);
		SetShade("背景１", MEDIUM);
		CreateTextureSP("敵機１", 1000, -200, -488, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		SetShade("敵機１", MEDIUM);
		Zoom("敵機１", 0, 50, 50, Dxl2, true);
	FadeDelete("絵板写", 500, true);
	CreatePlainSP("絵板写", 19999);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0962]
　来了。
　正在过来。

{		SetVolume("サウンド２", 2000, 400, NULL);
		SetShade("敵機１", NULL);
		Zoom("敵機１", 0, 300, 300, Dxl2, true);
	FadeDelete("絵板写", 500, true);}
　那个男人，正向着这边而来——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//◆「御堂！　回避して！」で、加工か。
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs1690a01">
《主……！
　回……避……！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆雪車町一撃
//◆ずがーん。また大ダメージ。
		OnSE("se戦闘_動作_空突進02",800);

		//▼コクピット（自機情報：振動）
		FrameShake();

	Move("敵機１", 300, @200, @2000, Axl1, false);
	Zoom("敵機１", 300, 2000, 2000, Dxl3, false);
	Wait(250);
	Fade("色０", 50, 1000, null, true);

		CreateSE("ＳＥ１","se日常_機械_ノイズ01");

		OnSE("se戦闘_攻撃_殴る06",1000);
		OnSE("se戦闘_動作_鉄壁吹っ飛ばす",1000);
		OnSE("se戦闘_破壊_鎧03",800);

		SetVolume("サウンド２", 2000, 0, NULL);
		SetVolume("サウンド１", 2000, 1000, NULL);

		MusicStart("ＳＥ１",2000,300,0,500,null,true);
	//	SoundPlay("ＳＥ１",2000,500,true);

	//▼コクピット（自機情報：方位）
	CP_AziChange(1000,60,Dxl1,false);
	//▼コクピット（自機情報：速度）
	CP_SpeedChange(1000,200,Dxl1,false);
	//▼コクピット（自機情報：高度）
	CP_HighChange(1000,2500,Dxl1,false);
	//▼コクピット（自機情報：仰角）
	CP_AltChange2(1000,360,Dxl1,false);
	//▼コクピット（自機情報：回転軸）
	CP_RollBarMove2(1000,-60,Dxl1,false);

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,180);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,180);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(1000,100,null,false);
	
	Shake("背景１", 500, 0, 50, 0, 0, 700, null, false);
	Move("背景１", 500, @100, @100, null, false);
	Fade("色０", 100, 0, null, false);
	Wait(100);
	Fade("色０", 300, 1000, null, true);

		//▼雲正面
		CloudZoomSet2("マド",1000,0,0,1024,576);
		//▼雲開始
		CloudZoomStart2B(700,1000,1000);
	
		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(1000,200,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,-60,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,180,Dxl1,true);
	
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();
	
		CreateTextureSP("背景１", 100, 0, 0, "cg/bg/bg001_空c_03.jpg");
		Rotate("背景１", 0, @180, @0, 0, null, true);
		Zoom("背景１", 0, 2000, 2000, Dxl1, true);

		CreateTextureEX("背景２", 100, Center, Middle, "旋回イメージ１");
		SetTone("背景２", Monochrome);
		CreateSurfaceEX("絵Suf",200,2000,"背景２");
		CreateTextureEX("背景３", 100, Center, -800, "旋回イメージ２");
		SetTone("背景３", Monochrome);
		SetSurface("背景３","絵Suf");
		CreateTextureEX("背景４", 100, Center, -5200, "旋回イメージ３");
		SetTone("背景４", Monochrome);
		SetSurface("背景４","絵Suf");

		//▼固定値ランダム
		MoveFFP1("@背景１",5000);
	
		//▼繰り返し
		CreateAFB1("@エフェクト１","@エフェクト２",500,700,700,2);
	
		Fade("ノイズ１", 0, 500, null, true);
	
		//▼シェイク
		MoveSSP1("@ノイズ１",100000,0,3,0,3,1000,null);

	Zoom("背景１", 1000, 2000, 2000, Dxl2, false);
	Fade("色０", 1000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
　世界剧烈摇晃。
　这亦无法让我感到是发生在自己身上的事。

　是因为没有痛楚吗。
　肉体某处，应该被深深地切开了，但神经并未传来
信号。

　已经，麻痹了吗。
　应当接受信号的大脑损坏了吗……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆モニター白黒化

	//★ロック設置
	LockVideo(true);
		CreateEffect("エフェクト０", 19999, 0, 0, 1024, 576, "Monochrome");
		SetAlias("エフェクト０", "エフェクト０");
		Fade("エフェクト０", 0, 0, null, true);
	//★ロック設置
	LockVideo(false);

	CreateSE("ＳＥ２","se擬音_雰囲気_超回復");
	MusicStart("ＳＥ２",0,500,0,500,null,false);

	SetVolume("ＳＥ１", 3000, 0, NULL);

	OnSE("se特殊_ノイズ01",700);
	Fade("エフェクト０", 300, 1000, null, true);
	Fade("エフェクト０", 300, 0, null, true);

	CreatePlainSP("絵板写", 19998);
	Draw();
	Fade("エフェクト０", 2000, 1000, null, true);

		//▼繰り返し：停止
		AFB1stop();
	
		//▼シェイク：停止
		MoveSSP1stop();

		Fade("ノイズ１", 0, 0, null, false);
		Fade("上色１", 0, 0, null, false);
		Fade("エフェクト１", 0, 0, null, false);
		Fade("エフェクト２", 0, 0, null, true);
	
		Delete("上色１");
		Delete("ノイズ１");
		Delete("エフェクト１");
		Delete("エフェクト２");

		SetTone("@背景１", Monochrome);
		SetTone("@CP*", Monochrome);

		CreateTextureEXadd("エフェクト１", 15000, 0, 0, "cg/ef/ef038_汎用射撃.jpg");
		Zoom("エフェクト１", 0, 1100, 1100, Dxl2, true);
		Rotate("エフェクト１", 0, @0, @0, -40, null, true);
		CreateTextureEXadd("エフェクト２", 1000, 0, 0, "cg/ef/ef042_汎用打撃.jpg");
		Zoom("エフェクト２", 0, 1100, 1100, Dxl2, true);
	
		SetTone("@エフェクト１", Monochrome);
		SetTone("@エフェクト２", Monochrome);
		
		CreateTextureSP("敵機１", 200, -300, 1000, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Rotate("敵機１", 0, @0, @0, 90, null, true);
		Zoom("敵機１", 0, 0, 0, Axl2, true);
		SetTone("敵機１", Monochrome);

		//▼コクピット（自機情報：熱量）
		CP_PowerChange(500,20,null,false);

//	OnSE("se特殊_雰囲気_発光03",1000);

	FadeDelete("エフェクト０", 500, false);
	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
　……灰色视症。
　宣告空中战士死亡的生理现象。

　发生这样的现象意味着热量的匮乏正在向致命的警戒
线逼近。
　现在，自我的肉体中，热量已随着血液一起，即将流
失殆尽了吧。

　视野一片朦胧，但听觉却依旧鲜明。
　有声音传来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("サウンド１", 4000, 700, NULL);

	Zoom("敵機１", 4000, 100, 100, Dxl1, false);
	Move("敵機１", 4000, @0, @-1300, Dxl1, false);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1700a12">
《无论几次我都会说给你听……
　你就是个无趣的半吊子废物。》
{
	WaitAction("敵機１", null);
	SoundPlay("@mbgm31",0,1000,true);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,3,5);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1710a12">
《为什么，吗？
　你不是<RUBY text="···">不情愿</RUBY>地做着吗？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1720a12">
《在那个村子杀死小孩的时候也是……
　前几天，在赛场的骚动后杀人的时候
也是这样……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1730a12">
《你啊，一边用身体说着，不要，不要，
一边杀掉别人……》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1740a12">
《是吧?!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆雪車町来襲
//◆どがーん。


	Rotate("敵機１", 500, @0, @0, @-90, null, false);
	Move("敵機１", 500, @200, @0, Axl1, false);
	Zoom("敵機１", 500, 2000, 2000, Axl2, false);
	Wait(400);
	Fade("エフェクト１", 100, 1000, null, false);
	Fade("色０", 100, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2(700,1000,1000);
		CloudZoomVertex2(0,@-500,@0,Dxl2,true);

		Fade("エフェクト１", 0, 0, null, false);

		Delete("敵機１");
		Fade("背景１", 0, 0, null, false);
		Fade("背景２", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,170);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,160);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,-40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,220,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-70,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,150,Dxl1,false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, 40, Dxl1, false);
	Shake("背景２", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, true);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1750a00">
「嘎……唔……」

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1760a12">
《其实真的不想做这种事情……
我早已看穿你心里是怎么想的了。》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1770a12">
《咯、咯！
　不想做的话不做就可以了吧……》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1780a12">
《不将<RUBY text="······">使坏的老爷爷</RUBY>杀掉的话，也不用
再去杀<RUBY text="······">老实的老爷爷</RUBY>了吧？
　你啊，只要什么都不做就好了吧！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1790a00">
《你……不了解……》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1800a12">
《啊……》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1810a00">
《什么都不知道。》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1820a00">
《我……不得不做。
　这并不是……不想做就不做，的事
…………》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1830a00">
《我……不去做的话……》

{	FwC("cg/fw/fw雪車町_警戒.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1840a12">
《……嘿。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銃撃
//◆ずがががが。

	CreateTextureSP("敵機１", 200, -1300, -500, "cg/st/3d九〇式竜騎兵_騎航_戦闘b.png");
	Rotate("敵機１", 0, @0, @0, 40, null, true);
	SetTone("敵機１", Monochrome);

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,165);

	Rotate("エフェクト２", 0, @0, @180, @0, null, false);
	Fade("エフェクト２", 0, 500, null, true);

	Fade("エフェクト２", 1000, 0, null, false);
	Shake("エフェクト２", 1000, 0, 50, 0, 0, 700, Dxl1, false);

	Fade("色０", 0, 500, null, false);
	Shake("背景２", 2000, 0, 50, 0, 0, 700, Dxl1, 1500);
	Fade("色０", 500, 0, null, false);


	Zoom("敵機１", 500, 1500, 1500, null, false);
	Move("敵機１", 500, @2500, @500, null, true);

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1850a12">
《那是怎样的事呢。
　你如果不做<RUBY text="···">那件事</RUBY>的话，
这个世界就会毁灭吗？》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1860a12">
《这不是很好吗。
　只有你能拯救，但是你又不想这么
做……如果这样的话。》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1870a12">
《弃之不顾吧。
　带着笑容，这么做吧。》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1880a00">
《……这……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
　这种事情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1890a12">
《不管哪边都好。
　拯救，亦或是舍弃。》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1900a12">
《不管哪边都好哦……
　你理解之后再去做，好吧？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
　……理解。

　我不做的话……不行。
　银星号也好……寄生体也罢……除了用村正的力量
去阻止，别无他法……

　所以……杀戮。
　我会，杀戮。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1910a00">
《我……理解的。》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1920a12">
《才没有。
　如果你理解的话，为什么还会哭喊？》

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs1930a00">
《……我没有哭。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
　没有眼泪流下。
　……不会有的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1940a12">
《你哭了啊。真难看啊。
　……诶嘿！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
　仿佛真的在头盔中吐了唾沫一般的声音，化为信号
传到耳边。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1950a12">
《人们，都是靠做想做的事情而活下来的。
　这倒也是。因为无论是什么样的家伙，除了
<RUBY text="····">自己的事</RUBY>，<RUBY text="······">别的都不了解</RUBY>啊。》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1960a12">
《别人的事完全不明白。
　所以做自己想做的事……》

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1970a12">
《做你所想的，
　你所理解的事。
　大家都是这样，<RUBY text="···">认真地</RUBY>活着。》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1980a12">
《所以这个世界才如此有趣……
　就算是像现在这样生存艰难的世态，人们也
都格外地认真啊。》

{	FwC("cg/fw/fw雪車町_満足.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs1990a12">
《陪伴也好，争吵也罢……
大家对生存这件事并未抱着半吊子的心态，
很好。
　这个也好那个也好，都是快乐的家伙啊……》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2000a12">
《只有你。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆来襲
//◆ずどーん

	Rotate("エフェクト１", 0, @0, @0, -45, null, true);

	CreateTextureSP("敵機１", 200, 0, -1000, "cg/st/3d九〇式竜騎兵_騎航_戦闘a.png");
	Rotate("敵機１", 0, @0, @0, 150, null, true);
	SetTone("敵機１", Monochrome);

	Move("敵機１", 300, @-500, @1200, null, false);
	Wait(200);
	Rotate("エフェクト１", 100, @0, @0, -90, null, false);
	Fade("エフェクト１", 100, 1000, null, false);
	Fade("色０", 100, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		//CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2(700,1000,1000);
		CloudZoomVertex2(0,@1000,@0,Dxl2,true);

		CreateTextureSP("敵機１", 200, 500, 500, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Rotate("敵機１", 0, @0, @0, @-30, null, true);
		SetTone("敵機１", Monochrome);
		CreateTextureSP("敵機２", 200, -500, -500, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Zoom("敵機２", 0, 0, 0, Dxl1, false);
		Rotate("敵機２", 0, @0, @0, @-70, null, false);
		SetTone("敵機２", Monochrome);

		Fade("エフェクト１", 0, 0, null, false);

		Fade("背景２", 0, 0, null, false);
		Fade("背景３", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, 180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,155);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,140);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,220,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-70,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,-150,Dxl1,false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, -40, Dxl1, false);
	Shake("背景３", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, 1000);

	Zoom("敵機１", 2000, 0, 0, Dxl1, false);
	BezierMove("敵機１", 2000, (@0,@0){@200,@-400}{@-200,@-600}(@-700,@-700), Dxl1, false);

	//▼Ｘ軸ランダムＹ軸均等
	//MoveFTP1("@敵機２",20000,3,5);

	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2010a12">
《做一些连自己都不理解的事情，
<RUBY text="····">吊儿郎当</RUBY>的家伙只有你一个。
　用着糊涂的生存方式……》
{
	WaitAction("敵機１", null);
	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();
	Move("敵機２", 20000, @100, @100, Axl1, false);
	Zoom("敵機２", 20000, 100, 100, Dxl1, false);
}<BR>


{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2020a12">
《太扫兴啦！
　居然还有你这种人!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃
//◆ずがーん

	Rotate("敵機２", 600, @0, @0, @-180, null, false);
	Zoom("敵機２", 600, 2000, 2000, Axl1, false);
	Wait(400);
	Rotate("エフェクト１", 200, @0, @0, -160, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		//CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2B(700,1000,1000);
		CloudZoomVertex2(0,@-400,@0,Dxl2,true);

		CreateTextureSP("敵機１", 200, 500, 500, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Rotate("敵機１", 0, @0, @0, @-30, null, true);
		SetTone("敵機１", Monochrome);
		CreateTextureSP("敵機２", 200, -1000, 1000, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("敵機２", 0, @0, @0, @-30, null, false);
		SetTone("敵機２", Monochrome);

//		CreateTextureEX("背景１", 100, 0, 0, "cg/bg/bg001_空a_03.jpg");
//		Zoom("背景１", 0, 2000, 2000, Dxl2, true);

		Fade("エフェクト１", 0, 0, null, false);

		Fade("背景*", 0, 0, null, false);
		Fade("背景４", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,140);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,130);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,-40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,250,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-30,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,-210,Dxl1,false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, 70, Dxl1, false);
	Shake("背景４", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, true);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();

	SetFwC("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2030a12">
《所以，如果你独自一人隐居起来
也就罢了。
　这是你的自由。》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2040a12">
《……然而你却杀人……》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2050a12">
《不情愿地杀人。》

{	FwC("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2060a12">
《将那两个小鬼……
　将那对姐妹，不情愿地杀掉了!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆連撃
//◆がんがんがーん。

	Move("敵機２", 500, @2000, @-2000, null, false);
	Wait(400);
	Rotate("エフェクト１", 200, @0, @0, -290, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 100, 1000, null, true);

		Fade("エフェクト１", 0, 0, null, false);
		Fade("色０", 400, 0, null, false);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,145);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,135);

		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(1000,20,Dxl1,false);
	
		Move("背景４", 1000, @0, 0, Dxl1, false);
		Shake("背景４", 1000, 0, 50, 0, 0, 700, Dxl1, false);
		Rotate("絵Suf", 1000, @0, @0, 150, Dxl1, true);

//	WaitKey();

	Rotate("エフェクト１", 0, @0, @0, -45, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		Fade("エフェクト１", 0, 0, null, false);
		Fade("色０", 400, 0, null, false);

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,135);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,125);

		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(1000,-120,Dxl1,false);
	
		Rotate("敵機１", 1950, @0, @0, 360, Dxl1, false);
		Zoom("敵機１", 950, 20, 20, null, false);
//		Move("敵機１", 950, @-1000, @-600, Dxl3, false);
		BezierMove("敵機１", 1950, (@0,@0){@-666,@-400}{@-666,@-400}(@-1000,@-600){@-666,@-700}{@-333,@-800}(@0,@-900), DxlAxl, false);

		Move("背景４", 1000, @0, -5200, Dxl1, false);
		Shake("背景４", 1000, 0, 50, 0, 0, 700, Dxl1, false);
		Rotate("絵Suf", 1000, @0, @0, 120, Dxl1, false);

		Wait(1000);
		Zoom("敵機１", 1000, 0, 0, AxlAuto, false);
		Wait(1000);

		//▼コクピット（自機情報：回転軸自動化）
		//CP_RollBarMoveA();

	WaitAction("敵機１", null);

//	WaitKey();

	Rotate("エフェクト１", 0, @0, @0, 0, Dxl1, false);
	Rotate("敵機２", 0, @0, @0, 180, null, true);
	Move("敵機２", 0, 1000, -1000, null, true);

	Move("敵機２", 500, @-1500, @800, null, false);
	Wait(300);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2(700,1000,1000);
		CloudZoomVertex2(0,@-100,@0,Dxl2,true);

		CreateTextureSP("敵機１", 200, -300, -1000, "cg/st/3d九〇式竜騎兵_騎突_戦闘b.png");
		Rotate("敵機１", 0, @0, @0, 50, null, true);
		Zoom("敵機１", 0, 50, 50, Dxl2, true);
		SetTone("敵機１", Monochrome);
		Delete("敵機２");

		Fade("エフェクト１", 0, 0, null, false);

		Fade("背景*", 0, 0, null, false);
		Fade("背景３", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,125);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,125);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,-40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,250,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-30,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,-30,Dxl1,false);

	Move("背景３", 2000, @0, @-1000, Dxl1, false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, 70, Dxl1, false);
	Shake("背景３", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, true);

	//▼コクピット（自機情報：回転軸自動化）
	CP_RollBarMoveA();


	SetFwC("cg/fw/fw景明_苦痛.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2070a00">
「……唔!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Move("敵機１", 2000, @0, @500, Dxl1, false);

	SetFwC("cg/fw/fw雪車町_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1191]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2080a12">
《别开玩笑了——————————!!》
{
	WaitAction("敵機１", null);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機１",10000,3,5);
}<BR>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆強打
//◆ずどごーん
	Rotate("エフェクト１", 0, @0, @0, 0, Dxl1, false);

	Rotate("敵機１", 1000, @0, @0, -50, null, false);
	Zoom("敵機１", 1000, 2000, 2000, Axl2, false);
	BezierMove("敵機１", 1000, (@0,@0){@-100,@400}{@200,@400}(@400,@-800), Axl1, false);
	Wait(800);
	Rotate("エフェクト１", 200, @0, @0, -50, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		//▼固定値ランダム：停止
		MoveFFP1stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲移動
		CloudZoomStart2B(700,1000,1000);
		//CloudZoomVertex2(0,@-100,@0,Dxl2,true);

		CreateTextureSP("敵機１", 200, -1000, -1000, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Rotate("敵機１", 0, @0, @0, @-30, null, true);
		SetTone("敵機１", Monochrome);
		CreateTextureSP("敵機２", 200, -200, -700, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		Rotate("敵機２", 0, @0, @0, @-30, null, false);
		Zoom("敵機２", 0, 0, 0, Dxl2, true);
		SetTone("敵機２", Monochrome);

		CreateTextureEX("背景１", 200, 0, 0, "cg/bg/bg001_空a_03.jpg");
		Zoom("背景１", 0, 2000, 2000, Dxl2, true);
		SetSurface("背景１","絵Suf");
		SetTone("背景１", Monochrome);

		Fade("エフェクト１", 0, 0, null, false);

		Fade("背景*", 0, 0, null, false);
		Fade("背景１", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, -180, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(1000,95);
		//▼コクピット（自機情報：出力）
		MyTr_Count(1000,105);

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,40,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(2000,270,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(2000,-60,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(2000,360,Dxl1,false);

//	Move("背景３", 2000, @0, @-1000, Dxl1, false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 2000, @0, @0, 70, Dxl1, false);
	Shake("背景１", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Fade("色０", 2000, 0, null, false);

	Wait(1000);

	Rotate("敵機１", 1000, @0, @0, -360, Dxl1, false);
	Zoom("敵機１", 1000, 0, 0, null, false);
	Move("敵機１", 1000, @700, @600, Dxl3, false);

	//▼コクピット（自機情報：回転軸自動化）
	//CP_RollBarMoveA();

	SetFwC("cg/fw/fw雪車町_怒り.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1200]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2090a12">
《<RUBY text="···">你倒是</RUBY>考虑一下，那些因为
这个勉强到连你自己都无法认可的理由而命丧于
你刀下的人啊!!
　啊——》
{
	WaitAction("敵機１", null);
	Rotate("敵機２", 1000, @0, @0, -60, Dxl1, false);
	Zoom("敵機２", 1000, 50, 50, Dxl2, false);
	Fade("敵機２", 1000, 1000, null, false);
	Move("敵機２", 2000, @300, @200, Dxl1, false);
	WaitAction("敵機２", null);
	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@敵機２",10000,3,5);
}<BR>


{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2100a12">
《实在是荒谬到了极点啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆強打
//◆ばぎゃがーん
//◆一度ブラックアウト

	//▼固定値ランダム：停止
	MoveFFP1stop();

	Rotate("エフェクト１", 0, @0, @0, -40, Axl1, true);

	Rotate("敵機２", 1000, @0, @0, 45, Axl1, false);
	Zoom("敵機２", 1000, 2000, 2000, Axl2, false);
	BezierMove("敵機２", 1000, (@0,@0){@-300,@-350}{@-400,@-350}(@-300,@300), Axl1, false);
	Wait(800);
	Rotate("エフェクト１", 200, @0, @0, -20, Dxl1, false);
	Fade("エフェクト１", 200, 1000, null, false);
	Fade("色０", 200, 1000, null, true);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼雲消去
		//CloudZoomFade2(0,true);
		//▼雲移動
		//CloudZoomStart2(700,1000,1000);
		//CloudZoomVertex2(0,@500,@0,Dxl2,true);

		//CreateTextureSP("敵機１", 200, -1000, -1000, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		//Rotate("敵機１", 0, @0, @0, @-30, null, true);
		//CreateTextureSP("敵機２", 200, -100, -200, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		//Rotate("敵機２", 0, @0, @0, @-30, null, false);
		//Zoom("敵機２", 0, 0, 0, Dxl2, true);

		//CreateTextureEX("背景１", 200, 0, 0, "cg/bg/bg001_空a_03.jpg");
		//Zoom("背景１", 0, 2000, 2000, Dxl2, true);
		//SetSurface("背景１","絵Suf");
		//SetTone("背景１", Monochrome);

		Delete("敵機*");

		Fade("エフェクト１", 0, 0, null, false);
		Move("背景２", 0, -100, -100, null, false);

		Fade("背景*", 0, 0, null, false);
		Fade("背景２", 0, 1000, null, false);
		Fade("絵Suf", 0, 1000, null, false);
		Rotate("絵Suf", 0, @0, @0, 0, Dxl1, false);
		Zoom("絵Suf", 0, 4000, 4000, Dxl2, true);

		//▼固定値ランダム
		//MoveFFP1("@絵Suf",10000);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：装甲）
		MyLife_Count(2000,65);
		//▼コクピット（自機情報：出力）
		MyTr_Count(2000,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(2000,10,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(2000,1,null,false);

		//▼コクピット（自機情報：方位）
		CP_AziChange(5000,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(5000,300,Dxl1,false);
		//▼コクピット（自機情報：高度）
		//CP_HighChange(600000,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(5000,-80,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(5000,-1800,Dxl1,false);

	Move("背景２", 5000, @-4000, @0, null, false);

	Zoom("絵Suf", 2000, 2000, 2000, Dxl1, false);
	Rotate("絵Suf", 5000, @0, @0, 1800, null, false);
	Shake("背景２", 5000, 0, 50, 0, 0, 700, null, false);
	Fade("色０", 500, 0, null, false);
	Wait(3000);
	Fade("色０", 500, 1000, null, true);

	SetVolume("サウンド１", 3000, 1, NULL);
	Wait(2000);

//とおい
//◆戻り

		Delete("背景*");
		Delete("絵Suf");
		Delete("旋回イメージ３");

		CreateTextureSP("背景１", 100, Center, 0, "cg/bg/resize/bg001_空c_03l.jpg");
		SetTone("背景１", Monochrome);
		CreateTextureSP("敵機１", 100, -199, -355, "cg/st/3d九〇式竜騎兵_騎突_戦闘.png");
		SetTone("敵機１", Monochrome);
		Zoom("敵機１", 0, 0, 0, Dxl2, true);

		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,350,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(0,1500,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,-80,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,-180,Dxl1,true);

		//▼コクピット（自機情報：高度）
		CP_HighChange(600000,1000,Dxl1,false);

		//▼固定値ランダム
		MoveFFP1("@背景１",10000);
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機１",10000,3,3);

		CreateTextureEXover("ノイズ１", 10000, 0, 0, "cg/data/noize_01_00_0.png");
		Zoom("ノイズ１", 0, 1200, 1200, Dxl2, true);

		CreateColorEXmul("色９", 19998, "#500000");
		CreateColorEXmul("上色１", 17000, "#772222");

		CreateColorEXmul("エフェクト１", 19000, "#AA2222");
		CreateColorEXmul("エフェクト２", 19000, "#AA2222");
		Request("エフェクト２", Erase);
		CreateTextureSPsub("エフェクト３", 18000, 0, 0, "cg/data/noize_01_00_0.png");
		CreateTextureSPsub("エフェクト４", 18000, 0, 0, "cg/data/noize_01_00_0.png");
		Rotate("エフェクト４", 0, @180, @180, @0, null, true);

		//▼繰り返し
		CreateAFB1("@エフェクト３","@エフェクト４",64,200,300,2);
		SetTone("@エフェクト３", Monochrome);
		SetTone("@エフェクト４", Monochrome);


	Fade("色０", 2000, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
　……遥远。
　连声音的世界都开始远去了。

　剑胄的声音已然无法传达。
　然而，为何敌方的话语，我仍然能听到呢。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	Zoom("敵機１", 0, 10, 10, AxlAuto, false);
	Zoom("敵機１", 600000, 500, 500, DxlAuto, false);

	SetFwR("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2110a12">
《……你算什么东西。
　英雄吗？　恶鬼吗？　凡人吗？》

{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2120a12">
《不是英雄吧……
　英雄的话，杀人的时候是光明磊落的啊……
需要必要的牺牲时，干脆地，正面地，
看着对方的眼睛将他斩杀吧。》

{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2130a12">
《你完全不是这种人物……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1230]
　…………是的。
　是这样的。

　我并不是什么英雄。
　我是——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1240]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2140a12">
《那么，恶鬼吗？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1250]
　——恶鬼。

　对。
　我是，恶鬼。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1260]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2150a12">
《不是吧……？
　恶鬼的话才不会不情愿地杀人呢。
要高兴地，带着笑容杀人……》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1270]
　…………不是的。
　不是，这样的。

　这种事情，没有关系。

　<RUBY text="····">身为恶鬼</RUBY>，并不是这样的。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1280]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2160a12">
《那么，是什么呢……
　凡人吗……？》

{	FwR("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2170a12">
《是啊。》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1290]
　凡人……
　普通的，正经的，人。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1300]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2180a12">
《你是个正常的人。
　从父母那里接受正统的教育，用良好的
道德约束自己。》

{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2190a12">
《所以，你才这么讨厌杀人吧。
　不是吗？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1310]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1320]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2200a12">
《既不是英雄也不是恶鬼，亦非依存于
他们而生的人类。
　是能普通地生活在市井中的货色……》

{	FwR("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2210a12">
《对你来说，这样也是最好的吧？》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1330]
　…………

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1340]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2220a12">
《这样的话就好了。
　明明没必要勉强自己……》

{	FwR("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2230a12">
《过着流汗劳作，养家糊口的
日子……
　这样的生活，有什么不好？》

{	FwR("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2240a12">
《难得你被正当地养育，成为了正常的
人啊……》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ドクン。鼓動
	SetVolume("@mbgm*", 1000, 0, NULL);

	Wait(3000);

	OnSE("se人体_体_心臓の音02",1000);

	Fade("色９", 0, 1000, null, true);
	Fade("色９", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1350]
　
　　　　　　　　　　　不是的

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

//◆視界が少し戻る
	CreatePlainSP("絵板写１", 19997);
		//▼コクピット（自機情報：出力）
		//MyTr_Count(0,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,50,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,1,null,false);

		$FadeAFB1=100;
	Fade("絵板写１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1360]
　我感到血液于周身循环。
　昏暗的视界只是稍经擦拭，便恢复鲜明。

　——不是这样的。
　不是这样的啊，雪车町一藏。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ドクン。鼓動
	CreatePlainSP("絵板写１", 19997);
		//▼繰り返し：停止
		//AFB1stop();

		//▼コクピット（自機情報：出力）
		//MyTr_Count(0,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,100,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,2,null,false);

		SetTone("@*", null);
		Fade("エフェクト*", 0, 0, null, false);
		Fade("上色１", 0, 1000, null, false);

		//▼繰り返し
		CreateAFB2("@エフェクト１","@エフェクト２",500,700,700,2);
		//Fade("ノイズ１", 0, 500, null, true);
		//▼シェイク
		//MoveSSP1("@ノイズ１",100000,0,3,0,3,1000,null);

	OnSE("se人体_体_心臓の音02",1000);

	FadeDelete("絵板写１", 500, true);

		CreateSE("ＳＥ０","se人体_体_心臓の音01_L");
		MusicStart("ＳＥ０",0,600,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1370]
　力量恢复。
　有什么东西，代替我疲惫的心脏，向我体内
输送活力。

　什么东西——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1380]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2250a12">
《区区一介普通人……
　凭什么插手互相杀戮的世界。》

{	FwR("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2260a12">
《这是你搞错了……》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ドクン。鼓動
	OnSE("se人体_体_心臓の音02",1000);
	SetVolume("ＳＥ０", 2000, 1000, NULL);

	CreatePlainSP("絵板写１", 19997);
	SetBlur("絵板写１", true, 1, 500, 100, false);

		//▼コクピット（自機情報：出力）
		//MyTr_Count(0,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,200,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,3,null,false);

		//▼繰り返し：停止
		AFB1stop();
		FadeDelete("エフェクト３", 0, false);
		FadeDelete("エフェクト４", 0, false);
		//$FadeAFB1=100;
		//Fade("ノイズ１", 0, 100, null, true);
	Zoom("絵板写１", 500, 2000, 2000, Axl2, false);
	FadeDelete("絵板写１", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1390]
　
　　　　　　　　　　　不是的。

　普通人。
　正经人。
　正常人。

　我，
　——是<RUBY text="··">这种</RUBY>人？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1400]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2270a00">
（……哈）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1410]
　过分的幽默。
　虽说很潇洒，但也太过别具一格。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1420]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2280a00">
（白痴……不过）

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1430]
　雪车町一藏。
　这个男人究竟从我身上看到了什么。

　有过正常的父母。
　受过正当的教育。
　
　——到此为止都是正确的。

　但是结论太过分。
　不只是单纯的计算。

　在正确的环境中，能孕育出正常的人——
　如果宇宙中有这种法则的话，那么这个世界是多么
容易理解多么容易生存啊。

　了不得的妄想。

　有不错的父母——
　受良好的教育——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("ＳＥ１","se人体_体_心臓の音02");
	CreateSE("ＳＥ２","se人体_体_心臓の音02");

	SoundPlay("ＳＥ１",0,1000,false);
	SoundPlay("ＳＥ２",0,1000,false);

	SetVolume("ＳＥ０", 0, 0, NULL);

	Fade("色０", 0, 500, null, false);
	CreatePlainSP("絵板写１", 19998);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1431]
　结果，<RUBY text="·············">这个孩子杀死了他的父母的话</RUBY>。
　那也能说受到过良好的养育这种话吗？

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1440]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2290a00">
（哈、哈、哈哈哈）

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateSE("ＳＥ１","se戦闘_動作_空突進08");
	MusicStart("ＳＥ１",0,1000,0,1500,null,false);

	OnSE("se特殊_陰義_発動03",1000);
	OnSE("se特殊_陰義_発動04",1000);

	SetVolume("サウンド１", 2000, 1000, NULL);

	SoundPlay("@mbgm11",0,1000,true);

	CreatePlainEX("絵板写２", 19998);
		//▼繰り返し：停止
		AFB2stop();
		MoveSSP1stop();
		Delete("ノイズ*");
		Delete("エフェクト*");
		Delete("上*");

		//▼コクピット（自機情報：出力）
		//MyTr_Count(0,65);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,300,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,3,null,false);


		OnSE("se戦闘_動作_刀構え01",1000);


	Fade("色０", 500, 0, null, false);

	Fade("絵板写２", 0, 500, null, true);
	Zoom("絵板写２", 500, 1300, 1300, Axl1, false);
	Fade("色１", 500, 1000, null, true);
	Delete("絵板写*");
	Zoom("敵機１", 0, 500, 500, Axl2, true);

	Fade("色１", 2000, 0, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1450]
　真是愚蠢！
　真是愚蠢！

　真是愚蠢啊，雪车町一藏!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆雪車町上昇
		Delete("色２");
		Delete("色３");
		Delete("色９");

		CreateTextureEX("敵機２", 1000, -199, -255, "cg/st/3d九〇式竜騎兵_騎突_戦闘2.png");
		Zoom("敵機２", 0, 500, 500, Dxl2, true);
		Rotate("敵機２", 0, @0, @0, 50, Axl1, true);

	//▼Ｘ軸ランダムＹ軸均等：停止
	MoveFTP1stop();

	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進03",1000);
	OnSE("se戦闘_動作_空突進07",1000);

	BezierMove("敵機１", 1300, (@0,@0){@-100,@-100}{@-100,@-100}(@0,@0), AxlDxl, false);
	BezierMove("敵機２", 1300, (@0,@0){@-100,@-100}{@-100,@-100}(@0,@0), AxlDxl, false);

	Rotate("敵機１", 1000, @0, @0, 360, AxlDxl, false);
	Rotate("敵機２", 1000, @0, @0, 360, AxlDxl, false);
//	Move("敵機１", 1300, @200, @200, AxlDxl, false);
//	Move("敵機２", 1300, @200, @200, AxlDxl, false);
	Zoom("敵機１", 1300, 550, 550, AxlDxl, false);
	Zoom("敵機２", 1300, 550, 550, AxlDxl, false);
	Wait(500);
	Fade("敵機１", 500, 0, null, false);
	Fade("敵機２", 500, 1000, null, false);

	Rotate("敵機２", 1300, @0, @0, @360, Axl1, false);
	BezierMove("敵機２", 1300, (@0,@0){@200,@200}{@200,@200}(@100,@100), AxlDxl, false);
	Zoom("敵機２", 1300, 10, 10, Dxl3, false);
	Wait(800);
	Fade("敵機２", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1460]
　视界中，飘荡着背对月亮的骑影。
　升向天空。

　看到这幅景象，我明白了其中的意思。
　——魔剑殷麦曼翻转。

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreatePlainSP("絵板写", 19998);

	//★コクピット消去
		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲開始
		CloudZoomStart2(700,1000,1000);

		Request("背景１", Smoothing);
		//Request("敵機２", Smoothing);
		Move("背景１", 0, -512, 142, Axl1, true);
		Zoom("背景１", 0, 1300, 1300, Dxl2, true);
		Zoom("敵機２", 0, 800, 800, Dxl3, true);
		Move("敵機２", 0, -100, -200, Axl1, true);
		Rotate("敵機２", 0, @0, @0, @-30, Axl1, false);
		Fade("敵機２", 0, 1000, null, true);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機２",10000,3,5);

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		SoundPlay("サウンド２",2000,300,true);

	Zoom("背景１", 30000, 1500, 1500, null, false);
	FadeDelete("絵板写", 500, true);


	SetFwL("cg/fw/fw雪車町_無.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1470]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2300a12">
《消失吧……
　给我消失！》

{	FwL("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2310a12">
《如果你<RUBY text="···">认真地</RUBY>去做的话……
　那些小鬼也不会莫名其妙地
被杀死了。》

{	FwL("cg/fw/fw雪車町_無.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2320a12">
《我可不听你说什么理由，不过，
我有几句话要说。
　你谁都救不了……》

{	FwL("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2330a12">
《你只会杀戮……
　你真是自私啊……》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 19998);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();
		//▼コクピット（自機情報：仰角自動化）
		CP_AltChangeA();
		//▼コクピット（自機情報：速度自動化）
		CP_SpeedChangeA();
		//▼コクピット（自機情報：高度自動化）
		CP_HighChangeA();
		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲開始
		CloudZoomStart2B(700,1000,1000);

		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@敵機２",10000,2,2);

		Request("背景１", Smoothing);
		Request("敵機２", Smoothing);
		Move("背景１", 0, -512, -20, Axl1, true);
		Zoom("背景１", 0, 1000, 1000, Dxl2, true);
		Zoom("敵機２", 0, 10, 10, Dxl3, true);
		Move("敵機２", 0, -170, -240, Axl1, true);
		Rotate("敵機２", 0, @0, @0, @0, Axl1, false);
		Fade("敵機２", 0, 1000, null, true);

	SetVolume("サウンド２", 1000, 1, NULL);

	FadeDelete("絵板写", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1480]
　的确。
　非常正确。

　和理由什么的没关系。
　那个村庄的虾夷姐妹——或是她——
或是他——都是我杀的。

　我杀了他们。
　以我个人的判断。

　只是为了满足我的<RUBY text="··">意愿</RUBY>。

　……你不也是知道的吗，雪车町一藏。
　然而为何，不再多了解一点呢。

　<RUBY text="········">这才是恶鬼的行径</RUBY>。

　与欢乐，悲伤都毫无关系。
　为了一己私欲而杀人者，即为恶鬼。

　不——

　就算是为了理想也与之无关。
　被称为英雄的杀戮者亦为恶鬼。

　杀人者，皆为恶鬼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1490]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2340a00">
（是的）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1500]
　为恶鬼。
　不为恶鬼。

　区分两者的条件只有一个。
　——是否能践踏人命。

　仅此而已。
　仅此而已！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreatePlainSP("絵板写", 15000);

		//▼コクピット（消去）
		Cockpit_AllFade0();
		//▼コクピット（自機情報：回転軸停止）
		CP_RollBar_ADelete();
		//▼コクピット（自機情報：振動停止２）
		Shake("@CP_Frame", 0, 0, 0, 0, 0, 500, null, false);

		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		//▼固定値ランダム：停止
		MoveFFP1stop();

		Request("背景１", Smoothing);
		Request("敵機２", Smoothing);
		Move("背景１", 0, -533, 80, Axl1, true);
		Zoom("背景１", 0, 1500, 1500, Dxl2, true);
		Zoom("敵機２", 0, 800, 800, Dxl3, true);
		Move("敵機２", 0, -100, -200, Axl1, true);
		Rotate("敵機２", 0, @0, @0, @0, Axl1, false);
		Fade("敵機２", 0, 1000, null, true);

		Move("敵機１", 0, -197, -525, Axl1, true);
		Zoom("敵機１", 0, 0, 0, Dxl1, true);

		CreateTextureEX("イベント１", 10000, 0, 0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
		Zoom("イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("イベント１", true, 2, 500, 100, false);

		CreatePlainEX("絵板写２", 100);
		Request("絵板写２", AddRender);

		CreateVOICE("雪車町","ma04/016vs2350a12");

		CreateSE("ＳＥ０","se特殊_雰囲気_発光02");
		CreateSE("ＳＥ１","se戦闘_動作_空突進02");
		CreateSE("ＳＥ２","se戦闘_動作_空上昇01");
		CreateSE("ＳＥ３","se戦闘_攻撃_鎧_剣戟02");
		CreateSE("ＳＥ４","se戦闘_破壊_爆発02");
		CreateSE("ＳＥ５","se戦闘_動作_空突進06");

//		CreateSE("ＳＥ６","se戦闘_攻撃_鎧_剣戟01");
		CreateSE("ＳＥ７","se戦闘_動作_空突進03");

		CreateSE("ＳＥ８","se戦闘_動作_空急降下01");
		CreateSE("ＳＥ９","se戦闘_動作_空突進04");

	FadeDelete("絵板写", 300, false);

	SoundPlay("雪車町",0,1000,false);
	SoundPlay("ＳＥ０",0,700,false);
	SoundPlay("ＳＥ１",0,700,false);
	SoundPlay("ＳＥ２",0,700,false);
	SoundPlay("ＳＥ３",0,700,false);
	SoundPlay("ＳＥ４",0,700,false);

	Zoom("敵機２", 1000, 0, 0, Dxl2, false);
	Move("敵機２", 1000, -100, -200, Axl2, false);
	Rotate("敵機２", 1000, @0, @0, 80, Axl2, false);

	Move("背景１", 1000, -502, 294, Dxl2, false);
	Zoom("背景１", 1000, 2200, 2200, Dxl2, false);
	Fade("色１", 1000, 1000, null, true);

	SoundPlay("ＳＥ５",0,700,false);

		//Move("背景１", 0, -502, 0, Dxl2, false);
		//SetVertex("背景１", 1024, 280);
		Move("背景１", 0, -502, -200, Dxl2, false);
		SetVertex("背景１", 1024, 380);

		SetVertex("敵機１", 600, 600);
		//SetBlur("敵機１", true, 1, 500, 50, false);

		Fade("絵板写２", 0, 500, null, true);

//	SoundPlay("ＳＥ６",0,700,false);
	SoundPlay("ＳＥ７",0,700,false);

	Fade("色１", 1000, 0, null, false);
	Zoom("絵板写２", 2000, 2000, 2000, Dxl1, false);
	Fade("絵板写２", 2000, 0, null, false);
	Rotate("背景１", 2000, @0, @0, 180, Dxl1, false);

	Fade("敵機１", 0, 1000, null, false);
	Zoom("敵機１", 2000, 2000, 2000, Axl1, false);
	Rotate("敵機１", 2000, @0, @0, @460, Dxl1, false);
	BezierMove("敵機１", 2000, (@0,@0){@500,@800}{@700,@400}(@-100,@50), Axl1, false);
	Zoom("敵機１", 2000, 1000, 1000, Axl1, false);

	Wait(1700);

		SoundPlay("ＳＥ８",0,700,false);
		SoundPlay("ＳＥ９",0,700,false);

	Fade("色１", 300, 1000, null, true);

	Fade("イベント１", 0, 1000, null, true);
	Zoom("イベント１", 1000, 1000, 1000, Dxl2, false);
	Fade("色１", 1000, 0, null, true);

	Delete("敵機*");
	Delete("絵板写");
	Delete("絵板写２");

	//▼雲消去
	CloudZoomFade2(0,true);

	SetFwL("cg/fw/fw雪車町_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1510]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2350a12" mode="off">
《给我消失……
　半吊子废物!!》

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――


		SetVolume("サウンド１", 2000, 1, NULL);
		SetVolume("@mbgm*", 2000, 0, NULL);

//◆魔剣インメルマン。急降下
	CreateTextureEX("イベント２", 10000, 0, 0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
	SetTone("イベント２", Monochrome);
	Fade("イベント２", 1000, 1000, null, true);
	Delete("イベント１");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1520]
　雪车町一藏。
　如果你将我视为废物，请自便。

　我不情愿地杀人，
　看到我杀人时的眼泪，
　想这么说的话，便这么说好了。

　正常人的话，想说就说吧。
　然而我——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆景明の被害者群像

	Fade("色０", 500, 1000, null, true);

	Delete("イベント*");
	Delete("敵機１");
	Delete("背景*");


	CreateColorSP("色４", 10000, "#000000");
	CreateTextureSP("死亡１", 17002, 495, InBottom, "cg/st/st雄飛_通常_制服.png");
	CreateTextureSP("死亡２", 17002, 196, InBottom, "cg/st/stふき_通常_私服.png");
	CreateTextureSP("死亡３", 17002, 114, InBottom, "cg/st/stふな_通常_私服.png");
	CreateTextureSP("死亡４", 17001, 353, InBottom, "cg/st/st鈴川_通常_制服.png");
	CreateTextureSP("死亡５", 17001, -28, InBottom, "cg/st/st皇路_通常_私服.png");
	SetTone("死亡*", Monochrome);
	Fade("色０", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1530]
　
　我——

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆景明の被害者群像
//◆順々表示。それに合わせて、新田雄飛·蝦夷姉妹·
//◆鈴川令法·皇路卓の「悪鬼！」「殺した！」ボイス
//◆を再生

		CreateVOICEEX("雄飛１","ex/0010030b56","雄飛");
		CreateVOICEEX("雄飛２","ex/0010040b56","雄飛");
		CreateVOICEEX("ふき１","ex/0010050b05","ふき");
		CreateVOICEEX("ふき２","ex/0010060b05","ふき");
		CreateVOICEEX("ふな１","ex/0010070b06","ふな");
		CreateVOICEEX("ふな２","ex/0010080b06","ふな");
		CreateVOICEEX("皇路１","ex/0010090b24","皇路");
		CreateVOICEEX("皇路２","ex/0010100b24","皇路");
		CreateVOICEEX("鈴川１","ex/0010015b57","鈴川");
		CreateVOICEEX("鈴川２","ex/0010025b57","鈴川");

	CreateTextureEX("エフェクト１", 10000, 0, 0, "cg/ef/ef007_汎用血しぶき.jpg");
	CreateTextureEX("エフェクト２", 10000, 0, 0, "cg/ef/ef006_汎用血しぶき.jpg");

	CreatePlainSP("絵板写", 18000);
		FadeDelete("死亡*", 0, true);


		CreateTextureEX("死者５", 17000, -28, InBottom, "cg/st/st皇路_憎悪_私服.png");
	FadeDelete("絵板写", 300, false);

	SetBacklog("悪鬼！", "voice/ex/0010090b24", 皇路);
	SoundPlay("皇路１",0,1000,false);
	$音声待ち時間=RemainTime("皇路１");

	WaitAction("絵板写", null);
	WaitKey($音声待ち時間);
	SetVolume("皇路１", 1000, 0, NULL);

	SetBacklog("殺した！", "voice/ex/0010100b24", 皇路);
	SoundPlay("皇路２",0,1000,false);
	$音声待ち時間=RemainTime("皇路２");

	Fade("死者５", 300, 1000, Dxl2, false);
	WaitKey($音声待ち時間);
	WaitAction("死者*", null);
	FadeDelete("死者５", 300, false);


		CreateTextureEX("死者２", 17001, 196, InBottom, "cg/st/stふき_憎悪_私服.png");
		CreateTextureEX("死者３", 17001, 114, InBottom, "cg/st/stふな_憎悪_私服.png");
	SetBacklog("悪鬼！", "voice/ex/0010050b05", ふき);
	SoundPlay("ふき１",0,1000,false);
	Wait(1000);
	SetBacklog("悪鬼！", "voice/ex/0010070b06", ふな);
	SoundPlay("ふな１",0,1000,false);
	$音声待ち時間=RemainTime("ふな１");
	WaitKey($音声待ち時間);

	WaitAction("死者*", null);
	SetVolume("ふき１", 1000, 0, NULL);
	SetVolume("ふな１", 1000, 0, NULL);

	SetBacklog("殺した！", "voice/ex/0010060b05", ふき);
	SetBacklog("殺した！", "voice/ex/0010080b06", ふな);
	SoundPlay("ふき２",0,1000,false);
	SoundPlay("ふな２",0,1000,false);
	$音声待ち時間=RemainTime("ふき２");
	$音声待ち時間=RemainTime("ふな２");

	Fade("死者２", 300, 1000, null, false);
	Fade("死者３", 300, 1000, null, false);
	WaitKey($音声待ち時間);
	WaitAction("死者*", null);
	FadeDelete("死者２", 300, false);
	FadeDelete("死者３", 300, false);



		CreateTextureEX("死者４", 17001, 353, InBottom, "cg/st/st鈴川_憎悪_制服.png");
	SetBacklog("悪鬼！", "voice/ex/0010015b57", 鈴川);
	SoundPlay("鈴川１",0,1000,false);
	$音声待ち時間=RemainTime("鈴川１");
	WaitKey($音声待ち時間);

	WaitAction("死者*", null);
	SetVolume("鈴川１", 1000, 0, NULL);

	SetBacklog("殺した！", "voice/ex/0010025b57", 鈴川);
	SoundPlay("鈴川２",0,1000,false);
	$音声待ち時間=RemainTime("鈴川２");

	Fade("死者４", 300, 1000, null, false);
	WaitKey($音声待ち時間);
	WaitAction("死者*", null);
	FadeDelete("死者４", 300, false);


		CreateTextureEX("死者１", 17002, 495, InBottom, "cg/st/st雄飛_憎悪_制服.png");
	SetBacklog("悪鬼！", "voice/ex/0010030b56", 雄飛);
	SoundPlay("雄飛１",0,1000,false);
	$音声待ち時間=RemainTime("雄飛１");
	WaitKey($音声待ち時間);

	WaitAction("死者*", null);
	SetVolume("雄飛１", 1000, 0, NULL);

	SetBacklog("殺した！", "voice/ex/0010040b56", 雄飛);
	SoundPlay("雄飛２",0,1000,false);
	$音声待ち時間=RemainTime("雄飛２");

	Fade("死者１", 300, 1000, null, false);
	WaitKey($音声待ち時間);
	WaitAction("死者*", null);
	FadeDelete("死者*", 300, true);


		CreateTextureEX("背景１", 10000, 0, 0, "cg/bg/bg002_空a_03.jpg");
		CreateTextureSP("自機１", 10000, -500, -200, "cg/st/3d村正標準_騎突_戦闘.png");
		Zoom("自機１", 0, 0, 0, Dxl2, true);

		CreateWindow("ウィンドウ１", 150, 256, 0, 512, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		CreateTextureEX("ウィンドウ１/イベント１", 10000, 59, -191, "cg/ev/resize/evex003_景明_戦闘.png");
		SetBlur("ウィンドウ１/イベント１", true, 2, 500, 100, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1540]
　
　我，<k>
{	Fade("ウィンドウ１/イベント１", 1000, 1000, null, true);}
　相信我的邪道!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


//◆ＢＧＭ：邪悪宣言

//◆村正飛翔
	SetVolume("サウンド１", 2000, 1000, NULL);
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進07",1000);

	Fade("背景１", 1000, 1000, null, false);

	Move("自機１", 1000, @700, @0, Dxl1, false);
	Rotate("自機１", 1000, @0, @0, 360, Dxl1, false);
	Zoom("自機１", 1000, 2000, 2000, Axl2, false);
	Zoom("ウィンドウ１/イベント１", 1000, 1200, 1200, Axl2, false);
	Fade("ウィンドウ１/イベント１", 1000, 0, null, false);
	Fade("色１", 1000, 1000, null, true);

		Delete("背景１");
		Delete("敵機１");

		Delete("自機１");
		Delete("ウィンドウ１");
		Fade("色４", 0, 0, null, true);

/*
		CreateWindow("ウィンドウ１", 20150, 0, 0, 1024, 576, false);
		SetAlias("ウィンドウ１", "ウィンドウ１");
		CreateTextureSP("ウィンドウ１/イベント１", 10001, 0, 0, "cg/ev/ev504_村正突進.jpg");
		Zoom("ウィンドウ１/イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("ウィンドウ１/イベント１", true, 2, 500, 100, false);
		Zoom("ウィンドウ１/イベント１", 500, 1000, 1000, Dxl2, false);
		Fade("色１", 500, 0, null, true);
*/

		//▼雲正面
		CloudZoomSet2("マド１",17500,-512,0,1024,576);
		//▼雲開始
		CloudZoomStart2B(700,1000,1000);
		//▼雲移動
		CloudZoomVertex2(0,@-300,@0,Dxl2,true);
	
		//▼雲正面
		CloudZoomSet3("マド２",17500,512,0,1024,576);
		//▼雲開始
		CloudZoomStart3(700,1000,1000);
		//▼雲移動
		CloudZoomVertex3(0,@300,@0,Dxl2,true);
	
		CreateTextureSP("マド１/背景", 17000, -50, 0, "cg/bg/bg001_空c_03.jpg");
		Zoom("マド１/背景", 0, 1100, 1100, Dxl2, true);
		CreateTextureSP("マド２/背景", 17000, 0, -2000, "旋回イメージ２");
		Zoom("マド２/背景", 0, 1100, 1100, Dxl2, true);
		Rotate("マド２/背景", 0, 180, 0, 0, null, true);
	
		CreateTextureSP("マド１/敵機１", 17500, -460, -328, "cg/st/3d九〇式竜騎兵_騎突_戦闘b.png");
		Zoom("マド１/敵機１", 0, 100, 100, Dxl2, false);
		CreateTextureSP("マド２/自機１", 17001, 69, -248, "cg/st/3d村正標準_騎突_戦闘.png");
		Zoom("マド２/自機１", 0, 3000, 3000, Dxl2, true);

	//▼完全ランダム
	MoveFRP1("@マド１/背景",10000,5,5);
	MoveFRP2("@マド２/背景",10000,5,5);

	//▼Ｘ軸ランダムＹ軸均等
	MoveFTP1("@マド１/敵機１",15000,3,4);
	MoveFTP2("@マド２/自機１",10000,5,7);

	OnSE("se戦闘_動作_空突進06",1000);

	SoundPlay("@mbgm03",0,1000,true);

	Zoom("マド１/敵機１", 1500, 1000, 1000, Dxl1, false);
	Zoom("マド２/自機１", 1000, 1000, 1000, Dxl2, false);
	Fade("色１", 1500, 0, null, false);

	//▼完全ランダム：停止
	//MoveFRP1stop();
	//▼Ｘ軸ランダムＹ軸均等：停止
	//MoveFTP1stop();


	SetFwC("cg/fw/fw雪車町_無.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1550]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2360a12">
《……?!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1560]
　我的确听到了这声音。
　从下落逼近的敌骑那边传来的，惊愕的吸气声。

　到了这个地步，一定想都没想过我还会有所抵抗。

　而以我自身来看，刚才是如何动作的的，也完全不
知道。

　然而我动了。
　飞翔着。

　仰望着雪车町一藏直线下降的骑影。
　笔直地向上飞。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進07",1000);

	Zoom("マド１/敵機１", 300, 1500, 1500, Axl1, false);
	Zoom("マド２/自機１", 300, 1500, 1500, Axl1, false);

	Fade("色１", 300, 1000, null, true);
	//CreatePlainSP("絵板写", 19998);

		//▼完全ランダム：停止
		MoveFRP1stop();
		MoveFRP2stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		//▼雲消去
//		CloudZoomDelete2(0,false);
//		CloudZoomDelete3(0,true);

		//▼雲開始
		CloudZoomStart2(700,1000,1000);
		//▼雲移動
		CloudZoomVertex2(0,@0,@300,Dxl2,true);
	
		//▼雲移動
		CloudZoomVertex3(0,@0,@-300,Dxl2,true);

		LoadImage("旋回イメージ４", "cg/bg/resize/bg204_横旋回背景_03ex.jpg");
		SetAlias("旋回イメージ４", "旋回イメージ４");
	
		CreateTextureSP("マド１/背景１", 17000, -300, 0, "旋回イメージ４");
		CreateTextureSP("マド１/背景２", 17000, -300, 0, "旋回イメージ４");
		CreateTextureSP("マド２/背景１", 17000, 500, -4500, "旋回イメージ４");
		CreateTextureSP("マド２/背景２", 17000, 500, -4500, "旋回イメージ４");

		CreateSCR1("@マド１/背景１","@マド１/背景２",1000,@0,-4500);
		CreateSCR2("@マド２/背景１","@マド２/背景２",1000,@0,0);
	
		CreateTextureSP("マド１/敵機１", 17001, -412, -585, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("マド１/敵機１", 0, @0, @0, 90, null, true);
		Zoom("マド１/敵機１", 0, 2000, 2000, Dxl2, true);
		CreateTextureSP("マド２/自機１", 17001, 87, -168, "cg/st/3d村正標準_騎航_戦闘a.png");
		Rotate("マド２/自機１", 0, @0, @0, 90, null, true);
		Zoom("マド２/自機１", 0, 2000, 2000, Dxl2, true);

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		SoundPlay("@サウンド２",2000,300,true);

		Move("マド１/敵機１", 0, @0, @100, Dxl1, false);
		Move("マド２/自機１", 0, @0, @-100, Dxl1, true);

		//▼完全ランダム
		//MoveFRP1("@マド１/背景",10000,5,5);
		//MoveFRP2("@マド２/背景",10000,5,5);
		
		//▼Ｘ軸ランダムＹ軸均等
		MoveFTP1("@マド１/敵機１",15000,3,4);
		MoveFTP2("@マド２/自機１",10000,5,7);

		Zoom("マド１/敵機１", 600, 1000, 1000, Dxl2, false);
		Zoom("マド２/自機１", 600, 1000, 1000, Dxl2, false);
	Fade("色１", 600, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1561]
　迎击的应该是堕天的魔剑，金翅鸟王剑。
　举世无双的必杀绝技。

　下落与上升——
　以图表显示，能量差距上有压倒性的不利。

　用什么来迎击。
　用什么——

　虽然遇到了违反预测的事态，但雪车町的剑仍未慌乱。

　丝毫没有动摇他对胜利的确信吗。

　的确，那个招数值得信赖。
　几近完美的攻克敌骑的技巧，简直等同于噩梦般的幻
想。

　能与之抗衡的——
　只有借助同样的幻想。

　
　　　　　　　　　　——兜割

　那是，著名的梦幻传说。
　以一介凡躯，用一柄太刀，将钢铁的头盔，切为两断
的传说……

　绝对不会发生的幻想。
　背离现实的妄想。

　无论是怎样的高手，无论是怎样的名刀，至多只能切
到头盔顶部的数寸。通常，兜割所指的只是这种程度而
已。
　一刀两断之类的，是梦中的梦中梦。

　如果——
　假设，这个梦想能实现的话。

　这一刀便超越物理法则。
　某种意义上的力量，在不断地锻炼中超越，然后以这
<RUBY text="···">疯狂的</RUBY>技术所成就的招式。

　如果，它存在的话——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·養母
	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev008_赤子を抱える女.jpg");
		SetTone("イベント１", Monochrome);
		SetShade("イベント１", MEDIUM);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

//	Fade("イベント１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1570]
　存在的话——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·両断された鎧兜のカット挿入
	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev005_斬り割られた兜.jpg");
		SetTone("イベント１", Monochrome);
		SetShade("イベント１", MEDIUM);
	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

//	Fade("イベント１", 500, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1580]
　无论是多么强劲的对手。
　无论是多么坚固的防御。
　无论是多么严重的劣势。

　在这一刀的阻拦面前都微不足道。

　这一刀，能够斩断万物。

　<RUBY text="···">如果它</RUBY>，<RUBY text="····">存在的话</RUBY>！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想·景明発狂カット挿入
	OnSE("se擬音_回想_フラッシュバック01",1000);

	Fade("色１", 0, 1000, null, true);
		CreateTextureSP("イベント１", 18000, 0, 0, "cg/ev/ev006_景明の狂相.jpg");
		SetTone("イベント１", Monochrome);
		SetShade("イベント１", MEDIUM);

	Fade("イベント１", 0, 1000, null, true);
	Fade("色１", 1000, 0, null, true);

	SetVolume("サウンド２", 1000, 1, NULL);
	SetVolume("サウンド１", 1000, 1, NULL);

	Fade("色０", 2000, 1000, null, true);
	Fade("イベント１", 0, 0, null, true);

	Wait(2000);

//	SetFwC("cg/fw/fw景明_通常a.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1590]
//◆狂相
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2370a00">
　
　　　　　　　　　　「——噶！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

		//▼完全ランダム：停止
		MoveFRP1stop();
		MoveFRP2stop();
		//▼Ｘ軸ランダムＹ軸均等：停止
		MoveFTP1stop();
		MoveFTP2stop();

		SCR1stop();
		SCR2stop();

		//▼雲消去
		CloudZoomFade2(0,true);
		CloudZoomFade3(0,true);

//◆レッドアウト
	CreateColorEX("色４", 19999, "#AA0000");
	Fade("色４", 2000, 1000, null, true);
	Wait(1000);


		Delete("イベント１");

//		CreateColorEXover("色５", 19997, "#AA0000");
//		Fade("色５", 0, 500, null, true);

		CreateTextureEX("マド１/イベント２", 18001, -119, -46, "cg/ev/resize/evex003_雪車町_怒り.png");
		CreateTextureEX("マド２/イベント２", 18001, 319, -308, "cg/ev/resize/evex003_景明_狂相.png");
		CreateColorSP("マド２/えろ", 19996, "#AA0000");
		CreateColorSP("マド２/色", 19997, "#000000");

		CreateTextureSP("マド１/イベント１", 18000, -300, 0, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");
		Zoom("マド１/イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("マド１/イベント１", true, 2, 500, 100, false);

	SetVolume("サウンド２", 1000, 600, NULL);
	SetVolume("サウンド１", 1000, 1000, NULL);

	Fade("色０", 300, 0, null, false);
	Fade("色４", 300, 0, null, false);

	Zoom("マド１/イベント１", 1000, 1000, 1000, Dxl2, false);

	Shake("マド１/イベント２", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Move("マド１/イベント２", 1000, @0, @-100, Dxl1, false);
	Fade("マド１/イベント２", 1000, 500, null, false);

	//Move("マド１", 1000, 0, @0, Dxl1, false);
	//Move("マド１/イベント１", 1000, 0, @0, Dxl1, false);
	//Move("マド１/イベント２", 1000, @100, @0, Dxl1, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1600]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2380a12">
　
　
　　　　　　　《去死——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


		CreateTextureSP("マド２/イベント１", 18000, 328, 0, "cg/ev/ev504_村正突進.jpg");
		Zoom("マド２/イベント１", 0, 2000, 2000, Dxl2, true);
		SetBlur("マド２/イベント１", true, 2, 500, 100, false);

	Fade("マド２/色", 100, 0, null, true);
	Fade("マド２/えろ", 300, 0, null, false);

	Zoom("マド２/イベント１", 500, 1000, 1000, Dxl2, false);

	Shake("マド２/イベント２", 1000, 0, 30, 0, 0, 700, Dxl1, false);
	Move("マド２/イベント２", 1000, @0, @100, Dxl1, false);
	Fade("マド２/イベント２", 1000, 500, null, false);
	//Fade("マド２/イベント２", 500, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1601]
//◆狂相
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2390a00">
　
　　　「咿呀啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	//SetVolume("@mbgm*", 2000, 0, NULL);

	CreatePlainSP("絵板写", 19000);
	SetBlur("絵板写", true, 2, 500, 100, false);

	//▼雲消去
	CloudZoomDelete2(0,true);
	CloudZoomDelete3(0,true);

		CreateSE("ＳＥ１","se戦闘_攻撃_剣戟弾く03");
		CreateSE("ＳＥ２","se戦闘_攻撃_刀衝突01");
		CreateSE("ＳＥ３","se戦闘_攻撃_鎧_剣戟04");

	OnSE("se戦闘_動作_空突進06",1000);

	Zoom("絵板写", 500, 2000, 2000, Axl2, false);
	Fade("色１", 500, 1000, null, true);

		Fade("色５", 0, 0, null, true);
		Delete("マド*/*");
		Delete("絵板写");
		Delete("イベント*");
		Delete("エフェクト*");
		Delete("ウィンドウ１");
		Delete("ウィンドウ２");


		CreateTextureSP("背景１", 100, Center, 0, "cg/bg/resize/bg001_空c_03l.jpg");
		SetVertex("背景１", 1024, 287);

		CreateTextureSP("敵機１", 200, -551, -548, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Zoom("敵機１", 0, 50, 50, Dxl2, true);
		Rotate("敵機１", 0, @0, @0, 40, null, true);
		SetBlur("敵機１", true, 1, 500, 50, false);

		CreateTextureSP("自機１", 200, 283, -124, "cg/st/3d村正標準_騎航_戦闘a.png");
		Zoom("自機１", 0, 50, 50, Dxl2, true);
		Rotate("自機１", 0, @0, @0, 40, null, true);
		SetBlur("自機１", true, 1, 500, 50, false);

		CreateTextureEX("イベント９", 100, -1000, -576, "cg/ev/resize/ev914_九〇式竜騎兵魔剣インメルマンターン_l.jpg");
		Zoom("イベント９", 0, 2000, 2000, Dxl2, true);
		SetBlur("イベント９", true, 1, 500, 50, false);

		LoadImage("エフェクトイメージ", "cg/ef/ef042_汎用打撃.jpg");
		SetAlias("エフェクトイメージ", "エフェクトイメージ");
	
		CreateTextureEX("イベント１", 100, 0, 0, "cg/ev/ev947_村正斬撃汎用.jpg");
		SetVertex("イベント１", 100, 100);
		SetBlur("イベント１", true, 2, 500, 50, false);
		Zoom("イベント１", 0, 1200, 1200, Axl1, false);

		CreateTextureEXsub("イベント０", 100, 0, 0, "cg/ev/ev947_村正斬撃汎用.jpg");
		SetVertex("イベント０", 100, 100);

		CreateTextureEXadd("イベント２", 100, -107, -68, "cg/ev/resize/ev947_村正斬撃汎用_l.jpg");
	
		CreateTextureEXsub("エフェクト１", 100, 0, 0, "エフェクトイメージ");
		Rotate("エフェクト１", 0, @0, @180, @0, null, true);
		Zoom("エフェクト１", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXmul("エフェクト２", 100, 0, 0, "エフェクトイメージ");
		Rotate("エフェクト２", 0, @0, @180, @0, null, true);
		Zoom("エフェクト２", 0, 1200, 1200, Dxl2, true);
		CreateTextureEXmul("エフェクト３", 100, 0, 0, "cg/ef/ef003_汎用移動.jpg");
		Zoom("エフェクト３", 0, 2000, 2000, Axl1, false);
//		SetBlur("敵機１", true, 2, 500, 50, false);

	CreatePlainSP("絵板写", 10000);

	CreateSE("ＳＥ５","se戦闘_攻撃_鎧_剣戟02");
	CreateSE("ＳＥ６","se戦闘_動作_空突進03");
	CreateSE("ＳＥ７","se特殊_雰囲気_発光03");

//インメルバンク
	OnSE("se戦闘_動作_空突進02",1000);
	OnSE("se戦闘_動作_空突進07",1000);
	OnSE("se戦闘_動作_空突進08",1000);

	Fade("色１", 300, 0, null, false);

	Zoom("絵板写", 500, 1300, 1300, Dxl2, false);
	Fade("絵板写", 500, 0, null, false);

	Move("敵機１", 500, -412, -591, Axl1, false);
	Move("自機１", 500, 120, -60, Axl1, false);

	Zoom("背景１", 500, 5000, 5000, Axl1, false);
	Zoom("敵機１", 500, 1000, 1000, Axl1, false);
	Zoom("自機１", 500, 1000, 1000, Axl1, false);
	Wait(300);

	Fade("色１", 200, 1000, null, true);

		Delete("自機１");
		Delete("敵機１");
		Delete("背景*");

//◆雪車町·金翅鳥王剣
	SoundPlay("ＳＥ５",0,1000,false);
	SoundPlay("ＳＥ６",0,1000,false);
	SoundPlay("ＳＥ７",0,1000,false);

	Fade("イベント９", 0, 1000, null, true);
	Fade("色１", 500, 0, null, false);
	BezierMove("イベント９", 1000, (@0,@0){1000,700}{0,700}(-1200,100), Dxl2, 500);
	Fade("色１", 500, 1000, null, true);

//◆景明·魔剣装甲悪鬼
	SetVolume("@mbgm*", 2000, 0, NULL);

	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_動作_空突進01",1000);
	OnSE("se戦闘_動作_空突進03",1000);

//	Zoom("敵機１", 200, 2000, 2000, Dxl1, false);
//	Fade("色１", 200, 1000, Axl1, true);
//	Delete("敵機１");
//	Delete("自機１");

	OnSE("se戦闘_動作_空突進07",1000);
	OnSE("se戦闘_攻撃_斧振る01",1000);
	OnSE("se戦闘_攻撃_鎧かする01",1000);

	Fade("色１", 0, 0, null, false);


	Fade("イベント０", 0, 500, null, true);
	Fade("イベント１", 0, 1000, null, true);

	Shake("イベント１", 2000, 0, 50, 0, 0, 700, Dxl1, false);
	Zoom("イベント１", 2000, 2000, 2000, Axl1, false);
	Zoom("イベント０", 2000, 2000, 2000, Dxl1, false);

	Rotate("エフェクト３", 10000, @0, @0, 3600, null, false);
	Zoom("エフェクト３", 500, 3000, 3000, Axl1, false);
	Fade("エフェクト３", 300, 500, null, false);
	Fade("色１", 300, 700, null, false);
	Wait(400);

		SoundPlay("ＳＥ１",0,1000,false);
		SoundPlay("ＳＥ２",0,1000,false);

	Fade("イベント０", 300, 0, null, false);

	Shake("エフェクト１", 1000, 0, 50, 0, 0, 700, Dxl1, false);
	Shake("エフェクト２", 1000, 0, 50, 0, 0, 700, Dxl1, false);

	Fade("色１", 200, 0, null, false);
	Fade("エフェクト１", 0, 1000, null, true);
	Wait(300);

		SoundPlay("ＳＥ３",0,1000,false);
	Fade("エフェクト２", 0, 1000, null, true);
	Wait(300);
	Fade("エフェクト１", 600, 0, null, false);
	Fade("エフェクト２", 600, 0, null, false);

	Fade("イベント２", 600, 1000, null, false);
	Shake("イベント２", 600, 0, 50, 0, 0, 700, Dxl1, false);
	Zoom("イベント２", 600, 2000, 2000, Dxl2, false);

	Fade("色１", 600, 1000, Axl2, true);

	OnSE("se戦闘_破壊_爆発01",1000);
	OnSE("se戦闘_破壊_鎧05",1000);
	OnSE("se戦闘_衝撃_鎧散華",1000);
	OnSE("se戦闘_衝撃_鎧転倒03",1000);

//◆すげー激突。どっかーん。
		Delete("イベント*");
		Delete("エフェクト*");

		CreateSE("サウンド２","se戦闘_動作_空突進05");
		SoundPlay("@サウンド２",2000,300,true);

		CreateTextureSP("背景１", 17000, -5000, 3200, "旋回イメージ１");
		CreateTextureSP("背景２", 17000, -5000, 3200, "旋回イメージ１");
		Zoom("背景１", 0, 2000, 2000, null, true);
		Rotate("背景１", 0, @0, @0, @-45, null, true);
		Zoom("背景２", 0, 2000, 2000, null, true);
		Rotate("背景２", 0, @0, @0, @-45, null, true);

		CreateTextureSP("敵機１", 19500, -88, -400, "cg/st/3d九〇式竜騎兵_騎航_戦闘d.png");
		Rotate("敵機１", 0, @0, @0, -90, null, true);

		CreateTextureSPadd("アサス１", 19998, 0, 0, "cg/ef/ef022_汎用武者散華.jpg");
		Zoom("アサス１", 0, 1500, 1500, Dxl2, true);

	CloudZoomStart2(700,1000,1000,500,1000);
	CloudZoomVertex2(0,@-500,@0,Dxl1,true);

	CreateSCR1("@背景１","@背景２",1000,1200,-3100);

	//▼シェイク
	MoveSSP1("@敵機１",100000,0,10,0,10,1000,null);
	//Ｘ軸ランダムＹ軸均等
	//MoveFTP1("@敵機１",20000,3,5);

	//SetBlur("敵機１", true, 2, 500, 200, false);
	Fade("敵機１", 0, 1000, null, false);

	Move("アサス１", 1000, @200, @0, Axl1, false);
	Fade("アサス１", 1000, 0, null, false);
	Rotate("敵機１", 1000, @0, @0, -180, Dxl2, false);
	Fade("色１", 1000, 0, null, true);

	SetFwC("cg/fw/fw雪車町_苦悶.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1610]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2400a12">
《……什……》

{	FwC("cg/fw/fw雪車町_怒り.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2410a12">
《你……可恶……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雪車町墜落
	Fade("色０", 100, 1000, null, false);
	DrawTransition("色０", 300, 0, 1000, 100, null, "cg/data/circle_11_00_0.png", true);

		//▼雲消去
		CloudZoomDelete2(0,false);
	
		//▼シェイク：停止
		MoveSSP1stop();
		SCR1stop();

		Delete("敵機*");
		Delete("背景*");

		CreateTextureSP("背景１", 17000, Center, Middle, "旋回イメージ２");
		Move("背景１", 0, @0, @400, Axl1, true);
		Rotate("背景１", 0, @0, @0, 90, null, true);
		CreateTextureSP("敵機１", 17000, -243, -299, "cg/st/3d九〇式竜騎兵_騎航_通常.png");

		CreateTextureEX("エフェクト１", 17000, 0, 0, "cg/ef/efRec_雲a01.png");
		Zoom("エフェクト１", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト２", 17000, 0, 0, "cg/ef/efRec_雲a02.png");
		Zoom("エフェクト２", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト３", 17000, 0, 0, "cg/ef/efRec_雲a03.png");
		Zoom("エフェクト３", 0, 100, 100, Dxl2, true);
		CreateTextureEX("エフェクト４", 17000, 0, 0, "cg/ef/efRec_雲a04.png");
		Zoom("エフェクト４", 0, 100, 100, Dxl2, true);

		OnSE("se戦闘_破壊_鎧01",1000);
		SetVolume("サウンド２", 1000, 0, NULL);
		SetVolume("サウンド１", 1000, 1, NULL);

	Fade("色０", 200, 0, null, false);

	Move("背景１", 2000, @-500, @0, Dxl2, false);

	Rotate("敵機１", 3000, @0, @0, 180, Dxl1, false);
	Zoom("敵機１", 3000, 100, 100, Dxl1, false);
	Shake("敵機１", 3000, 0, 50, 0, 0, 700, Dxl3, false);
	Move("敵機１", 3000, @200, @-200, Axl1, false);

	Rotate("エフェクト１", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト１", 2000, 1000, 1000, Dxl2, false);
	Fade("エフェクト１", 150, 1000, null, false);
	Wait(300);
	Fade("エフェクト１", 1000, 0, null, false);

	Rotate("エフェクト２", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト２", 2000, 1000, 1000, Dxl2, false);
	Fade("エフェクト２", 150, 1000, null, false);
	Wait(300);
	Fade("エフェクト２", 1000, 0, null, false);

	Rotate("エフェクト３", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト３", 2000, 1000, 1000, Dxl2, false);
	Fade("エフェクト３", 150, 1000, null, false);
	Wait(300);
	Fade("エフェクト３", 1000, 0, null, false);

	Fade("色０", 500, 1000, null, false);

	Rotate("エフェクト４", 2000, @0, @0, 90, Dxl3, false);
	Zoom("エフェクト４", 2000, 1000, 1000, Dxl2, false);
	Fade("エフェクト４", 150, 1000, null, false);
	Wait(300);
	Fade("エフェクト４", 1000, 0, null, false);

	SetFwC("cg/fw/fw雪車町_怒り.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1611]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/016vs2420a12">
《混蛋——————————!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆海に落ちた。ずぱーん。
	CreateSE("ＳＥ１","se人体_動作_水中飛び込み01");
	CreateSE("ＳＥ２","se自然_水_波の音強01");
	CreateSE("ＳＥ３","se人体_動作_水中飛び込み01");
	CreateSE("ＳＥ４","se自然_水_波の音強01");

	OnSE("se人体_動作_水中飛び込み01",1000);
	OnSE("se自然_水_波の音強01",1000);

	MusicStart("ＳＥ１",0,1000,0,1500,null,false);
	MusicStart("ＳＥ２",0,1000,0,1500,null,false);
	MusicStart("ＳＥ３",0,1000,0,500,null,false);
	MusicStart("ＳＥ４",0,1000,0,500,null,false);



//◆一度ブラックアウト
	Fade("色０", 300, 1000, null, true);
	Delete("敵機*");
	Delete("背景*");

	Wait(4000);

	SetVolume("ＳＥ*", 3000, 0, NULL);

	Wait(2000);

//◆戻り

		//▼雲正面
		CloudZoomSet2("マド",1000,0,0,1024,576);

		//▼コクピット（瞬間表示）
		Cockpit_AllFade2();
		//▼コクピット（自機情報：振動）
		FrameShake();

		//▼コクピット（自機情報：方位）
		CP_AziChange(0,0,AxlDxl,false);
	
		//▼コクピット（自機情報：速度）
		CP_SpeedChange(0,311,Dxl1,false);
		//▼コクピット（自機情報：高度）
		CP_HighChange(0,1200,Dxl1,false);
		//▼コクピット（自機情報：仰角）
		CP_AltChange2(0,0,Dxl1,false);
		//▼コクピット（自機情報：回転軸）
		CP_RollBarMove2(0,0,Dxl1,true);

		//▼コクピット（自機情報：装甲）
		MyLife_Count(0,65);
		//▼コクピット（自機情報：出力）
		MyTr_Count(0,251);
		//▼コクピット（自機情報：熱量）
		CP_PowerChange(0,300,null,false);
		//▼コクピット（自機情報：球体ＨＰ）
		CP_IHPChange(0,3,null,false);

		//▼コクピット（自機情報：回転軸自動化）
		CP_RollBarMoveA();

		CreateTextureSP("背景１", 100, Center, -500, "cg/bg/bg201_旋回演出背景市街地_03.jpg");
		CreateSurfaceEX("絵Suf",200,2000,"背景１");
		Fade("絵Suf", 0, 1000, null, true);

		//▼雲開始
		CloudZoomStart2(700,1000,1000);
		//▼固定値ランダム
		MoveFFP1("@絵Suf",5000);

	SetVolume("サウンド１", 2000, 1000, NULL);

	Fade("色０", 2000, 0, null, true);


	SetFwC("cg/fw/fw景明_悲しみ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1620]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2430a00">
「………………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2440a01">
《……主君。
　……………主君！》

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2450a00">
「…………」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2460a00">
「……嗯……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2470a01">
《……刚才……
　你，做了……什么？》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2480a00">
「不知道。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2490a01">
《……》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2500a00">
「……不知道……
　忘记了……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2510a01">
《……主君。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2520a00">
「……这样就好。
　回岛上吧，村正。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2530a00">
「已经将怪物搁置很久了。我们要快一点。
　骑体的状况如何？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2540a01">
《……勉强能够行动。
　勉强，呢。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//徒歩：しゅうせい（わね）
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2550a01">
《你和我，都早已到极限了……
　什么时候掉下去都是理所当然的，
也没理由去找金神大人抱怨。》

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/016vs2560a00">
「那么立刻把事情解决吧。
　走吧，村正。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/016vs2570a01">
《……嗯。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("サウンド０","se戦闘_動作_空突進06");
	SoundPlay("サウンド０",0,1000,false);
	SetVolume("サウンド*", 2000, 0, NULL);

	//▼雲移動
	CloudZoomVertex2(1000,@-500,@200,Dxl1,false);

	Move("背景１", 2000, @0, @-1000, Axl1, false);
	Rotate("絵Suf", 2000, @0, @0, @180, Axl2, false);
	Fade("色０", 2000, 1000, null, true);

	Wait(2000);

	WaitPlay("サウンド０", null);

	//▼雲消去
	CloudZoomDelete2(500,false);

	ClearWaitAll(2000, 1000);
	CP_AllDelete();

..//ジャンプ指定
//次ファイル　"ma04_017.nss"


}