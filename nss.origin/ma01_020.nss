//<continuation number="250">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_020.nss_MAIN
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
	#bg019_廃校教室_01=true;
	#ev105_倒れた小夏_e=true;
	#ev105_倒れた小夏_f=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma01_021.nss";

	//★リコレクション用★★★★★★★★★★★★★★★
	ReConquest();
	#ma01_020=true;
	if($PLACE_reco){
		RecoOut();
	}
}

scene ma01_020.nss
{
	$スクリプトバージョン = "  Version $Revision: 28 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
if(!$PLACE_reco){
//============================================
..//ジャンプ指定
//前ファイル　"ma01_019.nss"

	SoundPlay("@mbgm29",1000,1000,true);

//◆廃校内
	PrintBG("上背景", 30000);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	FadeDelete("上背景", 1000, true);

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
}else{
	//状態定義
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");

	//リコ背景抹消
	RecoIn();
	SoundPlay("@mbgm29",1000,1000,true);
}
//========================================================


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200010b57">
「稻城。
　接下来是对你的指令。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200020b57">
「强暴来栖野。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　听到了这样的声音。

　忠保迟缓地抬起头。
　用空洞的眼神，望着命令者。

　纯银的——未沾一丝血迹的刀尖正指向头顶。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200030b57">
「不做的话，就是<RUBY text="·····">同样的下场</RUBY>。
　怎么办？」

{	FwC("cg/fw/fw忠保_怯え.png");}
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0200040b43">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　看看刀尖。
　看看小夏。
　然后看向散落一地的<RUBY text="···">不明物</RUBY>。

　忠保缓缓动了起来。
　四肢匍匐地，爬向小夏的身体。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200050b57">
「……这就对了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　颔首，低语。
　忠保背对着这一切，俯视着雪白的胴体。

　毫发无伤，
　——<RUBY text="··············">没有一样可以称之为伤口的东西</RUBY>——
　小夏的肉体。

　静静横躺在那里的白色的那个。

{	OnSE("se人体_動作_ベルト外す",1000);}
　忠保的皮带叮啷作响。
　不受控的手指，似乎光是解开锁扣就相当困难。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200060b57">
「痛苦可以忍受。
　死的恐惧也可以抵抗。
　然而，<RUBY text="······">身体受到破坏</RUBY>的恐怖
却与那些有着本质不同。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200070b57">
「痛苦终有尽头。
　死亡只是转瞬。
　可是肉体的破坏对一个人的未来而言
却是永远逃不掉的诅咒。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200080b57">
「肉体受到破坏之人，未来已被剥夺，
却不得不继续存活于世。
　那究竟意味着什么。健全的人绝对无法理解，
不过倒容易想象。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200090b57">
「那便是最大的恐怖之一。
　倘若此人将未来托付与自己的身体，
则尤为甚。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200100b57">
「……你想做装甲骑手吧，稻城。
　手脚哪怕只失去一个指头，
通向未来的那扇大门也彻底关上了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　忠保的呼吸粗重起来。
　那并不是出于兴奋，一目了然。
　脸上毫无血色，青白一片。

　他解开皮带。
　粗暴地，仿佛要将裤子撕成碎片一般。

　褪下衣服，掏出分身。
　然后压向视线下的身体。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se人体_動作_抱く01",1000);

	CreateTextureEX("絵ＥＶ510", 5100, -1225, -440, "cg/ev/resize/ev105_倒れた小夏_el.jpg");
	Move("絵ＥＶ510", 1200, @0, -730, DxlAuto, false);

	Fade("絵ＥＶ510", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0083]
　他抓住小夏的腰，拉近自己腰间。
　忠保拼命扭动着。

　仿佛在经历一场恶战一般。
　相当不顺利的模样。

　理所当然吧。
　忠保的男茎，完全无力。
　不是能发挥机能的状态。

　软绵绵的一根，向小夏的身体中硬挤的千辛万苦模样，
简直像被逼到走投无路一般，
　让人总觉得，十分滑稽。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

	SetBacklog("　　　　　　「曲位曲宇。」", "voice/ma01/0200110b57", 鈴川);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200110b57">
　
　　　　　　「曲位曲宇。」

</PRE>
	SetTextEXC();
	Request("@text0090", NoLog);
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_陰義_発動04",1000);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 300, 1000, null, true);
	Wait(100);

	Delete("絵ＥＶ*");

	FadeDelete("絵フラ", 300, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　铃川吟诵出一句奇妙的咒文。
　手指指向急躁不安的身体。

　刹那间，忠保猛地身体后仰。
　仿佛体内有什么涨跃而起。

　——或者说事实也是如此？

　忠保的阳物直指屋顶。
　骤然间，是怎样的作用使血液充盈其中的呢。
　本来萎靡之物，如今巍然屹立。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200120b57">
「继续下去。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　那并不是因为雄性本能突然觉醒了吧。
忠保看着自己哑口无言，铃川在他背后
出声催促道。
　这样一来便没有阻碍了。传达着这样的含义。

　忠保的目光落向小夏大腿内侧。
　丝毫没有濡湿的私处。

　全然干燥的那里，一看便是在拒绝着入侵。
　轻声漏出喘息。

　忠保探出舌头。
　靠近小穴。

{	CreateSE("SE01","se人体_血_吐血01");
	MusicStart("SE01",0,1000,0,1250,null,false);}
　吸吮着股间。

　呷弄。
　含吮。
　往复舔舐。

　舌头胡乱地蠕动，忠保蹂躏着私处。
　嘴角唾液溢出。
　溢出的唾液润湿着小夏的孔穴。

　水声响起。
　未熟的私处，和一味将其舔舐的口唇。

　小夏没有流露任何反应。
　唯有视线在昏暗中游离。

　忠保同样视线涣散。
　仿佛在看着眼前事物，却什么也没看。
　一味机械重复着，找寻不到心魂所在的空洞动作。

　——我终于意识到，这是一场人偶剧。

　不是<RUBY text="Ｐｌａｙ·Ｗｉｔｈ·Ｄｏｌｌ">与人偶游戏</RUBY>。
　而是<RUBY text="Ｄｏｌｌ·Ｗｉｔｈ·Ｄｏｌｌ">人偶间的游戏</RUBY>。

　机械操控的人偶剧。
　空洞虚无的空虚游戏。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200130b57">
「稻城。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　发条上紧的声音。

{	CreateSE("SE01","se人体_動作_抱く01");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　忠保抬起身体，再度将男性性器贴向膣口。
　这次双方的<RUBY text="··">构造</RUBY>都不再有问题。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵ＥＶ100", 5000, Center, Middle, "cg/ev/ev105_倒れた小夏_e.jpg");
	Fade("絵ＥＶ100", 600, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0142]
　猛然突入。
　猛然吞入。

　男器半截被纳入收纳口。
　尺寸并不相合，却强硬勉强地。

　无机般接触。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　可是不知为何。
　有一丝血渗出。

　没有声音。
　两人都沉默着。

　忠保向着更深的深处突入。
　直到到达极限，才渐渐停止。

　压在小夏身体上的忠保。
　仰视忠保的小夏。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　身体紧紧相连，眼睛互相注视，
　然而谁的眼中却都没有映出对方。

　玻璃珠般的瞳仁。
　人偶的。

　忠保拔出突入之物。
　濡湿的，被什么涂染成赤红。

　拔出直到露出尖端，然后就那样再次突入。
　一口气，到达深处。

　小夏的身体在摇动。
　胸前的丘陵起伏。

　那是游戏。

　忠保插入，拔出，再插入。
　小夏摇动，摇动，再摇动。

　跷跷板。
　——嘎吱，嘎吱。

　一遍一遍地重复。
　委身于发条的控制。

　两尊相处融洽的人偶。
　相当愉快地持续游戏。

　直到发条断裂。
　直到机械演奏终止。

　就这样，不知是第几次向小夏的深处突入。
　忠保的后背一阵悸动。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorSP("絵射精", 10000, "#FFFFFF");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　喷射出来。
　在小夏体内。

{	Fade("絵射精", 1000, 0, null, false);}
　是男性的本能吗。
　触碰着最深处，直到最后一滴。

//{	Fade("絵射精", 0, 1000, null, false);}
　持久的射精。
　或许长达十秒有余。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg019_廃校教室_01.jpg");
	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0173]
　踉跄着，忠保离开抱过的身体。
　曾经插入的物体拔出。

　零落的白色液体从连接的痕迹处溢出。
　混杂着红色的，白。

　凌辱的证据。

　忠保眺望着那些。
　小夏什么也没看。

　就那样，一动不动。
　断了线的人偶。

　游戏结束。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200140b57">
「还不够。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　宣告之声。
　如人偶般空洞，却又具备着人偶未有的思想之声。

　人偶提线掌握者的声音。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200150b57">
「彻底玷污。——缲来里。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_陰義_発動03",1000);
	CreateColorEXadd("絵フラ", 10000, "#FFFFFF");
	Fade("絵フラ", 300, 800, null, true);
	Wait(100);
	FadeDelete("絵フラ", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　再次响起怪异的咒句。
　那手指所指向的，果然仍是忠保。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0200160b43">
「……唔……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　呻吟从嘴边洩出。
　力量又回到股胯肉间。

　然而这次，模样稍微有些不同。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw忠保_虚脱.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0200170b43">
「啊……啊啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　伴着艰难的喘息，忠保抬头望向武者。
　仿佛在寻问。

　没有回答。
　然而，是俯视的双眼发出了无声的命令吗。

　忠保的视线落向小夏。
　单手握住自己的那里。

　猛然举起的，那个。
　是司空见惯的生理现象前兆。

　——膨胀，随后喷泻而出。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se日常_水_排泄音小");
	MusicStart("SE01",0,1000,0,800,null,false);

	CreateColorSP("絵白", 6000, "#FFFFFF");
	CreateTextureSP("絵ＥＶ510", 5100, Center, Middle, "cg/ev/ev105_倒れた小夏_f.jpg");
	FadeDelete("絵白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　黄色的飞沫。
　以迅猛之势射出的液体。

　向着小夏。
　向着那身体倾注而下。

　氨的臭味在室内弥漫开来。

　停不下来。
　忠保的尿气势渐增。

　小夏无法动弹。
　别无他法，唯有全部接受。

　全身各处淋遍排泄液。
　胸前，腹部，甚至是脸上。

　浊液排放的最终朝向为嘴边。
　向着半开着的那里，毫不留情地注入。

　喉咙发出咕咚的声响。
　对强制的水分注入，肉体作出了反应。

　有些反吐而出，
　有些与之相反。

　喉咙仍在作响。
　将小便饮下。

　忠保的释放停止了。

　就那样，两人的动作停止。
　寂静————十秒，二十秒。

　三十秒。

　呜咽声泄露。

　四十秒。

　渐渐，哭泣开始。

　六十秒。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＶ*", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　——歇斯底里地，号哭起来。

　哇哇大哭。
　以无助的生灵之声。

　暴虐，被尽施以暴虐极致的小夏
　……哭泣着。

</PRE>
	SetTextEXC();

//============================================
//★リコレクション用★★★★★★★★★★★★★★★
	if($PLACE_reco){
		TypeBeginCIO();//―――――――――――――――――――――――――――――
		RecoReturn();
	}else{
		TypeBeginCI();//―――――――――――――――――――――――――――――
	}
//============================================



	SetFwC("cg/fw/fw忠保_怯え.png");
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0271]
//【忠保】
<voice name="忠保" class="忠保" src="voice/ma01/0200180b43">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0272]
　一脸呆滞的表情，忠保听着那声响。
　那是对步步逼近的名为理解的恐怖，拼命拒绝的模样。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/3d真改_立ち_抜刀.png");
	CreateSE("SE01","se特殊_鎧_装着01");
	MusicStart("SE01",0,1000,0,600,null,false);
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0274]
　在那里，黄铜色的甲铁伫立着。

//{	OnSE("se戦闘_攻撃_刀振る01",1000);}
　手中缓缓举起太刀。
　
　茫然的视线追寻着轨迹。

　向着，那双眼。
　刃尖砍去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵EF10", 10000, Center, Middle, "cg/ef/ef015_汎用横軌道.jpg");
	OnSE("se戦闘_攻撃_刀振る01",1000);
	Fade("絵EF10", 500, 1000, null, true);
	Fade("絵EF10", 500, 0, null, true);
	Delete("絵EF10");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0275]
