//<continuation number="1050">


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

scene ma01_023vs.nss_MAIN
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
	#bg002_空a_02=true;

	#ev109_陰義白華爛丹=true;
	#ev506_村正VS真改_空中戦=true;
	#ev303_村正VS真改=true;
	#ev903_村正磁気バリアー展開_a=true;
	#ev902_村正電磁抜刀レールガン_b=true;
	#ev902_村正電磁抜刀レールガン_c=true;
	#ev902_村正電磁抜刀レールガン_a=true;
	#ev902_村正電磁抜刀レールガン_d=true;


	//▼ルートフラグ，選択肢，次のGameName
	#voice_on_村正=true;

	$PreGameName = $GameName;

	$GameName = "ma01_024.nss";

	CP_AllDelete();

}

scene ma01_023vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


	if($GameDebugSelect==1){CP_AllSet("真改");}


..//ジャンプ指定
//前ファイル　"ma01_022vs.nss"

	SoundPlay("@mbgm08",0,1000,true);

	PrintBG("上背景", 30000);
	CreateColorSP("暗転", 19000, "#000000");
	FadeDelete("上背景", 100, true);


	SetFwC("cg/fw/fw雄飛_怒りa.png");

	SetTone("@FwC*", Sepia);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/023vs0010b56">
『别把其他人卷入你的绝望中！
　我们才没那么弱小!!』

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Cockpit_AllFade2();

//嶋：初期化される可能性があるため，念のため数値の再定義
	CP_PowerChange(1,500,null,false);
	CP_SpeedChange(0,350,null,false);
	CP_HighChange(0,900,null,false);
	CP_AziChange(0,10,null,false);

	MyLife_Count(0,523);
	MyTr_Count(0,210);
	CP_IHPChange(0,4,null,false);
	CP_RollBarMoveA();
	CP_AltChangeA();

	CP_EnemyFade(0,10,512,300);


	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);



	Fade("暗転", 300, 0, null, true);
	Delete("暗転");
//◆復帰

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　吵死了！
　我是正确的！　我是正确的！
　我才是正确的！　所以我命不该绝！

　力量！
　给我力量！
　给我杀死村正的力量！
　给我能够杀死那个毫不讲理，想将我杀害的混帐的力量！

　不管是谁也好！
　不管是怎样的力量也好！

　不管是怎样的力量——只要能帮助我！
　为了这个世上美丽的万物，帮助我！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック
//◆銀星号シルエット

	SetVolume("@mbgm*", 1000, 0, null);

	CreateColorEX("フラッシュ白", 16000, "WHITE");

