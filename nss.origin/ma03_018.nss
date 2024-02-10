//<continuation number="450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_018.nss_MAIN
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

	#bg038_サーキットカーブb_01=true;
	#bg038_サーキットカーブb_03=true;
	#ev906_アベンジ走行_b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma03_019.nss";

}

scene ma03_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma03_017.nss"

//◆客席
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SoundPlay("@mbgm03",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　在松弛气氛的笼罩下，预选赛接近尾声。
　再过几分钟就到规定时间了。

　显示屏上，显示着到目前为止各参赛队伍的最高单圈
成绩与排位。
　到这时候一般不会有什么变动了。

　目前排名首位的是翔京理想号。理所当然地排位不动。
　接着是在长崎鸣泷设有据点，严格说来是国外企业的
联合会委托赞助队派出的ＲＧ-一〇。

　横锻·超级猎犬位列第三。
　接下来按顺序是沙鱼、镰仓松井、壁虎的队伍，之后
是小队伍与个人参赛者们以极相近的成绩依次排列。田
村也在其中。

　果然装甲竞技中团队依然是压倒性的强大。

　警察队位列十四。
　不管怎样也算是奋斗过了。不过大概是还不满足吧，
他们的爱骑热狗到现在还在挑战。

　因为明天的决赛中各队起点位置是按今天的顺序来
决定的，因此也不是毫无意义。
　不过，这样还是太勉强了。要是发生事故就得不偿
失了。我觉得是时候了……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwさよ_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180010a04">
「田村把速度降低了。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180020a03">
「哎呀，真的呢。
　是要加油吗？　可是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_鎧_アベンジ加速01");

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　视线转向正低语着的两人。
　田村的新骑体逆袭骑现在正要转过最后的弯道。

　原来如此，看起来它把速度降得过低了。可能是要去
加油了。
　不过田村应该已经回过一次检修站了。

　经过超过一定程度的长时间竞速，由于保证高速度的
补助推进器的燃料耗尽，必须要进检修站加油。
　不过，只要不是非常长的路程是不需要进两次的。

　或许是发生了从外表看不出的某种突发事故？

　一边作此想象，一边关注着蓝色骑体的行动。

　它并没有——去检修站。

　而是滑入了直道。

　接着……

//◆噴射音／爆音。
{	Fade("フラッシュ白",0,1000,null,true);
	FadeDelete("フラッシュ白", 800, false);
	MusicStart("SE01",0,800,0,1000,null,false);}
　<RUBY text="···">爆炸了</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180030a00">
「————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　刹那间，幻觉填满了我的视界。
　补助推进器的故障。高挥发性燃料遇火爆炸。爆炸卷
入无机物与有机物将炸成粉末的碎片撒向赛道——

　这是幻觉。
　只不过是大脑被有如爆炸声的喷射音所搅乱而在眼前
映出的虚象。

　实像是<k>
　　　　　　　　　　　闪光。

　<RUBY text="······">金属蓝的闪光</RUBY>。
　正在直道上飞驰。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ·ダッシュ。
//◆技名をつけるとライトニングなんちゃら。
//嶋：EV指定：ev906_アベンジ走行_b.jpg

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateTextureEXadd("絵EV300", 3000, Center, Middle, "cg/ef/resize/ef023_アベンジ_直進_l.jpg");
	CreateColorEXadd("絵色100", 1500, "White");

	Rotate("絵EV300", 0, @0, @0, @-32, null,true);
	Move("絵EV300", 0, @-200, @+60, null, true);
	SetBlur("絵EV300", true, 3, 500, 200, false);

	CreateTextureEX("絵EV10", 1000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵EV100", 10000, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureEX("絵EV200", 1500, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");

	SetBlur("絵EV200", true, 3, 300, 100, false);

	Request("絵EV100", Smoothing);

	CreateTextureEX("Rollbg001", 100, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	Fade("Rollbg001", 0, 1000, null, true);

	CreateTextureEX("Rollbg002", 100, InLeft, Middle, "cg/bg/bg038_サーキット真横a_01.jpg");
	Fade("Rollbg002", 0, 1000, null, true);

	CreateSCR1("@Rollbg001","@Rollbg002",500,-4000, @0);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

	Fade("絵色100", 0, 500, null, false);
	Move("絵EV300", 500, @+500, @0, Dxl1, false);
	Fade("絵EV300", 500, 1000, null, false);
	DrawTransition("絵色100", 250, 0, 600, 100, null, "cg/data/slide_05_00_1.png", true);
	Fade("絵EV300", 250, 0, null, false);
	DrawTransition("絵色100", 250, 600, 0, 100, null, "cg/data/slide_05_00_1.png", true);

	Wait(100);

	CreateSE("SE01","se特殊_陰義_磁力加速03_L");
	MusicStart("SE01",300,1000,0,1000,null,true);

	Shake("絵EV100", 5000000, 2, 1, 0, 0, 1000, null, false);
	Fade("絵EV10", 300, 1000, null, false);
	Fade("絵EV200", 300, 700, null, false);
	Zoom("絵EV200", 1000, 2000, 2000, null, false);
	Move("絵EV200", 1000, @+300, @0, null, false);
	Fade("絵EV100", 500, 1000, null, true);
	Fade("絵EV200", 1000, 0, null, false);

	CreateColorEX("絵暗転", 30000, "#000000");

	Wait(1000);

	SetVolume("SE01", 1500, 0, null);

	Fade("絵暗転", 1000, 1000, null, true);

	PrintGO("上背景", 30000);

	SCR1stop();
	Delete("@Circuit*");

	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

//◆貴賓席
	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0180040a08">
「什……」

{	FwC("cg/fw/fw茶々丸変装_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0180050a07">
「哟！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピット？
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw皇路_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180060b24">
「操——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180070a03">
「啊——」

{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180080a02">
「诶——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵k100", 1000, -1608, -426, "cg/bg/bg038_サーキットカーブ_01.jpg");
	CreateTextureEX("絵k200", 2000, -1608, -426, "cg/bg/bg038_サーキットカーブ_01 アーチ02.png");


	Move("絵k200", 2000, @-1320, @+200, Dxl1, false);
	Move("絵k100", 2000, @-1320, @+200, Dxl1, false);
	Fade("絵k200", 500, 1000, null, false);
	Fade("絵k100", 500, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　甚至连说句话都没空。
　若是看到投手站在投球板上投出的一百四十公里的快
球突然变成了子弹的话，拥有正常理智的人都应该会说
点什么——

　正想着，直线奔驰的蓝光进入了弯道。
　通过气刹车减速——<k>不够！无论如何都不够！用那么
高的速度是无法转弯的！

　会撞上——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆コーナーリング
	CreateTextureEX("絵ef100", 3000, 0, -576, "cg/ef/resize/ef023_アベンジ_カーブ_l.jpg");
	SetBlur("絵ef100", true, 3, 500, 50, false);

	Fade("絵ef100", 200, 1000, null, false);

	OnSE("se特殊_鎧_アベンジ_爆走01",1000);

	BezierMove("絵ef100", 1000, (@0,@0){-512,-576}{-756,-400}(-1024,-211){-756,-150}{-256,-100}(0,-40), Dxl1, false);

	Wait(900);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");

	Fade("フラッシュ白",500,0,null,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　——强行过弯了。
　竭尽全力。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw香奈枝_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180090a03">
「怎么可能，太蠢了……」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180100a04">
「大小姐，您太粗鲁了……」

{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180110a02">
「……一般来说，不是会空中解体吗？
刚才那个……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　真是厉害的过弯。
　没有最短距离也不是最少效率。

　然而……总之它顺利过弯了。
　以那超高速度。

　那不是奇迹。
　尽管难以置信，不过可以称得上粗暴的激烈飞行仍然
继续着。

　Ｓ形弯。
　缓坡。
　１３０度弯道。

　对于阻拦的关门，田村·逆袭骑无视减速这一必要代
价跑完了，全程通过了。
　惨不忍睹。

　如此残酷。
　如此丑恶。
　如此低劣。

　如此高速度的装甲骑手——
　过去曾经存在过吗。

　能够断定。
　这样的人从没有过。

　如此——
　恶魔般的骑手哪里都不曾存在过。

　疾驰于长直道上。
　快到别说是一次呼吸的时间了，连眨眼的时间都没有。

　进入Ｕ形弯……
　<RUBY text="···">通过了</RUBY>。

　曾经驯服了所有骑手并使他们臣服，且只允许对方低
头恭敬地通过的这个急弯的权威，在这位反叛者面前行
不通。
　将一切礼仪抛开，她征服了弯道。

　如今已不再适合用奔驰这一形容词了。
　她正在碾碎这赛道。以强大的力量。

　那是——
　单纯的暴力。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピット
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg037_競技場ガレージb_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw皇路_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180120b24">
「就是它……
　就是它！」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180130b24">
「我想造的就是它。」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180140b24">
「我想造的就是<RUBY text="·">它</RUBY>啊!!」

//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180150b24">
「这样一来，就能超越了……
　超越世界……」

{	FwC("cg/fw/fw皇路_怒り.png");}
//【皇路】
<voice name="皇路" class="皇路" src="voice/ma03/0180160b24">
「我能够——超越世界!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆アベンジ
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg038_サーキット直線_01.jpg");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	CreateTextureSP("絵背景200", 200, Center, Middle, "cg/ev/ev906_アベンジ走行_b.jpg");
	Shake("絵背景200", 5000000, 2, 1, 0, 0, 1000, null, false);
	FadeDelete("上背景", 500, true);
	OnSE("se特殊_鎧_アベンジ_爆走01",1000);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw操_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【操】
<voice name="操" class="操" src="voice/ma03/0180170b42">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆観客席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw香奈枝_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180180a03">
「……尾翼在<RUBY text="··">变化</RUBY>着……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180190a00">
「大尉阁下？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180200a03">
「它在动。
　它的后尾翼在动。就在进入弯道时……」

{	FwC("cg/fw/fw香奈枝_笑顔.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180210a03">
「它将会吹走骑体的气流给击散了。
　……很可能。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180220a00">
「…………
　这么说来，我曾经听说过。」

//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180230a00">
「我曾听过<RUBY text="···">可变式</RUBY>尾翼支架这一构想。
　没想到会有人把它给实用化了……」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180240a04">
「力量过强的中枢设计。
　流线型的装甲。
　低角度的避震器。
　可变式尾翼……」

//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180250a04">
「结果就是在直道上的爆冲与
几乎随心所欲的过弯能力。
　……真是过分的骑体啊。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180260a00">
「不过它确实具有<RUBY text="··">思想</RUBY>。」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180270a03">
「是的。」

{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180280a02">
「我也能明白。
　……那台骑体想要倾诉。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　逆袭骑刚刚过了最后的弯道。
　回到了直道……疾驰着，冲过了基准线。

　成绩————

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180290a02">
「<RUBY text="·····">快的话就行</RUBY>。
　这是唯一标准。只考虑这一点……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　一分二十六秒〇八。
　田村的逆袭骑建立起了仅次于翔京的理想号
的第二名的成绩。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆貴賓席
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 500, true);
	FadeDelete("絵暗転", 500, true);

	SetFwC("cg/fw/fw雷蝶_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0180300a08">
「…………」

{	FwC("cg/fw/fw茶々丸変装_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/ma03/0180310a07">
「怎么样？」

{	FwC("cg/fw/fw雷蝶_不興.png");}
//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0180320a08">
「哼、哼。
　没关系……这样看来明天的
决赛也会变得有趣点。」

//【雷蝶】
<voice name="雷蝶" class="雷蝶" src="voice/ma03/0180330a08">
「吾可是很开心它为吾的大会锦上添花哦。
　表扬田村的奋斗吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
	WaitKey(400);

	SetNwC("cg/fw/nw高級士官.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【ｅｔｃ／雷蝶部下】
<voice name="ｅｔｃ／雷蝶部下" class="その他男声" src="voice/ma03/0180340e284">
「……哼。
　这可不行。这在预料之外……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆転換
	ClearWaitAll(2000, 1000);

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg039_競技場客席a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180350a00">
「……唔？」

{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/ma03/0180360a02">
「怎么了？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　在无比兴奋的观众席中。
　我忽然眯起眼睛，望向离这里最远的发夹弯。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180370a00">
「——发生事故吗？」

{	FwC("cg/fw/fwさよ_通常b.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180380a04">
「冒烟了呢。是扎进沙土障碍了吗。
　好像不是什么严重事故……」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180390a03">
「哎呀？」

{	FwC("cg/fw/fwさよ_通常a.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma03/0180400a04">
「大小姐？」

{	FwC("cg/fw/fw香奈枝_通常b.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180410a03">
「…………」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180420a00">
「大尉。怎么了？」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180430a03">
「景明大人。
　……那个……」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma03/0180440a00">
「是。」

{	FwC("cg/fw/fw香奈枝_悩む.png");}
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma03/0180450a03">
「那是警察队。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma03_019.nss"