　银光，笔直。
　削过软质球体将其切开。

{	OnSE("se人体_衝撃_転倒01",1000);}
　忠保仿佛被弹起般向后仰去，
　就那样滚倒在地。

　双手捂住脸的上半部分，惨叫。
　发出形不成含义的言语。

　——这一瞬间，是为失去的未来哀叹。

{	OnSE("se人体_血_たれる01",1000);
	CreateTextureSP("絵ＥＦ15", 15000, Center, Middle, "cg/ef/ef004_汎用血雫.jpg");}
　有什么从指缝间溢出。
　血，和其他的体液。

　忠保惨叫着。
　——为自己成为盲人的初始。

　那不久，就带上眼泪，饱含呜咽。

　教室。
　被双重的恸哭充满。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＦ*", 1000, true);

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200190b57">
「这便是崩溃。
　美丽之物的崩溃。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　铃川在讲述。
　造成这恸哭的元凶。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200200b57">
「欲望与恐惧使友人之间羁绊腐朽。
　蛮横专断的暴力将未来之梦击溃。
　多么脆弱。只是如此程度。
所谓美丽形态之物……！」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200210b57">
「叹息吧！
　为失去的美好叹息吧！
　为美好的无力叹息吧！
　除了叹息之外无能为力——对于我们来说！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　在奏响的悲叹之乐中，武者仿佛指挥者般双手举高，
高喊着。他自身是否也在装甲深处，
流下了一行清泪呢。我似乎感觉到他
咬紧了牙关，吞咽下苦痛。

