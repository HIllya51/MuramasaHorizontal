//<continuation number="2880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//嶋：デバッグ用
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma03_025.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma03_025.nss","ma03_SB2",true);
	Conquest("nss/ma03_025.nss","ma03_SB3",true);
	Conquest("nss/ma03_025.nss","ma03_SB",true);
	Conquest("nss/ma03_025.nss","ma_03_SBProcess",true);
	Conquest("nss/ma03_025.nss","ma_03_SBProcess2",true);
	Conquest("nss/ma03_025.nss","ma_03_SBDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_runs",true);
	Conquest("nss/ma03_025.nss","ma03_025_runsProcess",true);
	Conquest("nss/ma03_025.nss","ma03_025_runsDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_shakeloop",true);
	Conquest("nss/ma03_025.nss","ma03_025_shakeloopProcess",true);
	Conquest("nss/ma03_025.nss","ma03_025_shakeloopDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_GC",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCP1",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCPC",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCP2",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCPDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCF",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCFP",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto01",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto01Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto02",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto02Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto03",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto03Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAutoDelete",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto04",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto04Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto05",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto05Process",true);

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
	#bg038_サーキットカーブb_01 = true;
	#bg038_サーキットカーブb_03 = true;
	#bg038_サーキット走行中_01a = true;
	#bg038_サーキット走行中_03a = true;
	#bg038_サーキット走行中_01 = true;
	#bg038_サーキット走行中_03 = true;
	#bg039_競技場客席a_01 = true;
	#bg039_競技場客席b_01 = true;
	#bg037_競技場ガレージb_01 = true;


	#ev906_アベンジ走行_a=true;
	#ev906_アベンジ走行_b=true;
	#ev907_ウルティマ走行=true;

	#ev117_レースの情景_b=true;
	#ev117_レースの情景_c=true;
	#ev117_レースの情景_d=true;

//嶋：EV指定：ev117_レースの情景_b

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;
	$GameName = "ma03_026.nss";

	CP_AllDelete();


}

scene ma03_025.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

	if($GameDebugSelect==1){CP_AllSet("村正");}

..//ジャンプ指定
//前ファイル　"ma03_024.nss"

//◆レース進行


//◆俯瞰視点
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");

	ma03_SB2(1000,3,700,0);
	ma03_SB3(2000,250);

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/resize/3dウルティマ_騎航_通常l.png");
	Fade("絵st100", 0, 1000, null, true);

	OnSE("se特殊_鎧_レース_加速02",1000);

	Move("絵st100", 500, -314, -776, Dxl1, false);
	FadeDelete("絵暗転", 1000, true);

	BGMoveAuto("@絵st100",1);

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250010a07">
《——翔京理想号，通过起跑线！
　进入第十二圈！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	BGMoveDelete();

	SetBlur("絵st100", true, 3, 500, 50, false);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st100", 800, -4000, @-50, Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵st100");
	ma_03_SBDelete();

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0011]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250020a07">
《第一集团还是保持原样！
　十圈前后各队都为了换辅助推进器而进了一
次维修区，但进站的争斗不分胜负。最终排位
还是基本没有变动。》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250030a07">
《作为观赛的一方我好希望出现变化！
　但是，很困难吧!?》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250040a08">
《没错……
　可以说，现在赛场已经完全被那个理想号支
配了呢。》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250050a08">
《他带出了一种速度。
　其他的骑手只是遵循那个速度在疾驰而已……》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250060a08">
《无能为力呢。
　虽然心里大概想着要做点什么吧。不过理想
号的力量果然还是更胜一筹啊。》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250070a07">
《难道说就这样以翔京的胜利落幕了吗!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);

	CreateColorSP("絵暗転", 20000, "#000000");

	FadeDelete("上背景", 300, true);
	Wait(200);
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　……第十二圈。
　还有八圈。

　我正好在一半，第十圈的时候进入了维修区。
　……现在，装在背后的竞技剑胄用的辅助推进器只不
过是一个装饰。没有回维修站的必要，但是不回去的话
就会暴露这边的真面目。

　赛场竞技消耗的热量和战斗相比要小得多，这种赛道
跑二十圈左右的话，我和村正不必非要去休息。
　不过，对于竞技用剑胄这是不可能的。

　现在已经进入后半战。
　排位是处于中段和后段的交界。

　如果想获得比赛的胜利的话，这时候就算是来硬的也
得要向前挤了。不过以我的目的看来，现在这个位置是
非常理想的。
　没必要勉强。尤其是像刚才那样的。

　我注意观察骑手们的情况。
　无论是谁，都在殚精竭虑地想去把握空气的流动还有
附近对手的行动。没有谁做出特别奇怪的举动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250080a00">
「现在所有人都还有嫌疑。
　还不行。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250090a01">
《……是啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　村正，将肯定的话用不同意的语气说了出来。
也许无法亲眼确认“卵”的寄生体的存在这一假设，就
算事已至此还是无法接受。事关面子吧。

　我早就知道在这方面村正是极度地顽固、倔强。
　……就算不知道的话，看到之前那一幕也就有数了。

　我凝视着最远处的先头部队。
　和上一圈确认的时候相比没有一点变化。无论是排位，
还是状况。

　首位是从最初开始领跑至今的理想号。
　超级猎犬、ＲＧ-一〇、逆袭骑紧接其后。

　……那么。
　打算一直老老实实地跑下去吗？

　她————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE02", 600, 0, null);

