//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_027vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma03_027vs.nss","ma03_027vs_runs",true);
	Conquest("nss/ma03_027vs.nss","ma03_027vs_runsProcess",true);
	Conquest("nss/ma03_027vs.nss","ma03_027vs_runsDelete",true);
	Conquest("nss/ma03_027vs.nss","ma03_SB2",true);
	Conquest("nss/ma03_027vs.nss","ma03_SB",true);
	Conquest("nss/ma03_027vs.nss","ma_03_SBProcess",true);
	Conquest("nss/ma03_027vs.nss","ma_03_SBProcess2",true);
	Conquest("nss/ma03_027vs.nss","ma_03_SBDelete",true);
	Conquest("nss/ma03_027vs.nss","fakeCP",true);

	CP_AllSet("アベンジ");
//	CP_AllSet("村正");

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
	#bg038_サーキット直線b_01 = true;

	#ev504_村正突進=true;
	#ev904_村正マグネットコーティング_a=true;
	#ev904_村正マグネットコーティング_b=true;

	#ev908_村正電磁擲刀_a=true;
	#ev908_村正電磁擲刀_b=true;
	#ev908_村正電磁擲刀_c=true;

	#ev902_村正電磁抜刀レールガン_d=true;

	#ev118_サーキットを見下ろす光と二世村正=true;

	#ev925_野太刀断片_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "ma03_028.nss";

}

scene ma03_027vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_026.nss"

	PrintBG("上背景", 30000);

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg001_空a_03.jpg");

	Delete("上背景");


	SoundPlay("@mbgm25",0,1000,true);


//◆村正サイド
//◆モニター展開。前方のアベンジをロックオン
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0010a01">
《敌骑捕捉！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0020a00">
「……朝环形赛道飞过去了？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ、サーキット突入
//◆ホームストレートへ
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/7.png", true);

	Delete("絵背景100");

	CreateTextureSP("絵背景100", 100, 0, Middle, "cg/bg/resize/bg001_空a_03.jpg");
	CreateTextureSP("絵st100", 100, -1024, Middle, "cg/st/3dアベンジ_騎航_通常.png");
	Rotate("絵st100", 0, @0, @180, @0, null,true);

	Move("絵背景100", 1000, @-1024, @0, null, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_0", true);

	OnSE("se戦闘_動作_空突進08",1000);

	Move("絵st100", 500, @+2548, @0, Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵背景100");
	Delete("絵st100");

	Cockpit_AllFade2();

//嶋：後で差分に変更
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
//	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
//	Zoom("絵背景100", 0, 2000, 2000, Dxl1, true);
//	SetBlur("絵背景100", true, 3, 500, 50, true);

//	Shake("絵背景100", 5000, 1, 10, 0, 0, 500, null, false);
//	Zoom("絵背景100", 300, 1000, 1000, Dxl1, false);
..//速度：167、出力：275
	CP_SpeedChange(0,167,null,false);
	CP_HighChange(0,10,null,false);
	MyLife_Count(0,150);
	MyTr_Count(0,275);


	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	$ma03_027vs_runs01 = 175;
	$ma03_027vs_runs02 = 350;

	FrameShake();

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);


	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　皇路操与皇路卓并非亲生父女。
　而是年龄差距甚大的兄妹。

　卓父晚年得女，生下了操。

　而操刚一降世，他就死去。何等不负责任。


　在这一点上，丧夫的年轻妻子更是不落后尘。
立刻恢复了旧姓，丢下孩子，改嫁他门。

　也许真该说这对夫妻是夫唱妇随，意气相投。

　留下卓跟操相依为命。
　当时，对卓而言，还发生了另一件大事。

　战争拉开序幕——
　未来一片黑暗。

　家庭的破裂与骑手生涯的终结……
　在兄长绝望的漩涡中，操呱呱坠地。

　所以操不曾见证过兄长的辉煌时刻。
　对操而言，兄长是从谷底开始，从零起步。

　——兄长的失意。
　皇路操的原点。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ストレートを駆け抜ける

	OnSE("se戦闘_動作_空突進02",800);

	SetFrequency("SE01", 500, 1500, Axl1);

..//速度：276、出力：321
	CP_SpeedChange(1500,276,AxlAuto,false);
	MyTr_Count(1500,321);

	$ma03_027vs_runs01 = 125;
	$ma03_027vs_runs02 = 250;

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	SetVertex("絵背景50", 515, 390);
	SetBlur("絵背景50", true, 3, 500, 50, false);
	Zoom("絵背景50", 1000, 4000, 4000, Dxl1, false);

	Wait(1500);

	SetVolume("SE01", 1000, 0, null);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);
	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆横書きボックス
　