　这便是铃川最后的教导。

　将这世间充满恶意之事。
　毫无慈悲之心之事。

　居于这世间的众人，
　皆被绝望束缚，之事。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。レッドフラッシュ
	Wait(2000);
	CreateColorSP("鼓動", 10000, "#CC0000");

	OnSE("se人体_体_心臓の音02",1000);
	SetVolume("@mbgm*", 2000, 800, null);

	Fade("鼓動", 1400, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　——是什么。
　那个。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。レッドフラッシュ
	Fade("鼓動", 0, 1000, null, true);

	OnSE("se人体_体_心臓の音02",1000);
	SetVolume("@mbgm*", 2000, 600, null);

	Fade("鼓動", 1400, 0, null, false);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　……听到了哭泣的声音。
　冲击耳膜的声响。刺痛胸口的声响。

　小夏在哭泣。
　哭泣着。

　明明不想，让她那样哭泣的。

　却把她弄哭了。
　为什么。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。レッドフラッシュ
	Fade("鼓動", 0, 1000, null, true);

	OnSE("se人体_体_心臓の音02",1000);
	SetVolume("@mbgm*", 2000, 400, null);

	Fade("鼓動", 1400, 0, null, false);


	SetFwC("cg/fw/fw真改_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200220b57">
「叹息吧——为这噩梦。为这绝望。
　然而没关系。马上就让你解脱……
只要这么做，你们就再无需哀叹。」

//【鈴川】
<voice name="鈴川" class="鈴川" src="voice/ma01/0200230b57">
「永远地……保持着美丽。
　长眠吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ドクン。レッドフラッシュ
	Fade("鼓動", 0, 1000, null, true);

	OnSE("se人体_体_心臓の音02",1000);
	SetVolume("@mbgm*", 2000, 200, null);

	Fade("鼓動", 1400, 0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　……什么啊那是。

　噩梦？
　绝望？

　什么啊——那玩意。
　什么鬼东西啊。

　不可笑吗？
　不管怎么说，都太可笑了啊喂。

　脑袋里乱七八糟，
　在像被火钳突刺着一样的剧痛里，
　完全不是能正常思考事情的状态。

　但是你啊，不觉得，哪里搞错了吗？
　铃川老师。

　难道不是教了我们一个弥天大谎吗？
　喂，教师。

　因为啊——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン。レッドフラッシュ
	Fade("鼓動", 0, 1000, null, true);

	OnSE("se人体_体_心臓の音02",1000);
	SetVolume("@mbgm*", 2000, 0, null);

	FadeDelete("鼓動", 1400, false);
	SoundPlay("@mbgm34",0,200,true);
	SetVolume("@mbgm34", 10000, 600, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　听着小夏的恸哭。
　听着忠保的恸哭。

　就这样，有什么从胸中涌起。
　……这就是，绝望？

　看着小夏的凄惨模样。
　看着忠保的凄惨模样。

　有什么从胸中涌起。
　……绝望？

　你说，这就是，绝望？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw雄飛_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0200240b56">
（不对）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm34", 10000, 1000, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　心中低语着确信。

　在体内充溢盘旋的这个，
　断然不是什么绝望。

　——绝望？

　就是这么回事吧。
　迟早我们都会变成这样，所以趁现在放弃吧乖乖去死吧，
你是想这么说吧。

　铃川。
　是这样吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	PrintGO("上背景", 15000);
	CreateColorSP("絵暗転", 50, "#000000");
	DrawDelete("上背景", 1000, 100, "circle_02_00_0", true);

	SetFwC("cg/fw/fw雄飛_沈むa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【雄飛】
<voice name="雄飛" class="雄飛" src="voice/ma01/0200250b56">
「……开、玩笑……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

..//ジャンプ指定
//次ファイル　"ma01_021.nss"