//◆ピット
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);

	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250100b24">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガチャ。無線
	CreateSE("SE01","se日常_機械_無線通信01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//◆アベンジ
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/resize/3dアベンジ_騎航_通常_m.png");
	Fade("絵st100", 0, 1000, null, true);

	FadeDelete("上背景", 600, true);

	ma03_SB2(1000,1,700,0);
	ma03_SB3(2000,250);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st100", 500, -164, -450, Dxl1, false);
	FadeDelete("絵暗転", 600, true);

	BGMoveAuto("@絵st100",1);

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250110b24">
《已经预热好了吧？
　操。》

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0250120b42">
《……嗯。
　随时都可以。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆俯瞰視点
	CreateColorEX("絵暗転", 15000, "#000000");

	Fade("絵暗転", 500, 1000, null, true);

	BGMoveDelete();
	ma_03_SBDelete();

	ma03_SB2(700,1,1000,0);
	ma03_SB3(2000,300);

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/3dウルティマ_騎航_通常.png");
	Fade("絵st100", 0, 1000, null, true);

	OnSE("se特殊_鎧_レース_加速02",1000);

//	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
//	FadeBG(0,true);
	CreateTextureSP("絵st001", 1300, 1024, Middle, "cg/st/3dＳハウンド_騎航_通常.png");
	Request("絵st001", Smoothing);
	CreateTextureSP("絵st002", 1100, 1024, -50, "cg/st/3dＲＧ－１０_騎航_通常.png");
	Zoom("絵st002", 0, 500, 500, null, true);
	Request("絵st002", Smoothing);


	Move("絵st100", 700, -2014, @0, Dxl1, false);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250130a07">
《通过了立体交叉点！
　理想号，没有失误！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250140a08">
《真稳定啊。
　反而是后面跟着的选手有些奇怪了呢。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_レース_旋回01",1000);
	Zoom("絵st001", 500, 500, 500, Dxl1, false);
	Move("絵st001", 500, -300, @0, Dxl2, false);
	Move("絵st002", 500, 0, @0, null, true);

	OnSE("se特殊_鎧_レース_旋回02",1000);
	Zoom("絵st001", 500, 1000, 1000, Dxl1, false);
	Move("絵st001", 500,@-100, @-50, Dxl2, false);
	Shake("絵st001", 500, 0, 5, 0, 0, 1000, null, false);
	Shake("絵st002", 300, 5, 10, 0, 0, 1000, null, false);
	Move("絵st002", 500, @+200, @+200, Dxl1, true);

	Move("絵st001", 500,@-2000, @0, Dxl2, false);

	Wait(100);

	Move("絵st002", 500,@-1500, @-100, Dxl2, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ma_03_SBDelete();
	Delete("絵st*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);


	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0071]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250150a07">
《哦哦!?　真的呢！
　超级猎犬和ＲＧ-一〇现在即将接触了！》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250160a07">
《好像是联会发起了攻势横锻对此进行了
防守……
　现在哪一方都已经错失良机了！　危险了！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250170a08">
《真难看啊。
　大概是忍受不了被理想号所支配的比赛了吧。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250180a08">
《骑手这类人，都是自傲的……
　这种完全被压制住的情况，肯定感觉屈辱得
忍无可忍吧。呵呵呵呵呵。》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250190a07">
《原来如此！
　只要是别人的事无论是谁都很了解嘛！》

{	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250200a08">
《你什么意思啊！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250210a07">
《那么，进入非终点直道！
　这里该重整状态了——咦？》

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250220a07">
《逆袭骑……
　速度降下来了！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250230a08">
《……真的啊。
　打算远离有点危险的两骑吗？》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250240a08">
《虽然不是错误的判断……
　很消极呢。》

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250250a07">
《……不。
　这人，大概……那个。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 2000, 0, null);

//◆アベンジ
//嶋：EV指定：ev906_アベンジ走行_a

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/resize/ev906_アベンジ走行_am.jpg");
	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/ev/resize/ev906_アベンジ走行_bm.jpg");

	Zoom("絵背景100", 0, 800, 800, null, true);
	Zoom("絵背景200", 0, 800, 800, null, true);
	Request("絵背景100", Smoothing);
	Request("絵背景200", Smoothing);

	Shake("絵背景100", 500000, 1, 2, 0, 0, 1000, null, false);


	FadeDelete("上背景", 300, true);

	OnSE("se戦闘_動作_空突進08",1000);

	FadeDelete("絵暗転", 300, true);

	Wait(500);

	CreateColorEX("絵暗転", 10000, "#000000");
	Fade("絵暗転", 500, 1000, null,true);

	Delete("絵背景100");

	SetFwC("cg/fw/fw操_真面目.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【操】
<voice name="操" class="操" src="voice/ma03/0250260b42">
「请给我翅膀。
　我想在天空飞翔。」

//【操】
<voice name="操" class="操" src="voice/ma03/0250270b42">
「请给我翅膀。
　我想和微风嬉戏。」

//【操】
<voice name="操" class="操" src="voice/ma03/0250280b42">
「请给我翅膀。
　我想要化作飞鸟。」

//【操】
<voice name="操" class="操" src="voice/ma03/0250290b42">
「请给我翅膀。
　我想要背叛天空微风和飞鸟。」

//【操】
<voice name="操" class="操" src="voice/ma03/0250300b42">
「我的翅膀要背叛一切。
　全部都抛弃，忘却，化为乌有。」

//【操】
<voice name="操" class="操" src="voice/ma03/0250310b42">
「要问为什么，因为这不是爱。
　要问为什么，因为这是逆袭。」

//【操】
<voice name="操" class="操" src="voice/ma03/0250320b42">
「天空厌恶我微风憎恨我飞鸟嫉妒我。
　弹奏恸哭咏唱这个名字吧。」

　
//【操】
<voice name="操" class="操" src="voice/ma03/0250330b42">
　　　　　　　　「“逆袭骑”。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//【操】
//<voice name="操" class="操" src="voice/ma03/0250330b42">
//　
//　　　　　　　　「〝逆袭骑_。」

//◆アベンジ爆走
//嶋：EV指定：ev906_アベンジ走行_b

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev906_アベンジ走行_a.jpg");
	CreateTextureEX("絵背景200", 1000, Center, Middle, "cg/ev/resize/ev906_アベンジ走行_bm.jpg");
	CreateTextureEX("絵背景300", 1200, Center, Middle, "cg/ev/resize/ev906_アベンジ走行_bm.jpg");

	FadeDelete("絵暗転",300,true);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	OnSE("se特殊_鎧_アベンジ加速01",1000);
	Fade("絵フラ", 600, 400, null, true);
	WaitKey(100);
	Fade("絵フラ", 300, 1000, null, true);

	Fade("絵背景200", 0, 1000, null, true);
	Fade("絵背景300", 0, 1000, null, false);

	SetBlur("絵背景300", true, 3, 400, 50, false);
	Fade("絵背景300", 0, 500, null, true);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Shake("絵背景200", 10000, 10, 5, 0, 0, 1000, null, false);
	Zoom("絵背景300", 1000, 2000, 2000, Dxl1, false);
	Zoom("絵背景200", 100, 800, 800, null, false);
	Fade("絵フラ", 300, 0, null, true);
	Fade("絵背景300", 500, 0, null, true);
	Zoom("絵背景300", 0, 1000, 1000, Dxl1, true);

	Fade("絵フラ", 300, 1000, null, true);

	WaitKey(2000);

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSPadd("絵白", 10000, "#FFFFFF");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	Delete("上背景");
	DrawDelete("絵白", 200, 100, "circle_01_00_1", false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250340a01">
《哎？　什么!?》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250350a00">
「开始了吗。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 600, 0, null);

//◆俯瞰視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 150, 100, "slide_02_01_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

	CreateSE("SE01","se背景_ガヤ_歓声02");
	MusicStart("SE01",300,1000,0,1000,null,true);

	SoundPlay("@mbgm03",0,1000,true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250360a07">
《来了——————
——————————！》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250370a08">
《这、这种加速……！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	ma03_SB2(1000,1,400,0);
	ma03_SB3(2000,250);

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/resize/3dアベンジ_騎航_通常_m.png");
	Fade("絵st100", 0, 1000, null, true);
	Request("絵st100", Smoothing);

	SetBlur("絵st100", true, 3, 500, 50, false);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Move("絵st100", 300, -164, -450, Dxl1, false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_0", true);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,600,0,1000,null,true);

	BGMoveAuto("@絵st100",1);

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250380a07">
《田村·逆袭骑，本性毕露了！
　加速加速加速——————
————————————!!》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250390a07">
《果然昨天的那个不是偶然！
　不是由于赛道的热浪造成的幻觉！
　这个加速是真正的现实!!》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250400a08">
《厉害……！
　和刚刚警察队展示出来的犹如魔术一般
难以理解的加速完全不同。》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250410a08">
《是在完美的机械控制下的冲刺啊！
　太美了！　太美了啊！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	BGMoveDelete();

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Zoom("絵st100", 1500, 500, 500, Dxl1, false);
	BezierMove("絵st100", 1500, (@0,@0){@+100,@+50}{@+100,@+100}(@+200,@+50){@+200,@+50}{@+200,@+50}(@-4000,@-300), Dxl1, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("絵st*");

	CreateTextureEX("絵st100", 2100, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Fade("絵st100", 0, 1000, null, true);

	CreateTextureEX("絵st200", 2100, Center, Middle, "cg/st/3dＲＧ－１０_騎航_通常.png");
	Fade("絵st200", 0, 1000, null, true);

	BGMoveAuto("@絵st200",1);

	SetBlur("絵st100", true, 3, 500, 50, false);

	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st100", 300, -2040, @0, Dxl1, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0102]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250420a07">
《超过去了！　超过ＲＧ——一〇了！
　联合会公司得意的杰作骑体，无论防守或者
其他动作都没有来得及反应啊！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	BGMoveDelete();
	ma03_SB2(1000,3,700,0);
	ma03_SB3(2000,250);

	Delete("絵st*");

	CreateTextureEX("絵st100", 2200, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Fade("絵st100", 0, 1000, null, true);

	CreateTextureEX("絵st200", 2100, 0, 0, "cg/st/3dＳハウンド_騎航_通常.png");
	Fade("絵st200", 0, 1000, null, true);
	Zoom("絵st200", 0, 750, 750, null, true);

	BGMoveAuto("@絵st200",1);

	SetBlur("絵st100", true, 3, 500, 50, false);

	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st100", 300, -2040, @0, Dxl1, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0103]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250430a07">
《横锻、超级猎犬也步其后尘！
　眨眼的功夫就只能看见其背影了！
我仿佛看见了骑手惊愕的表情！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250440a07">
《田村·逆袭骑，皇路操，一跃急升到了第二
名——————————!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 0, null);

//◆観客席
	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	BGMoveDelete();
	ma_03_SBDelete();
	Delete("絵st*");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);

	DrawDelete("黒幕１", 200, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0250450a02">
「…………厉害。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0250460a03">
「好像一道蓝光……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0250470a04">
「完全可以称得上是蓝色闪电了。
　哎呀……这可真是。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 1000, 0, null);

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250480a00">
「这下赛场可要乱了。
　不知道事态会如何发展了。对我们也是。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250490a01">
《……啊，嗯。
　没错……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250500a00">
「怎么了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　村正好像因逆袭骑的飞速稍微失神了片刻。
　那个确实值得惊讶。但是，昨天也应该看到过相同的
情景了……不对。

　村正应该对装甲竞技不感兴趣。
　也许只是确认一下寄生体的情况，然后决定无视吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250510a01">
《……我稍微，想了想哦。
　虽然只是一点点。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250520a01">
《………虽然我不理解，也不想去理解。
　不过现在的锻造师也有他们的灵魂呢。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0250530a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0250540a01">
《只是，稍微想了一想。
　如此而已哦……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジＶＳウルティマ
//◆直線でアベンジ、コーナーでウルティマ。
//嶋：EV指定：ev907_ウルティマ走行
//嶋：EV指定：ev906_アベンジ走行_b

	SetVolume("SE02", 1000, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250550a07">
《这可真是……
　进入激烈的角逐了——————!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");

	SetBlur("絵背景200", true, 3, 500, 100, false);

	FadeDelete("上背景", 300, true);
	Fade("絵背景100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @+200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_1", true);
	FadeDelete("絵背景200", 300, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250560a07">
《田村·逆袭骑是直线的霸主！
　凭借爆发性的速度强取了首位！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateSE("SE01","se戦闘_動作_空突進08");

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/ev/ev907_ウルティマ走行.jpg");
	CreateTextureEX("絵背景200", 200, Center, Middle, "cg/ev/ev907_ウルティマ走行.jpg");

	SetBlur("絵背景200", true, 3, 500, 100, false);

	FadeDelete("上背景", 300, true);
	Fade("絵背景100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @-200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	DrawDelete("絵暗転", 200, 100, "slide_01_01_1", true);
	FadeDelete("絵背景200", 300, false);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0152]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250570a07">
《但是，弯道的王者是翔京·理想号！
　轻易突破了在过弯时大幅度甩尾的逆袭号的
阻拦并拉开了距离！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250580a07">
《但逆袭号，并没有被完全甩开！　粘上去了！　
接着在直道反超！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateMask("マスク", 2000, 0, 0, "cg/mask/ciスラッシュ_01_00.png", false);

	CreateTextureEX("マスク/絵背景100", 2100, -289, -238, "cg/ev/resize/ev906_アベンジ走行_am.jpg");
	CreateTextureEX("絵背景100", 100, -343, -71, "cg/ev/resize/ev907_ウルティマ走行_m.jpg");

	Move("マスク/絵背景100", 0, @-50, @0, null, true);
	Move("絵背景100", 0, @+50, @0, null, true);
	Fade("マスク/絵背景100", 0, 1000, null, false);
	Fade("絵背景100", 0, 1000, null, true);

	FadeDelete("上背景", 300, true);
	Move("マスク/絵背景100", 300, @+50, @0, Dxl1, false);
	Move("絵背景100", 300, @-50, @0, Dxl1, false);
	FadeDelete("絵暗転", 300, true);

	SetFwC("cg/fw/fw茶々丸変装_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0153]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250590a07">
《两位都毫不退让！
　完全是巅峰对决——
————————!!》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250600a08">
《太——太厉害了……！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250610a07">
《刚刚新的圈速出来了。
　……这真是太厉害了！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250620a07">
《翔京理想号，一分二十五秒八七！
　田村逆袭骑，一分二十五秒八八！
　两方都破了大和骑手的记录！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250630a07">
《百分之一秒的争斗！
　哪一边会获胜呢，完全不可预料！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250640a08">
《逆袭骑的力量。理想号的技巧……
　太棒了！　哪一边都是最强的！》

{	FwC("cg/fw/fw雷蝶_笑い.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250650a08">
《粗狂的野性之美，或者是轻细至极的技巧之
美……哪一个更美呢。请告诉吾答案！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250660a07">
《那么到底是哪一位！　到底两者中的哪一位
可以给主办方答案呢！
　不过，我感觉还可能有别的答案！》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250670a08">
《咦？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席？
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Delete("マスク/*");
	Delete("マスク");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetNwC("cg/fw/nw高級士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250680e284">
「……哼，成这样了吗。
　真是笨蛋，一个劲失败……」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250690e284">
「既然事已至此……」


//◆ぴっ。
{	CreateSE("SE01","se日常_機械_無線通信02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250700e284">
「……是我。」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250710e284">
「啊啊。就按计划进行。
　……他们不愿意？　这种事我明白。他们都
是用自尊心堆出来的，这话中将阁下也说过吧。」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250720e284">
「所以对他们直说！　把他们的自尊心买下来……
跟他们说，卖掉胜利无望的今天比赛中的逞强，
买下明天比赛中的胜利。」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250730e284">
「资金援助还有技术支持，用他们梦寐以求的
东西来跟他们做交易。
　这样做的话也许就会行动吧。」

{	NwC("cg/fw/nw高級士官.png");}
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0250740e284">
「……别担心。之后会尽可能进行掩饰的。
　总之对我们来说今天的胜利是必须的。
不是吗？　为此要使用一两个骗术，也在所不
惜……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



//◆コース上
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵背景100", 100, -800, Middle, "cg/ev/resize/ev117_レースの情景_al.jpg");

	Move("絵背景100", 2000, -550, @0, null, false);
	Shake("絵背景100", 100000, 0, 1, 0, 0, 1000, null, false);
	FadeDelete("上背景", 300, true);
	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,400,0,1000,null,true);
	FadeDelete("絵暗転", 300, true);

	SetNwC("cg/fw/nw騎手Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【ｅｔｃ／騎手Ａ】
<voice name="ｅｔｃ／騎手Ａ" class="その他男声" src="voice/ma03/0250750e044">
「…………」

{	NwC("cg/fw/nw騎手Ｂ.png");}
//【ｅｔｃ／騎手Ｂ】
<voice name="ｅｔｃ／騎手Ｂ" class="その他男声" src="voice/ma03/0250760e045">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);

//◆村正視点
	CreateColorEX("絵暗転", 20000, "#000000");

	Fade("絵暗転", 300, 1000, null, true);

	PrintGO("上背景", 25000);

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	FadeDelete("絵暗転", 0, true);

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("上背景", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　————？

　周围的状况，有变化。
　在后方缠斗的数骑消失了。

　我变成了孤单一个人。
　周围的通风一下子变好了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250770a07">
《哦呀。后方有变动。
　有几辆骑体几乎在同一时间减速。》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250780a07">
《后退了。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250790a08">
《难道是碰撞了吗？
　算了怎么样都好。已经接近尾声了
还是这种样子，反正也赢不了的吧。
　退下吧，别碍事了。》

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250800a07">
《真能不碍事倒好哦～？》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250810a08">
《……你从刚才开始就在说啥啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　…………是吗。
　广播室的那个雷虎女士在暗示的，是在事前预料到的
可能性。

　也就是说，应该已经<RUBY text="···">开始了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマＶＳアベンジ
//◆そこへ割り込むザコレーサー
//◆妨害されるアベンジ
	SetVolume("SE02", 1000, 0, null);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	ma03_SB2(1000,1,500,0);
	ma03_SB3(2000,300);

	CreateTextureSP("絵st001", 1500, 1024, Middle, "cg/st/3dウルティマ_騎航_通常.png");
	CreateTextureSP("絵st002", 1500, 1024, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	CreateTextureSP("絵st003", 1400, 3, -146, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st004", 2000, -373, 25, "cg/st/3dセクシー_騎航_通常.png");
	Request("絵st003", Smoothing);
	Request("絵st004", Smoothing);

	SetBlur("絵st001", true, 2, 500, 50, false);
	SetBlur("絵st001", true, 2, 500, 50, false);

	Zoom("絵st001", 0, 750, 750, null, true);
	Zoom("絵st002", 0, 750, 750, null, true);
	Zoom("絵st003", 0, 300, 300, null, true);
	Zoom("絵st004", 0, 750, 750, null, true);

	CreateSE("SE01","se特殊_鎧_レース_加速01");

	DrawDelete("上背景", 150, 100, "slide_01_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_01_0", true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("絵st001", 500, -1024, @0, Dxl1, false);

	Move("絵st003", 1000, @+15, @-12, Dxl1, false);
	Move("絵st004", 1000, @+14, @+13, Dxl1, false);

	Wait(400);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	Move("絵st003", 800, -261, -179, Dxl1, false);
	Move("絵st004", 800, -347, 71, Dxl1, false);
	Zoom("絵st003", 800, 500, 500, Dxl1, false);
	Zoom("絵st004", 800, 750, 750, Dxl1, false);
	Shake("絵st002", 1200, 0, 0, 0, 5, 1000, Axl1, false);
	BezierMove("絵st002", 1000, (1024,-212){-100,@0}{-100,@0}(100,-162), Dxl1, true);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("絵st*");

	CreateTextureSP("絵背景50", 100, Center, Middle, "cg/ev/ev117_レースの情景_b.jpg");

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",300,400,0,1000,null,true);


	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw雷蝶_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250820a08">
《……哎？
　等等，等等！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250830a07">
《哦哦，发生事故了！
　从中游的竞争中脱离的骑手们放慢了一圈，
接近了领先的两骑。》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250840a07">
《逆袭骑的道路，被挡住了！》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250850a08">
《没有出蓝旗吗!?
　那些人是骑体出故障所以慢下来了吧！　
快点让他们靠边去！》

{	FwC("cg/fw/fw茶々丸変装_落胆.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250860a07">
《哎呀哎呀顺便一提那些大人物慢了一圈之后
突然就恢复状态了啊——
　恢复了与决赛参战骑相配的行驶了呢——
哇——加油——》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250870a08">
《………为什么你要别过脸边挖耳朵边说话啊？》

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250880a07">
《没什么啊？》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250890a08">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマ、独走へ
//◆アベンジ、追いたいが周りが邪魔

		SetVolume("SE01", 500, 0, null);

//◆ピット
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250900b24">
「……可恶！
　用这一手吗。」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250910b24">
（……怎么办……）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250920b24">
（迫不得已的话……）

{FwC("cg/fw/fw皇路_困惑.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250930b24">
（……<RUBY text="····">迫不得已</RUBY>的话……）

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0250940b24">
（不，但是，数量太多了。
　呜……怎么办啊）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆突破を図るアベンジ
//嶋：EV指定：ev117_レースの情景_b

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵st003", 1400, 3, -146, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st004", 2000, -373, 25, "cg/st/3dセクシー_騎航_通常.png");
	Request("絵st003", Smoothing);
	Request("絵st004", Smoothing);

	Move("絵st003", 0, -261, -179, Dxl1, false);
	Move("絵st004", 0, -347, 71, Dxl1, false);
	Zoom("絵st003", 0, 500, 500, Dxl1, false);
	Zoom("絵st004", 0, 750, 750, Dxl1, true);

	ma03_moveAuto01("@絵st003");
	ma03_moveAuto02("@絵st004");

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st002", 1500, 0, Middle, "cg/st/3dアベンジ_騎航_通常_b.png");
	Request("絵st002", Smoothing);
	Zoom("絵st002", 0, 750, 750, Dxl1, true);

	ma03_moveAuto03("@絵st002");

	FadeDelete("上背景", 200, true);
	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",300,500,0,1000,null,true);

	FadeDelete("絵暗転", 200, true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【操】
<voice name="操" class="操" src="voice/ma03/0250950b42">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆妨害される。軽く接触。
//◆致命的っぽい音。ビキ。弱点、サスアームのひび割れ

	ma03_moveAutoDelete();


	OnSE("se戦闘_動作_空突進01",1000);

	Move("@絵st003", 500, -297, -152, null, false);
	Move("@絵st004", 500, -211, 25, null, false);
	Move("@絵st002", 300, -241, -239, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_攻撃_鎧かする01",500);
	Shake("@絵st002", 500, 0, 15, 0, 0, 1000, null, false);
	Fade("フラッシュ白",0,1000,null,true);
	Move("@絵st003", 500, -261, -179, null, false);
	Move("@絵st004", 500, -347, 71, null, false);
	Move("@絵st002", 500, 0, -212, null, false);
	ma03_moveAuto01("@絵st003");
	ma03_moveAuto02("@絵st004");
	ma03_moveAuto03("@絵st002");
	OnSE("se特殊_鎧_アベンジ_ひび割れ",1000);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【操】
<voice name="操" class="操" src="voice/ma03/0250960b42">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 0, null);


	CreateColorEX("黒幕１", 25000, "BLACK");
	Fade("黒幕１", 300, 1000, null, true);

	ma03_moveAutoDelete();
	ma_03_SBDelete();
	Delete("絵st*");

//◆俯瞰視点
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("黒幕１", 300, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250970a07">
《理想号，再一次独领风骚！
　逆袭骑没有追上来！　被慢了一圈的集团包
围住了！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0250980a07">
《皇路操为了甩开他们而陷入了苦战……
不行吗！　完全被困住了！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0250990a08">
《…………》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251000a07">
《这种状况你是怎么看的呢仙人掌。》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251010a08">
《谁是仙人掌啊。
　……这也是比赛。只能这么说啊。》

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251020a07">
《哎呀？　意外冷漠的回答呢。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251030a08">
《只靠速度的话是赢不了的。是这样的没错
吧？　装甲竞技这种东西。
　优秀的骑体，骑手的技术，熟练的员工，
充足的资金……就算有这些也是不够的。》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251040a08">
《为了自己去利用他人的这种能力。是绝对
必要的哦。
　毕竟这种竞技不是一对一进行的，不是吗。》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251050a08">
《如果田村没有这种能力的话也是没办法的事。
　输了吧。只能这样哦。》

{	FwC("cg/fw/fw茶々丸変装_通常b.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251060a07">
《……原来如此。
　说得很有道理。》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251070a07">
《的确田村可能没有这种力量呢。
　但说不定，还有别的力量。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251080a08">
《是什么？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251090a07">
《运气。
　有些<RUBY text="··">别人</RUBY>，偶尔会帮田村一点忙呢。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251100a08">
《……哈啊？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
//嶋：EV指定：ev117_レースの情景_c

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	FadeDelete("上背景", 150, true);
	FadeDelete("絵暗転", 150, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　从广播室传出的声音，在充斥着欢呼声和引擎声的赛
道上也听得到。
　不过仔细在听的大概也就只有我了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251110a00">
「……看来她在催促我们啊。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251120a01">
《要干吗？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251130a00">
「不得不干。
　况且这个形势对我也极度不利。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　现在，我周围没有并行的骑体。
　由于不是我慢下来了，所以排名也就升高了。但是——
这对我来说没有任何意义。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251140a00">
「我的任务是接近更多的骑体，防备危机。
　这很偶然地，与逆袭号的利害保持一致了。
她也许的确是幸运的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251150a01">
《真不坦率啊。
　你想帮她是吧？》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251160a00">
「是雷虎女士让我参加的决赛，如果我不回应
她的期待，是不合道理的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251170a01">
《如果真是那样就好了。
　主君。如果我们对某个人表示了好感……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251180a00">
「——不必多说。
　我明白的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251190a01">
《嗯嗯。
　……不过即使如此，人心也会不尽如人意啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　我对村正这句悟道般的话语充耳不闻，将精神集中在
翼型装甲的控制上。只要不过于心急，急减速并不困难。
　也就是说，这种情况下容易心急，所以才会危险。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm03",0,1000,true);

//◆村正、減速
	CreateSE("SE01a","se特殊_鎧_レース_減速01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetVolume("SE02", 1000, 0, null);

	$ma03_024_runs01 = 400;
	$ma03_024_runs02 = 500;

	CP_SpeedChange(1200,153,null,false);

	WaitKey(1000);

//◆観客席
	CreateColorEX("絵暗転", 25000, "#000000");
	SetVolume("SE01a", 1000, 0, null);
	Fade("絵暗転", 500, 1000, null, true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0251200a02">
「啊……！」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0251210a03">
「看来是<RUBY text="···">要行动</RUBY>了呢？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0251220a04">
「是的。有看头。」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0251230a02">
「但是，数量的差距太大了吧？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0251240a04">
「这不是问题哦，绫弥小姐。
　装甲竞技中，真打不是数打的对手。不过，
前提是单纯比试脚力。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0251250a03">
「围住逆袭骑的那些骑体和保龄球里的球柱一
样啊。
　你很快就明白了。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0251260a02">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,184,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("上背景", 150, true);
	FadeDelete("絵暗転", 150, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　我维持低速行驶。
　等不上几秒。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマ、傍らを行き過ぎる
	CreateTextureEX("絵st1000", 5000, Center, Middle, "cg/st/resize/3dウルティマ_騎航_通常3l.png");


	Move("絵st1000", 0, @+1000, @+1000, null, true);

	Fade("絵st1000", 0, 1000, null, true);

	OnSE("se特殊_鎧_レース_旋回02",1000);

	Zoom("絵st1000", 500, 250, 250, null, false);
	Move("絵st1000", 250, @-1100, @-1100, null, false);
	Rotate("絵st1000", 250, @0, @0, -45, null,true);

	Move("絵st1000", 1000, @+100, @+200, null, false);
	Zoom("絵st1000", 1000, 0, 0, null, false);
	Rotate("絵st1000", 300, @0, @0, 15, Dxl1,true);
	Rotate("絵st1000", 300, @0, @0, 0, Dxl1,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251270a01">
《蓝色的骑体带着一群爱人从后方接近。
　怎么办？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251280a00">
「准备加速。
　和那些骑体并排前行，等待机会冲过去。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251290a01">
《冲到哪里？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251300a00">
「队伍前面就可以了吧。
　村正，不要搞错力度。<RUBY text="··">抚摸</RUBY>的程度就够了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251310a01">
《这是比喻吧？》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251320a00">
「不是的。
　要温柔地，特别温柔地抚摸……像是和孩子
开玩笑那样。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251330a01">
《……明白……？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジとザコ集団
//◆村正併走
//◆横から先頭のザコに軽く体当たり。
//◆あっさり弾かれて後方へ流れるザコ。破片が飛ぶ。

	SetVolume("SE01a", 1000, 0, null);
	SetVolume("SE02", 1000, 0, null);

	CreateColorEXadd("絵暗転", 25000, "#FFFFFF");

	OnSE("se特殊_鎧_レース_機体接触",1000);

	Fade("絵暗転", 100, 1000, null, true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureEX("絵ＥＶ10", 5000, Center, Middle, "cg/ev/ev117_レースの情景_d.jpg");
	Fade("絵ＥＶ10", 0, 1000, null, true);
	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev117_レースの情景_d.jpg");


	Fade("絵ＥＶ100", 0, 1000, null, true);

	CreateSE("SE01","se特殊_鎧_レース_巡航音");
	MusicStart("SE01",500,800,0,1000,null,true);

	Shake("絵ＥＶ100", 500000, 1, 1, 0, 0, 1000, null, false);

	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251340a07">
《噢噢————!?　这是怎么回事！
　警察队猛地后退，接触了慢了一圈包围逆袭
骑的集团！　第十五号被撞飞了！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251350a07">
《第十五号后退！　脱离了包围集团！
　虽然他慌忙追赶但速度难以提高！　刚才撞
得太猛了，哪里坏掉了吗!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01", 500, 0, null);

	CreateColorEX("絵暗転", 25000, "#000000");

	Fade("絵暗転", 300, 1000, null, true);

	Delete("絵ＥＶ*");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,184,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("絵暗転", 300, true);

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251360a00">
「好。还可以。
　给予打击，而不破坏。基本上这个力道就可
以。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251370a01">
《……什么？　哎？
　刚才那是打击了吗？　开玩笑吧？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251380a01">
《我只是用肩膀轻轻<RUBY text="····">顶了一下</RUBY>而已啊！》

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251390a00">
「你说过的吧。
　那些家伙是<RUBY text="·">纸</RUBY>糊的。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251400a01">
《…………
　用、用那种装甲……》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251410a01">
《以这种速度行驶吗!?》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251420a00">
「对。
　所以，骑手的引退理由，有一成是死于事故。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251430a00">
「两成是无法复归的伤势。
　十名骑手中就有三人在竞技场中失去了人生。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251440a01">
《……疯了。》

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251450a00">
「嗯。应该是疯了吧。
　为了<RUBY text="····">独自站在</RUBY>世界顶峰的梦而疯了。」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251460a00">
「他们就是这样……」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251470a01">
《……》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251480a00">
「为逆袭骑打开前路吧，村正。
　我们放弃了比赛的胜败。即使如此，也不得
不说，妨碍其他骑体的前路是对竞技的干扰。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251490a00">
「逆袭骑逃脱后，也许周围的骑体会追上去。
我们要阻止这一点。因为他们也舍弃了比赛的
胜败。
　方针就是这些。明白吗，村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251500a01">
《……明白。
　用和孩子玩闹的力度……对吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆道を開ける村正
//◆アベンジの前が開く
	CreateColorEXadd("絵暗転", 25000, "#FFFFFF");

	SetVolume("SE02", 300, 0, null);

	Fade("絵暗転", 100, 1000, null, true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureEX("絵ＥＶ10", 5000, Center, Middle, "cg/ev/ev117_レースの情景_d.jpg");
	Fade("絵ＥＶ10", 0, 1000, null, true);
	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev117_レースの情景_d.jpg");


	Fade("絵ＥＶ100", 0, 1000, null, true);

	CreateSE("SEL01","se特殊_鎧_レース_巡航音");
	MusicStart("SEL01",300,400,0,1000,null,true);

	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
//【操】
<voice name="操" class="操" src="voice/ma03/0251510b42">
「————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジダッシュ。突破。
	CreateSE("SE01","se特殊_鎧_アベンジ加速01");
	MusicStart("SE01",0,1000,0,1500,null,false);


	SetBlur("絵ＥＶ100", true, 3, 500, 100, false);
	Zoom("絵ＥＶ100", 600, 3000, 3000, Dxl1, false);
	Move("絵ＥＶ100", 600, @0, @-200, Dxl1, false);

	Wait(300);

	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);

	Delete("絵ＥＶ*");

	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev117_レースの情景_c.jpg");

	Fade("絵ＥＶ100", 0, 1000, null, true);

	FadeDelete("絵フラ", 600, true);

	SetVolume("SEL01", 500, 0, null);

//◆観客席
	PrintGO("上背景", 25000);
	CreateColorSPadd("絵フラ", 10000, "#FFFFFF");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵フラ", 600, true);

	SetNwC("cg/fw/nw高級士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0251520e284">
「什——什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆俯瞰視点
	PrintGO("上背景", 25000);
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, false);

	CreateSE("SEL01","se背景_ガヤ_サーキット01_L");
	MusicStart("SEL01",600,1000,0,1000,null,true);


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251530a07">
《突破了！　突破包围了！
　因为警察队突然出现，包围产生了破绽，田
村·逆袭骑抓住了这一点！　突破！　成功突
出包围圈了！》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251540a08">
《…………》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251550a07">
《这实在是太出人意料的发展了！　太幸运了！
　大会主办者今川中将不由得看得出了神也是
情有可原！》

{	FwC("cg/fw/fw茶々丸変装_悪戯.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251560a07">
《我想要拍张照片之后发表。》

//◆じー、かしゃ。古い時間の掛かるカメラっぽい音
{	CreateSE("SE01","se日常_機械_カメラシャッター01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	FwC("cg/fw/fw雷蝶_怒り.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251570a08">
《别拍！
　要说的话，这根本不是幸运吧！　那不是你勉
强塞进来的家伙吗！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251580a07">
《那么，逆袭骑追吧！
　追上理想号！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251590a07">
《比赛会再次成为这二者的单挑吗!?》

{	FwC("cg/fw/fw雷蝶_逆上.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251600a08">
《你听吾说啊！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251610a08">
《…………算了，就这样吧。
　吾也比较喜欢这种状况。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
//◆村正を躱して前へ出ようとするザコ
//◆村正軽く体当たり。がちーん。ザコ、後方へ
//◆その隙をついてもう一騎が逆から。
//◆でも結果同じ。

	SetVolume("SEL01", 1000, 0, null);


	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	CreateTextureSP("絵st003", 1400, 1024, -146, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st004", 1600, 1024, 25, "cg/st/3dセクシー_騎航_通常.png");
	Request("絵st003", Smoothing);
	Request("絵st004", Smoothing);
	Zoom("絵st003", 0, 500, 500, Dxl1, false);
	Zoom("絵st004", 0, 750, 750, Dxl1, true);

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st002", 1500, -356, -219, "cg/st/3d村正競技_騎航_通常.png");
	Request("絵st002", Smoothing);
	Zoom("絵st002", 0, 750, 750, Dxl1, true);

	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st003", 300, -158, -142, Dxl1, false);
	Zoom("絵st002", 300, 500, 500, null, true);

	OnSE("se特殊_鎧_レース_機体接触",1000);
	Zoom("絵st002", 400, 600, 600, null, false);
	Shake("絵st003", 500, 0, 10, 0, 0, 1000, null, false);
	Move("絵st003", 400, 100, -142, Dxl1, true);

	OnSE("se戦闘_動作_空突進08",1000);
	Move("絵st003", 1000, 1000, -142, Dxl1, false);
	Move("絵st004", 300, -158, 25, Dxl1, false);
	Zoom("絵st002", 300, 750, 750, null, true);

	OnSE("se特殊_鎧_レース_機体接触",1000);
	Zoom("絵st002", 400, 500, 500, null, false);
	Move("絵st002", 400, @+10, -142, Dxl1, false);
	Shake("絵st004", 500, 0, 10, 0, 0, 1000, null, false);
	Move("絵st004", 400, 100, 100, Dxl1, true);

	Move("絵st004", 400, 1024, 100, Dxl1, true);


	CreateColorEX("フラッシュ黒", 20000, "Black");
	Fade("フラッシュ黒",300,1000,null,true);

	ma_03_SBDelete();
	Delete("絵st*");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	FadeDelete("絵暗転", 0, true);

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	Fade("フラッシュ黒",300,0,null,true);
	Delete("フラッシュ黒");


	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251620a00">
「——好了。
　就这样继续和他们玩。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251630a00">
「对于我的目的，还有竞技的公正，这都是最
好的做法。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251640a01">
《话虽这样说。
　但似乎不会顺利啊。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251650a00">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ザコ団、減速
//◆距離が離れる

	SetVolume("SE02", 500, 0, null);


	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureSP("絵st003", 1400, 3, -146, "cg/st/3dＧダッシュ_騎航_通常.png");
	CreateTextureSP("絵st004", 2000, -373, 25, "cg/st/3dセクシー_騎航_通常.png");
	Request("絵st003", Smoothing);
	Request("絵st004", Smoothing);

	Move("絵st003", 0, -261, -179, Dxl1, false);
	Move("絵st004", 0, -347, 71, Dxl1, false);
	Zoom("絵st003", 0, 500, 500, Dxl1, false);
	Zoom("絵st004", 0, 750, 750, Dxl1, true);

	ma03_moveAuto01("@絵st003");
	ma03_moveAuto02("@絵st004");

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	ma03_moveAutoDelete();

	CreateSE("SE01a","se特殊_鎧_レース_減速01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Move("@絵st003", 1500, 1024, -179, Axl1, false);
	Move("@絵st004", 1500, 1024, 71, Axl1, true);

	CreateColorEX("フラッシュ黒", 20000, "Black");
	Fade("フラッシュ黒",300,1000,null,true);

	ma_03_SBDelete();
	Delete("絵st*");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	FadeDelete("絵暗転", 0, true);

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	Fade("フラッシュ黒",300,0,null,true);
	Delete("フラッシュ黒");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　周围的骑体群逐渐远离。
　他们进行减速——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251660a00">
「还想再来一次吗！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0251670a01">
《想慢一圈来妨碍呢。
　怎么办？》

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251680a00">
「不让他们得逞。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正、減速
//◆ザコ集団に接触
//◆一、二騎跳ね飛ばす

	SetVolume("SE*", 500, 0, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureSP("絵st002", 1500, -356, -219, "cg/st/3d村正競技_騎航_通常.png");
	Request("絵st002", Smoothing);
	Zoom("絵st002", 0, 750, 750, Dxl1, true);

	ma03_moveAuto02("@絵st002");

	ma03_SB2(1000,1,500,0);
	ma03_SB3(2000,100);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	ma03_moveAutoDelete();

	CreateSE("SE01a","se特殊_鎧_レース_減速01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Move("@絵st002", 300, -400, -219, Axl1, true);
	Move("@絵st002", 1500, 1024, -179, Axl1, true);

	CreateColorEX("フラッシュ黒", 20000, "Black");
	Fade("フラッシュ黒",300,1000,null,true);

	ma_03_SBDelete();
	Delete("絵st*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("フラッシュ黒", 300, true);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251690a07">
《警察的热狗，不让他们逃跑！
　看上去要和后方集团彻底地玩一玩了！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251700a07">
《他用重装甲的撞击当做武器进行威吓。
如果大意上前就会遭到攻击！　后方集团无法从
他身边脱离。
　不愧是以火箭为基础。很擅长打群架！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251710a08">
《吾倒是觉得他有些太强了。
　无论火箭的装甲有多么厚，依旧只是竞技用
剑胄吧？》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251720a08">
《能承受那种操作吗？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251730a07">
《嗯，这个先不管，让视线回到冠军的争夺中
吧。
　逆袭骑正要再次回到理想号的附近！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251740a07">
《第十六圈的非终点直道！
　逆袭骑，能赶上理想号吗!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//	SoundPlay("@mbgm25",0,1000,true);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");

	CreateTextureSP("絵背景10", 999, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);

	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @+200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	Shake("絵背景100", 500000, 0, 1, 0, 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);
	Fade("絵背景200", 500, 0, null, true);


	OnSE("se特殊_鎧_アベンジ_ひび割れ",1000);


//◆アベンジダッシュ
//◆致命的な音。ビキ。
	SetFwC("cg/fw/fw操_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【操】
<voice name="操" class="操" src="voice/ma03/0251750b42">
「……呜!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマに追いつきかけるが届かず。距離が開く

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	ma03_SB2(1000,4,500,-4000);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st003", 1400, -1124, -400, "cg/st/3dウルティマ_騎航_通常b.png");
	CreateTextureSP("絵st004", 1600, -1124, -105, "cg/st/3dアベンジ_騎航_通常_b2.png");
	SetBlur("絵st003", true, 3, 200, 100, false);
	SetBlur("絵st004", true, 3, 200, 50, false);

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");
	CreateSE("SE02","se特殊_鎧_レース_加速01");
	CreateSE("SE03","se特殊_鎧_アベンジ_爆走01");
	CreateSE("SE04","se特殊_鎧_レース_加速01");

	CreateSE("SEL01","se背景_ガヤ_サーキット01_L");
	MusicStart("SEL01",500,800,0,1000,null,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("絵st003", 1000, 50, @0, Dxl1, false);
	Move("絵st004", 1000, -336, -96, Dxl1, true);

	ma03_moveAuto05("@絵st003");
	ma03_moveAuto04("@絵st004");

	WaitKey(3000);

	ma03_moveAutoDelete();

	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("絵st003", 700, 2700, @0, Dxl1, false);
	Move("絵st004", 700, 1800, @0, Dxl1, true);

	SetVolume("SEL01", 500, 0, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("絵st*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251760a07">
《————追不上！
　逆袭骑，在直道上没有追上理想号！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251770a07">
《在弯道被甩开了！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251780a08">
《……加速不够呢。
　是哪里受伤了吗？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピット
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw皇路_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251790b24">
「不好！
　前悬挂臂被破坏了！」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251800e010">
「是在刚才乱战的时候吗!?」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251810b24">
「呜……！」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251820e010">
「怎么办？
　进一次站，更换……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251830b24">
「没时间了！
　只剩下三圈了啊！」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251840e010">
「那么……！」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251850b24">
「……呜……」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251860b24">
「……」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251870e010">
「皇……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251880b24">
「……给我通信器。」

{	NwC("cg/fw/nwスタッフ.png");}
//【ｅｔｃ／スタッフ】
<voice name="ｅｔｃ／スタッフ" class="その他男声" src="voice/ma03/0251890e010">
「哎？」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0251900b24">
「快点！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆俯瞰視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251910a07">
《理想号，第十八圈！
　……逆袭骑也通过了起跑线！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251920a07">
《但，和理想号差距明显！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251930a08">
《在自己战场的直道都赢不了这样也是
理所当然的吧。
　你所说的『幸运』，好像还差那么一点
点吧？》

{	FwC("cg/fw/fw茶々丸変装_悩む.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251940a07">
《……是啊。
　算了，也没办法吧。比赛就是这样的啊。》

{	FwC("cg/fw/fw茶々丸変装_落胆.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251950a07">
《……喵呼。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251960a08">
《干嘛啊？　叹什么气。
　你就那么偏袒田村啊？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0251970a07">
《是吧——去和大久保君说一下吧。
　你们赢了，随你们喜欢地赚钱吧。》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0251980a08">
《？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 21000, "#000000");
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("上背景", 300, true);
	FadeDelete("絵暗転", 300, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0251990a00">
「…………
　追不上，吗。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252000a01">
《怎么办？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252010a00">
「我帮不了什么的。
　只能这样看着最后结果。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252020a01">
《这样好吗？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252030a00">
「如果这是正当比试的结果。
　虽然至此的过程中发生了很多事，但田村一
直没有放弃比赛，她期望着赛道中的一决胜负，
这也是事实。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252040a00">
「那么就必须严肃地接受这个结果。无论是田
村，还是在田村身上下了赌注的人。
　……虽然还没有分出胜负，但雷虎女士已经
做好了接受结果的准备吧。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252050a01">
《…………
　可惜呢。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252060a00">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 500, 0, null);


//◆ウルティマＶＳアベンジ
//◆ストレート。追いきれないアベンジ。
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st001", 2100, -100, -450, "cg/st/resize/3dアベンジ_騎航_通常_m.png");

	ma03_moveAuto01("@絵st001");

	CreateSE("SEL01","se特殊_鎧_アベンジ_爆走02_L");
	MusicStart("SEL01",300,500,0,1000,null,true);


	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【操】
<voice name="操" class="操" src="voice/ma03/0252070b42">
（……追不上……）

//【操】
<voice name="操" class="操" src="voice/ma03/0252080b42">
（追不上，追不上……！）

//【操】
<voice name="操" class="操" src="voice/ma03/0252090b42">
（为什么……！）

{	FwC("cg/fw/fw操_悲痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252100b42">
（这样下去会输……！
　会输的）

//【操】
<voice name="操" class="操" src="voice/ma03/0252110b42">
（父亲会输的！
　因为我的缘故，输掉……！）

//【操】
<voice name="操" class="操" src="voice/ma03/0252120b42">
（这样不行…………）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆プッ、ザー。通信音。
	CreateSE("SE01","se日常_機械_無線通信03");
	MusicStart("SE01",0,1000,0,750,null,false);

	Wait(1000);

	SetFwC("cg/fw/fw皇路_通常b.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0501]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252130b24">
《——操。》

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252140b42">
「父亲……！」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252150b24">
《你在干什么。
　快上。》

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252160b24">
《<RUBY text="········">为了胜利不惜一切</RUBY>。》

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252170b42">
「……!!」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252180b24">
《第一弯道的前面。
　在那里动手吧。只有那里才有<RUBY text="··">效果</RUBY>。》

{	FwC("cg/fw/fw操_悲痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252190b42">
「……但……但是。
　父亲……那样……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252200b24">
《我们只是和他们做了<RUBY text="····">一样的事</RUBY>。
　不是吗？》

{	FwC("cg/fw/fw操_通常a.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252210b42">
「……」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252220b24">
《操……你应该知道的。
　我的未来曾经被人夺走。》

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252230b24">
《作为骑手的我那时已经结束了。
　但是，我得到了你这个女儿，再次回到了这
里。》

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252240b24">
《没有第三次的机会了。
　今天田村如果输了的话，装甲竞技就会被翔
京那种守财奴所支配。》

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252250b24">
《我不能输的！
　操！》

{	FwC("cg/fw/fw操_悲痛.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252260b42">
「……呜……！」

{	FwC("cg/fw/fw皇路_通常b.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252270b24">
《操……
　把胜利给我！　我想去世界！》

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252280b24">
《我想对世界复仇！
　我的操啊，连你，都不明白我吗!?》

{	FwC("cg/fw/fw操_真面目.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252290b42">
「…………不。
　我明白。我明白的，父亲……」

//【操】
<voice name="操" class="操" src="voice/ma03/0252300b42">
「我的命是父亲给的。
　这条命的一切都是为了父亲而存在的。」

//【操】
<voice name="操" class="操" src="voice/ma03/0252310b42">
「血和肉以及力量的一切，都是为了实现父亲的
愿望……！」

{	FwC("cg/fw/fw皇路_通常a.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0252320b24">
《操……》

{	FwC("cg/fw/fw操_真面目.png");}
//【操】
<voice name="操" class="操" src="voice/ma03/0252330b42">
「我和逆袭骑是为此存在的……
　只是为了这个，而存在……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 500, 0, null);

//◆観客席
	CreateColorEX("暗転", 15000, "#000000");
	Fade("暗転", 300, 1000, null, true);

	ma03_moveAutoDelete();
	ma_03_SBDelete();
	Delete("絵st*");

	Delete("絵*");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);
	FadeDelete("暗転", 300, true);

	SetFwC("cg/fw/fwさよ_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【纱代】
<voice name="さよ" class="さよ" src="voice/ma03/0252340a04">
「好像要分出胜负了呢……」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0252350a02">
「…………」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0252360a03">
「嗯嗯……
　怎么了，一条小姐？」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0252370a02">
「嗯，不，没什么……
　只是稍微有点……」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0252380a02">
「胃的附近不太舒服。
　有不好的感觉。」

//【一条】
<voice name="一条" class="一条" src="voice/ma03/0252390a02">
「……不好的……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマＶＳアベンジ
//◆アベンジ、じりじり迫るがコーナーで振られる。
	CreateColorEX("絵暗転", 10000, "#000000");

	Fade("絵暗転", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("絵st100", 1000, 0, 0, "cg/st/3dウルティマ_騎航_通常3.png");
	Rotate("絵st100", 0, @0, @0, @-35, null,true);
	Move("絵st100", 0, 1024, 200, null, true);
	Request("絵st100", Smoothing);
	SetBlur("絵st100", true, 3, 300, 30, false);

	CreateTextureSP("絵st200", 1000, 0, 0, "cg/st/3dアベンジ_騎航_通常_b3.png");
	Rotate("絵st200", 0, @0, @0, @-35, null,true);
	Move("絵st200", 0, 1024, 200, null, true);
	Request("絵st200", Smoothing);
	SetBlur("絵st200", true, 3, 300, 30, false);

	CreateTextureEXadd("絵背景200", 1300, -643, -552, "cg/ef/ef044_火花c.png");
	Zoom("絵背景200", 0, 100, 100, null, true);

	CreateTextureEXadd("絵背景100", 1300, -503, -552, "cg/ef/ef044_火花c.png");
	Zoom("絵背景100", 0, 100, 100, null, true);
	CreateTextureSP("Rollbg001", 300, -727, -400, "cg/bg/bg038_サーキットカーブ_01.jpg");
	CreateTextureSP("Rollbg002", 400, -727, -400, "cg/bg/bg038_サーキットカーブ_01 アーチ01.png");
	CreateTextureEX("Rollbg003", 2000, -727, -400, "cg/bg/bg038_サーキットカーブ_01 アーチ01.png");
	Zoom("Rollbg00*", 0, 750, 750, null, true);

	Move("Rollbg00*",0, @-2000, @-400, null, true);

	MusicStart("SE03",1000,1000,0,1000,null,true);

	Move("Rollbg00*",2000, -727, -400, Dxl1, false);
	DrawDelete("絵暗転", 125, 100, "slide_02_01_1", true);

	WaitAction("Rollbg00*",null);

	OnSE("se特殊_鎧_レース_加速01",1000);

	Rotate("絵st100", 400, @0, @0, -45, DxlAuto,false);
	Zoom("絵st100", 400, 800, 800, DxlAuto, false);
	Move("絵st100", 400, -500, -100, DxlAuto, false);

	Wait(350);

	Fade("Rollbg003", 0, 1000, null, true);

	Fade("絵背景100", 25, 800, Dxl1, false);
	Move("絵st100",300, @-30, @0, DxlAuto, false);
	Zoom("絵背景100", 250, 2000, 2000, Dxl1, false);
	Rotate("絵st100", 250, @0, @0, 45, Dxl1,false);
	Wait(100);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Rotate("絵st200", 450, @0, @0, -45, DxlAuto,false);
	Zoom("絵st200", 450, 800, 800, DxlAuto, false);
	Move("絵st200", 450, -700, -100, DxlAuto, false);

	Fade("絵背景100", 500, 0, Dxl1, false);
	Zoom("絵st100", 400, 350, 350, Dxl1, false);
	Move("絵st100", 500, 1024, -350, Dxl1, true);
	Fade("絵背景100", 200, 0, Dxl1, false);

	Fade("絵背景200", 25, 800, Dxl1, false);
	Move("絵st200",300, @-30, @0, DxlAuto, false);
	Zoom("絵背景200", 250, 2000, 2000, Dxl1, false);
	Rotate("絵st200", 250, @0, @0, 45, Dxl1,false);
	Wait(100);
	Fade("絵背景200", 500, 0, Dxl1, false);
	Zoom("絵st200", 450, 350, 350, Dxl1, false);
	Move("絵st200", 550, 1024, -350, Dxl1, true);
	Fade("絵背景200", 200, 0, Dxl1, false);

	SetVolume("SE03", 1000, 0, null);

	Wait(300);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");
	Delete("Roll*");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg035_鎌倉サーキット俯瞰a_01.jpg");

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw茶々丸変装_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252400a07">
《逆袭骑，粘上来了！　粘上来了！
　但是还到不了！》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252410a08">
《到最后都不会放弃的样子很伟大。
　这种执念能带来奇迹吗……》

{	FwC("cg/fw/fw茶々丸変装_照れ.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252420a07">
《因为不会发生才叫做<RUBY text="奇迹">阎魔账</RUBY>啊。》

{	FwC("cg/fw/fw雷蝶_不快.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252430a08">
《你到底想说什么啊。》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252440a07">
《不过，是呀……
　如果发生奇迹就不一样了。<RUBY text="··">奇迹</RUBY>。》

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252450a07">
《<RUBY text="··">能够</RUBY>让它发生吗？
　奇迹……》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252460a08">
《？？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252470a07">
《到了直线赛道！
　过了这里就是第十九圈！　最后两圈！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ爆走
//◆ちょっと無茶っぽく。各所にガタが来る感じで。

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	ma03_SB2(1000,3,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("絵st001", 2100, 1024, -100, "cg/st/3dアベンジ_騎航_通常.png");

	SetBlur("絵st001", true, 3, 500, 50, false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	Move("絵st001", 1000, -3000, @0, Dxl1, true);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252480a07">
《哦——？》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252490a08">
《啊——？》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("絵st*");

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");

	CreateTextureSP("絵背景10", 999, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);

	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @+200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	Shake("絵背景100", 5000000, 2, 3, 0, 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);
	Fade("絵背景200", 500, 0, null, true);


//◆無茶爆走
	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252500a07">
《逆袭骑，最后冲刺吗!?
　好快！　虽然很快——》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252510a07">
《这样稍微有些勉强吧？》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252520a08">
《很勉强。翅膀快裂开了。
　那样坚持不住几秒。》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252530a07">
《那么之后就会尝到苦果变得破败不堪吧。
　是自暴自弃了？》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252540a08">
《也许是认为……比起这样下去输掉要好吧。
　不过很可惜，结果是一样的。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	ma03_SB2(1000,3,300,0);
	ma03_SB3(1100,100);

	CreateTextureSP("絵st001", 2000, 1024, -200, "cg/st/3dアベンジ_騎航_通常.png");

	Zoom("絵st001", 0, 750, 750, null, true);

	CreateTextureSP("絵st003", 2100, -100, -346, "cg/st/3dウルティマ_騎航_通常.png");

	ma03_moveAuto02("@絵st003");

	SetBlur("絵st001", true, 3, 500, 100, false);

	CreateSE("SEL01","se特殊_鎧_レース_巡航音");
	MusicStart("SEL01",200,500,0,1000,null,true);


	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	Move("絵st001", 1000, -2500, @0, Dxl1, true);

	SetVolume("SEL01", 500, 0, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	ma03_moveAutoDelete();

	Delete("絵st*");

	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

//◆アベンジ爆走
//◆ウルティマを抜く
	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252550a07">
《逆袭骑，超过了理想号！
　虽然超过了——但到极限了！》

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252560a08">
《翅膀会折断啊！》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252570a07">
《逆袭骑……速度降下来了！
　已经到极限了！》

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252580a07">
《理想号，轻易来到逆袭骑背后！
　在利用逆袭骑降低空气摩擦！》

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252590a08">
《……果然还是没用的啊。》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252600a07">
《下面，接近第一弯道了！
　理想号，要在那前面超掉——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	CreateSE("SE01","se特殊_鎧_アベンジ_爆走01");

	CreateTextureSP("絵背景10", 999, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景100", 1000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵背景200", 2000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);

	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景200", 600, 2000, 2000, Dxl1, false);
	Move("絵背景200", 600, @+200, @0, Dxl1, false);
	Fade("絵背景200", 300, 1000, null, false);
	Shake("絵背景100", 5000000, 2, 3, 0, 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);
	Fade("絵背景200", 500, 0, null, true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
//【操】
<voice name="操" class="操" src="voice/ma03/0252610b42">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カチャッ
	CreateSE("SE01","se日常_機械_スイッチON");

//◆コース上
//◆キラッ。一瞬激しくフラッシュ

	CreateColorEX("フラッシュ白", 20000, "Black");
	Fade("フラッシュ白",300,1000,null,true);

	CreateTextureEXadd("絵背景100", 21000, Center, Middle, "cg/ef/ef036_無我の境地.jpg");
	Fade("絵背景100", 0, 1000, null, true);
	Zoom("絵背景100", 0, 0, 0, DxlAxl, true);
	SetBlur("絵背景100", true, 3, 500, 10, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("絵背景100", 300, @0, @0, @270, DxlAxl,false);
	Zoom("絵背景100", 25, 1200, 1200, DxlAxl, true);
	Zoom("絵背景100", 25, 0, 0, DxlAxl, true);

//◆村正視点
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	Delete("絵*");

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	FadeDelete("絵暗転", 0, true);

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	FadeDelete("フラッシュ白",300,true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252620a01">
《！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252630a00">
「————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);

//◆観客席
	CreateColorSP("黒幕１", 18000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵*");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
	StR(1000, @0, @0,"cg/st/st香奈枝_通常_私服a.png");
	FadeStA(0,true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);;

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0252640a03">
「呜!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆俯瞰視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg035_鎌倉サーキット俯瞰a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw茶々丸変装_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252650a07">
《————啊。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウルティマ、コースアウト
//◆激突
//◆爆発

//爆発まとめ
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma03_SB2(1000,3,300,0);
	ma03_SB3(1100,100);

	CreateTextureSP("絵st003", 2100, -100, -346, "cg/st/3dウルティマ_騎航_通常.png");
	Zoom("絵st003", 0, 750, 750, null, true);

	DrawDelete("黒幕１", 200, 100, "slide_01_01_1", true);

	OnSE("se戦闘_動作_空突進08",1000);
	Move("絵st003", 3000, 0, -100, Dxl1, false);
	Shake("絵st003", 2000, 3, 5, 0, 0, 500, null, false);
	Rotate("絵st003", 100, @0, @0, -5, null,true);
	Rotate("絵st003", 100, @0, @0, 5, null,true);

	OnSE("se特殊_鎧_レース_加速02",1000);
	Move("絵st003", 300, -2000, -700, Dxl1, false);
	Rotate("絵st003", 700, @0, @0, -50, null,true);


	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	OnSE("se特殊_鎧_レース_クラッシュ",1000);
	Fade("フラッシュ白",300,1000,null,true);
	ma_03_SBDelete();
	Delete("絵st*");

	CreateTextureSP("絵ef10", 2000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵ef100", 2100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵ef200", 2200, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵ef200", true, 3, 500, 50, false);

	Fade("絵ef200", 0, 700, null, true);

	Zoom("絵ef200", 1500, 2000, 2000, Dxl1, false);
	Shake("絵ef100", 50000, 2, 3, 0, 0, 1000, Dxl1, false);

	OnSE("se戦闘_破壊_爆発05",1000);
	Fade("フラッシュ白",1000,0,null,true);
	Fade("絵ef200", 500, 0, null, false);

	Fade("フラッシュ白",1000,1000,null,true);

	Delete("絵ef*");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg039_競技場客席b_01.jpg");

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");


//◆俯瞰視点
	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252660a08">
《……撞上了!?
　理想号……冲出赛道撞在了沙坑障碍上!!》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252670a08">
《不止这样……
　撞到了观众席上，爆炸了……》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252680a08">
《在理想号正要加速超过去的时候，发生了事
故……！
　怎么会这样……》

{	FwC("cg/fw/fw茶々丸変装_怒り.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252690a07">
《…………》

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252700a08">
《喂你，别傻愣着快做解说啊！　这是竞速中经
常发生的事吧!?
　逆袭骑……没事呢！　还在疾驰……》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252710a08">
《竟然会发生这种事……
　这可以称为奇迹吗……》

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252720a08">
《总之逆袭骑成为了首位。
　神选择了那个蓝色的骑体……！》

{	FwC("cg/fw/fw茶々丸変装_冷酷.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252730a07">
「…………」

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252740a07">
「……用了<RUBY text="····">那种办法</RUBY>吗。
　愚蠢……这样就完全无趣了。」

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252750a07">
「明明是个骑手……
　明明创造了逆袭骑那种怪物……
　为什么，要考虑高速疾驰<RUBY text="··">之外</RUBY>的事啊？」

//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252760a07">
「明明也许会创造神话的。
　到了最后的最后却堕落成为了廉价的表演……」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252770a07">
「……呜……」

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252780a07">
「喂。
　雷蝶。」

{	FwC("cg/fw/fw雷蝶_通常.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252790a08">
《嗯？》

{	FwC("cg/fw/fw茶々丸変装_通常a.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252800a07">
「我回去了。
　之后拜托你了。」

{	FwC("cg/fw/fw雷蝶_驚き.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0252810a08">
《哎？　……哎？　等等！
　怎么了啊这么突然。》

{	FwC("cg/fw/fw茶々丸変装_寂寥.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252820a07">
「我没兴趣了。
  够了，怎么样都好。」

{	FwC("cg/fw/fw茶々丸変装_歯噛.png");}
//【茶茶丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0252830a07">
「……啊——可恶。
　真无聊啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正視点
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 20000, "#000000");

	Cockpit_AllFade2();

	CP_HighChange2(0,0,null,false);
	CP_SpeedChange2(0,0,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("絵背景10", 100, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	CreateTextureSP("絵背景50", 1000, Center, Middle, "cg/bg/bg038_サーキット走行中_01a.jpg");
	ma03_025_runs("@絵背景50",2000,"cg/bg/bg038_サーキット走行中_01a.jpg");
	FrameShake();

	CreateSE("SE02","se戦闘_動作_空走行02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("上背景", 600, true);
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252840a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252850a01">
《…………》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252860a01">
《……主君。
　那种做法……在这个比赛中会被认同吗？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0252870a00">
「…………」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma03/0252880a01">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　————————被玷污了。

　被玷污了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02", 2000, 0, null);

	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_026.nss"

..//◆1.ma03_SB2
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
//レーススタート直後
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_04.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_04.jpg");

	}else if($ma03_BGNum==4){
//レーススタート直後
		CreateTextureSP("Circuit01", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");

	}else{
		CreateTextureSP("Circuit01", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
		CreateTextureSP("Circuit02", $サーキット真横_BG, InRight, Middle, "cg/bg/bg038_サーキット真横a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

}

..//◆2.ma03_SB3
function ma03_SB3($サーキット真横_BG01,$ma03_SBtime){

	if($ma03_BGNum==1){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BGNum==2){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BGNum==3){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BGNum==4){
		CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, 1124, Middle, "cg/bg/bg038_サーキット真横b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}

if($ma03_BGNum==4){
	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess2");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");
}else{
	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");
}

}

..//◆3.ma03_SB
function ma03_SB($サーキット真横_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $サーキット真横_BG01, -100, Middle, "cg/bg/bg038_サーキット真横b_03.png");
	SetBlur("Circuit_Bar", true, 3, 300, 2, false);

	CreateProcess("柱プロセス", 15000, 0, 0, "ma_03_SBProcess");
	Request("柱プロセス", Start);
	SetAlias("柱プロセス","柱プロセス");

}

..//?4.ma_03_SBProcess
function ma_03_SBProcess(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1074, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
	}

}

..//?4.5.ma_03_SBProcess2
function ma_03_SBProcess2(){

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1124, @0, null, true);
	}

}

..//◆5.ma_03_SBDelete
function ma_03_SBDelete(){

	Fade("@Circuit_Bar", 0, 0, null, true);
	Delete("@柱プロセス");
	Delete("@Circuit_Bar");
	SCR1stop();
	Delete("@Circuit*");

}

..//◆6.ma03_025_runs
function ma03_025_runs($md03_025_既存ファイル,優先度,$md03_025_ファイル名){

	CreateTextureEX("絵runs01", 優先度, Center, Middle, $md03_025_ファイル名);
	CreateTextureEX("絵runs02", 優先度, Center, Middle, $md03_025_ファイル名);
	SetBlur("絵runs01", true, 3, 400, 20, false);
	SetBlur("絵runs02", true, 3, 400, 20, false);

	SetVertex("絵runs01", 518, 389);
	SetVertex("絵runs02", 518, 389);
	SetVertex($md03_025_既存ファイル, 518, 389);

	CreateProcess("疾走", 1500, 0, 0, "ma03_025_runsProcess");
	SetAlias("疾走","疾走");
	Request("疾走", Start);

	$ma03_025_runs01 = 125;
	$ma03_025_runs02 = 250;

}

..//◆7.ma03_025_runsProcess
function ma03_025_runsProcess(){

	begin:

		Zoom($md03_025_既存ファイル, 50000, 2000, 2000, AxlAuto, false);
		Shake($md03_025_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);
		Fade($md03_025_既存ファイル, 500, 0, null, false);

		Fade("@絵runs01", $ma03_025_runs01, 500, null, false);
		Zoom("@絵runs01", $ma03_025_runs02, 3000, 3000, AxlAuto, false);

		Wait($ma03_025_runs01);

	while(1){

		Shake($md03_025_既存ファイル, 50000, 1, 1, 0, 0, 500, null, false);

		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);
		Zoom("@絵runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs01", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@絵runs02", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs02", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);
		Zoom("@絵runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@絵runs02", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@絵runs01", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@絵runs01", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);

	}


}

..//◆8.ma03_025_runsDelete
function ma03_025_runsDelete(){

	Request("@疾走", Stop);
	Delete("@疾走");
	Delete("@絵runs*");

}

..//◆9.ma03_025_shakeloop
function ma03_025_shakeloop($024SLP,$024揺れ幅x,$024揺れ幅y){

	CreateProcess("揺れ揺れ", 15000, 0, 0, "ma03_025_shakeloopProcess");
	SetAlias("揺れ揺れ","揺れ揺れ");
	Request("揺れ揺れ", Start);

}

..//◆10.ma03_025_shakeloopProcess
function ma03_025_shakeloopProcess(){

	begin:

	while(1){Shake($024SLP, 500000, $024揺れ幅x,$024揺れ幅y, 0, 0, 1000, null, true);}

}

..//◆11.ma03_025_shakeloopDelete
function ma03_025_shakeloopDelete(){

	Request($024SLP, Stop);
	Shake($024SLP, 0, 0, 0, 0, 0, 1000, null, true);
	Delete($024SLP);
	Delete("@揺れ揺れ");

}

..//◆12.ma03_025_GC
function ma03_025_GC(){

	$GCPC_time = 300;
	$GCPC_time2 = 1000;
	$GCPC_time3 = 5000;

	CreateTextureEXmul("絵GC001", 2000, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_d.jpg");
	CreateTextureEXover("絵GC002", 1999, Center, Middle, "cg/ev/ev904_村正マグネットコーティング_d.jpg");

	CreateProcess("辰気1", 15000, 0, 0, "ma03_025_GCP1");
	SetAlias("辰気1","辰気1");

	CreateProcess("辰気2", 15000, 0, 0, "ma03_025_GCP2");
	SetAlias("辰気2","辰気2");


	Request("辰気1", Start);
	Request("辰気2", Start);

}

..//◆13.ma03_025_GCP1
function ma03_025_GCP1(){

	begin:

	while(1){
		Zoom("@絵GC001", $GCPC_time3, 1300, 1300, AxlDxl, false);
		Fade("@絵GC001",$GCPC_time2, $GCPC_time, null, true);
		Fade("@絵GC001",$GCPC_time2, 0, null, true);
		Zoom("@絵GC001", 0, 1000, 1000, AxlDxl, true);
	}

}

..//◆14.ma03_025_GCPC
function ma03_025_GCPC($GCPC_time,$GCPC_time2,$GCPC_time3){}

..//◆15.ma03_025_GCP2
function ma03_025_GCP2(){

	begin:

	while(1){
		Fade("@絵GC002",5000, 300, null, true);
		Fade("@絵GC002",5000, 0, null, true);
	}

}

..//◆16.ma03_025_GCPDelete
function ma03_025_GCPDelete(){

	Request("@辰気1",Stop);
	Request("@辰気2",Stop);

	Delete("@辰気*");

	SetBlur("@絵GC001", true, 3, 400, 100, false);
	Fade("@絵GC002",500, 0, null, false);
	Zoom("@絵GC001", 1000, 2000, 2000, AxlDxl, false);
	Fade("@絵GC001",500, 700, null, true);
	FadeDelete("@絵GC001",500, true);

	Delete("@絵GC*");

}


..//◆17.ma03_025_GCF
function ma03_025_GCF(){

	CreateColorEXmul("絵25co", 2500, "#330033");

	CreateTextureEXover("絵24ef", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星a.jpg");
	Zoom("絵24ef", 0, 4000, 4000, null, true);
	Request("絵24ef", Smoothing);

	CreateProcess("辰気色", 15000, 0, 0, "ma03_025_GCFP");
	SetAlias("辰気色","辰気色");

	Request("辰気色", Start);

}

..//◆18.ma03_025_GCFP
function ma03_025_GCFP(){

	begin:

	Fade("@絵25ef",0, 800, null, false);
	DrawTransition("@絵25ef", 0, 0, 200, 200, DxlAxl, "cg/data/circle_02_00_1.png", true);
	Shake("@絵25ef", 500000, 20, 10, 0, 0, 1000, null, false);
//	Rotate("@絵25ef", 500000, @0, @0, 18000, null,false);
	Fade("@絵25co",0, 300, null, false);

while(1){

	Shake("@絵25ef", 500000, 20, 10, 0, 0, 1000, null, true);

}

/*
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 300, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 300, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@絵24co", 2000, 100, null, false);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@絵24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
*/

}

..//◆19.ma03_moveAuto01(ナット名指定)
function ma03_moveAuto01($ma03STnat01){

	CreateProcess("絵自動01", 150, 0, 0, "ma03_moveAuto01Process");
	SetAlias("絵自動01","絵自動01");
	Request("絵自動01", Start);


}

..//◆20.ma03_moveAuto01Process
function ma03_moveAuto01Process(){


	begin:
	WaitAction($ma03STnat01, null);

	while(1){

	$ma03_MA01PPRoll = Random(5)+1;//1～6
	$ma03_MA01PPTime = Random(5)+1;//1～6
	$ma0301PPT = $ma03_MA01PPTime*1000;//1000～6000
	$ma0301PPT = $ma0301PPT+2000;

	if($ma03_MA01PPRoll>=3){
		BezierMove($ma03STnat01, $ma0301PPT, (@0,@0){@-10,@-10}{@-20,@-20}(@-30,@-30){@-40,@-20}{@-50,@-10}(@-60,@0){@-50,@+10}{@-40,@+20}(@-30,@+30){@-20,@+20}{@-10,@+10}(@0,@0), DxlAxl, true);
	}else if($ma03_MA01PPRoll==2){
		BezierMove($ma03STnat01, $ma0301PPT, (@0,@0){@-5,@-5}{@-15,@-15}(@-25,@+10){@-30,@+6}{@-40,@+2}(@-50,@+0){@-40,@+10}{@-30,@+20}(@-20,@+30){@-30,@+20}{@-40,@+10}(@-50,@0){@-20,@+10}{@-40,@+10}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat01, $ma0301PPT, (@0,@0){@+10,@+10}{@+20,@+20}(@+30,@+30){@+40,@+20}{@+50,@+10}(@+60,@0){@+50,@-10}{@+40,@-20}(@+30,@-30){@+20,@-20}{@+10,@-10}(@0,@0), DxlAxl, true);
	}

	}



}

..//◆21.ma03_moveAuto02(ナット名指定)
function ma03_moveAuto02($ma03STnat02){

	CreateProcess("絵自動02", 150, 0, 0, "ma03_moveAuto02Process");
	SetAlias("絵自動02","絵自動02");
	Request("絵自動02", Start);


}

..//◆22.ma03_moveAuto02Process
function ma03_moveAuto02Process(){


	begin:
	WaitAction($ma03STnat02, null);

	while(1){

	$ma03_MA02PPRoll = Random(5)+1;//1～6
	$ma03_MA02PPTime = Random(5)+1;//1～6
	$ma0302PPT = $ma03_MA02PPTime*1000;//1000～6000
	$ma0302PPT = $ma0302PPT+2000;

	if($ma03_MA02PPRoll>=3){
		BezierMove($ma03STnat02, $ma0302PPT, (@0,@0){@-10,@-10}{@-20,@-20}(@-30,@-30){@-40,@-20}{@-50,@-10}(@-60,@0){@-50,@+10}{@-40,@+20}(@-30,@+30){@-20,@+20}{@-10,@+10}(@0,@0), DxlAxl, true);
	}else if($ma03_MA02PPRoll==2){
		BezierMove($ma03STnat02, $ma0302PPT, (@0,@0){@-5,@-5}{@-15,@-15}(@-25,@+10){@-30,@+6}{@-40,@+2}(@-50,@+0){@-40,@+10}{@-30,@+20}(@-20,@+30){@-30,@+20}{@-40,@+10}(@-50,@0){@-20,@+10}{@-40,@+10}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat02, $ma0302PPT, (@0,@0){@+10,@+10}{@+20,@+20}(@+30,@+30){@+40,@+20}{@+50,@+10}(@+60,@0){@+50,@-10}{@+40,@-20}(@+30,@-30){@+20,@-20}{@+10,@-10}(@0,@0), DxlAxl, true);
	}

	}

}


..//◆23.ma03_moveAuto03(ナット名指定)
function ma03_moveAuto03($ma03STnat03){

	CreateProcess("絵自動03", 150, 0, 0, "ma03_moveAuto03Process");
	SetAlias("絵自動03","絵自動03");
	Request("絵自動03", Start);


}

..//◆24.ma03_moveAuto03Process
function ma03_moveAuto03Process(){


	begin:
	WaitAction($ma03STnat03, null);

	while(1){

	$ma03_MA03PPRoll = Random(5)+1;//1～6
	$ma03_MA03PPTime = Random(5)+1;//1～6
	$ma0303PPT = $ma03_MA03PPTime*1000;//1000～6000
	$ma0303PPT = $ma0303PPT+5000;

		if($ma03_MA03PPRoll>=3){
			BezierMove($ma03STnat03, $ma0303PPT, (@0,@0){@-50,@0}{@-60,@0}(@-100,@0){@-50,@+10}{@-40,@+15}(@0,@+20){@-30,@+10}{@-60,@+20}(@-80,@+30){@-80,@-10}{@-75,@-15}(@0,@0), DxlAxl, true);
		}else if($ma03_MA03PPRoll==2){
			BezierMove($ma03STnat03, $ma0303PPT, (@0,@0){@-50,@0}{@-60,@0}(@-100,@0){@-50,@+10}{@-40,@+15}(@0,@+20){@-30,@+10}{@-60,@+20}(@-80,@+30){@-80,@-10}{@-75,@-15}(@0,@0), DxlAxl, true);
		}else{
			BezierMove($ma03STnat03, $ma0303PPT, (@0,@0){@-50,@0}{@-60,@0}(@-100,@0){@-50,@+10}{@-40,@+15}(@0,@+20){@-30,@+10}{@-60,@+20}(@-80,@+30){@-80,@-10}{@-40,@-15}(@0,@0), DxlAxl, true);
		}

	}

}


..//◆25.ma03_moveAutoDelete
function ma03_moveAutoDelete(){

	Delete("@絵自動01");
	Delete("@絵自動02");
	Delete("@絵自動03");
	Delete("@絵自動04");
	Delete("@絵自動05");


}

..//◆26.ma03_moveAuto04(ナット名指定)
function ma03_moveAuto04($ma03STnat04){

	CreateProcess("絵自動04", 150, 0, 0, "ma03_moveAuto04Process");
	SetAlias("絵自動04","絵自動04");
	Request("絵自動04", Start);


}

..//◆27.ma03_moveAuto04Process
function ma03_moveAuto04Process(){


	begin:
	WaitAction($ma03STnat04, null);

	while(1){

	$ma03_MA04PPRoll = Random(5)+1;//1～6
	$ma03_MA04PPTime = Random(5)+1;//1～6
	$ma0304PPT = $ma03_MA04PPTime*1000;//1000～6000
	$ma0304PPT = $ma0304PPT+500;

	if($ma03_MA04PPRoll>=3){
		BezierMove($ma03STnat04, $ma0304PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}else if($ma03_MA04PPRoll==2){
		BezierMove($ma03STnat04, $ma0304PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat04, $ma0304PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}

	}



}

..//◆29.ma03_moveAuto05(ナット名指定)
function ma03_moveAuto05($ma03STnat05){

	CreateProcess("絵自動05", 150, 0, 0, "ma03_moveAuto05Process");
	SetAlias("絵自動05","絵自動05");
	Request("絵自動05", Start);


}

..//◆30.ma03_moveAuto05Process
function ma03_moveAuto05Process(){


	begin:
	WaitAction($ma03STnat05, null);

	while(1){

	$ma03_MA05PPRoll = Random(5)+1;//1～6
	$ma03_MA05PPTime = Random(5)+1;//1～6
	$ma0305PPT = $ma03_MA05PPTime*1000;//1000～6000
	$ma0305PPT = $ma0305PPT+2000;

	if($ma03_MA05PPRoll>=3){
		BezierMove($ma03STnat05, $ma0305PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}else if($ma03_MA05PPRoll==2){
		BezierMove($ma03STnat05, $ma0305PPT, (@0,@0){@+3,@+2}{@+6,@+4}(@+10,@+8){@+8,@+5}{@+6,@+2}(@+5,@0){@+8,@-2}{@+10,@-5}(@+15,@-8){@+10,@-6}{@+5,@-3}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat05, $ma0305PPT, (@0,@0){@+5,@+2}{@+8,@+4}(@+10,@+8){@+3,@-5}{@-4,@0}(@-11,@+5){@-12,@+3}{@-13,@+2}(@-14,@0){@-7,@0}{@-4,@0}(@0,@0), DxlAxl, true);
	}

	}



}