//嶋SE；フラッシュバック用ＳＥの違うバージョン
	OnSE("se擬音_フラッシュバック01",1000);


	Fade("フラッシュ白",0,1000,null,true);
	CreateColorSP("絵背景黒", 1000, "Black");

	Cockpit_AllFade0();

	CreateTextureEX("絵Gin", 1050, Center, InBottom, "cg/st/3d銀星号_立ち_通常.png");
	CreateStencil("マスク１",1200,center,InBottom,128,"cg/st/3d銀星号_立ち_通常.png",false);
	SetAlias("マスク１","マスク１");

	CreateColorSP("マスク１/色１", 1200, "White");
	Fade("マスク１/色１", 0, 500, null, true);

	SetShade("マスク１", NOMORE);


	Fade("フラッシュ白",200,0,null,true);
	Delete("フラッシュ白");

	SetNwR("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//◆以下，顔なし
//【光】
<voice name="光" class="光" src="voice/ma01/023vs0020a14">
『——闹得很欢呢。』

//【光】
<voice name="光" class="光" src="voice/ma01/023vs0030a14">
『那副<RUBY text="···">可怜相</RUBY>实在令人发笑。
　作为观赏费，把这个给你吧。能派上用场哦……
或者应该说，拿着这个，
就算不情愿也迟早会派上用场。』

//【光】
<voice name="光" class="光" src="voice/ma01/023vs0040a14">
『——嗯？　你问我是什么人？
　是什么人，还真是个深奥的问法呢。和问我是谁
不同。只把名字告诉你还不足以回答问题。』

//【光】
<voice name="光" class="光" src="voice/ma01/023vs0050a14">
『你是在询问我的<RUBY text="··">意义</RUBY>吗？
　那就让我这样回答吧。』

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆銀星号
	Fade("マスク１/色１", 1000, 0, null, false);
	Fade("絵Gin", 1500, 1000, null, true);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【光】
<voice name="光" class="光" src="voice/ma01/023vs0060a14">
『——我是天下布武。
　被称为白银之星的人。』

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆復帰
	CreateColorEXadd("フラッシュ白", 17000, "WHITE");

	OnSE("se擬音_フラッシュバック01",500);
	Fade("フラッシュ白",500,1000,null,true);

	Delete("マスク１");
	Delete("マスク１/色１");
	Delete("絵Gin");
	Delete("絵GinS");
	Delete("絵背景黒");

	Cockpit_AllFade2();
	CP_RollBarMoveA();
	CP_AltChangeA();
	CP_HighChangeA();
	CP_SpeedChangeA();


	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　是吗……是你也无所谓。
　不祥的杀戮者！　只要你应承我的请求，
不管你是谁都没关系！

　力量！
　力量！
　给我力量!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フラッシュ

	CreateColorEXadd("フラッシュ白", 16000, "WHITE");

	OnSE("se特殊_陰義_発動04",1000);
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",100,0,null,true);
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",100,0,null,true);
	Fade("フラッシュ白",50,1000,null,true);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0070b57">
「啊……啊啊啊啊啊啊啊啊啊啊!!」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0080a00">
「——!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateColorEXmul("絵色100", 18000, #990000);

	CreateSE("SE01","se人体_体_心臓の音01_L");
	MusicStart("SE01",2000,1000,0,1000,null,true);

	Fade("絵色100", 4000,500,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　丹田中——横膈膜之下——某种凶暴的事物蠕动着。

　那是某种事物的觉醒。某种事物的动作。
　在那天，<RUBY text="······">被植入身体的</RUBY>某种事物。

　产生了拥有并不存在的<RUBY text="··">子宮</RUBY>的错觉。
　产生了孕育并不存在的<RUBY text="··">胎儿</RUBY>的认知。

　此胎儿名曰怪物。
　暴虐挣扎狂吼着咬破守护自身的母体。剧痛。
非实在的怪物用非实在的爪牙招致的幻痛。
腹腔被撕裂。但亦是幻觉。只有痛苦是现实的。

　在铃川令法，真改那并不存在的子宫中诞生出的
非现实的怪物。没有任何人的肉眼能够看到。
　也没有任何人的手能触碰。完全的妄想。非现实。

　但是，然而。
　只有这汹涌而来的膨大力量是事实！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetVolume("SE01", 500, 0, null);
	SoundPlay("@mbgm13",0,1000,true);

	OnSE("se特殊_陰義_発動03",1000);
	DrawTransition("絵色100", 600, 1000, 0, 100, Dxl1, "cg/data/circle_03_00_0.png", true);

	CreateColorSP("絵色1000", 20000, "Black");

	CreateWindow("ウィンドウ上", 16000, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 16000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateColorSP("ウィンドウ上/絵色100", 16000, "Black");
	CreateColorSP("ウィンドウ下/絵色100", 16000, "Black");
	Delete("絵色1000");

	CreateColorSP("絵色1000", 15300, "Black");
	CreateColorSP("絵色100", 15400, #990000);
	Fade("絵色100", 0, 500, null, true);
	CreateTextureEX("shin", 15500, Center, -400, "cg/st/resize/3d真改_立ち_抜刀.png");
	CreateTextureEX("shin2", 15500, Center, -400, "cg/st/resize/3d真改_立ち_陰義.png");
	Move("shin", 0, @+200, @0, null, true);

	Fade("shin", 0, 1000, null, true);
	Move("shin", 700, @-200, @0, Dxl1, false);
	Move("ウィンドウ上", 500, @0, @-150, null, false);
	Move("ウィンドウ下", 500, @0, @+150, null, true);

	Wait(200);

	CreateColorEXadd("フラッシュaka", 15600, #990000);
	Fade("フラッシュaka",100,1000,null,true);

	OnSE("se特殊_鎧_装着01",1000);

	Fade("shin2", 0, 1000, null, false);
	Fade("shin", 0, 0, null, true);

	FadeDelete("フラッシュaka",500,true);

	CreateColorEX("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	Delete("ウィンドウ*");
	Delete("shin");
	Delete("shin*");
	Delete("絵色100");
	Delete("絵色100");
	Delete("絵色1000");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改_通常.png");


	SetBacklog("　　　　　「围城层层围成层　
                                红叶昏昏旋飞刃」", "voice/ma01/023vs0090b57", 鈴川);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0090b57">
　
　　　　　「围城层层围成层　
            红叶昏昏旋飞刃」

</PRE>
	SetTextEXC();
	Request("@text0080", NoLog);
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　咒句实行。

　翻腾的力量被赋予指向性。
　集束膨大的质量。赋予其硬度。赋予其速度。
赋予其锋芒。
赋予其用于破坏的一切。

　之后——
　只需全力轰击！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

	SetBacklog("　　　　　「白华烂丹灿祸罗！」", "voice/ma01/023vs0100b57", 鈴川);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0100b57">
　
　　　　　「白华烂丹灿祸罗！」

</PRE>
	SetTextEXC();
	Request("@text0100", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆密義·白華爛丹。地上から噴き上がる水の竜巻。メイルストローム

//嶋：【特殊_陰義_白華爛丹】変更予定
	OnSE("se自然_水_波の音強01",1000);
	CreateTextureEX("絵EV100", 16000, Center, Middle, "cg/ev/ev109_陰義白華爛丹.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 3, 500, 50, false);
	Move("絵EV100", 0, @-512, @-288, null, true);
	Shake("絵EV100", 50000, 2, 1, 0, 0, 500, null, false);
	BezierMove("絵EV100", 1500, (@0,@0){@+200,@0}{@-200,@+88}{@+300,@50}{@-100,@+50}(@+512,@+288), AxlDxl, false);
	Fade("絵EV100", 500, 1000, null, true);

	Wait(1000);

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	Delete("絵EV100");

	Cockpit_AllFade0();

	CreateTextureSP("絵背景1000", 980, Center, Middle, "cg/bg/resize/bg002_空a_02.jpg");
	CreateTextureSP("絵mura", 1000, Center, Middle, "cg/st/3d村正標準_騎航_戦闘a.png");
	Move("絵mura", 0, @+500, @-100, null, true);

	CreateTextureEX("絵EV100", 16000, Center, Middle, "cg/ev/ev109_陰義白華爛丹.jpg");
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	SetBlur("絵EV100", true, 3, 500, 50, false);

	Move("絵mura", 400, @-500, @+100, Dxl1, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0110a00">
「磁力镀装——！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかーん。直撃。演出適当に。

	CreateTextureEX("絵mura01", 1000, Center, Middle, "cg/st/3d村正標準_騎航_陰義.png");

	OnSE("se戦闘_動作_刀構え01",1000);

	FadeDelete("絵mura", 200, false);
	Fade("絵mura01", 200, 1000, null, true);

	Wait(200);


	Zoom("絵EV100", 1000, 1000, 1000, null, false);
	Fade("絵EV100",1000, 1000, null, true);
	CreateTextureSP("絵EV200", 15999, Center, Middle, "cg/ev/ev109_陰義白華爛丹.jpg");
	Shake("絵EV100", 10000, 1, 2, 0, 0, 500, Dxl1, false);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0120a00">
「唔……!?」

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0130b57">
《告诉你吧……不仅仅是血液！
　真改的阴义可以操控<RUBY text="····">一切液体</RUBY>！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ずどーん。吹っ飛ばす。演出適当に。
	OnSE("se自然_水_波の音強01",1000);
	Zoom("絵EV100", 500, 2000, 2000, null, false);
	Wait(300);
	CreateColorEXadd("フラッシュ白", 17000, "WHITE");
	Fade("フラッシュ白",1000,1000,null,true);
	Delete("絵背景1000");
	Delete("絵mura");
	Delete("絵mura01");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureEX("絵背景100", 1000, Center, 0, "cg/bg/resize/bg002_空a_02.jpg");
	Zoom("絵背景100", 0, 1500, 1500, Dxl1, false);
	Fade("絵背景100", 0, 1000, null, true);
	Request("絵背景100", Smoothing);


	Cockpit_AllFade2();
	CP_RollBarMoveA();
	CP_AltChangeA();
	CP_HighChangeA();
	CP_SpeedChangeA();

	CP_EnemyFade0();

	CP_PowerChange(1000,200,null,false);

	Shake("絵背景100", 1500, 10, 5, 0, 0, 500, Dxl1, false);
	FadeDelete("フラッシュ白", 1000, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　被从地上河川——海原——喷涌而上的水流
击飞，村正<RUBY text="····">旋转坠落</RUBY>。
　怒涛变本加厉地追袭。与通天的水龙相比
显得过分渺小的武者被一口吞噬。

　不管是何等的勇者也无法支撑瞬息。
　被如此巨大的质量袭击，怎能安然无恙！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0140b57">
「哈……哈哈哈哈哈！
　哈哈哈哈哈哈哈！　如何，看到了吗……
这份力量。真改的力量。我的力量！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0150b57">
「为了美丽万物所存在的！　我的正义！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　无法抑制喷涌而出的冲动，大声哄笑起来，但连自己也
不禁为刚刚发生的事情惊讶不已。
　没想到居然会强到这个地步……！

　究竟吸起了多大的水量。
　偌大的水流已经四散倾泻到地上。眼前仿佛可以看到
街上的人对突如其来的豪雨大吃一惊的景象。

　村正的身影消失无踪。再也无法找到。
　蜘蛛变化而成的那个可怕身姿，已经从美丽的
天空中消失得一干二净。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0160b57">
「……坠落了吗。
　这也是其应有的末路吧。」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0170b38">
《——不。
　方位一七〇度下方，距离二四〇〇。
　敌影确认。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0180b57">
「什么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CP_AziChange(3000,-128,null,false);
	CP_AltChange(500,-52,null,false);

	CP_RollBarMove("@絵背景100",800,-90,null,false);
	Zoom("絵背景100", 1200, 1700, 1700, Dxl1, false);
	Move("絵背景100", 1000, @+100, @+100, Dxl1, false);

	Wait(980);

	Move("絵背景100", 1600, @-200,@+400, AxlDxl, false);

	Wait(1000);

	Move("絵背景100", 800, @-200,@-100, AxlDxl, false);

	CP_RollBarMove("@絵背景100",1000,0,null,false);

	Wait(500);

	Move("絵背景100", 2000, @-300, @0, AxlDxl, false);

	CreateWindow("ウィンドウ上", 15000, 0, 120, 1024, 336, false);
	SetAlias("ウィンドウ上","ウィンドウ上");

	CreateTextureEX("ウィンドウ上/絵背景01", 16000, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	CreateTextureEX("ウィンドウ上/絵mura01", 16000, Center, Middle, "cg/st/3d村正標準_騎航_通常.png");
	CreateStencil("ウィンドウ上/マスク１",16100,center,Middle,128,"cg/st/3d村正標準_騎航_通常.png",false);
	CreateColor("ウィンドウ上/マスク１/色１", 16100, 0, 0, 1024, 576, "Black");
	Fade("ウィンドウ上/マスク１/色１", 0, 0, null, true);

	BezierMove("ウィンドウ上/絵mura01", 1000, (@0,@0){@0,@-50}{@0,@+50}(@0,@0), AxlDxl, false);
	BezierMove("ウィンドウ上/マスク１", 1000, (@0,@0){@0,@-50}{@0,@+50}(@0,@0), AxlDxl, false);
	Fade("ウィンドウ上/*", 0, 1000, null, false);
	Fade("ウィンドウ上/マスク１/色１", 0, 500, null, false);
	DrawTransition("ウィンドウ上/*", 500, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", false);
	DrawTransition("ウィンドウ上/マスク１/色１", 500, 0, 1000, 100, null, "cg/data/slide_05_00_1.png", true);

	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　听到难以置信的报告，双目圆睁向指示的方位看去。
　那个身影，确实就在那里。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"off",true);
	CreateTextureSP("絵mura001", 14000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	Zoom("絵mura001", 0, 10, 10, null, true);
	CP_LockOnMove("@絵mura001",0,@+300,@+100,null,true);

	DrawTransition("ウィンドウ上/*", 500, 1000, 0, 100, null, "cg/data/slide_05_00_1.png", false);
	DrawTransition("ウィンドウ上/マスク１/色１", 500, 1000, 0, 100, null, "cg/data/slide_05_00_1.png", true);
	Delete("ウィンドウ上");
	Delete("ウィンドウ上/*");
	Delete("ウィンドウ上/マスク１");
	Delete("ウィンドウ上/マスク１/*");


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0190b57">
「中了那个居然还安然无恙吗!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0200b38">
《敌骑在受到我方白华烂丹直击前瞬间展开防壁。
　似乎借此效果避开了致命伤害。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0210b57">
「你说防壁？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0220b38">
《估计是张开磁力之壁，
将水流磁化后利用排斥作用
削减了威力。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0230b57">
「磁力……
　也就是说，磁力操纵是村正的阴义吗。」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0240b38">
《如此推断想必是妥当的。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　该死的怪物。
　虽然想吐一口唾沫，但头上覆盖的头盔让我无法做到。
装备上剑胄后，偶尔也会遇到类似这样的小小不便。

　连那股力量也不足以击倒这家伙吗。
　凭真改难道无法打败他吗!?
　
　……混账。

　碍眼的家伙。
　那个阻碍我道路的男人。到底也要挡在我面前的
那抹深红。

　打败他。

　怎么可能接受无法打败他的结果。
　如果我是正确的，既然我是正确的，不可能无法
将错误的家伙消灭。

　打败他。消灭他……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se特殊_コックピット_起動音02",1000);
	CP_EnemyFade(300,3,382,240);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0250b38">
《敌骑状态确认。
　胸部甲铁中心处有严重损伤。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0260b57">
「嗯？」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0270b38">
《据推测正处于全机能大幅下降状态。
　比较此刻的性能，真改处于上风。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0280b57">
「损伤……！　是吗！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　看来即便是那家伙也不可能毫发无伤。
　想想也是极为自然的结果。

　趁现在继续追击的话，能赢！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0290b38">
《确认敌骑启动恢复机能。
　需要时间不明。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0300b57">
「不会给他时间的！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	CP_LockOnDelete();

	Delete("絵mura001");
	Delete("絵背景100");

	CreateTextureEX("絵背景50", 1000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);

	CreateTextureSP("絵shin", 1200, Center, Middle, "cg/st/3d真改_騎航_戦闘.png");
	Move("絵shin", 0, @-1024, @-576, null, true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	OnSE("se戦闘_動作_空突進03",1000);


	Move("絵shin", 300, @+1024, @+576, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　压低航角开始下降。
　正在下方旋回飞行的村正似乎也发现了我方动向，
做好觉悟抬头迎击。

　与之前完全相反的局面。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵shin");

	CreateTextureEX("絵背景50", 100, Center, Middle, "cg/bg/resize/bg001_空a_02.jpg");
	Fade("絵背景50", 0, 1000, null, true);

	CreateTextureEX("絵背景100", 200, Center, Middle, "cg/ef/ef002_汎用移動.jpg");
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	Fade("絵背景100", 0, 400, null, true);

	CreateTextureSP("絵St100", 1200, -380, -450, "cg/st/3d真改_騎航_戦闘.png");
	Request("絵St100", Smoothing);
	Rotate("絵St200", 0, @0, @0, 45, null,true);
	Zoom("絵St100", 0, 500, 500, null, true);
	SetBlur("絵St100", true, 3, 400, 50, false);

	CreateTextureSP("絵St200", 1000, 309, -34, "cg/st/3d村正標準_騎航_戦闘b.png");
	Request("絵St200", Smoothing);
	Rotate("絵St200", 0, @0, @0, 35, null,true);
	Zoom("絵St200", 0, 500, 500, null, true);
	SetBlur("絵St200", true, 3, 400, 50, false);



	OnSE("se戦闘_動作_空急降下01",1000);

	Zoom("絵背景100", 500, 1200, 1200, null, false);
	Move("絵St200", 400, @-100, @-50, Dxl1, false);
	Move("絵St100", 400, @+100, @+50, Dxl1, false);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0310b57">
《村正!!!!》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0320a00">
《……真改。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0330b57">
《武者间的格斗中处于高位的一方更为有利……
对吧!?
　你的谆谆教诲，就让我现学现用吧！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_空突進02",700);

	WaitAction("絵St100",null);
	WaitAction("絵St200",null);

	Move("絵St200", 300, @+10, @-100, Dxl1, false);
	Move("絵St100", 300, @-10, @+70, Dxl1, false);
	Zoom("絵St200", 300, 750, 750, Dxl1, false);
	Zoom("絵St100", 300, 750, 750, Dxl1, true);





//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　突进。攻击。
　高举太刀，当敌人从下方掠过时劈砍而下！

　村正也做出下段态势，准备挥刀上砍。
　但是——优劣一目了然！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：真改上段→村正下段
//◆上段剣撃→下段剣撃
//◆カキーン。ズバーン。村正の太刀が弾かれて真改の攻撃がヒット。

	CreateColorEX("絵色100", 15000, "Black");

	Move("絵St200", 1000, @-50, @-20, Dxl1, false);
	Move("絵St100", 1000, @+50, @+20, Dxl1, false);
	Zoom("絵St200", 1000, 1000, 1000, Dxl1, false);
	Zoom("絵St100", 1000, 1000, 1000, Dxl1, false);

	Wait(500);

	Fade("絵色100", 200, 1000, null, true);
	Delete("絵St100");
	Delete("絵St200");

	OnSE("se戦闘_攻撃_野太刀振る01",1000);
	SL_down2(15001,@0, @0,1000);

	SL_downfade2(10);

	CreateColorEX("フラッシュ白", 15000, "WHITE");



	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵ev100", 1000, Center, 0, "cg/ev/ev506_村正VS真改_空中戦.jpg");
	SetBlur("絵ev100", true, 3, 500, 50, false);
	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ上");
	Delete("ウィンドウ下");
	Delete("絵色100");

	CreateTextureEX("絵ev200", 1200, Center, -100, "cg/ev/resize/ev506_村正VS真改_空中戦_m.jpg");

	Move("絵ev100", 700, 0, -600, Dxl1, false);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0340b57">
「喝啊！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Fade("絵ev200", 0, 1000, null, true);

	OnSE("se戦闘_攻撃_鎧_打撃02",1000);

	Shake("絵ev200", 500, 2, 4, 0, 0, 1000, null, false);
	Fade("フラッシュ白",400,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0351]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0350a00">
「咕!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ev200", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　弹开村正的太刀，砍入甲铁！
　坚硬的打击感，让手腕的骨头也一阵发麻，不过——
这份感觉反而让我倍感畅快。

　终于亲手给了那家伙一击。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureEX("絵背景200", 1000, 0, -288, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景200", 0, 1000, null, true);

	Cockpit_AllFade2();
	CP_AltChange(0,0,null,true);


	Move("絵背景200", 1500, @0, @+100, Dxl1, false);
	Shake("@CP_Frame", 2000, 0, 1, 0, 0, 500, null, false);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	EnLife_Count(600,312);
	CP_SpeedChange(500,541,null,false);
	CP_HighChange(500,812,null,false);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0360b38">
《敌，左肩部甲铁损伤。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0370b57">
《哈！
　怎么样，村正！　局势逆转，被打得落花流水
的心情如何？》

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0380b57">
《肯定别有一番滋味吧!?》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0390a00">
《……难以认同。
　这种滋味根本不用你来教我。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0400a00">
《早已习惯至极，厌倦至极……
　不过，痛苦的感觉总是新鲜得可恨。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　尽管传来这样的回答，可声音仍然一丝不乱。
　反正也只是虚张声势吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0410a00">
《不过……刚才<RUBY text="··">那个</RUBY>，是什么。
　不管真改是何等名物也好，
要说拥有那种程度的力量，
实在难以置信。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0420a00">
《那个——是<RUBY text="··">异常</RUBY>。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0430b57">
《哼。
　银色的破坏之神，赋予了我力量……
就这样跟你说吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　想必理解不了吧。
　就算理解了也不可能相信。

　不过，村正的回答却出乎意料。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0440a00">
《我一开始就知道，你被银星号植入了<RUBY text="·">卵</RUBY>。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0450b57">
《哦？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　卵。那确实是有着让人联想到卵的球状。
　那么，这个男人莫非知道些什么……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0460a00">
《因为我们正是追寻那股气息而来。
　不过……那本应只是<RUBY text="····">计时炸弹</RUBY>才对。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0470a00">
《与你方才展现的异常力量，
没有任何关系——》

{	NwC("cg/fw/nwその他.png");}
//嶋：ここだけネームプレート
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0480a01">
《看来有关系呢。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　突然。
　一个清亮的声音插入对话。

　仿佛用指尖轻弹纤薄陶器一般的声响。
　……莫非，这就是那<RUBY text="村正">剑胄</RUBY>的声音？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

	#voice_on_村正=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0490a01">
《这次，银星号散播的七个卵，是融合我的
野太刀创造出来的。
　那颗卵中蕴含着我的力量。》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0500a00">
《那么，那是——》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0510a01">
《估计就是刚才那超出常识的阴义的原因。
　还有甲铁那离谱的硬度。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0520a01">
《如何，井上和泉守？　虽然很不巧，
我对<RUBY text="··">后世</RUBY>之事了解不深，
但无论如何也难以相信，仅凭摄津锻冶
就能完成此等程度的性能。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0530a01">
《或者是我评价过低？
　难道说那才是铭刻十六叶菊的
剑胄的真正本领？》

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0540b38">
《——不。阁下之言一针见血。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
　令人惊讶的是，真改竟接受对方的质问，做出回应。
　是心理作用吗——不，毫无疑问是错觉，但——
剑胄传音中，包含着类似于敬意的语调。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0550b38">
《我方能力被<RUBY text="··">侵蚀</RUBY>我方的异物大大提高。
虽然无法详细解析这个异物——但这莫非
是您……是您<RUBY text="·">们</RUBY>的力量吗。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0560a01">
《……似乎给你造成困扰了呢。》

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0570b38">
《请无须多虑。不管是以何种形式，
能接触先人之业实在欢喜至极。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0580b57">
「到此为止吧，真改。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　听着剑胄们在战斗正中不合时宜地以莫名和缓的
气氛交谈，急不可耐地插了一句。对话中虽有
难以理解的部分，但有一个事实是显而
易见的，那就是这种对话毫无意义。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0590b57">
《喋喋不休地说些无趣的话……！
　想拖延时间吗，村正。垂死挣扎
……是武者就该像武者那样，痛快凋零！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0600a00">
《说的也是。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　村正——甲铁内侧传出的声音。
　那比剑胄更像剑胄的冰冷声音，淡淡接了一句。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0610a00">
《方才之言本人完全同意。
　那么——就如武者一般痛快凋零吧，
铃川令法。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0620b57">
《……!?》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Move("絵背景200", 300, @0, @-300, null, true);
	CockPit_LockSet(@0,@0);
	CreateTextureEX("絵mura001", 14000, Center, Middle, "cg/st/3d村正標準_騎突_戦闘.png");
	SetBlur("絵mura001", true, 3, 500, 50, false);
	Zoom("絵mura001", 0, 20, 20, null, true);
	CP_LockOnMove("@絵mura001",0,@-200,@+50,null,true);
	Fade("絵mura001", 300, 1000, null, false);
	CP_LockOnFade(300,"off",false);
	CP_LockOnMove("@絵mura001",1000,@+200,@+150,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　说了一句，村正的红影调头回旋。
　向我方发动攻击——从极为不利的下方。

　……在做什么，那个男人。
　难道还没弄清状况吗。

　高度处于劣势的是那家伙，损伤程度更深的也是那家伙！
　会死的是哪一方，明明已经一目了然！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0630b57">
「……过分虚张声势真是让人不爽。
我这还是第一次发现。
　也好，真改——容他去做梦吧。
就让他继续沉浸在妄想中，将之埋葬。」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0640b38">
《明白。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピッチダウン。突撃

	CP_SpeedChange(500,610,null,false);
	CP_AltChange(500,-45,null,false);
	EnTr_Count(1000,300);

	CP_PowerChange(2000,0,null,false);



	CP_LockOnMove("@絵mura001",1500,@0,@-50,null,false);

	Zoom("絵背景200", 2000, 1500, 1500, null, false);
	Zoom("絵mura001", 2000, 100, 100, null, false);

	Wait(100);

	CP_LockOnFade(300,"on",false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
　弱者！
　没错，你才是真正的弱者。说出那样一番豪言壮语，
可到最后也只能死死抱着不肯认输的妄想不放！

　真是看不下去。

　丑陋。
　在与这份丑陋相符的可悲末路上，
走向坠落吧——！

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ＣＩ：真改上段→剣撃

	CreateTextureEX("絵EF100", 16000, Center, Middle, "cg/ef/ef010_汎用斜め軌道.jpg");
	Zoom("絵EF100", 0, 2000, 2000, null, true);
	SetBlur("絵EF100", true, 3, 500, 50, false);
	Zoom("絵EF100", 500, 1000, 1000, Dxl1, false);
	OnSE("se戦闘_攻撃_野太刀振る02",1000);
	Fade("絵EF100", 500, 1000, Dxl1, true);

	Wait(500);

	SetFwR("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0650a00">
「磁装·负极——」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs0660a01">
《——“磁流·逆转”。》

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateColorEX("フラッシュ白", 16100, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	CP_LockOnDelete();
	Delete("絵EF100");
	Delete("絵mura001");

	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");

/*
	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0670b57">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――
*/

//◆ＣＩ：村正磁装展界
//◆ジジっとバリアが攻撃を防ぐっぽいＳＥ。フラッシュ
//◆二機，交差


	CreateColorEXadd("フラッシュ白", 17000, "WHITE");
	Fade("フラッシュ白",10,1000,null,true);

	CreateTextureEX("絵mura100", 16000, Center, Middle, "cg/ev/ev903_村正磁気バリアー展開_a.jpg");
	Zoom("絵mura100", 0, 2000, 2000, null, true);
	SetBlur("絵mura100", true, 4, 500, 50, false);
	Fade("絵mura100", 0, 1000, null, true);

	OnSE("se戦闘_陰義_磁力展開",1000);

	Fade("絵mura100", 500, 1000, Dxl1, false);
	Zoom("絵mura100", 500, 1000, 1000, Dxl1, false);
	Fade("フラッシュ白",600,0,null,true);

	SetFwL("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0680b57">
「！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//	Wait(200);

	OnSE("se戦闘_陰義_磁力弾く",1000);
	Fade("フラッシュ白",100,1000,null,true);
	Delete("絵mura100");
	Delete("絵背景100");
	Delete("絵背景200");

	CreateTextureEX("絵背景100", 1200, Center, -200, "cg/bg/resize/bg201_旋回演出背景市街地a_02.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	Shake("@CP_Frame", 500, 5, 2, 0, 0, 500, Dxl1, false);

	Move("絵背景100", 500, @0, @+100, Dxl1, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0690b57">
「刚才是——！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0700b38">
《敌方磁力障壁发动。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
　攻击被弹开了。
　并非被甲铁的强度挡开——而是像打到硬质橡胶上
一般。手中残留着一种奇妙的感觉。

　——利用磁极斥力的防御！
　刚才也是使用这个，防住了怒涛般的水流吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0710b57">
「混账……负隅顽抗！」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0720b38">
《连续使用阴义对操控者负担巨大。
　以连续攻击进行突破更为妥当。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
　谁还愿意继续那么磨蹭下去。
　那个令人作呕的存在谁还愿意再看下去！

　既然那个结界能够防御剑击，那么使用无法
完全防御的攻击就好。
　那样一来就能一击解决。

　白华烂丹！

　集中体内之力。
　将翻腾的水流吸引，收拢，集束——！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0730b57">
「围城层层——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆サーッ。血の気が引く音。ホワイトアウト
//◆ホワイトイン
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXover("絵色400", 16000, "White");
	Fade("絵色400", 500, 700, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0771]
　…………咦？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ゆっくりと画面が白黒化。グレイアウト
	CreateEffect("エフェクト１", 16000, 0, 0, 1024, 576, "Monochrome");
	Fade("エフェクト１", 0, 0, null, true);
	Fade("エフェクト１", 5000, 600, null, false);

	CP_SpeedChange2(6000,147,null,false);
	CP_HighChange2(6000,154,null,false);

	Move("絵背景100", 6000, @0, @-500, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0772]
　怎么了，这是？
　视野——失去了颜色？

　不仅如此。
速度——在下降。平衡——在崩溃。身体——
<RUBY text="··">好冷</RUBY>。

　好冷——！
　是什么，这股从身体深处涌出的异样寒冷!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0740b57">
「真改！　发生什么了!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0750b38">
《————》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0790]
　没有回答。不——在回答吗？
　只能微微听到夹杂着干扰的杂音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0760a00">
《看来到极限了呢。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0770b57">
《村正！
　这算什么……极限是什么意思！
　你究竟做了什么！》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0780a00">
《我什么也没做。
　那只是你的不成熟招致的现象……
　热量匮乏。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0790b57">
《……热量匮乏!?》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0800a00">
《武者的回旋机动会产生剧烈的加速度，
使得血液下涌，导致视力障碍。
　不过这只是通常状况，不会造成什么问题。
因为剑胄的防护在运作。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0810a00">
《但若是由于其他原因，使得剑胄防护减弱，
那就会突然成为迫在眼前的危险。
　<RUBY text="··">原因</RUBY>就在于，问题不仅仅
局限于视力障碍而已。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0820a00">
《热量匮乏。
　为了发挥剑胄能力，必须时刻
消耗操控者的热量。
使用强大力量时，耗费更是巨大。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0830a00">
《消费量若超出肉体的承受极限
……没错。就会变成现在的你这样。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0840a00">
《你的热量，由于先前的大规模阴义已经
消耗见底。在此之上还要勉强使用，
结果就是……剑胄机能几乎
完全停止。不对吗？》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0850b57">
《怎……怎么会。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("絵色400", 5000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
　怎么会这样。
　这种事情，我根本不知道。
　明明不知道。

　残酷。
　为什么……为什么没有任何人告诉我。
　为什么要到这种地步才知道！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0860a00">
《这对武者而言是连常识也算不上的基本事项。
　然而——只以肉身之人为对手，
从未体验过极限的你根本无从知晓。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0870b57">
《呜……》

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0880a00">
《铃川令法。无须借助他人之手，
是你自己招致了自身恶行的报应。
　你很快就会坠落……》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0890a00">
《不过，凭借甲铁的强度想必不会致死。
<RUBY text="··">之后</RUBY>我不会承认你的生存。
　因此，我会亲手送你上路。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0900b57">
《不……不要……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	Fade("エフェクト１", 5000, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
　不能死。
　我不能死。

　动起来！
　动起来，手脚！　动起来，真改！
　为什么不动！　为什么那么麻木！　为什么不停坠落!?

　给我动起来!!!!
　我还不能死！
　为了美丽的万物！

　我————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0910a00">
《永别了，铃川令法。
　执迷于人类之美的弱者。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0920a00">
《你或许不是用恶这一个词就能评判的人。
　但<RUBY text="····">美丽之物</RUBY>寻求的，
并非如你一般的脆弱。》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0930b57">
《啊……啊啊！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm12",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
　已经模糊不清的视野深处。
　深红武者将太刀收纳入鞘。

　居合／拔刀术的架势。
　一刀必杀之意的具现化。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆村正帯電開始
	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);


	Cockpit_AllFade0();
	CP_AllDelete();


	Delete("絵M");
	Delete("絵背景50");
	Delete("絵EV100");
	Delete("絵EV200");
	Delete("絵shin");
	Delete("絵色400");
	Delete("エフェクト１");

	CreateWindow("ウィンドウ上", 15000, 0, 0,1024, 288, false);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateWindow("ウィンドウ縦", 15000, 512, 0,400, 576, false);
	SetAlias("ウィンドウ縦","ウィンドウ縦");
	CreateTextureEX("ウィンドウ縦/絵EV100", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("ウィンドウ縦/絵EV100", Smoothing);
	Zoom("ウィンドウ縦/絵EV100", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV100", 0, @-300, @0, null, false);
	CreateTextureEX("ウィンドウ縦/絵EV200", 16000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	Request("ウィンドウ縦/絵EV200", Smoothing);
	Zoom("ウィンドウ縦/絵EV200", 0, 2000, 2000, null, true);
	Move("ウィンドウ縦/絵EV200", 0, @-300, @0, null, false);


	CreateColorSP("ウィンドウ上/絵色100", 15000, "Black");
	CreateColorSP("ウィンドウ下/絵色100", 15000, "Black");

	Delete("黒幕１");

	CreateTextureSP("絵EV100", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_a.jpg");
	CreateTextureEX("絵EV200", 14000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_b.jpg");
	Request("絵EV100", Smoothing);
	Zoom("絵EV100", 0, 2000, 2000, null, true);
	Move("絵EV100", 0, @+400, @+288, null, false);
	Request("絵EV200", Smoothing);
	Zoom("絵EV200", 0, 2000, 2000, null, true);
	Move("絵EV200", 0, @0, @+288, null, false);

	Move("絵EV100", 500, @-400, @0, Dxl1, false);
	Move("ウィンドウ上", 300, @0, @-200, null, false);
	Move("ウィンドウ下", 300, @0, @+200, null, true);

	WaitAction("絵EV100", null);
	CreateColorEXadd("絵色100", 14001, "White");

	OnSE("se特殊_鎧_装着01",1000);

	Fade("絵EV200", 0, 1000, null, false);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 200, 0, 1000, 100, Dxl1, "cg/data/slide_05_00_1.png", true);
	Delete("絵EV100");
	FadeDelete("絵色100",1000,true);


	CreateColorEX("絵色100", 14005, "Black");
	Fade("絵色100", 0, 700, null, false);
	DrawTransition("絵色100", 300, 0, 1000, 100, Dxl1, "cg/data/slide_06_00_1.png", true);

	Fade("ウィンドウ縦/絵EV100", 0, 1000, null, false);
	DrawTransition("ウィンドウ縦/絵EV100", 500, 0, 1000, 100, Dxl1, "cg/data/slide_02_00_1.png", true);
//	CreateColorSP("絵色100", 10, "White");

	Wait(300);

	Fade("ウィンドウ縦/絵EV200", 0, 1000, null, false);
	Shake("ウィンドウ縦/絵EV200", 500000, 2, 1, 0, 0, 500, null, false);

	OnSE("se特殊_電撃_帯電01",700);

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",0,700,0,1000,null,false);

	CreateColorEXadd("ウィンドウ縦/絵200", 20000, #99CCFF);
	Fade("ウィンドウ縦/絵200", 10, 600, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 700, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 500, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);
	Fade("ウィンドウ縦/絵200", 10, 800, null, true);
	Fade("ウィンドウ縦/絵200", 100, 0, null, true);

	SetVolume("SE01", 100, 0, null);
	CreateColorSP("黒幕１", 21000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ縦/*");

	Delete("ウィンドウ上");
	Delete("ウィンドウ下");
	Delete("ウィンドウ縦");

	Delete("絵色100");
	Delete("絵EV100");
	Delete("絵EV200");

	CreateTextureSP("絵EV100", 1999, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");
	CreateTextureSP("絵EV200", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_c.jpg");

	Shake_Loop("@絵EV200","shake01");

	RailgunFlash();

	CreateSE("SE01","se特殊_電撃_帯電01");
	MusicStart("SE01",300,500,0,1000,null,true);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Fade("絵背景200", 500, 1000, null, true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0940b57">
「真……真改……!?」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0950b38">
《两极的磁力。
　将相吸与相斥的作用，
融合到居合之技中吗……》

//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0960b38">
《这是何等可怕的技艺。驾驭如此精密
而又高压的力量，不管是对操控者还是
对剑胄而言，都是将生死交由天定的
冒险行为……但这竟然实现了……》

{	FwC("cg/fw/fw真改_通常.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs0970b57">
「真改!!」

{	FwC("cg/fw/fw真改百足_通常.png");}
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs0980b38">
《……我的操控者哟。
　走上武之鬼道者无法逃脱的命运，
如今就是面对之时。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
　即便不停呼喊，剑胄也没有动弹。
　仅仅回以沉静的言语。

　死将降临。
　毁灭一切接近之物，以最凶最强之名被传诵的妖甲，
即将解放其咒诅的究极之态。
　绝对无可避免的死之命运。村正。

　醒悟了。理解了。
　真改的甲铁——本应无双无敌的防壁——
也绝无可能防住即将到来的<RUBY text="··">事物</RUBY>。

　终于意识到。
　妖甲之所以是妖甲的原因。
　它就是死。它就是灭。纯粹无垢的，<RUBY text="·">它</RUBY>。

　不可牵涉。
　不可接近。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs0990a00">
《不管是多么坚固的城塞……
　在天之铁锤前都是脆弱之物。》

//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs1000a00">
《磁力镀装——终焉。》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma01/023vs1010a01">
《了解。
　让死亡降临吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ここからアニメ？
//◆突撃する村正の鞘が帯電。放電。


	CreateTextureEX("絵EV300", 2000, Center, Middle, "cg/ev/ev902_村正電磁抜刀レールガン_d.jpg");

	SetVolume("SE01", 500, 800, null);

	Shake_LoopB("@絵EV300","shake02");
	Fade("絵EV300", 700, 1000, null, true);

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs1020a00">
《吉野御流合战礼法，“迅雷”之崩裂……》

//◆鞘に手をかける村正。溜め演出
//【景明】
<voice name="景明" class="景明" src="voice/ma01/023vs1030a00">
《电磁拔刀————“祸”。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@SE*", 300, 0, null);

//◆抜刀。レーザーブレードっぽい感じか。
//◆ズシャードバーとまあ，派手に。直撃。ズガーン。ホワイトアウト

//嶋：ムービー差し込み予定【090305】

	CreateColorEXadd("絵色100", 15000, "White");

	Fade("絵色100", 300, 1000, null, true);

	RG_FlashDelete();
	Delete("@shake01");
	Delete("@shake02");
	Delete("絵EV100");
	Delete("絵EV200");
	Delete("絵EV300");
	Delete("絵EV400");
	Delete("@CP_SpeedAuto");
	Delete("@CP_RollBarAuto");
	Delete("@CP_HighAuto");

	MovieSESet(16000,"mv電磁抜刀_禍","se特殊_mv用_電磁抜刀_禍");

	MovieSEStart(1500);

//	if(#SYSTEM_break_play_movie){
//		MoviePlay("dx/mv電磁抜刀_禍.ngs", true);
//	}else{
//		MoviePlay("dx/mv電磁抜刀_禍.ngs", false);
//	}
//	Wait(1000);

	SetVolume("@mbgm*", 5000, 0, null);

	SetFwC("cg/fw/fw真改百足_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
//【真改】
<voice name="真改" class="真改" src="voice/ma01/023vs1040b38">
《愿得……我心……若……明月……》

{	FwC("cg/fw/fw鈴川_虚無.png");}
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/023vs1050b57">
「独映……暗夜……迷……途……人…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景10", 9999, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEX("絵背景100", 10000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureEX("絵背景200", 12000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵背景200", true, 3, 500, 100, false);
	Fade("絵背景100", 0, 1000, null, true);
	SetBlur("絵背景100", true, 3, 500, 100, false);

	Shake("絵背景100", 20000, 2, 3, 0, 0, 500, null, false);

	CreateTextureEXadd("絵ef100", 13000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Fade("絵ef100", 0, 1000, null, true);
	Fade("絵背景200", 0, 800, null, true);

	SetBlur("絵ef100", true, 3, 500, 200, false);
	Zoom("絵ef100", 5000, 5000, 5000, Dxl1, false);

//◆爆散。ぼーん。
	CreateSE("SE01","se戦闘_破壊_鎧02");
	MusicStart("SE01",0,1000,0,1000,null,false);


	FadeDelete("絵色100", 1500, false);

	Wait(750);

	Zoom("絵背景200", 1000, 2000, 2000, Dxl1, false);
	Fade("絵背景200", 1000, 0, Dxl1, false);
	Fade("絵ef100", 1000, 0, null, true);

	Zoom("絵背景200", 0, 1000, 1000, Dxl1, true);

	Zoom("絵背景200", 500, 3000, 3000, Dxl1, false);
	Fade("絵背景200", 300, 500, Dxl1, true);

	Fade("絵背景200", 300, 0, Dxl1, true);

	Wait(1000);

	ClearWaitAll(1000, 3000);


..//ジャンプ指定
//次ファイル　"ma01_024.nss"

}
