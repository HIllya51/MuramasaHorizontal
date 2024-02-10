//<continuation number="190">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_022.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_022.nss","Fall",true);
	Conquest("nss/ma04_022.nss","Egg",true);

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
	#bg043_江ノ島山林_03 = true;
	#bg001_空c_03 = true;

	#ev101_プロローグ_a = true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma04_022.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_021.nss"

.//●１９

//◆村正方面
//◆倒れるガーゲット少佐
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	Delete("上背景");

	CreateSE("SE01","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	WaitKey(1200);

	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　——杀掉了——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【光】
<voice name="光" class="光" src="voice/ma04/0220010a14">
「真可惜啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ひゅー、どごんどごん。
//◆竜騎兵が落ちてくる。

//プロセスの定義
	CreateTextureSP("絵落下震", 200, Center, Middle, "cg/bg/bg043_江ノ島山林_03.jpg");
	CreateProcess("プロセス落下", 5000, 0, 0, "ma04022_fall");
	SetAlias("プロセス落下","プロセス落下");

//プロセススタート
	Request("プロセス落下", Start);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　突然。
　有什么从天而降——

　ＧＨＱ的龙骑兵！
　他们接二连三地、如同陨石一般不停坠落。

　在狠狠砸到地面之前，他们便已然全部气绝。

　头被扭断，或惨遭纵劈。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@SE*", 5000, 0, null);
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,800,0,1000,null,false);

	CreateTextureEX("絵ＥＦ", 5000, -880, -412, "cg/ev/resize/ev101_プロローグ_a.jpg");
	Move("絵ＥＦ", 6000, @0, -86, DxlAuto, false);
	Fade("絵ＥＦ", 1000, 1000, null, false);
	Delete("プロセス*");

	SetFwC("cg/fw/fw村正武者_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220020a00">
「……银星号！」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/0220030a14">
「棋慢一招呢。
　……这次的游戏是我赢了，景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Delete("絵落下*");
	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStR(0,true);

	FadeDelete("絵ＥＦ", 1000, true);
	SoundPlay("@mbgm37",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　仰望的尽头，是映衬在夜空的银月。
　银星号就在那个尽头。

　剔透的翅膀未曾拍打。
　却违反常理地<RUBY text="··">续航</RUBY>着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【光】
<voice name="光" class="光" src="voice/ma04/0220040a14">
「这是第一次呢……
　我很期待。接下来，会以何种姿态
<RUBY text="··">出生</RUBY>呢？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/0220050a01">
《主君……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　银星号那毫不掩饰<RUBY text="····">兴奋期待</RUBY>的声音，
　以及与其相反的，冰冷的剑胄传音。

　我明白了。
　所发生的一切。

　有什么要<RUBY text="···">开始了</RUBY>吗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);

	CreateColorEXadd("絵卵光", 500, "#FFFFFF");
	DrawTransition("絵卵光", 0, 100, 250, 200, null, "cg/data/circle_13_00_0.png", true);

//プロセスの定義
	CreateProcess("プロセスエッグ", 1000, 0, 0, "Egg");
	SetAlias("プロセスエッグ","プロセスエッグ");

//プロセススタート
	Request("プロセスエッグ", Start);
	FadeDelete("上背景", 300, true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220060a00">
「——！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我凝视着他。
　进驻军将校的尸体。

　他已经停止呼吸。
　然而。

　他的胸口，有种奇怪的脉动。
　他的装甲，有种异样的光芒。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220070a00">
「——啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110a]
　<RUBY text="····">来不及了</RUBY>!!

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆白銀閃光
	CreateSE("SE01","se特殊_陰義_発動03");
	MusicStart("SE01",0,1000,0,1300,null,false);
	CreateColorSPadd("絵白", 5500, "#FFFFFF");
	Delete("プロセス*");
	Delete("絵卵光");
	FadeDelete("絵白", 800, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110b]
　他开始，蜕变。

　剑胄<RUBY text="····">源源不断</RUBY>地将自身卷入内部。
　和其中的肉体一同被卷入进去。

{	CreateSE("SE02","se人体_体_骨複数砕ける01");//ダミー注意
	MusicStart("SE02",0,1000,0,1000,null,false);}
　……源源不断。
　……扑哧扑哧。

　像纸工艺品一般被卷起，
　成为漂亮绮丽的白银色球体。

　然后继续蜕变。

　一层层地，向外延伸。
　伸出<RUBY text="··">手脚</RUBY>。

　长出<RUBY text="··">头部</RUBY>。
　现出<RUBY text="··">脊背</RUBY>。

　最终出现的，是和原来一样的人形。

{	CreateSE("SE03","se特殊_その他_零零式孵化");
	MusicStart("SE03",0,1000,0,1000,null,false);}
　不过身体小了一圈。
　容貌也完全不同。

　亮泽的黑发。
　童稚而可爱的外貌。
　银色的装甲——

　白银的少女。

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//――――――――――――――――――――――――

//◆八剣姫番外、グレイワンド

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　……那名少女。
　看着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


//◎べー：ボイスなしとのことでタグ消去

	SetFwC("cg/fw/fw灰色の杖_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//◆ボイスはいらん。
//（灰色の杖）
<voice name="灰色の杖" class="その他女声" src="voice/ma04/0220079z00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　她如此高兴地——
　微笑着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆過去の光カット挿入
//あきゅん「演出：回想カットは適当です」
	CreateColorSP("絵白", 8500, "#FFFFFF");
	CreateTextureSP("絵ＥＦ１", 1000, Center, Middle, "cg/ev/ev133_兜割に挑む光_a.jpg");
	Wait(10);

	Fade("絵白", 0, 0, null, true);
	Wait(100);

//◆一度ブラックアウト。シーン切り
	Fade("絵白", 0, 1000, null, true);
	Wait(1);
	ClearWaitAll(2000, 4000);


.//●１９．５
//◆精神汚染波発散
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureSP("絵ＥＦ", 5000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateSE("SEL01","se特殊_その他_渦巻く力");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 1000, "wave_01_00_0", true);

	WaitKey(1000);


//◆銀星号
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常b.png");
	FadeStR(0,true);
	Fade("絵ＥＦ", 1000, 0, null, true);
	SoundPlay("@mbgm01",0,1000,true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【光】
<voice name="光" class="光" src="voice/ma04/0220080a14">
「呣——呣！
　真是漂亮的女孩。无可挑剔。」

//【光】
<voice name="光" class="光" src="voice/ma04/0220090a14">
「赐予你“灰色之杖”之名。
　来吧……歌唱吧！」

//【光】
<voice name="光" class="光" src="voice/ma04/0220100a14">
「与母亲一同！
　歌唱这威武的战歌！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆汚染波発散
	CreateTextureEXmul("絵ＥＦ２", 5000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,750,null,false);
	Zoom("絵ＥＦ２", 0, 1200, 1200, null, true);
	DrawEffect("絵ＥＦ２", 3600000, "Ripple", 200, 200, null);
	Fade("絵ＥＦ２", 1000, 750, null, true);
	Fade("絵ＥＦ", 1000, 1000, null, true);

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220110a00">
「——啊——
　啊、啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 3000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……污染波被散布。
　<RUBY text="··">双重</RUBY>地。

　我没关系。

　龙骑兵已死。

　卡杰特少佐也已不在。

　只剩下。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStA(0,true);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Fade("絵ＥＦ２", 1000, 400, null, false);
	FadeDelete("絵ＥＦ", 1000, false);

	SetFwC("cg/fw/fw芳養_発狂.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆狂相
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0220120b48">
「————」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220130a00">
「啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se擬音_粘着質_ゲル潰れる03_L");
	MusicStart("SEL01",2000,700,0,750,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　在牢笼中。
　少年芳养。

　化为禽兽，袭击血亲。

　口水滴落，发出意义不明的怪声。
　切碎。撕裂。剜挖。

　扑哧扑哧，嘶啦嘶啦——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SEL01", 1000, 0, null);

//◆回想
	CreateColorEXadd("絵白", 10000, "#FFFFFF");
	Fade("絵白", 600, 1000, null, true);
	Delete("絵ＥＦ２");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);
	CreateTextureSP("絵回想背景", 6100, Center, Middle, "cg/bg/bg041_片瀬海岸_01.jpg");
	StL(7000, @0, @0,"cg/st/st芳養_通常_私服.png");
	StR(7000, @0, @0,"cg/st/st景明_通常_私服.png");
	FadeStA(0,true);
	Fade("絵白", 300, 0, null, true);

	SetFwC("cg/fw/fw芳養_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/0220140b48">
「如果连我这种孩子都照样雇佣，要么
是工钱很少，要么就是什么不好的勾当。
　世道艰难啊。就算这样还是得让小鬼
们填饱肚子。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白", 400, 1000, null, true);
	Delete("絵回想*");
	DeleteStA(0,true);
	FadeDelete("絵白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　弟弟们也好，
　妹妹们也罢，
　
　都一样地，

　拳打。
　脚踢。
　啮咬。
　碾碎。

　贪寻着兄弟姐妹的血肉。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆↓二台詞、呆然と。抑揚なく。
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220150a00">
「住手。」

//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220160a00">
「住手啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　徒劳地呢喃。
　其实自己也不知道有没有发出声音。

　他们还在继续。
　沉浸在牢笼内的盛宴之中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆汚染波
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 1000, null, true);
	WaitKey(100);
	CreateTextureSP("絵ＥＦ", 3100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateColorEX("絵薄黒", 3110, "#000000");
	Fade("絵薄黒", 0, 600, null, true);
	FadeDelete("絵フラ", 600, true);

	WaitKey(400);

	CreateTextureEX("Gin_song19", 4600, Center, Middle, "cg/sys/telop/tp_銀星号の唄21.png");
	CreateTextureEX("Gin_song20", 4600, Center, Middle, "cg/sys/telop/tp_銀星号の唄22.png");
	CreateTextureEX("Gin_song21", 4600, Center, Middle, "cg/sys/telop/tp_銀星号の唄19.png");
	CreateTextureEX("Gin_song22", 4600, Center, Middle, "cg/sys/telop/tp_銀星号の唄20.png");


	Move("Gin_song19", 0, @0, @-60, null, true);
	Move("Gin_song20", 0, @0, @-20, null, true);
	Move("Gin_song21", 0, @0, @+20, null, true);
	Move("Gin_song22", 0, @0, @+60, null, true);

	Move("Gin_song19", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song19", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song20", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song20", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song21", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song21", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song22", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song22", 600, 1000, null, false);

	WaitKey();

/*
//あきゅん「演出：プロローグと同じ風にしています」
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
《炎与剑数次之连，环裝扮起百年之生命。》

《为黑暗与静寂所守护的七日之生命，会纯粹地闪耀光辉吧。》

《生命啊，听听这赞歌，重叠起笑至疲惫的怨恨。》

《生命啊，听听这祷告，枕以愤怒颤抖般的喜悦。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

	WaitAction("Gin_song22", null);
	PrintGO("上背景", 25000);
	Delete("Gin*");
	CreateColorSP("絵黒", 3099, "#000000");
	CreateTextureSP("絵ＥＦ", 3100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateColorEX("絵薄黒", 3110, "#000000");
	Fade("絵薄黒", 0, 600, null, true);
	FadeDelete("上背景", 1000, true);

	PrintGO("上背景", 25000);
	OnBG(100,"bg001_空c_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　银星号歌唱着祝福。
　银之少女与之合声。

　响彻天际的二重唱。
　让牢笼中的盛况愈发惨烈。

　少年芳养变得血红。
　兄弟姐妹们也变得血红。
　
　大家全都浑身浴血，已然分辨不出你我。

　要阻止才行。
　要阻止他们才行。

　砍下去就好了。
　杀了这头怪物就好了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆グレイワンド
//◆レイヤー重ね？　光（過去）の姿が重なる
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0220170a00">
「呜——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　不是的。
　不是的。

　一点都不像。
　没有任何共同点。

　她只是怪物。
　只是敌人。

　砍下去。
　砍下去——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵背景100", 20, Center, Middle, "cg/bg/bg001_空c_03.jpg");
	StC(30, @0,@0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStC(0,true);
	FadeDelete("@OnBG*", 300, false);

	SetFwR("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/ma04/0220180a14">
「很可爱吧？
　景明……」

//【光】
<voice name="光" class="光" src="voice/ma04/0220190a14">
「从我和你的“卵”中诞生的女儿！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆ドクン
	SetVolume("@mbgm*", 5000, 750, null);
	PrintGO("上背景", 25000);
	CreateColorSP("絵フラ", 3000, "#FFFFFF");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("上背景");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　 女儿。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン
//◆光出産時の養母画像挿入。一瞬、部分的に
	SetVolume("@mbgm*", 5000, 750, null);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵フラ", 100, 1000, null, true);
	CreateTextureSP("絵ＥＦ", 2900, Center, Middle, "cg/ev/ev008_赤子を抱える女.jpg");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);
	Wait(100);
	Fade("絵フラ", 100, 1000, null, true);
	Delete("絵ＥＦ*");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　女儿——？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ドクン
//◆斬り割られた鎧兜
	SetVolume("@mbgm*", 5000, 0, null);
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵フラ", 100, 1000, null, true);
	CreateTextureSP("絵ＥＦ", 2900, Center, Middle, "cg/ev/ev005_斬り割られた兜.jpg");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);
	Wait(100);
	Fade("絵フラ", 100, 1000, null, true);
	Delete("絵ＥＦ*");
	Wait(10);
	Fade("絵フラ", 100, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　女儿——
　吗？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


}

//◆選択：娘だ／違う

..//ジャンプ指定
//◆娘だ　"ma04_022a.nss"
//◆違う　"ma04_022b.nss"



//★選択肢シーン
scene ma04_022.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("背景０", 0, true);

//■選択肢
	SetChoice02("女儿","不是");
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
//娘だ　"ma04_022a.nss"
				$GameName = "ma04_022a.nss";
		}
		case @選択肢２
		{
			ChoiceB02();
//違う　"ma04_022b.nss"
				$GameName = "ma04_022b.nss";
		}
	}
}



.//プロセス用======================================================

..//落下震動
function Fall()
{
	while(1)
	{
	CreateSound("SEP01", SE, "sound/se/se戦闘_衝撃_衝突01");//ダミー注意
	SetVolume("SEP01", 0, 0, NULL);
	SetAlias("SEP01", "SEP01");
	$RSEtime1 = Random(8);
	$RSE1 = $RSEtime1 * 100;

	Request("SEP01", "Play");
	SetVolume("SEP01", 0, $RSE1, null);
	Request("SEP01", Disused);

	Shake("@絵落下震", 1000, 0, 8, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	$RQtime1 = Random(4) + 2;
	$Fall1 = $RQtime1 * 100;
	Wait($Fall1);


	CreateSound("SEP02", SE, "sound/se/se戦闘_破壊_爆発02");//ダミー注意
	SetVolume("SEP02", 0, 0, NULL);
	SetAlias("SEP02", "SEP02");

	$RSEtime2 = Random(6);
	$RSE2 = $RSEtime2 * 100;

	Request("SEP02", "Play");
	SetVolume("SEP02", 0, $RSE2, null);
	Request("SEP02", Disused);

	Shake("@絵落下震", 1000, 0, 6, 0, 0, 1000, DxlAuto, false);
	Wait(200);
	$RQtime2 = Random(2);
	$Fall2 = $RQtime2 * 50;
	Wait($Fall2);


	CreateSound("SEP03", SE, "sound/se/se戦闘_破壊_建物02");//ダミー注意
	$RSEtime3 = Random(6) + 4;
	$RSE3 = $RSEtime3 * 100;

	Request("SEP03", "Play");
	SetVolume("SEP03", 0, $RSE3, null);
	Request("SEP03", Disused);

	Shake("@絵落下震", 1000, 0, 10, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	$RQtime3 = Random(4) + 10;
	$Fall3 = $RQtime3 * 100;
	Wait($Fall3);


	CreateSound("SEP04", SE, "sound/se/se戦闘_衝撃_衝突01");//ダミー注意

	$RSEtime4 = Random(3);
	$RSE4 = $RSEtime4 * 100;

	Request("SEP04", "Play");
	SetVolume("SEP04", 0, $RSE4, null);
	Request("SEP04", Disused);

	Shake("@絵落下震", 1000, 0, 3, 0, 0, 1000, DxlAuto, false);
	Wait(600);
	$RQtime4 = Random(4) + 3;
	$Fall4 = $RQtime4 * 100;
	Wait($Fall4);


	CreateSound("SEP05", SE, "sound/se/se戦闘_衝撃_衝突01");//ダミー注意

	$RSEtime5 = Random(6);
	$RSE5 = $RSEtime5 * 100;

	Request("SEP05", "Play");
	SetVolume("SEP05", 0, $RSE5, null);
	Request("SEP05", Disused);

	Shake("@絵落下震", 3000, 0, 6, 0, 0, 1000, DxlAuto, false);
	Wait(1000);
	$RQtime5 = Random(5) + 1;
	$Fall5 = $RQtime5 * 100;
	Wait($Fall5);
	}
}


..//エッグ
function Egg()
{
	while(1)
	{
	Fade("@絵卵光", 2000, 300, null, true);
	Fade("@絵卵光", 2000, 100, null, true);
	}
}



function ma04022_fall(){

	CreateSound("SEP01", SE, "sound/se/se戦闘_衝撃_衝突01");
	SetVolume("SEP01", 0, 0, NULL);
	SetAlias("SEP01", "SEP01");

	CreateSound("SEP02", SE, "sound/se/se戦闘_破壊_爆発02");
	SetVolume("SEP02", 0, 0, NULL);
	SetAlias("SEP02", "SEP02");

	CreateSound("SEP03", SE, "sound/se/se戦闘_破壊_建物02");
	SetVolume("SEP03", 0, 0, NULL);
	SetAlias("SEP03", "SEP03");

	CreateSound("SEP04", SE, "sound/se/se戦闘_衝撃_衝突01");
	SetVolume("SEP04", 0, 0, NULL);
	SetAlias("SEP04", "SEP04");

	CreateSound("SEP05", SE, "sound/se/se戦闘_破壊_爆発05");
	SetVolume("SEP05", 0, 0, NULL);
	SetAlias("SEP05", "SEP05");

	begin:

	while(1){
		$RSEtime1 = Random(8);
		$RSE1 = $RSEtime1 * 100;
	
		Request("SEP01", "Play");
		SetVolume("SEP01", 0, $RSE1, null);
	
		Shake("@絵落下震", 1000, 0, 8, 0, 0, 1000, DxlAuto, false);
		Wait(1000);
		$RQtime1 = Random(4) + 2;
		$Fall1 = $RQtime1 * 100;
		Wait($Fall1);
	
		$RSEtime2 = Random(6);
		$RSE2 = $RSEtime2 * 100;
	
		Request("SEP02", "Play");
		SetVolume("SEP02", 0, $RSE2, null);
	
		Shake("@絵落下震", 1000, 0, 6, 0, 0, 1000, DxlAuto, false);
		Wait(200);
		$RQtime2 = Random(2);
		$Fall2 = $RQtime2 * 50;
		Wait($Fall2);
	
		$RSEtime3 = Random(6) + 4;
		$RSE3 = $RSEtime3 * 100;
	
		Request("SEP03", "Play");
		SetVolume("SEP03", 0, $RSE3, null);
	
		Shake("@絵落下震", 1000, 0, 10, 0, 0, 1000, DxlAuto, false);
		Wait(1000);
		$RQtime3 = Random(4) + 10;
		$Fall3 = $RQtime3 * 100;
		Wait($Fall3);
	
		$RSEtime4 = Random(3);
		$RSE4 = $RSEtime4 * 100;
	
		Request("SEP04", "Play");
		SetVolume("SEP04", 0, $RSE4, null);
	
		Shake("@絵落下震", 1000, 0, 3, 0, 0, 1000, DxlAuto, false);
		Wait(600);
		$RQtime4 = Random(4) + 3;
		$Fall4 = $RQtime4 * 100;
		Wait($Fall4);
	
		$RSEtime5 = Random(6);
		$RSE5 = $RSEtime5 * 100;
	
		Request("SEP05", "Play");
		SetVolume("SEP05", 0, $RSE5, null);
	
		Shake("@絵落下震", 3000, 0, 6, 0, 0, 1000, DxlAuto, false);
		Wait(1000);
		$RQtime5 = Random(5) + 1;
		$Fall5 = $RQtime5 * 100;
		Wait($Fall5);
	
	}


}

