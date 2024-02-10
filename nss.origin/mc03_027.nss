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

scene mc03_027.nss_MAIN
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

	//▼ルートフラグ、選択肢、次のGameName
	#aw_ボーディ=true;

	$PreGameName = $GameName;

	$GameName = "mc04_001.nss";

}

scene mc03_027.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mc03_026.nss"


//◆地上。bg003か。

	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景", 400, @-200, @-400, "cg/bg/resize/bg003_荒れ野_02.jpg");
	Request("絵背景", Smoothing);

	CreateSE("よろよろ", "se人体_足音_歩く04_L");
	MusicStart("よろよろ", 0, 1000, 0, 800, null,true);

	WaitKey(3000);

	Delete("上背景");
	FadeDelete("黒幕１",2000,true);

	WaitKey(1000);

//◆景明視点。画面揺らし
//◆よろめきながら歩いてる感じ。ＳＥとかで
	Move("絵背景", 800, @0, @-50, DxlAuto, true);
	Wait(200);
	Move("絵背景", 300, @0, @50, DxlAuto, true);
	Wait(250);
	Move("絵背景", 800, @0, @-50, DxlAuto, true);
	Wait(200);
	Move("絵背景", 300, @0, @50, DxlAuto, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270010a00">
「……呜……」


//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270020a00">
「呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("よろよろ", 1000, 0, null);

	OnSE("se人体_衝撃_転倒04", 1000);


//◆がた。膝を突く。
	CreatePlainEX("絵板写", 400);
	Fade("絵板写", 0, 800, null, true);


	Shake("絵板写", 500, 0, 50, 0, 0, 1000, DxlAuto, true);
	Move("絵背景", 0, @0, @-50, null, false);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　脚上没有力气。像是断了一样。
　全身的肉，全身的皮肤都很烫。各处都有跌打伤吧。


　头盖骨的内侧像是破钟一样响个不停，内脏像是全部
受到了碾压。
　<RUBY text="剑胄">村正</RUBY>受损程度应该也一样。没有回答。
　大概是陷入了暂时的机能停止中了吧。

　但是想到我是以相当高的速度撞上了地面，这样只能
认为是轻伤。

　……那种事情无所谓。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆立って歩く

	Move("絵背景", 1000, @0, @50, null, true);
	WaitKey(1000);
	CreateSE("よろよろ", "se人体_足音_歩く04_L");
	MusicStart("よろよろ", 0, 1000, 0, 800, null,true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270030a00">
（在哪里……）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　应该是掉在了不远的地方。
　直到最后都一直瞪着我……憎恨地……谴责地。
　她——

　确实在这附近，

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("よろよろ", 1000, 0, null);

//◆残骸。血ＣＧとかで済ますか。

	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,false);
	Fade("フラッシュ",1000,1000,null,false);
	FadeDelete("フラッシュ", 500, false);
	CreateTextureEX("絵ＥＦ", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade(絵ＥＦ, 0, 1000, null, true);

	WaitKey(1000);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270040a00">
「————呃，啊————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm09", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　来栖野小夏就在那里……
　
　
　<RUBY text="···">曾经在</RUBY>。

　那地上的样子应该称为残骸。

　铁。<k>肉。<k>骨。<k>肉。<k>血。<k>铁……<k>
　
　那个少女在那里，散落一地。

　但是在满地凌乱中，只有生命是不存在的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270050a00">
「啊——呜——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　除此以外的东西，全都在。
　肉体，铁铠，这些零件都在。

　心也是。
　来栖野小夏的恶意，死了之后也还在那里。

　还连着视神经的眼球，从地上仰视着我。


　
　　　　　　　　　“不可原谅。”

　
　　　　　　　　　“绝不原谅。”

　就这样重复着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270060a00">
（为什么？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　<RUBY text="····">这个现实</RUBY>是怎么回事。

　为什么，来栖野小夏要袭击我。
　离开镰仓，在会津出现在我面前，驾驶剑胄，将复仇
的利刃向我刺来？

　她曾经成为了铃川令法的牺牲品，结果背负了沉重的
障碍，这不可能全都是她一个人做到的。
　有人协助————不。是的。

　雪车町。
　
　只有那个男人。只有那个流氓。

　想要杀害我的那个男人，找到了来栖野小夏吗。
　告诉她真相，煽动她的复仇心，给了她剑胄吗。
　对……那个男人说过。

　要杀死我，有个<RUBY text="····">合适的人</RUBY>等着。
　合适的人……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	FadeDelete("絵ＥＦ",1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270070a00">
（……不会吧）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　那个异形骑，四骑一体。

　那么————另外三人也是…………

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我用折断的脚蹬踏地面。
　跌跌撞撞地向前跑去。

　作为身体的骑体，应该掉落在不远的地方。
　我接近后，掀开了碎裂的装甲。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	CreateColorEXadd("フラッシュ", 15000, "RED");
	Fade("フラッシュ",0,1000,null,false);
	Fade("フラッシュ",1000,1000,null,false);
	FadeDelete("フラッシュ", 500, false);
	CreateTextureEX("絵ＥＦ", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵ＥＦ", 0, 1000, null, true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270080a00">
「……啊……」


//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270090a00">
「你是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	#aw_ボーディ=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　柿泽信次郎。
　
　尸体的面孔还保有原状，这让我想起了他的姓名。


　柿泽是常陆的名门武家。
　遵从六波罗协助暴政压榨的当主，和不愿意同流合污
的信次郎之兄长，让家中分为了相争的两派……


　而兄弟二人都被我杀了。
　当主因为是带有“卵”的武者。信次郎的兄长——被
选为了村正<RUBY text="诅咒">誓约</RUBY>的牺牲品。

　那大概是半年前的事。
　
　……他，柿泽信次郎，深深地敬仰着顽固而善良的兄
长。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＦ",1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270100a00">
「啊，啊啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	CreateTextureEX("絵ＥＦ", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade("絵ＥＦ", 0, 1000, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　……我找到了作为右腿的骑体。

　装甲下出现了死人的面孔，他很像我以前杀死过的某
个人。
　应该是关系很近的血亲吧。……大概是亲生儿子。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵ＥＦ",1000,true);

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270110a00">
「呜啊，啊啊啊啊啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆移動

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	CreateTextureEX("絵ＥＦ", 5000, Center, Middle, "cg/ef/ef007_汎用血しぶき.jpg");
	Fade(絵ＥＦ, 0, 1000, null, true);


	DrawTransition("黒幕１", 300, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("黒幕１");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　左腿的骑体。

　尸体的脸，我不认得。
　但是，尸体上很珍惜地带着的照片上，有着我记忆中
的身影。那是我亲手杀死的人。


　也许是恋人吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270120a00">
「呜——呜呜呜呜哦哦——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete(絵ＥＦ,1000,true);
	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

//◆辺り

	Move("絵背景", 60000, @-200, @0, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　四个人死了。

　有理由憎恨我的四个人死了。

　有权利以正义的名义惩罚我的四个人死了。


　四个正当的复仇者死了。

　并且，我活着。

　……应该被他们杀死的我，反而把应该杀死我的他们
杀死了，我活了下来。
　反常。残忍。凶恶。荒唐。

　只有凑斗景明活了下来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270130a00">
「————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆夕空？

	CreateColorSP("黒幕１", 25000, "#000000");
	DrawTransition("黒幕１", 250, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("絵背景");
	CreateTextureEX("お空", 3000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("お空", 0, 1000, null, true);


	DrawTransition("黒幕１", 250, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("黒幕１");


	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270140a00">
「咦啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ガッタイダー。血。小夏。

	OnSE("se擬音_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);
	Delete("お空");
	CreateColorSP("黒", 1000, "BLACK");

	CreateTextureEX("絵演2", 3100, Center, @-800, "cg/st/3dガッタイダー_立ち_通常c.png");
	Fade("絵演2", 0, 500, null, false);

	Fade("絵白転", 600, 0, null, true);

	WaitKey(1000);

	OnSE("se人体_血_血しぶき01", 1000);
	CreateColorSPadd("ぶしゃー", 15000, RED);
	DrawTransition("ぶしゃー", 100, 0, 1000, 100, null, "cg/data/zoom_01_00_0.png", true);

	Delete("絵演2");

	DrawTransition("ぶしゃー", 100, 0, 1000, 100, null, "cg/data/zoom_01_00_1.png", true);
	FadeDelete("ぶしゃー",1000,true);


	CreateTextureSPmul("絵演1", 3200, Center, Middle, "cg/anime/Center/bloodA_5.png");

	CreateTextureEX("絵演3", 3101, Center, @190, "cg/st/st小夏_通常_制服.png");
	Fade("絵演3", 1000, 500, null, false);

	Fade("絵白転", 300, 0, null, true);

	WaitKey(800);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　死了！

　杀死了！

　我杀死的！
　我杀死了他们！

　他们何罪之有？
　有罪的明明只有我。

　他们想要完成合理的复仇——
　对。仅此而已。

　这有什么不对？
　这有什么错？

　把我杀掉才是正确的。

　事实完全相反!!

　凑斗景明又杀了人。
　终于没有任何理由地杀了人。

　他们并不是被“卵”附身的人。
　我也没有被村正的咒戒所束缚。

　他们没有任何死去的理由。

　但我却让他们死了。
　杀掉了。杀掉了……

　柿泽信次郎一定是想要为兄长复仇。
　来栖野小夏一定是想要为新田雄飞雪恨。


　理由充分！
　这是正义！

　他们要杀死凑斗景明的行为符合天理。

　但是我没让他们杀死。
　我不知晓自己的罪状，抵抗了制裁之剑。

　最后，还让他们死了！
　杀死了!!

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――


	CreateTextureEX("絵背景", 400, @-200, @-400, "cg/bg/resize/bg003_荒れ野_02.jpg");
	Zoom("絵背景", 0, 1000, 1000, null, true);


	Fade("絵背景", 0, 1000, null, true);


	Fade("絵白転", 400, 1000, null, true);
	Delete("黒");
//◆ＥＶ：景明orz
//■上記指定削除 inc櫻井

	Delete("絵黒地*");
	Delete("絵演*");
	DeleteStA(0,true);
	FadeDelete("絵白転", 600, true);

	OnSE("se人体_衝撃_転倒04", 1000);
	Shake("絵背景", 500, 0, 50, 0, 0, 1000, DxlAuto, true);
	Move("絵背景", 0, @0, @-50, null, false);

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270150a00">
「呕——呕，呃啊——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_動作_吐瀉");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我呕吐着。
　我把胃里的东西全都吐了出来。

{	CreateSE("SE01a","se人体_血_たれる01");
	MusicStart("SE01a",0,1000,0,1000,null,false);}
　即使如此也停不下来。
　停不下来，所以吐出胃液。吐出鲜血。

　即使如此也停不下来。
　自我厌恶停不下来。

　对于凑斗景明的厌恶——
　
　不。那种柔软的话语还不够。

　是憎恶。

　自我憎恶。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270160a00">
（不可原谅）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　凑斗景明不可原谅。

　这个个体的存在不能原谅。

　这种男人不该存在。

　如此的邪恶不能容忍。

　其存在是对正义的凌辱。

　凑斗景明，<k>
　是必须被断罪的男人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270170a00">
「……大尉……」


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc03/0270180a00">
「大鸟大尉————!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("お空", 3000, Center, Middle, "cg/bg/bg002_空a_02.jpg");
	Fade("お空", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　我呜咽着，叫着她的名字。
　我叫着那个对于我来说，等同于<RUBY text="Fourier">法则女神</RUBY>的女性。

　是那个人。

　只有那个人。

　发誓说过不原谅凑斗景明。
　发誓说过要杀了凑斗景明。

　只有那个人，能让凑斗景明赎罪。

　只有那个人——
　能向凑斗景明展示正义的存在。

　不会允许邪恶的胜利而将其毁灭，
　将善良的死亡从无价值之中拯救。

　啊啊。
　大尉。

　大鸟香奈枝。
　只有你————

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト
//◆差分：背後に香奈枝
	SetVolume("@mbgm*", 2000, 0, null);
	Wait(2500);

	PrintBG("上背景", 30000);
	OnBG(100,"bg003_荒れ野_02.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 2000, true);

	CreateSE("SE01","se自然_草木_探る02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(2000);

	SetFwC("cg/fw/fw香奈枝_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/mc03/0270190a03">
「————————————————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	WaitKey(1000);

//◆Ｃパート完
//◆カットインぽくロゴ
	ClearWaitAll(3000, 1000);

	PrintBG("上背景", 10000);
	cut_in_logo(10010,2);

	ClearWaitAll(3000, 2000);

/*
//あきゅん「演出：外注部分退避」
	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);
	CreateTextureSP("背景80", 30, Center, Middle, "cg/sys/title/タイトル背景.png");
	Move("背景80", 0, 20, 0, null, false);
	Move("背景80", 200, -20, 0, null, false);

	OnSE("se戦闘_攻撃_剣戟弾く01", 1000);
	CreateTextureEX("背景81", 32, Center, Middle, "cg/sys/title/画像タイトルlogo.png");
	Fade("背景81", 300, 1000, null, false);
	
	CreateTextureSPadd("絵背景500", 31, Center, Middle, "cg/ef/ef005_汎用血雫.jpg");
	Rotate("絵背景500", 0, 180, 0, 180, null, true);
	Move("背景81", 0, 600, 40, null, false);
	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//◆２３４５６７８９０１２３４５６７８９０１２３４

}

..//ジャンプ指定
//次ファイル　"mc04_001.nss"