　　　　　　　　　００：００：００

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0,0);//―――――――――――――――――――――――――――――

	Cockpit_AllFade0();
	Delete("絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	CreateTextureSP("絵背景200", 1000, Center, Middle, "cg/ev/ev504_村正突進.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);

	Zoom("絵背景100", 0, 3000, 3000, Dxl1, true);

	Shake("絵背景200", 1000, 0, 1, 0, 0, 500, null, false);
	Move("絵背景200", 500, @+1500, @0, Dxl1, false);
	Zoom("絵背景200", 500, 3000, 3000, Dxl1, false);
	OnSE("se戦闘_動作_空突進01",1000);
	Zoom("絵背景100", 200, 1000, 1000, Dxl1, false);

	CreateSE("SE01","se戦闘_動作_空走行01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Shake("絵背景100", 100000, 1, 2, 0, 0, 1000, null, false);
	FadeDelete("絵背景200", 500, false);

	FadeDelete("黒", 300, true);

//◆村正モニター

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　进入终点直道的蓝色机体越过了起跑线。

　好快。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0030a01">
《要被甩在后面了……！》

{	FwR("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0040a00">
「磁装运行！
　导源启动，村正！」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0050a01">
《了解！
{	OnSE("se特殊_陰義_発動04",1000);}
　——磁装·正极……》

{	FwR("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0060a00">
《磁力加速！》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆加速
	OnSE("se特殊_陰義_磁力加速01",1000);

//◆アベンジ
//◆コーナー回る

	SetVolume("SE01", 500, 0, null);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("@絵背景*");
//	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");

//	FrameShake();
//	Cockpit_AllFade2();

	ma03_SB2(2000,2,700,-400);
	ma03_SB(2001,200);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);

	CreateTextureSP("絵st100", 2200, 1024, Middle, "cg/st/3dアベンジ_騎航_通常.png");

	Move("絵st100", 300, @-1324, @0, Dxl1, false);
	BGMoveAuto("@絵st100",3);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　卓决心成为操的父亲，因此让她如此称呼自己。
　至此，不难猜测他其实是一个笨拙的人。
而实际上，他在除赛场之外的地方都很笨拙。

　即便他只是无端端突然背负上抚养亲人的责任，
他的教育方式也绝不足以为人所称道。

　天才骑手全无教育孩子的才能。

　童年时代，操便生活窘困。
　她比其他的同龄孩子们承受得更多。
　可以说造成这种局面的正是她的兄长。

　然而亲情却深藏其中。
　无论兄长的养育是给操带来了益处或灾难，
他的基本出发点却永远是出于关爱。

　因此，这便足够。
　皇路操一生都活在幸福当中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	SetBlur("絵st100", true, 3, 400, 50, false);
	BezierMove("@絵st100", 800, (@0,@0){@+500,@+100}{@+500,@+100}(@+500,@+150){@-1000,@-100}{@-1000,@-100}(@-3000,@-300), Axl2, true);

	SetVolume("SE01", 300, 0, null);


	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);
	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//◆横書きボックス
　
　　　　　　　　　００：１４：５５

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	Cockpit_AllFade0();

	Delete("絵背景*");
	Delete("絵st100");

	CreateTextureSP("絵st100", 2200, 1024, Middle, "cg/st/3d村正標準_騎航_陰義.png");

	OnSE("se戦闘_動作_空突進08",1000);
	Move("絵st100", 300, @-1324, @0, Dxl1, false);
	BGMoveAuto("@絵st100",4);
	FadeDelete("黒", 10, true);


//◆村正モニタ
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0070a00">
「再快一些！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0080a01">
《可以吗!?》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0090a00">
「当下我们必须分秒必争，尽快赶上！
　其余都是琐事！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0100a01">
《了解！
　重力聚集！》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0110a01">
《诱聘——》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0120a00">
《重力加速！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆重力加速

	OnSE("se特殊_陰義_磁力加速01",1000);

	BGMoveDelete();
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSPsub("絵st200", 2200, -300, Middle, "cg/st/3d村正標準_騎航_陰義.png");

	SetBlur("絵st200", true, 4, 500, 50, false);
	Move("絵st200", 600, @-1500, @0, Dxl1, false);
	Move("@絵st100", 500, @-1500, @0, Dxl1, false);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	ma_03_SBDelete();
	Delete("絵st100");
	Delete("絵st200");
	Delete("@絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

..//速度：276、出力：321
	CP_SpeedChange(0,276,null,false);
	CP_HighChange(0,10,null,false);
	MyTr_Count(0,321);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_02_1", true);

//◆アベンジ
//◆Ｓ字？

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　即使成为了装甲骑手。
　即使饱尝了诸多辛酸。

　操的兄长除了赛场的战斗方法之外，其余一无
所知。
　他没有其它知识可供教授。所以便教授战斗。

　而当操逐渐展露才华后，他就更加热情高涨起来。
　卓知道操能够代替自己战斗。

　他说会将一切传授给操，事实上也这么做了。

　训练很是艰辛。
　系统的学习也非常严苛。
　
　最令人忧心的莫过于资金的筹措手段。

　既便如此，操仍旧是幸运的。
　因为兄长的爱丝毫不曾改变。

　兄长需要操。
　她是不可或缺的存在。
　为了实现自己的夙愿。

　……那是。
　或许那早已、不是爱。
　然而，只要是需要自己，
　只要是无可替代，必不可缺的存在……

　那便是近似于爱的情感。
　——即使这并不是爱，

　对于名为皇路操的少女来说也已足够。
　足以让她幸福地生活下去。

　为兄长效力令她深感喜悦。
　她明白。

　自己正是为此而生。
　她心知肚明。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);


	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆横書きボックス
　
　　　　　　　　　００：３６：４３

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


	Cockpit_AllFade0();

	Delete("絵背景*");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");

	CreateTextureSPmul("絵背景200", 200, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");
	Fade("絵背景200", 0, 700, null, true);

	CreateTextureSPadd("絵背景300", 150, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");
	Fade("絵背景300", 0, 700, null, true);

	CreateSE("SE01","se特殊_陰義_磁力加速03_L");
	MusicStart("SE01",300,1000,0,1000,null,true);

	Shake("絵背景200", 500000, 1, 1, 0, 0, 1000, null, false);
	SetBlur("絵背景200", true, 3, 500, 100, false);
	Fade("絵背景300", 1000, 0, Dxl1, false);
	Fade("絵背景200", 1000, 0, Dxl1, false);
	Zoom("絵背景200", 1000, 1200, 1200, Dxl1, false);

	FadeDelete("黒", 300, true);

//◆村正
//◆アベンジに迫る。ロックオン
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0130a00">
「——很好。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0140a01">
《追上了——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	SetVolume("SE01", 500, 0, null);

//◆アベンジ
//◆バックストレート
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("@絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");

	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

..//速度：276、出力：321
	CP_SpeedChange(0,276,null,false);
	CP_HighChange(0,10,null,false);
	MyTr_Count(0,321);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_02_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　皇路操的手臂是兄长的手臂。
　皇路操的双足是兄长的双足。
　这身体由兄长创造、养育，并为他效命。

　这条性命，毕生只为
　实现兄长的夙愿。

　兄长的愿望——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆アベンジ·ダッシュ。爆走

	CreateColorEXadd("絵色100", 10000, "BLUE");
	CreateColorEXadd("絵色200", 10000, "White");
	OnSE("se特殊_鎧_アベンジ加速01",1000);

..//速度：381、出力：392
	CP_SpeedChange(1000,381,null,false);
	MyTr_Count(1000,392);

	Fade("絵色100", 100, 800, null, true);

	Fade("絵色100", 100, 800, null, true);
	Fade("絵色100", 100, 0, null, true);
	Fade("絵色100", 100, 800, null, true);
	Fade("絵色100", 100, 0, null, true);
	Fade("絵色100", 100, 800, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色200", 200, 500, null, false);
	Fade("絵色100", 500, 800, null, true);
	$ma03_027vs_runs01 = 100;
	$ma03_027vs_runs02 = 200;

	Fade("絵色200", 1000, 0, null, false);
	Fade("絵色100", 500, 0, null, true);

	SetVolume("SE01", 500, 0, null);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆横書きボックス
　
　　　　　　　　　００：４９：６４

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


	Cockpit_AllFade0();

	Delete("絵背景*");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_a.jpg");

	FadeDelete("黒", 10, true);
//◆村正
//◆距離が縮まらなくなる
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0150a00">
「……什……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0160a01">
《怎么会——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆再び引き離される
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0170a01">
《居然能操纵重力，比我……
　更为迅速?!》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0180a00">
「……唔。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 25000, "Black");
	OnSE("se擬音_回想_フラッシュバック01",1000);
	Fade("黒",10,1000,null,true);

	Cockpit_AllFade0();

	SetVolume("@mbgm25", 2000, 0, null);

	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);

	CreateColor("絵回想", 1000, 0, 0, 1024, 576, #847000);
	SetAlias("絵回想","絵回想");
	CreateColor("絵回想2", 1000, 0, 0, 1024, 576, "White");
	SetAlias("絵回想2","絵回想2");
	Fade("絵回想", 0, 400, null, true);
	Fade("絵回想2", 0, 200, null, true);
	Request("絵回想", MulRender);
	Request("絵回想2", AddRender);


	Fade("黒",500,0,null,true);

//◆アベンジ
//◆ヘアピン？
	SetFwC("cg/fw/fw皇路_通常b.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/027vs0190b24">
「一分二十五秒一三。
　——你知道吗？　操。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/027vs0200b24">
「我要向那个领域发起挑战。
　向我未能如愿登上世界顶峰的过去复仇！」


//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/027vs0210b24">
「所以……
　超越给我看吧。」

{	FwC("cg/fw/fw皇路_通常a.png","Sepia");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/027vs0220b24">
「超越世界的极限。
　帮我实现我的<RUBY text="ａｖｅｎｇｅ">复仇</RUBY>。操。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("黒",500,1000,null,true);

	Delete("絵回想");
	Delete("絵回想2");
	Delete("OnBG*");
	Delete("絵色*");
	Delete("絵背景*");



	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	Cockpit_AllFade2();

..//速度：381、出力：392
	MyTr_Count(0,392);
	CP_SpeedChange(0,381,null,false);
	CP_HighChange(0,10,null,false);

	FrameShake();

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	FadeDelete("黒",100,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　——一分二十五秒一三。
　超越其上，兄长的愿望。

　一分二十五秒一三！
　皇路操必须战胜的敌人——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆横書きボックス
　
　　　　　　　　　０１：００：３８

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	Cockpit_AllFade0();
	Delete("絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/ev/ev504_村正突進.jpg");

	FadeDelete("黒", 10, true);

	SoundPlay("@mbgm25",0,1000,true);

//◆村正
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0230a00">
「村正！
　现在开始——最后一击!!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0240a01">
《要怎样——》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0250a00">
「从背后！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0260a01">
《……了解！》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0270a00">
《<RUBY text="ｅｎｃｈａｎｔ">磁力镀装</RUBY>
——<RUBY text="ｅｎｄｉｎｇ">终焉</RUBY>!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景10", 1000, Center, Middle, "cg/ev/ev908_村正電磁擲刀_a.jpg");
	CreateTextureEX("絵背景100", 1200, Center, Middle, "cg/ev/ev908_村正電磁擲刀_a.jpg");
	CreateTextureEX("絵背景120", 2000, Center, Middle, "cg/ev/ev908_村正電磁擲刀_a.jpg");
	SetBlur("絵背景120", true, 3, 500, 100, false);

	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE02","se戦闘_動作_刀構え02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("絵背景100", 300, 1000, null, false);
	Zoom("絵背景120", 300, 2000, 2000, null, false);
	Fade("絵背景120", 300, 500, null, true);
	FadeDelete("絵背景120", 300, true);

	Wait(1000);


	CreateColorEX("黒", 20000, "Black");
	Fade("黒",500,1000,null,true);

	Delete("OnBG*");
	Delete("絵色*");
	Delete("絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	Cockpit_AllFade2();

	MyTr_Count(0,513);
	CP_SpeedChange(0,463,null,false);
	CP_HighChange(0,10,null,false);

	FrameShake();

	CreateSE("SE01","se戦闘_動作_空走行02_L");
	MusicStart("SE01",500,500,0,1000,null,true);

	SoundPlay("@mbgm11",0,1000,true);
	FadeDelete("黒",300,true);


//◆アベンジ
	SetFwC("cg/fw/fw操_真面目.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【操】
<voice name="操" class="操" src="voice/ma03/027vs0280b42">
「请赐我翅膀。
　让我尽情翱翔天宇。」

//【操】
<voice name="操" class="操" src="voice/ma03/027vs0290b42">
「请赐我翅膀。
　为实现<RUBY text="父亲">我</RUBY>的愿望。」

//【操】
<voice name="操" class="操" src="voice/ma03/027vs0300b42">
「请赐我翅膀。
　赐予我让梦想得以成真的双翼！」

//【操】
<voice name="操" class="操" src="voice/ma03/027vs0310b42">
「“逆袭骑”!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色100", 10000, "BLUE");
	CreateColorEXadd("絵色200", 10000, "White");
	OnSE("se特殊_鎧_アベンジ加速01",1000);


	MyTr_Count(1300,540);
	CP_SpeedChange(1300,586,Axl1,false);
	Fade("絵色100", 100, 1000, null, true);

	Fade("絵色100", 100, 1000, null, true);
	Fade("絵色100", 100, 0, null, true);
	Fade("絵色100", 100, 1000, null, true);
	Fade("絵色100", 100, 0, null, true);
	Fade("絵色100", 100, 1000, null, true);
	Fade("絵色100", 300, 0, null, true);
	Fade("絵色200", 200, 500, null, false);
	Fade("絵色100", 500, 1000, null, true);
	$ma03_027vs_runs01 = 75;
	$ma03_027vs_runs02 = 150;
	Fade("絵色200", 1000, 0, null, false);
	Fade("絵色100", 500, 0, null, true);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();

	Cockpit_AllFade0();
	Delete("絵背景*");
	Delete("絵色*");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/ev/ev908_村正電磁擲刀_a.jpg");

	FadeDelete("黒", 10, true);

	CreateTextureEX("絵背景200", 1000, -722, -13, "cg/ev/resize/ev908_村正電磁擲刀_al.jpg");
	CreateTextureEX("絵背景300", 1500, -722, -13, "cg/ev/resize/ev908_村正電磁擲刀_bl.jpg");

	Move("絵背景200", 0, @+300, @0, null, true);
	Move("絵背景200", 300, @-300, @0, Dxl1, false);
	Fade("絵背景200", 200, 1000, null, true);

	Wait(500);

	CreateSE("SE03","se特殊_鎧_装着05");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,500,null,true);
	Fade("絵背景300", 200, 1000, null, true);
	Fade("絵背景200", 0, 0, null, false);
	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	CreateTextureSP("絵背景200", 1100, Center, Middle, "cg/ev/ev908_村正電磁擲刀_b.jpg");
	FadeDelete("絵背景300", 300, true);

	CreateTextureEX("絵背景500", 1200, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	CreateTextureEX("絵背景400", 1200, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	CreateTextureEX("絵背景600", 1200, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	SetBlur("絵背景600", true, 3, 500, 100, false);
	SetVertex("絵背景600", 680, 130);

	CreateSE("SE02","se特殊_電撃_帯電01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("絵背景500", 300, 1000, null, false);
	Shake("絵背景400", 100000, 1, 1, 0, 0, 1000, null, false);
	Zoom("絵背景600", 300, 1200, 1200, Dxl1, false);
	Fade("絵背景600", 300, 500, null, false);
	Fade("絵背景400", 500, 1000, null, true);
	Fade("絵背景600", 300, 0, null, true);

//◆村正
//◆脇差が紫電を帯びる

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　——吉野御流合战礼法。
“飞蝗”之崩裂。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0320a00">
《<RUBY text="ｒａｉｌｇｕｎ">电磁掷刀</RUBY>————“咒”。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 500, 0, null);
	OnSE("se特殊_陰義_レールガン呪",1000);

	CreateTextureEX("絵ef100", 3000, Center, Middle, "cg/ef/ef038_汎用射撃.jpg");
	SetBlur("絵ef100", true, 3, 500, 200, false);
	Zoom("絵ef100", 0, 2000, 2000, null, true);
	Zoom("絵ef100", 300, 2000, 1000, Dxl1, false);
	Fade("絵ef100", 300, 1000, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵背景*");
	Delete("絵ef100");

	ma03_SB2(2000,2,700,-400);
	ma03_SB(2001,200);

	CreateTextureSP("絵st100", 2200, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Request("絵st100", Smoothing);

	CreateTextureEX("絵st500", 3000, -300, Middle, "cg/st/3dアベンジ_騎航_通常.png");
	SetBlur("絵st500", true, 3, 300, 50, false);
	SetBlur("絵st100", true, 3, 300, 50, false);

	Move("絵st100", 200, @-1324, @0, Dxl1, false);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);


	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	CreateColorEXadd("絵色100", 15000, #FFFFFF);

	SetBlur("絵st100", true, 3, 300, 50, false);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Fade("絵st500", 100, 1000, Dxl1, false);
	Fade("絵st100", 100, 0, Axl2, false);
	BezierMove("@絵st500", 800, (@0,@0){@0,@-100}{@0,@-100}(@0,@-150){@0,@0}{@0,@0}(@0,@+50), Dxl1, false);
	BezierMove("@絵st100", 800, (@0,@0){@0,@-100}{@0,@-100}(@0,@-150){@0,@0}{@0,@0}(@0,@+50), Dxl1, false);
	Zoom("絵st100", 300, 500, 500, Dxl1, false);
	Zoom("絵st500", 300, 500, 500, Dxl1, false);
	Fade("絵色100", 0, 1000, null, false);
	OnSE("se特殊_陰義_重力波01",1000);
	DrawTransition("絵色100", 200, 0, 400, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("絵色100", 300, 400, 0, 50, Axl2, "cg/data/slide_05_00_1.png", false);
	Fade("絵st100", 100, 1000, Dxl1, false);
	Fade("絵st500", 100, 0, Axl2, false);

	Wait(300);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Zoom("絵st500", 300, 1000, 1000, Dxl1, false);
	Fade("絵st500", 10, 1000, Dxl1, false);
	Fade("絵st100", 10, 0, Axl2, false);
	BezierMove("@絵st500", 800, (@0,@0){@+500,@+100}{@+500,@+100}(@+500,@+150){@-1000,@-100}{@-1000,@-100}(@-3000,@-300), Axl2, true);

	Wait(100);

	SetVolume("SE*", 500, 0, null);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵色100");
	Delete("絵st*");
	ma_03_SBDelete();

	CreateTextureSP("絵背景50", 100, 0, 0, "cg/ev/resize/ev908_村正電磁擲刀_bl.jpg");

	Move("絵背景50", 300, @-512, @0, Dxl1, false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


//◆脇差を抜き放ち投げ放つ。
//◆レーザービームっぽく。
//◆アベンジに向かってばびゅーん。光速。
//◆が、避けるアベンジ。超機動。
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0330a00">
「……避开了?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0340a01">
《——不可能!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　迅如闪电的电磁拔刀……

　居然被
　————避开了?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ
//◆１３０Ｒ？

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("絵st100");
	Delete("@絵背景*");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");

	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_02_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　兄长要我独自一人站上世界的最顶峰。
　独自——既是兄长也是自己，皇路操孤身一人。

　舍弃所有。
　挣开如影随形的一切。

　朝着孤独。
　前往只属于自己一人的<RUBY text="ｓｐａｃｅ">地方</RUBY>——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();
	Cockpit_AllFade0();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//◆横書きボックス
　
　　　　　　　　　０１：０７：４４

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


	ma03_SB2(2000,2,700,-400);
	ma03_SB(2001,200);
	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,700,0,1000,null,true);

	CreateTextureSP("絵st100", 2200, 1024, Middle, "cg/st/3d村正標準_騎航_陰義.png");

	Move("絵st100", 300, @-1324, @0, Dxl1, false);
	BGMoveAuto("@絵st100",2);

	FadeDelete("黒", 10, true);

//◆村正
//◆遠くなるアベンジ
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0350a01">
《……不行……！
　无法追赶！　追不上！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　这大概还是第一次听闻，
　村正受挫。

　将它挫败的并不是银星号。
　甚至不是真打武者。

　操纵着玩具，连武者都称不上的人。
　这现代的，与神秘技法相差甚远，以粗陋技术所制造的
竞技用剑胄——把世称鬼斧神工的剑胄逼入了绝境。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0360a00">
「……
　无可奈何。」

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0370a00">
「村正！
　计算敌骑的路线与速度，
在可能交汇的地点等待！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0380a01">
《……主君。
　可是，如此一来……能否赶上孵化？》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0390a00">
「不知道。
　但我们别无他法。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0400a01">
《……了解！
　那么，目标地点是？》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0410a00">
「——大致在终点直道的中央。
　控制线。<RUBY text="···">终点线</RUBY>。」

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0420a00">
「向那里直线前进。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0430a01">
《……不可。
　这样我们会先行到达！　
　会需要在那里等待。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0440a01">
《必须尽可能地利用好时间。
　应该等在那个直道的入口附近。》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0450a00">
「——不。
　如此一来我们会落在逆袭骑之后，
再也无法赶超。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0460a01">
《怎么可能——》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0470a00">
「敌骑<RUBY text="··">加快</RUBY>了速度！
　村正，听从我的判断！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0480a01">
《————了解！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetBlur("絵st100", true, 3, 400, 50, false);

	BGMoveDelete();

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	BezierMove("@絵st100", 1000, (@0,@0){@+500,@+100}{@+500,@+100}(@+500,@+150){@-1000,@-500}{@-1000,@-500}(@-3000,@-1000), Axl2, true);

//◆アベンジ
//◆最終コーナー


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("@絵背景*");
	Delete("@絵st*");
	BGMoveDelete();
	ma_03_SBDelete();

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");
	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_03a.jpg");

	ma03_027vs_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("黒幕１", 300, 100, "slide_03_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　航行。
　疾驰。
　翱翔。

　皇路操在此。
　皇路卓在此。
　<RUBY text="ａｖｅｎｇｅ">蓝闪骑</RUBY>在此。

　世界的顶点，
　就在眼前。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma03_027vs_runsDelete();
	Cockpit_AllFade0();

	Delete("絵背景*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//◆横書きボックス
　
　　　　　　　　　０１：２０：０４

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	ma03_SB2(2000,4,600,-1524);
	ma03_SB(2001,200,4);

	CreateTextureSP("絵st100", 2500, -1524, Middle, "cg/st/3d村正標準_騎航_陰義.png");
	Rotate("絵st100", 0, @0, @180, @0, null,true);
	SetBlur("絵st100", true, 3, 500, 70, false);

	CreateColorEXadd("絵色100", 2600, #330033);

	Move("絵st100", 500, @+1424, @0, Dxl2, false);

	OnSE("se特殊_鎧_レース_加速02",500);


	Fade("絵色100", 0, 1000, null, false);

	DrawTransition("絵色100", 700, 0, 1000, 100, Dxl1, "cg/data/slide_01_02_0.png", false);
	FadeDelete("黒", 10, true);

	BGMoveAuto("@絵st100", 3);

	Wait(500);
	Fade("絵色100", 700, 0, null, false);



//◆村正
//◆ホームストレートが正面に
//◆そこへ突入してくる敵影。ロックオン
	SetFwR("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0490a00">
「……村正!!」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0500a01">
《——————唔!!》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆村正、最終加速。限界越え気味な感じで
	OnSE("se特殊_陰義_グラビティアクセル加速",1000);

	CreateTextureEX("絵背景100", 3000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_b.jpg");
	CreateTextureEXadd("絵背景200", 3100, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_b.jpg");

	Fade("絵背景100", 300, 1000, null, false);

	Fade("絵背景200", 300, 1000, null, false);
	Zoom("絵背景200", 300, 2000, 2000, Dxl1, false);
	Move("絵背景200", 300, @+256, @0, Dxl1, false);

	Wait(200);

	FadeDelete("絵背景200", 300, true);



	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	ma_03_SBDelete();
	BGMoveDelete();

//◆アベンジ
//◆疾走

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//◆横書きボックス
　
　　　　　　　　　０１：２４：５７

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


//◆アベンジ疾走
	Delete("絵背景*");

	ma03_SB2(2000,4,700,-2000);
	ma03_SB(2001,200,4);

	CreateTextureSP("絵st100", 2500, -1024, Middle, "cg/st/3dアベンジ_騎航_通常_b2.png");
	SetBlur("絵st100", true, 3, 500, 50, false);

	CreateColorEXadd("絵色100", 2200, #1d7fee);

	Move("絵st100", 1000, @+3500, @0, Dxl2, false);

	OnSE("se特殊_鎧_レース_加速02",500);


	FadeDelete("黒", 10, true);
	Wait(100);

	Fade("絵色100", 500, 600, null, false);
	DrawTransition("絵色100", 200, 0, 500, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("絵色100", 800, 500, 700, 50, Dxl1, "cg/data/slide_05_00_1.png", false);
	Fade("絵色100", 300, 0, null, true);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	Delete("絵st*");

	ma_03_SBDelete();
	BGMoveDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　
　　　　　　　　　０１：２４：８９

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


//◆アベンジ疾走
	ma03_SB2(2000,4,500,-1600);
	ma03_SB(2001,200,4);

	CreateTextureSP("絵st100", 2500, -1024, Middle, "cg/st/resize/3dアベンジ_騎航_通常_b2m.png");
	SetBlur("絵st100", true, 3, 500, 50, false);

	CreateColorEXadd("絵色100", 2200, #1d7fee);

	Move("絵st100", 500, @+512, @0, Dxl2, false);
	BGMoveAuto("@絵st100",2);

	OnSE("se特殊_鎧_レース_加速01",800);
	FadeDelete("黒", 10, true);
	Wait(100);

	Fade("絵色100", 500, 600, null, false);
	DrawTransition("絵色100", 200, 0, 500, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("絵色100", 800, 500, 700, 50, Dxl1, "cg/data/slide_05_00_1.png", false);
	Fade("絵色100", 300, 0, null, true);


	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	Delete("絵st*");

	ma_03_SBDelete();
	BGMoveDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　
　　　　　　　　　０１：２５：０２

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	Delete("黒", 10, true);

//◆アベンジ疾走
	ma03_SB2(2000,4,300,-1600);
	ma03_SB(2001,100,4);

	CreateTextureSP("絵st100", 2500, -2024, Middle, "cg/st/resize/3dアベンジ_騎航_通常_b2l.png");
	SetBlur("絵st100", true, 3, 500, 50, false);

	CreateColorEXadd("絵色100", 2200, #1d7fee);

	Move("絵st100", 300, @+1100, @0, Dxl2, false);

	Wait(100);
	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	FadeDelete("黒", 10, true);

	Shake("絵st100", 100000, 10, 0, 0, 0, 1000, null, false);


	Fade("絵色100", 500, 600, null, false);
	DrawTransition("絵色100", 200, 0, 500, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("絵色100", 800, 500, 700, 50, Dxl1, "cg/data/slide_05_00_1.png", false);
	Fade("絵色100", 300, 0, null, true);

	WaitKey(1000);

	CreateColorEX("黒", 20000, "Black");
	Fade("黒",10,1000,null,true);

	Delete("絵st*");

	ma_03_SBDelete();
	BGMoveDelete();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　
　　　　　　　　　０１：２５：０７

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――


	SetVolume("@mbgm*", 1000, 0, null);

//◆黒画面
	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【操】
<voice name="操" class="操" src="voice/ma03/027vs0510b42">
「……父亲……
　我……到了么。」

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/027vs0520b42">
「……到达了……么……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆疾走ＳＥ
	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");
	MusicStart("SE01",200,1000,0,1000,null,false);


	$あべんじだっしゅ = RemainTime("SE01");


	WaitKey($あべんじだっしゅ);
	SetVolume("SE01", 1000, 0, null);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//◆横書きボックス
//◆一文字ずつ表示で
　
　　　　　　　　　０<?>
{WaitKey(300);}
１<?>
{WaitKey(300);}
：<?>
{WaitKey(300);}
２<?>
{WaitKey(300);}
５<?>
{WaitKey(300);}
：<?>
{WaitKey(500);}
１<?>
{WaitKey(500);}
０

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");

	DrawTransition("黒", 300, 1000, 0, 100, Dxl1, "cg/data/slide_03_01_1.png", true);
	Delete("黒");

//◆村正
//◆迫るアベンジをロックオン

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,700,0,1000,null,true);


	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0530a00">
《吉野御流合战礼法“迅雷”之崩裂……》

{	FwC("cg/fw/fw村正武者_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0540a00">
《电磁拔刀————“祸”。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆電磁抜刀·禍

	CreateTextureEX("絵ev100", 1200, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");
	CreateTextureEX("絵ef100", 1200, Center, Middle, "cg/ef/ef030_汎用電磁抜刀a.jpg");
	SetBlur("絵ev100", true, 3, 500, 100, false);
	SetBlur("絵ef100", true, 3, 500, 100, false);
//	Zoom("絵ef100", 0, 2000, 2000, Dxl1, false);

	SetVolume("SE01", 200, 1000, null);
	Zoom("絵ev100", 300, 1500, 1500, Dxl1, false);
	Fade("絵ev100", 300, 1000, null, true);

	SetVolume("SE01", 500, 0, null);
	CreateSE("SE02","se特殊_電撃_放電01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("絵ef100", 300, 2000, 2000, Dxl1, false);
	Fade("絵ef100", 300, 1000, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	Delete("絵ev100");
	Delete("絵ef100");
	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");
	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");




//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　……村正的至极一刀。
　仅仅捕捉到丁点蓝色闪电的翅膀尾翼，将其切断。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆クラッシュ。ずがーん。

	CreateTextureEXadd("絵背景200", 2000, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	CreateTextureEX("絵背景300", 3100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEXadd("絵背景400", 3200, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵背景400", true, 3, 500, 100, false);
	CreateTextureEXadd("絵背景500", 3200, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵背景500", true, 3, 500, 100, false);

	CreateSE("SE01","se特殊_鎧_アベンジ_ひび割れ");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵背景200", 200, 1000, null, true);
	Zoom("絵背景200", 300, 2000, 2000, Dxl1, false);
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",200,1000,null,true);
	Shake("絵背景300", 100000, 1, 2, 0, 0, 500, Dxl1, false);
	Shake("絵背景400", 100000, 10, 10, 0, 0, 500, Dxl1, false);
	Fade("絵背景300", 300, 1000, Dxl1, false);
	Fade("絵背景400", 300, 1000, Dxl1, false);
	Zoom("絵背景400", 600, 2000, 2000, Dxl1, false);
	CreateSE("SE01","se戦闘_破壊_鎧05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");

	FadeDelete("絵背景400", 300, true);

	Wait(300);

	Fade("絵背景500", 300, 500, Dxl1, false);
	Zoom("絵背景500", 300, 2000, 2000, Dxl1, false);

	Wait(300);

	FadeDelete("絵背景500", 300, false);

//◆ウェイト

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("絵背景*");

	WaitKey(3000);

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/ev/ev118_サーキットを見下ろす光と二世村正.jpg");

	CreateSE("SE01","se自然_風_荒野_L");
	CreateSE("SE02","se自然_風_荒野_L");
	MusicStart("SE02",1000,1000,0,1000,null,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");




//◆高い建物？の上。シルエット二つ。少女と異形（女王蟻）
//◆顔グラ使わず
	SetNwR("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【光】
<voice name="光" class="光" src="voice/ma03/027vs0550a14">
「嗯……精彩。
　非常精彩。皇路兄妹，还有逆袭骑。」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0560a14">
「你们所展示的辉煌……
　光终生难忘。」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0570a14">
「我说……」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0580a14">
「村正。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0590a15">
《…………》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0600a14">
「把他们的光芒为我所用。
　让我等来继承他们的蹑影追风。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0610a15">
《……拥有那种疾速。
　所为何事？　主君。》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0620a14">
「不言而喻。」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0630a14">
「向天下示武！」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0640a15">
《……嗯……》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0650a14">
「然后，去到父亲面前。
　去到与光血脉相连的生父面前。」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0660a14">
「我要亲手夺回自己刚一降生即被夺走的
生父！
　光之所愿，只在于此！」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0670a15">
《……》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0680a14">
「在光亲手拥住心爱的父亲之前。
　光将一刻不停地奔走。」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0690a14">
「让我们超越那蓝色的骑影。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma03/027vs0700a15">
《……是，吗。》

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0710a14">
「接下来。
　景明……」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0720a14">
「光就不再吊你胃口了。」

//【光】
<voice name="光" class="光" src="voice/ma03/027vs0730a14">
「光该走了……下次，
　再一起游戏吧？」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 1000, 0, null);
	SetVolume("SE02", 1000, 0, null);

	CreateColorEX("フラッシュ白", 15000, "Black");
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("絵背景100");

	CreateTextureSP("絵背景100", 1000, Center, Middle, "cg/bg/bg038_サーキット直線_03.jpg");
	StR(1000, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStR(0,true);

	SoundPlay("@mbgm16",0,1000,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");


	CreateTextureEX("絵背景200", 2500, Center, Middle, "cg/ev/ev925_野太刀断片_d.jpg");
	Fade("絵背景200", 500, 1000, null, true);

//◆サーキット
//◆村正
//◆鞘が出現
	SetFwC("cg/fw/fw村正武者_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0740a00">
「……野太刀的，鞘。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0750a01">
《嗯……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("フラッシュ白",0,1000,null,true);

	FadeDelete("絵背景200", 0, true);

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");


//◆げっと。
	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0760a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0770a01">
《主君。
　……还活着。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0780a00">
「什么……？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0790a01">
《虽然剑胄完全遭到破坏。
　骑手却……仍然活着。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0800a01">
《……大概是……
　剑胄保护了她……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/027vs0810a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/027vs0820a01">
《……如何处置？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("@mbgm16", 1500, 0, null);

	ClearFadeAll(1600, true);


//◆ヒロイン殺害フェイズ
//◆キリング判定
//嶋：mainでフェイズ
//	judgment_of_catch();

..//ジャンプ指定
//次ファイル　"ma03_028.nss"

}

..//ma03_027vs_runs
function ma03_027vs_runs($md03_027vs_既存ファイル,優先度,$md03_027vs_ファイル名){

	CreateTextureEX("絵runs01", 優先度, Center, Middle, $md03_027vs_ファイル名);
	CreateTextureEX("絵runs02", 優先度, Center, Middle, $md03_027vs_ファイル名);
	SetBlur("絵runs01", true, 3, 400, 20, false);
	SetBlur("絵runs02", true, 3, 400, 20, false);

	SetVertex("絵runs01", 518, 389);
	SetVertex("絵runs02", 518, 389);
	SetVertex($md03_027vs_既存ファイル, 518, 389);

	CreateProcess("疾走", 1500, 0, 0, "ma03_027vs_runsProcess");
	SetAlias("疾走","疾走");
	Request("疾走", Start);

	$ma03_027vs_runs01 = 125;
	$ma03_027vs_runs02 = 250;

}

..//ma03_027vs_runsProcess
function ma03_027vs_runsProcess(){

	begin:


		Zoom($md03_027vs_既存ファイル, 50000, 2000, 2000, AxlAuto, false);
		Shake($md03_027vs_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);
		Fade($md03_027vs_既存ファイル, 500, 0, null, false);

		Fade("@絵runs01", $ma03_027vs_runs01, 500, null, false);
		Zoom("@絵runs01", $ma03_027vs_runs02, 3000, 3000, AxlAuto, false);

		Wait($ma03_027vs_runs01);

	while(1){

		Shake($md03_027vs_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);

		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);
		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);

	}


}

..//ma03_027vs_runsDelete
function ma03_027vs_runsDelete(){

	Request("@疾走", Stop);
	Delete("@疾走");
	Delete("@絵runs*");

}

..//ma03_SB2
function ma03_SB2($サーキット真横_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	//昼間
	if($ma03_BGNum==1){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	//夜
	}else if($ma03_BGNum==2){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}else if($ma03_BGNum==3){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	}else if($ma03_BGNum==4){
		CreateTextureSP("Circuit01", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}else{
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

	$ma03_BGNum = 0;

}


..//ma03_SB
function ma03_SB($サーキット真横_BG01,$ma03_SBtime,$ma03_BarNum){


	if($ma03_BarNum == 1){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BarNum == 2){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BarNum == 3){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, 1124, Middle, "cg/bg/bg038_サーキット真横b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BarNum == 4){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, 1124, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else{
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}

	if($ma03_BarNum >= 3){
		CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess2");
		Request("柱プロセス", Start);
		SetAlias("柱プロセス","柱プロセス");
	}else{
		CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
		Request("柱プロセス", Start);
		SetAlias("柱プロセス","柱プロセス");
	}

	$ma03_BarNum=0;

}


..//ma_03_SBProcess
function ma_03_SBProcess(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1074, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
	}

}

..//ma_03_SBProcess2
function ma_03_SBProcess2(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -50, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1124, @0, null, true);
	}

}

..//ma_03_SBDelete
function ma_03_SBDelete(){

	Fade("@Circuit_Bar", 0, 0, null, true);
	Delete("@柱プロセス");
	Delete("@Circuit_Bar");
	SCR1stop();
	Delete("@Circuit*");

}



..//■ハリボテさん
function fakeCP(){



}

