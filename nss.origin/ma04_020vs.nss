//<continuation number="1500">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_020vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/ma04_020vs.nss","MeimetuAction",true);
	Conquest("nss/ma04_020vs.nss","MeimetuSET",true);

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		//$Ichizyou_Dead = true;
		//$Kanae_Dead = true;
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//▼イベントＣＧ
	#イベントファイル名=true;
	#ev124_江ノ島航空図_a=true;
	#ev124_江ノ島航空図_b=true;
	#ev124_江ノ島航空図_c=true;
	#ev503_村正抜刀剣光=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma04_021.nss";

}

scene ma04_020vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_019.nss"

//◆夜空
//◆ちとウェイト
//◆白銀流星
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	WaitKey(2000);

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演", 2000, Center, Middle, "cg/ef/ef019_銀星号突貫02.jpg");
	Wait(50);
	FadeDelete("絵色白", 1000, true);

//◆小分岐
//◆両方生存の場合は普通に進行して良いか、要奈良原確認

//――――――――――――――――――――――――――――――
.//●一条生存
//◆このシーン、一条がいる場合のみ

..//if_start
if(!$Ichizyou_Dead){
//◆一条

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【一条】
<voice name="一条" class="一条" src="voice/ma04/020vs0010a02">
「——啊——」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

}
..//if_end

//――――――――――――――――――――――――――――――
.//●香奈枝生存
//◆小分岐
//◆このシーン、香奈枝がいる場合のみ

..//if_start
if(!$Kanae_Dead){

//◆香奈枝＆さよ
	SetFwC("cg/fw/fw香奈枝_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【香奈枝】
<voice name="香奈枝" class="香奈枝" src="voice/ma04/020vs0020a03">
「……那个是。」

{	FwC("cg/fw/fwさよ_警戒.png");}
//【さよ】
<voice name="さよ" class="さよ" src="voice/ma04/020vs0030a04">
「——披上装甲！
　大小姐，请快点！」

</PRE>
	SetTextEXC();
	if($Ichizyou_Dead){
		TypeBeginCI();//―――――――――――――――――――――――――――――
	}else{
		TypeBeginTimeCIFO(0);//――――――――――――――――――――――――
	}
}
..//if_end

//――――――――――――――――――――――――――――――
.//●合流？　要奈良原確認
.//嶋：●合流ポイントに設定

//◆村正＆ＧＨＱ

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs0040a01">
《啊……》

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0050b02">
「什么？」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0060a00">
「————!!」

</PRE>
	SetTextEXC();
	if($Ichizyou_Dead && $Kanae_Dead){
		TypeBeginCIO();//―――――――――――――――――――――――――――――
	}else{
		TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

	}

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_02_01_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　瞬时。
　每个人都仰望天空。

　——快看。
　仿佛听到了谁下达的绝对命令一般。

　于是看到了。
　那颗明星。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ＢＧＭ：魔王星
	SoundPlay("@mbgm37",2000,1000,true);

//◆白銀流星
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef019_銀星号突貫02.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef019_銀星号突貫02.jpg");
	Zoom("絵演", 0, 1100, 1100, null, false);
	Zoom("絵演上", 0, 1300, 1300, null, false);

	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆メテオストライク。ずがごらごーん。
	CreateSE("SE01a","se戦闘_銀星号_メテオストライク");
	MusicStart("SE01a",0,1000,0,1500,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, -950, "cg/ef/resize/ef019_銀星号突貫tl.jpg");
	CreateTextureSP("絵演", 3000, Center, -950, "cg/ef/resize/ef019_銀星号突貫tl.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Move("絵演*", 200, @0, -1050, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//◆なんかすげーことになった。つーか天変地異
	CreateSE("SE02","se戦闘_破壊_大爆発01");
	MusicStart("SE02",0,1000,0,700,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	SetVertex("絵演*", center, bottom);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 5000, 1200, 2000, Dxl2, false);
	Shake("絵演上", 5000, 0, 0, 20, 0, 1000, Dxl3, false);

	WaitKey(1000);

	Fade("絵色白", 3000, 1000, Axl1, true);

//◆空
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg002_空b_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0070a14">
「……唔。
　好像有点用力过猛了。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0080a14">
「江之岛<RUBY text="····">消失不见</RUBY>了。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆江ノ島周辺マップ。江ノ島がない？
//◆ピッ。本来あった位置を点線で表示
	CreateTextureEX("絵ＥＶａ", 4000, Center, -490, "cg/ev/resize/ev124_江ノ島航空図_al.jpg");
	Fade("絵ＥＶａ", 700, 1000, null, true);

	WaitKey(300);

	CreateTextureSP("絵ＥＶｂ", 4010, Center, -490, "cg/ev/resize/ev124_江ノ島航空図_bl.jpg");

	Wait(700);
	Fade("絵ＥＶｂ", 0, 1000, null, true);
	Wait(700);
	Fade("絵ＥＶｂ", 0, 0, null, true);

	Wait(700);
	Fade("絵ＥＶｂ", 0, 1000, null, true);
	Wait(700);
	Fade("絵ＥＶｂ", 0, 0, null, true);

	Wait(700);
	Fade("絵ＥＶｂ", 0, 1000, null, true);
	Wait(700);
	Delete("絵ＥＶｂ");

	WaitKey(1000);

	//SetFwC("cg/fw/fw二世女王蟻_通常.png");
	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0090a15">
《……主君。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0100a15">
《在那里。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0110a14">
「嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ピッ。マップ上方を矢印で示す
//◆本州側に食い込んでいる江ノ島
	Move("絵ＥＶａ", 3000, @0, -150, DxlAuto, true);

	WaitKey(1000);

	//SetFwC("cg/fw/fw二世女王蟻_通常.png");
	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0120a15">
《变成<RUBY text="··">半岛</RUBY>了。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0130a14">
「哦哦。
　真的！」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0140a14">
「飞得真漂亮啊。
　那是浮岛吗？」


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵ＥＶｃ", 3980, Center, Middle, "cg/ev/ev124_江ノ島航空図_a.jpg");
	FadeDelete("絵ＥＶａ", 1000, true);

	CreateTextureSP("絵ＥＶｅ", 3990, Center, Middle, "cg/ev/ev124_江ノ島航空図_b.jpg");
	CreateTextureSP("絵ＥＶａ", 3980, Center, Middle, "cg/ev/ev124_江ノ島航空図_c.jpg");
	Wait(700);
	Fade("絵ＥＶｅ", 0, 1000, null, true);
	Wait(700);
	Fade("絵ＥＶｅ", 0, 0, null, true);

	Wait(700);
	Fade("絵ＥＶｅ", 0, 1000, null, true);
	Wait(700);
	Fade("絵ＥＶｅ", 0, 0, null, true);

	Wait(700);
	Fade("絵ＥＶｅ", 0, 1000, null, true);
	Wait(700);
	Delete("絵ＥＶｅ");

	Wait(700);
	FadeDelete("絵ＥＶａ", 300, true);

	//FwC("cg/fw/fw二世女王蟻_通常.png");
	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0072]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0150a15">
《不是的。大概。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0160a14">
「总之平安无事最好。
　像那样有着如此美景的小岛消失了的话，
就太可惜了呢！」

{	//FwC("cg/fw/fw二世女王蟻_通常.png");
	FwC("cg/fw/fw銀星号_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0170a15">
《……要这么说的话，那小岛早已面目全非了。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆村正周辺
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　……这样的对话除了奇妙没有别的词可以形容。
　震动，或是冲击，我几乎感觉不到这种东西。


　能感觉到的，只有周围的一切在一瞬间消失殆尽的，
可怕的丧失感——
　然后在这一瞬过后，<RUBY text="········">却什么都没有改变</RUBY>，
这让感觉和现实有了很大的差别。

　最后。
　可以眺望到所有镰仓周边地区的六波罗的普陀乐城，
比刚才<RUBY text="····">更靠近了</RUBY>这一现象……

　……我理解了『事实』……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0180a00">
「——嗬——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　由于太过畏惧，我几乎都要失禁。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs0190a01">
《………………
　啊……啊。》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs0200a01">
《那个……这是……
　不就像<RUBY text="···">抽积木</RUBY>一样吗……？》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs0210a01">
《……这座岛……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　村正的剑胄传音也尖锐起来。
　连自己也无法理解自己所说的事情……
它的声音听上去有这样的感觉。

　——这种事情，怎么可能。
　
　即使没有说出口，我与剑胄的想法也相同。

　这恐怕是，用<RUBY text="··">那个</RUBY>的固有技能，重力制御
所实现的现象，不过……
　能够推测出的也就仅此而已了，具体的部分我们
都无法想象。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0220b02">
《……什么啊。
　刚才，发生什么事了？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我们这边似乎也无法理解呢，卡杰特少佐。
　是被狐狸精迷住的感觉吗。我看到他的表情有一瞬的
呆滞，然后巨大身躯的头部不受控制地转过去环视四周。


　他部下的士兵也是如此吧。
　无人能够回答指挥官的问题，亦无人能够不做出与
指挥官一样的行动。

　不一会儿，少佐所乘坐的巨骑定格在了某一点的方向。
　与我相同。<RUBY text="····">格外巨大</RUBY>的普陀乐城。

　……半秒之后，也许他是得到了他所寻求的答案。

　他的部下，还要迟上几秒。

　就是说——
　现在是最后的平安时刻。

　也许会有什么即将来到，也许会有什么即将发生，
让人不禁胆怯、疯狂、失常。
　宝贵的时间。

　已无法挽回的时间。
　最后的——最后的。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆精神汚染波
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演汚染", 4100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	FadeDelete("絵演汚染", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　——来了。
　侵犯心灵的，银色剧毒。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160a]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0230b02">
《……什么？
　…………装甲通信……？》


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆生と死の
	CreateTextureEX("Gin_song01", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄01.png");
//◆されば嘲笑
	CreateTextureEX("Gin_song02", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄02.png");

	Move("Gin_song01", 0, @0, @-40, null, true);
	Move("Gin_song02", 0, @0, @+10, null, true);

	Move("Gin_song01", 1000, @0, @-10, null, false);
	Fade("Gin_song01", 1000, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song02", 1000, @0, @-10, null, false);
	Fade("Gin_song02", 1000, 1000, null, true);

	Fade("silver_son*", 500, 0, null, true);

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160b]
《生死抉择，应是赋予自我的课题，扪心自问。》

《故于嘲笑的欢喜漩涡中拉开喜剧之幕吧。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

	CreatePlainSP("絵板写", 6000);
	Delete("Gin_song*");
	FadeDelete("絵板写", 1000, true);

//◆汚染
	CreateSE("SEL01","se戦闘_銀星号_精神汚染波_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演汚染", 4100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);

//◆嵐の夜に
	CreateTextureEX("Gin_song03", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄03.png");
//◆温かい巣で
	CreateTextureEX("Gin_song04", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄04.png");
//◆木漏れ日の下
	CreateTextureEX("Gin_song05", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄05.png");
//◆せせらぎを聞く
	CreateTextureEX("Gin_song06", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄06.png");
//◆生の意味
	CreateTextureEX("Gin_song07", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄07.png");
//◆死の恐怖
	CreateTextureEX("Gin_song08", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄08.png");
//◆生命の問いに
	CreateTextureEX("Gin_song09", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄09.png");
//◆生命を信じ
	CreateTextureEX("Gin_song10", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄10.png");
//◆獣よ踊れ野を馳せよ
	CreateTextureEX("Gin_song11", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄11.png");
//◆いまや如何なる
	CreateTextureEX("Gin_song12", 5600, Center, Middle, "cg/sys/telop/tp_銀星号の唄12.png");

	Move("Gin_song07", 0, @0, @-40, null, true);
	Move("Gin_song06", 0, @0, @-80, null, true);
	Move("Gin_song05", 0, @0, @-120, null, true);
	Move("Gin_song04", 0, @0, @-160, null, true);
	Move("Gin_song03", 0, @0, @-200, null, true);
	Move("Gin_song08", 0, @0, @0, null, true);
	Move("Gin_song09", 0, @0, @+40, null, true);
	Move("Gin_song10", 0, @0, @+80, null, true);
	Move("Gin_song11", 0, @0, @+120, null, true);
	Move("Gin_song12", 0, @0, @+160, null, true);

	Move("Gin_song03", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song03", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song04", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song04", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song05", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song05", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song06", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song06", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song07", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song07", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song08", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song08", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song09", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song09", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song10", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song10", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song11", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song11", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song12", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song12", 600, 1000, null, false);

	WaitKey();

	Fade("Gin_song0*", 500, 0, null, false);
	Fade("Gin_song10", 500, 0, null, false);
	Fade("Gin_song11", 500, 0, null, false);
	Fade("Gin_song12", 500, 0, null, true);
	Delete("Gin_song*");

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
《暴风骤雨之夜，野犬怒吠，勇斗愚贼。》

《温暖巢穴待母而归之雏鸟，以蛇腹而席，无比安宁。》

《阳光穿透树林洒落而下，新生之狮饱享千头鹿。》

《听闻潺潺水声之蛙卵，被孩童拾起惨遭践踏。》

《虔信生命意义之人啊，听听小丑真摯的诡辩吧。》

《震颤于死亡恐怖之人啊，恶魔的假面乃是黑漆之镜。》

《倘若于生命怀抱疑问，小丑与恶魔则会握持钥匙。》

《倘若相信且醉心于生命，小丑与恶魔则会摘下帽子。》

《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧。》

《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

//◆発狂世界
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateSE("SEL01","se背景_ガヤ_合戦01");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演汚染", 4100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

	CreateColorSP("絵色白弐", 10000, "#FFFFFF");
	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev003_銀星号事件イメージ３.jpg");
	CreateTextureSPover("絵演覆", 4001, Center, Middle, "cg/ev/ev003_銀星号事件イメージ３.jpg");
	Zoom("絵演覆", 0, 1500, 1500, null, true);
	DrawEffect("絵演覆", 31600000, "LowWave", 30, 30, null);
	FadeDelete("絵色白弐", 30, true);

	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	Delete("絵演汚染上");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　吼声扬起。

　并非人类的声音。
　而是没有智慧的，野兽的。

　歌颂杀意。
　歌颂恶意。
　歌颂害意。

　其中没有任何杂质。
　没有任何类似人类的东西。

　能穿透一切的凶残之歌，绝不是人类所能唱出。
　所以那不是人类。

　而是用双足站立，皮肤为钢铁皮毛所包裹，拥有机器
钢牙的野兽。
　他们是野兽。

　ＧＨＱ的特殊部队，化为了兽群。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0240b02">
《在做……
　在做什么?!》

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0250b02">
《停下来!!
　停下！　伙伴们！》

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0260b02">
《听不懂吗?!
　<RUBY text="········">在那边的是同胞啊</RUBY>!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆銃声とか。同士討ちの様子
	CreateSE("SE01","se背景_ガヤ_戦場の風景03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MFlash(30, 8);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　他们，狂乱起来。
　不分敌我地随意攻击，疯狂地暴动。

　一些步兵用机关枪向同僚的队伍里乱射一通。
　然后，又被背后驶来的战车碾压。

　该战车的前方又有同型机的主炮对准。
　然而，在射出炮弹之前，有颗手榴弹扔进炮口，于是
喷着巨焰轰然爆炸。

　而被瞄准的战车始终没有注意到的样子，不断地将炮
弹向空中散射。
　虽然总是命中不了机动性高的武者——但到底还是有
一发射穿了威尔沃夫的机翼。

　一骑剑胄从空中摔落，而他的同伴只是茫然地注视着
他的悲剧。
　他们并未变成野兽。

　只有被坚硬的装甲所保护的武者们……
　在这个渺小的世界中，品尝全身尽裸的人类的脆弱。

　徒劳地反复下指令的卡杰特少佐，可以说是这些人
之中最能维持冷静的了。
　正因如此，他的特色——在野兽看来正是<RUBY text="··">香饵</RUBY>吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("Gin_song15", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄15.png");
	CreateTextureEX("Gin_song16", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄16.png");
	CreateTextureEX("Gin_song17", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄17.png");
	CreateTextureEX("Gin_song18", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄18.png");
	CreateTextureEX("Gin_song19", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄19.png");
	CreateTextureEX("Gin_song20", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄20.png");
	CreateTextureEX("Gin_song21", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄21.png");
	CreateTextureEX("Gin_song22", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄22.png");
	CreateTextureEX("Gin_song23", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄23.png");
	CreateTextureEX("Gin_song24", 5100, Center, Middle, "cg/sys/telop/tp_銀星号の唄24.png");

	Move("Gin_song19", 0, @0, @-40, null, true);
	Move("Gin_song18", 0, @0, @-80, null, true);
	Move("Gin_song17", 0, @0, @-120, null, true);
	Move("Gin_song16", 0, @0, @-160, null, true);
	Move("Gin_song15", 0, @0, @-200, null, true);
	Move("Gin_song20", 0, @0, @0, null, true);
	Move("Gin_song21", 0, @0, @+40, null, true);
	Move("Gin_song22", 0, @0, @+80, null, true);
	Move("Gin_song23", 0, @0, @+120, null, true);
	Move("Gin_song24", 0, @0, @+160, null, true);

	Move("Gin_song15", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song15", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song16", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song16", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song17", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song17", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song18", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song18", 600, 1000, null, false);

	WaitKey(2000);

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

	WaitKey(2000);

	Move("Gin_song23", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song23", 600, 1000, null, false);

	WaitKey(2000);

	Move("Gin_song24", 600, @0, @-10, Dxl1, false);
	Fade("Gin_song24", 600, 1000, null, false);

	WaitKey();

/*
//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
《创造奇迹的圣人诅咒着拯救芸芸众生之神。》

《黃金之盔的霸王与其万里征伐的爱马一道同沉河底。》

《湖中美丽的公主弃国取爱，受刑溺毙于粪沼之中。》

《被遗弃的婴孩以蚯蚓之血为母乳，食之三夜而烂腹为始。》

《生命啊，听听这赞歌，重叠起笑至疲惫的怨恨。》

《生命啊，听听这祷告，枕以愤怒颤抖般的喜悦。》

《炎与剑数次之连，环装扮起百年之生命。》

《为黑暗与静寂所守护的七日之生命，会纯粹地闪耀光辉吧。》

《野兽啊，起舞吧，于原野驰骋。歌唱着，喧闹着，狂野地奔跑吧。》

《如今，尔等面前何种枷锁与牢笼皆是腐朽之土块。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――
*/

	SetVolume("SE*", 1000, 0, null);
	CreateColorEX("絵色黒", 10000, "#000000");
	Fade("絵色黒", 1000, 1000, null, true);

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　闪着锐利的目光，野兽们瞪着充血的眼睛斜睨着
曾经的上司。
　仿佛约定好一般地，做出同样的动作。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0270b02">
《唔?!
　你们——》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　他想说什么呢。
　他面临着所信任的一样事物，如此珍贵的事物，在他
面前崩坏，到底该用何种言语才能制止呢。

　这是姑且身为人类的他高傲的尝试，然而现实连尝试
的机会都未曾给予他。
　唯一能称得上安慰的是，无论哪条道路都毫无意义这
一事实。

　无论说什么都改变不了。
　无论说什么，对那些野兽都毫无意义。

　无法改变。
　就是拳与刀以及铅弹的回答。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆荒覇吐に銃撃砲撃
	CreateSE("SE01","se戦闘_銃器_機関銃乱射01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Wait(30);
	Delete("絵色白");
	MFlash(30, 8);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……冒着枪林弹雨。
　怪物——及卡杰特少佐。

　当他被曾断言是重要存在的那些人们用獠牙
猛烈地噬咬之时。
　他的心中到底萦绕着何种思绪呢。

{	CreateSE("SE01a","se戦闘_銃器_跳弾04");
	MusicStart("SE01a",0,1000,0,1250,null,false);}
　厚厚的装甲毫不费力地将一般的子弹反弹回去。
　
　然而一定不是<RUBY text="····">毫发无伤</RUBY>吧。

　从巨骑的沉默中，我听到了那无可宣泄的怨念。
　无法对任何人，任何地方宣泄的愤懑。

　不——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_沈思.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0280b02">
《…………》

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0290b02">
《……你这家伙……吗……》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0300a00">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 500, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

//◆銀星号。幻想的演出？
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演汚染", 4100, -240, -970, "cg/ev/resize/ev952_銀星号登場_l.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, -240, -970, "cg/ev/resize/ev952_銀星号登場_l.jpg");
	SetShade("絵演汚染", MEDIUM);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1250, 1250, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	Delete("絵演汚染上");

	Move("絵演汚染*", 10000, @0, -240, DxlAuto, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　银。
　白银。
　纯银钢。

　被确信为月光碎片的金属。
　因存有魔力而为人所畏惧的金属。
　因诱人疯狂而为人所避讳的金属。

　这是古代淳朴人民的信仰。
　近代被称为实证主义的凶暴之剑，将之撕裂使其断绝
之物。

　被当作无知与愚昧的幻想——
　
　然而，究竟无知愚昧的是哪边呢。

　白银现在在此。

　月之美貌，
　魔之威武，
　狂乱之光，

　全部具备。
　白银的武者在此。

　那么为何要怀疑。
　为何要舍弃银的信仰。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。しゃきーん。
	PrintBG("上背景", 30000);
	CreateSE("SE01","se特殊_雰囲気_鎧登場演02");
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵演", 4100, -240, -240, "cg/ev/resize/ev952_銀星号登場_l.jpg");
	Delete("上背景");
	Wait(30);
	MusicStart("SE01",0,1000,0,1500,null,false);
	FadeDelete("絵暗転", 100, true);
	SoundPlay("@mbgm01",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　银星号！
　她的光辉，现在在此！

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_04_01_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_04_01_0", true);

	SetFwC("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0310b02">
《你这家伙——
　你这家伙！》

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0320b02">
《“银星号”吗!!
　是她将我的同胞毁坏的吗!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　身为ＧＨＱ的将校，自然曾详尽地听闻并知晓银星号
事件吧。
　那充满诡谲之感的内容与现在这个状况完全一致吧。


　对于那正中真相的吼叫，银星号落落大方地点了点头。
　——是的。她无论何时，对任何人的任何言论都不敷
衍了事。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0330a14">
「没错。
　虽然并不记得有自我称呼，但的确，除我
之外，无人被冠以白银之名。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0340a14">
「同胞，是说他们的事情吗。
　是的。<RUBY text="·····">将无用之物</RUBY>，<RUBY text="····">消灭殆尽</RUBY>。」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0350b02">
《无用之物……?!》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0360a14">
「“伦理”。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0370a14">
「人们给自己的手脚拷上的枷锁。
　我将其，拆除。」

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0380b02">
《为什么!!》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0390a14">
「这是因为，它阻挡了光的道路。
　必须要打破，破坏，毁灭。」

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0400b02">
《……你这家伙……》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0410a14">
「“伦理”……
　还有以伦理为基础构成的“社会”。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0420a14">
「延伸出来便是“人的世界”。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0430a14">
「全部都粉碎。
　用光的手将其毁灭。」

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0440b02">
《你这家伙——发疯了吗！》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0450a14">
「非也！
　我是在遵从理性的命令。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0460a14">
「有所怀疑的话，请听光的宏图吧！
　江之岛的面积大约十分之四平方千米。」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0470b02">
《……怎么了？》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0480a14">
「地球上的陆地总面积约一亿五千万平方千米。
　做一下除法的话。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0490a14">
「…………」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0500a14">
「……村正？」

{	//FwC("cg/fw/fw二世女王蟻_通常.png");
	FwC("cg/fw/fw銀星号_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0510a15">
《三亿七千五百万。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0520a14">
「对！
　世界是江之岛的三亿七千五百万倍。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0530a14">
「那么在计算上，刚才江之岛的震动要三亿
七千五百万次世界才会屈服于光的武力！
　怎么样。没错吧？」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0540b02">
《…………》

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0550b02">
《你……你这个……
　疯子……！》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0560a14">
「唔。为什么这么简单的话都不能理解呢。
　英国人对数字没有概念吗？」

{	//FwC("cg/fw/fw二世女王蟻_通常.png");
	FwC("cg/fw/fw銀星号_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0570a15">
《不要说别人了，主君。
　胄想汝没有这个资格。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0580a14">
「难道他是相信着失落的穆大陆的
人吗？
　相信地下王国还存在？」

{	//FwC("cg/fw/fw二世女王蟻_通常.png");
	FwC("cg/fw/fw銀星号_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma04/020vs0590a15">
《不。不是这样的。
　当看到一本正经地说着非现实的话的人时，
大部分人的反应都像他那样。
主君。》

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0600a14">
「……非现实？
　在说什么蠢话呀。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0610a14">
「我，
　<RUBY text="···">在做吧</RUBY>？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0620a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号。ちょっと演出入れ
	CreatePlainSP("絵板写", 5000);
	CreateSE("SE01","se人体_足音_鎧歩く04");
	StR(1100, 0, -305,"cg/st/3d銀星号_立ち_戦闘b.png");
	FadeStR(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆過去シーンなんか
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev101_プロローグ_a.jpg");//ダミー注意
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	DeleteStA(0,true);
	FadeBG(0,true);
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　光。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆過去シーンなんか
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 16000, Center, Middle, "cg/ev/ev133_兜割に挑む光_a.jpg");//ダミー注意
	SetShade("絵回想", NOMORE);
	EfRecoIn2(300);

	WaitKey(500);

	EfRecoOut1(300);
	Delete("絵回想*");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	//StL(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	StR(1100, @0, @0,"cg/st/3d村正標準_立ち_通常.png");
	FadeBG(0,true);
	FadeStA(0,true);
	EfRecoOut2(600,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　光。
　我的————<k>妹妹。

　因接二连三的巨变而精疲力尽的精神，
对四周不断扩展的血腥盛宴也毫不动摇。
　然而，情感——对在那里的她。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0630a00">
「光……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0640a14">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/3d銀星号_立ち_通常.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　不禁脱口而出的，心中的那个名字。
　她马上转过身来，面对着我。

　没有接续的话语。
　凝视着银色的身影。

　过去的面容此时已遍寻不见。
　一点也找不到——

　她也在凝视着这边吗。
　短暂的沉默过后，她高兴地做了个点头的动作。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0650a14">
「痛苦。
　烦闷。
　懊恼。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0660a14">
「然而，至今仍未屈服的意志。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0670a14">
「非常好！
　向这边靠近了哦，景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　——这两年。
　她对我说的这些别有意味的话语，刚才并不是第一次。


　然而，我不明白。
　她在说什么呢。想说什么呢。

　果然——
　果然，是这样的。

　那是不同的。
　那<RUBY text="···">不是光</RUBY>。

　妹妹，已经……
　已经失去她了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0680a00">
「为什么……」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0690a14">
「嗯？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　我问了一个愚蠢至极的问题。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0700a00">
「为什么，发疯？」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0710a14">
「连你都这么说吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　像是闹别扭一般的声音。

　她对自己的发狂没有自觉的样子。
　……那是当然。<RUBY text="····">正因如此</RUBY>才是发疯。

　这种问题毫无意义。我是知道的。
　但我还是不舍，继续说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_疲労.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0720a00">
「因为<RUBY text="····">被诅咒了</RUBY>吗？
　是这样吗？」

{	FwC("cg/fw/fw銀星号_通常.png");}
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0730a14">
「…………」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0740a14">
「我没有发疯哦……
　景明。」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0750a00">
「你在发疯。
　你不是在发疯吗！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1250,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　我对ＧＨＱ的士兵们——曾经的士兵——用手指着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0760a00">
「看看他们！
　被你所放射的<RUBY text="·">波</RUBY>照到了！」

{	FwC("cg/fw/fw景明_怒りb.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0770a00">
「就因为你发疯了，与你内心重叠的
他们也发疯了！
　是这样的吧?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　随着我手指的方向，银色的视线飘荡到地面。
　……惨叫的战场。

　她稍稍眯起了眼睛。
　那是，满意的神色。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0780a14">
「……“布武”……」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs0790a00">
「什么？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　……布武？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0800a14">
「不过，我的确有不解之处。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0810a14">
「为什么大家都失去理智了呢？
　为什么不能像光那样呢？」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0820a14">
「饥渴到如此程度了吗……
　人们平时，都是如此压抑着争斗的本性
生存的吗？　<RUBY text="······">光是不一样的</RUBY>。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0830a14">
「所以。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStL(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　银星号，用右手的食指和拇指摆成了一个圈。
　然后将其对准了一个士兵。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0840a14">
「只是稍微弹一下。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　弹了下手指。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0850a14">
「就变成这样了吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆汚染波演出
	CreateSE("SE01","se特殊_陰義_発動04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPmul("絵演汚染", 4100, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	CreateTextureEXadd("絵演汚染上", 4110, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");
	DeleteStA(0,true);
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	FadeDelete("絵色白", 500, false);
	Zoom("絵演汚染上", 500, 1500, 1500, Dxl2, false);
	Fade("絵演汚染上", 250, 1000, null, true);
	Fade("絵演汚染上", 250, 0, DxlAuto, true);
	FadeDelete("絵演汚染", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　——从她的指尖，仿佛有什么看不到的东西飞了出来。
　士兵的身体弹跳了一下。

　无法以常识想象的跳跃。
　口中发出奇怪的声音。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_攻撃_鎧_打撃02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, -30, -90, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	CreateTextureSP("絵演", 3000, -30, -90, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	SetBlur("絵演上", true, 3, 500, 50, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0541]
　他被怪物附身了。
　在收纳着搭乘者少佐的附近，士兵抓住厚厚装甲的
凹陷处，血色的视线牢牢附着其上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0860b02">
《……格维克！》

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0870b02">
《格维克上等兵!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01b","se擬音_粘着質_ゲル潰れる02");

	CreateTextureEXmul("絵演血漿", 4120, Center, Middle, "cg/anime/Right/blood_B_6.png");
	CreatePlainEXadd("絵板写", 4110);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 3, 500, 50, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　名字被呼唤。
　这个士兵笑了。

　看上去似乎是这样。
　但那只是露出犬齿的表情。

　他，就这样，抬起上半身，
　利用反作用力，

{	MusicStart("SE01a",0,1000,0,1000,null,true);
	MusicStart("SE01b",0,1000,0,1000,null,true);
	Fade("絵演血漿", 0, 1000, null, true);
	FadeDelete("絵演血漿", 300, false);
	Fade("絵板写", 0, 1000, null, true);
	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	FadeDelete("絵板写", 1300, false);}
　将脸部撞向装甲。
　——咬了上去。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0880b02">
《……唔……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　应该不会造成伤害。
　但还是在咬。

　即使自己的牙齿已经碎裂。
　充满喜悦的吼声扬起，没有牙齿也要不断地啮咬
装甲。

　——仿佛地狱饿鬼的姿态。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0890b02">
《唔……》

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0900b02">
《唔啊啊啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆荒覇吐、ブレストファイアー
	CreateSE("SE01","se戦闘_荒覇吐_攻撃01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSP("絵演", 3000, -780, -720, "cg/ev/resize/ev944_村正ＶＳ荒覇吐l.jpg");
	Request("絵演", Smoothing);
	Rotate("絵演", 0, @0, @180, @0, null,true);
	FadeDelete("絵色白", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　士兵的身体溃散成齑粉。
　然而巨骑的扫射仍未停止。

　士兵的装甲上，似乎粘着什么东西。
　……下巴。只留下死死咬住的下巴，装饰着
怪物的装甲。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0910b02">
《啊啊啊啊啊啊啊啊啊啊啊啊!!
　混蛋啊啊啊啊啊啊啊啊啊啊啊啊啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE00","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Zoom("絵演", 0, 1100, 1100, null, false);
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSE("SE01b","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 5000, "#FFFFFF");
	CreateTextureSPadd("絵演上", 4910, Center, Middle, "cg/ev/resize/ev910_荒覇吐胸元アップm.jpg");
	CreateTextureSPover("絵演", 4900, Center, Middle, "cg/ev/resize/ev910_荒覇吐胸元アップm.jpg");
	Rotate("絵演*", 0, @0, @180, @0, null,true);

	CreateTextureEXover("絵演下地", 4010, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	CreateTextureSP("絵演下元地", 4000, Center, Middle, "cg/bg/bg002_空a_03.jpg");
	StR(4800, 315, -160,"cg/st/3d銀星号_騎突_通常.png");
	Fade("絵演下地", 0, 600, null, true);
	FadeStR(0,true);
	FadeDelete("絵色白", 100, false);
	SetBlur("絵演上", true, 3, 500, 50, false);
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateWindow("絵窓", 15000, 0, 144, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	CreateTextureEX("絵窓/絵演立絵装甲", 15100, -980, -1240, "cg/st/resize/3d銀星号_立ち_戦闘blm.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　嘶哑破碎的憎恶叫喊，与火网一同遮盖天空。
　也许他已经神智不清了，但狙击点仍然正确。
瞄准银色身影，激射出无数尖针。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEXadd("絵窓/絵被弾効果壱", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果弐", 19500, Center, Middle, "cg/ef/ef044_火花c.png");

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0920a14">
「哼——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　银星号纤细的手指，再次摆出<RUBY text="···">打响指</RUBY>的形状。
　然后，消失。

　不——
　奔跑。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆かんかんかんかん。
//◆銃弾デコピン返し
	CreateSE("SE01","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01a","se戦闘_銃器_跳弾02");
	MusicStart("SE01*",0,1000,0,1500,null,false);
	CreateColorSP("絵色白", 5000, "#FFFFFF");
	Wait(20);

	CreateTextureEXadd("絵窓/絵被弾効果参", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果四", 19500, Center, Middle, "cg/ef/ef044_火花c.png");

	StR(4800, 130, -330,"cg/st/3d銀星号_立ち_戦闘b.png");
	FadeStR(0,true);

	Delete("絵演*");
	Fade("絵色白", 100, 0, null, true);

	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01aa","se戦闘_銃器_跳弾01");
	MusicStart("SE01a*",0,1000,0,1500,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Fade("絵色白", 100, 0, null, true);

	CreateSE("SE01b","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01bb","se戦闘_銃器_跳弾02");
	MusicStart("SE01b*",0,1000,0,1200,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Fade("絵色白", 100, 0, null, true);

	CreateSE("SE01c","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01cc","se戦闘_銃器_跳弾01");
	MusicStart("SE01c*",0,1000,0,1200,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);
	Fade("絵色白", 100, 0, null, true);

	CreateSE("SE01e","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01ee","se戦闘_銃器_跳弾02");
	MusicStart("SE01e*",0,1000,0,1000,null,false);
	Fade("絵色白", 0, 1000, null, true);
	Wait(20);

	FadeDelete("絵色白", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
　用人眼无论如何都追不上的速度奔驰的银星号的指尖。

　那一瞬间便响彻而后消失的声音。

　能够确认的事实只有这件。
　不，还有一件。

　枪弹一发都没有打中银星号的装甲。
　虽然卡杰特少佐在不断地射击，目标也一直是正确的。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0930a14">
「这是多么笨拙的运指技巧啊！
　骑士，想要触碰少女柔嫩肌肤的话，
要再轻柔细心一点才行。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0940a14">
「你这样可打动不了任何女孩。
　如此人家可是会请你吃巴掌的哦！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	CreateSE("SEz00","se戦闘_銃器_機関銃乱射02");
	MusicStart("SEz00",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色間繋白", 30000, "#FFFFFF");
	Wait(10);

//あきゅん「演出：一気に読むと重いので分散させます」
	//CreateWindow("絵窓", 15000, 0, 144, 1024, 288, false);
	//SetAlias("絵窓","絵窓");
	CreateColorSP("絵窓/絵演色", 15010, "#66FFCC");
	CreateTextureSPmul("絵窓/絵演背景", 15020, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	//CreateTextureEX("絵窓/絵演立絵装甲", 15100, -980, -1240, "cg/st/resize/3d銀星号_立ち_戦闘blm.png");
	Fade("絵窓/絵演立絵装甲", 0, 1000, null, true);
	Move("絵窓/絵演立絵装甲", 0, -1080, @0, Dxl2, false);

	//CreateTextureEXadd("絵窓/絵被弾効果壱", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	//CreateTextureEXadd("絵窓/絵被弾効果弐", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	//CreateTextureEXadd("絵窓/絵被弾効果参", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	//CreateTextureEXadd("絵窓/絵被弾効果四", 19500, Center, Middle, "cg/ef/ef044_火花c.png");
	CreateTextureEXadd("絵窓/絵被弾効果五", 19500, Center, Middle, "cg/ef/ef044_火花c.png");

	Delete("絵色間繋白");

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果壱", 0, -520, -400, null, true);
	Zoom("絵窓/絵被弾効果壱", 0, $火花縮小率, $火花縮小率, null, true);
	Wait(10);
	SetBlur("絵窓/絵演立絵装甲", true, 2, 500, 50, false);
	Move("絵窓/絵演立絵装甲", 100, -1284, -1125, Dxl2, true);
	CreateSE("SE00","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE00a","se戦闘_銃器_跳弾02");
	MusicStart("SE00*",0,1000,0,1500,null,false);
	Fade("絵窓/絵被弾効果壱", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果壱", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果壱", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果壱", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果壱", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", false);
	FadeDelete("絵窓/絵被弾効果壱", 450, false);

	$火花演出待基本=20;
	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果弐", 0, -98, -465, null, true);
	Zoom("絵窓/絵被弾効果弐", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果弐", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("絵窓/絵演立絵装甲", 100, -865, -1170, Dxl2, true);
	CreateSE("SE01a","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01aa","se戦闘_銃器_跳弾01");
	MusicStart("SE01a*",0,1000,0,1500,null,false);
	Fade("絵窓/絵被弾効果弐", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 20, 10, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果弐", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果弐", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果弐", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果弐", 300, 1000, 0, 100, null, "cg/data/slide_01_02_2.png", false);
	FadeDelete("絵窓/絵被弾効果弐", 450, false);

	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果参", 0, -415, -346, null, true);
	Zoom("絵窓/絵被弾効果参", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果参", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("絵窓/絵演立絵装甲", 100, -1178, -1061, Dxl2, true);
	CreateSE("SE01b","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01bb","se戦闘_銃器_跳弾02");
	MusicStart("SE01b*",0,1000,0,1200,null,false);
	Fade("絵窓/絵被弾効果参", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 20, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果参", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果参", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果参", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果参", 300, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", false);
	FadeDelete("絵窓/絵被弾効果参", 450, false);

	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果四", 0, -220, -470, null, true);
	Zoom("絵窓/絵被弾効果四", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果四", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("絵窓/絵演立絵装甲", 100, -990, -1173, Dxl2, true);
	CreateSE("SE01c","se戦闘_攻撃_鎧_打撃02");
	CreateSE("SE01cc","se戦闘_銃器_跳弾01");
	MusicStart("SE01c*",0,1000,0,1200,null,false);
	Fade("絵窓/絵被弾効果四", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 30, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果四", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果四", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果四", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果四", 300, 1000, 0, 100, null, "cg/data/zoom_01_00_1.png", false);
	FadeDelete("絵窓/絵被弾効果四", 450, false);

	$火花演出待=$火花演出待基本+(Random(3)*20);
	Wait($火花演出待);

	$火花縮小率甲=Random(5)*30;
	$火花縮小率=$火花縮小率甲+250;
	Move("絵窓/絵被弾効果五", 0, -326, -565, null, true);
	Zoom("絵窓/絵被弾効果五", 0, $火花縮小率, $火花縮小率, null, true);
	Rotate("絵窓/絵被弾効果五", 0, @0, @0, 0, null,false);
	Wait(10);
	Move("絵窓/絵演立絵装甲", 100, -1087, -1268, Dxl2, true);
	CreateSE("SE01e","se戦闘_攻撃_鎧_打撃01");
	CreateSE("SE01ee","se戦闘_銃器_跳弾02");
	MusicStart("SE01e*",0,1000,0,1000,null,false);
	Fade("絵窓/絵被弾効果五", 0, 1000, null, true);
	Shake("絵窓/絵演立絵装甲", 300, 30, 0, 0, 0, 1000, Dxl2, false);
	Zoom("絵窓/絵被弾効果五", 300, @250, @250, Dxl2, false);
	Rotate("絵窓/絵被弾効果五", 450, @0, @0, @3600, null,false);
	Shake("絵窓/絵被弾効果五", 450, 0, 8, 0, 0, 1000, null, false);
	DrawTransition("絵窓/絵被弾効果五", 300, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", false);
	FadeDelete("絵窓/絵被弾効果五", 450, true);

	SetBlur("絵窓/絵演立絵装甲", false);
	Move("絵窓/絵演立絵装甲", 6000, -1280, @0, Dxl2, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
　银月的武者烂漫地笑着。

　……那是什么。
　用指尖将炮弹打回去吗。

　……………………

　我自己说出口都难以置信。
　不想去相信。

　然而凭眼前的光景只能推测出这一个真相。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Zoom("絵窓", 300, 1000, 0, Dxl2, true);
	Delete("絵窓");

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs0950b02">
《哦——
　哦哦哦哦啊啊啊啊啊!!》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆竜気砲
	CreateSE("SE01","se戦闘_銃器_砲門構え01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 6100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	CreateTextureSP("絵演", 6000, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_a.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

	CreateSEEX("SE01a","se戦闘_荒覇吐_攻撃02_L");
	MusicStart("SE01a",3000,1000,0,1000,null,true);
	CreateTextureEXadd("絵演上", 6100, Center, Middle, "cg/ev/ev912_荒覇吐竜気砲アップ_b.jpg");
	Zoom("絵演上", 0, 1100, 1100, null, true);
	Shake("絵演上", 360000, 6, 0, 0, 50, 1000, Axl3, false);

	DeleteStA(0,true);
	Delete("絵演下*");

	MeimetuAction();

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0690]
　巨兽回过头，将分外狰狞的炮口探出头部。
　令人起鸡皮疙瘩的轰鸣声，随夜风乱舞。

　……想要对她射击吗。

　不用弹丸，便将目标焚毁殆尽的魔炮。
　她——即使是银星号，也无法躲开吗？

　究竟知不知道他的威胁呢。
　银星号看上去不太高兴，呼地叹了一口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0700]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0960a14">
「——无礼之人。
　未得到女孩子的允许，便将此等庸俗之物
对准人家，这算怎么回事？」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs0970a14">
「对光的粗暴是要付出代价的！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0710]
　对像是警告一般的话语，少佐没有
听进去。
　听都听不见的吧。

　可怕的轰鸣声到达了极限。
　不可思议的死亡咒语已经完成。

　银星号丝毫未动。
　对未知的威胁，不做任何防备——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0720]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0980a14">
「哼……？
　什么啊。<RUBY text="····">这种东西</RUBY>吗？」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);

//◆竜気砲発振
	CreateSE("SE01","se戦闘_荒覇吐_攻撃03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Delete("プロセス*");
	CreateTextureEXadd("絵演上", 3100, Center, Middle, "cg/ev/resize/ev912_荒覇吐竜気砲アップ_bl.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/resize/ev912_荒覇吐竜気砲アップ_bl.jpg");
	SetBlur("絵演", true, 3, 500, 50, false);
	Zoom("絵演*", 0, 2000, 2000, null, true);

	Fade("絵演上", 5000, 1000, null, false);
	Zoom("絵演*", 10000, 500, 500, Dxl2, false);
	Wait(1000);

	Zoom("絵演*", 500, 600, 600, Dxl2, false);
	Shake("絵演", 500, 0, 50, 0, 0, 1000, Dxl3, false);

	CreateWindow("絵窓", 5000, 636, 0, 340, 576, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 0, 1000, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#66FFFF");
	CreateTextureSPmul("絵窓/絵演背景", 5020, Center, Middle, "cg/ef/ef002_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, Middle, "cg/st/3d銀星号_立ち_戦闘b2.png");
	Request("絵窓/絵演立絵装甲", Smoothing);
	Rotate("絵窓/絵演立絵装甲", 0, @0, @180, @0, null,true);
	Move("絵窓/絵演立絵装甲", 0, @280, @0, null, true);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);

	CreateColorEXadd("絵窓/絵演覆白", 6000, "#FFFFFF");
	CreateColorEXover("絵窓/絵演色竜気砲", 5500, "#FFFF00");
	CreateTextureEXmul("絵窓/絵演色竜気砲上", 5510, Center, Middle, "cg/ef/ef001_汎用移動.jpg");
	Fade("絵窓/絵演色竜気*", 0, 800, null, true);
	DrawTransition("絵窓/絵演色竜気砲上", 300, 0, 1000, 100, Dxl2, "cg/data/slide_01_02_0.png", false);
	DrawTransition("絵窓/絵演色竜気砲", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Fade("絵窓/絵演覆白", 3000, 950, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0730]
　死气弥漫。
　身体前的双臂呈十字交叉，银星号抵挡起这一击。


　就这样站立不动——
　凝滞的时间流淌过数个瞬间。

　……死了吗？

　这样一句话从脑中闪过。
　<RUBY text="··">并非</RUBY>因为我是这么想的。

　而是因为无法这么想。
　为了否定而做如此思考。

　事实。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0740]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs0990a14">
「射出<RUBY text="··">光波</RUBY>从内部破坏。
　原来如此。做得不错。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1000a14">
「重要的是<RUBY text="····">隔山打牛</RUBY>吧……
　这种程度的打法，回击真是毫不费力。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1010a14">
「这样——」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 0, null);

//◆フラッシュ？
	CreateSE("SE01","se特殊_エネルギー放棄");
	CreateSE("SE01a","se戦闘_衝撃_攻撃交錯02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 10000, "#FFFFFF");
	Fade("絵色白", 300, 1000, null, false);
	Zoom("絵窓", 300, 10000, 10000, null, true);

	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	Delete("プロセス*");
	FadeDelete("絵暗転", 2000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0750]
　银色武者忽然张开了双臂。
　像是突然清醒了一般敏捷地动了起来。

　那一瞬间，怪物的大炮<RUBY text="···">溶解了</RUBY>。

　并不仅仅是大炮。
　四周的装甲也全部——仿佛被火烧到的冰一般，
被雕琢成弯曲的形状。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0760]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs1020a14">
「如果将光波弹回去的话，你看，就这样——
　使用自己不熟练的招数，
反会自伤。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1030a14">
「对吧？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0770]
　她在头盔的深处眨了下单眼，最后一句是对我说的。
　……就算她是在寻求我的同意，我也没有什么好回答
她的。

　完全不能使人理解的攻防战。
　那个大炮究竟是什么东西呢——还有银星号是如何将
其破坏的呢。

　完全无法理解。
　
　也就是说，<RUBY text="·">这</RUBY>便是我和银星号之间的差距吗。

　想象的翅膀无法触及的尽头的尽头。
　另一个次元的其他世界。

　白银就在那个地方。
　比天地之隔更为遥远。

　————能到达吗？
　我……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	CreateTextureSP("絵演空立絵Ａ", 1200, Center, Middle, "cg/st/3dワーウルフ_騎航_通常.png");
	Move("絵演空立絵Ａ", 0, @350, @-17, null, true);
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_04_00_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_04_00_1", true);

	SetNwC("cg/fw/nwＧＨＱ竜騎兵Ａ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0780]
//◆ボイス「サー·ジョージ!?」
//【ｅｔｃ／ＧＨＱ竜騎兵Ａ】
<voice name="ｅｔｃ／ＧＨＱ竜騎兵Ａ" class="その他男声" src="voice/ma04/020vs1040e006">
「卡杰特卿?!」

//◆ボイス「Screw you――」
//◆「スクリュー！」くらいの発音か。
{	NwC("cg/fw/nwＧＨＱ竜騎兵Ｂ.png");}
//【ｅｔｃ／ＧＨＱ竜騎兵Ｂ】
<voice name="ｅｔｃ／ＧＨＱ竜騎兵Ｂ" class="その他男声" src="voice/ma04/020vs1050e007">
「可恶，杀了你——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm08",0,1000,true);

//◆ＧＨＱ竜騎兵襲来
	CreateSE("SE01","se人体_動作_跳躍02");
	MusicStart("SE01",0,1000,0,1100,null,false);
	CreateTextureEX("絵演空立絵Ｂ", 1180, Center, Middle, "cg/st/3dワーウルフ_騎航_通常.png");
	Request("絵演空立絵Ｂ", Smoothing);
	Zoom("絵演空立絵Ｂ", 0, 950, 950, null, true);
	Move("絵演空立絵Ｂ", 0, @-150, @240, null, true);

	Fade("絵演空立絵Ｂ", 300, 1000, null, false);
	Move("絵演空立絵Ｂ", 300, @-30, @0, Dxl2, true);

	CreateSE("SE02","se人体_動作_跳躍01");
	MusicStart("SE02",0,1000,0,900,null,false);
	CreateTextureEX("絵演空立絵Ｃ", 1160, Center, Middle, "cg/st/3dワーウルフ_騎航_通常.png");
	Request("絵演空立絵Ｃ", Smoothing);
	Zoom("絵演空立絵Ｃ", 0, 750, 750, null, true);
	Move("絵演空立絵Ｃ", 0, @-210, @-130, null, true);

	Fade("絵演空立絵Ｃ", 300, 1000, null, false);
	Move("絵演空立絵Ｃ", 300, @-30, @0, Dxl2, true);

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0800]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs1060a14">
「唔？　新手吗……
　毫无秩序地聚成一群，这多么不成体统啊。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1070a14">
「想要邀请淑女跳舞的话，至少要<RUBY text="····">排队等候</RUBY>嘛。
　不过也好。」

//【光】
<voice name="光" class="光" src="voice/ma04/020vs1080a14">
「对狩猎民族从一开始就不该讲礼节！
　来吧，让光来当你们的对手！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆銀星号、遊んでやる。
	CreateSE("SE01","se戦闘_動作_空突進02");
	CreateSE("SE02","se戦闘_動作_空突進02");
	CreateSE("SE03","se戦闘_動作_空突進02");

	CreateSE("SE001","se戦闘_動作_空突進01");

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");

	MusicStart("SE001",0,1000,0,750,null,false);
	Move("絵演空立絵Ｃ", 1000, @-40, @0, null, false);

	Wait(50);

	Move("絵演空立絵Ｂ", 1000, @-40, @0, null, false);

	Wait(50);

	Move("絵演空立絵Ａ", 1000, @-40, @0, null, false);

	WaitKey(300);

	MusicStart("SE01",0,1000,0,1150,null,false);
	SetBlur("絵演空立絵Ｃ", true, 1, 500, 30, true);
	Move("絵演空立絵Ｃ", 200, @-1200, @-40, Axl2, false);
	Zoom("絵演空立絵Ｃ", 200, 500, 500, Axl2, false);


	Wait(60);

	MusicStart("SE02",0,1000,0,1000,null,false);
	SetBlur("絵演空立絵Ｂ", true, 1, 500, 30, true);
	Move("絵演空立絵Ｂ", 200, @-1200, @0, Axl2, false);

	WaitKey(200);

	MusicStart("SE03",0,1000,0,900,null,false);
	SetBlur("絵演空立絵Ａ", true, 1, 500, 30, true);
	Move("絵演空立絵Ａ", 200, @-1200, @120, Axl2, false);
	Zoom("絵演空立絵Ａ", 200, 3000, 3000, Axl2, false);

	Wait(180);

	Fade("絵色白", 100, 1000, null, true);

	CreateColorSP("絵黒幕", 25000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵色白");

	CreateTextureSP("絵演背景", 2000, InRight, -450, "cg/bg/resize/bg043_江ノ島山林_03l.jpg");
	StL(2100, @-512, @0,"cg/st/3d銀星号_立ち_戦闘.png");
	FadeStL(0,true);

	Move("絵演背景", 150, @512, @0, Dxl2, false);
	Move("@StL*", 150, @512, @0, Dxl2, false);
	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0810]
　……戏剧向下一场景转变。
　飞舞在上空的龙骑兵队——降下，袭击打倒他们上司
的敌骑。

　迎击的银星号。
　展开的战斗——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	DeleteStA(0,true);

	Wait(150);
	DrawDelete("絵色白", 300, 1000, "slide_07_00_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811a]
　……这是否真的足以被称之为战斗，尚存疑问的余地。

　怎么看银星号都显然是在<RUBY text="··">玩闹</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreateColorSPadd("絵色白", 5000, "#FFFFFF");

	CreateTextureSP("絵背効果", 2100, -70, -170, "cg/ev/resize/ev302_94式射撃_l.jpg");

	CreateSE("SE02a","se戦闘_動作_空突進02");
	CreateTextureSPmul("絵演銀一", 3010, -340, -330, "cg/st/3d銀星号_騎航_通常3.png");

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Move("絵演銀一", 300, -470, -360, Dxl2, false);
	Request("絵演銀一", Smoothing);

	FadeDelete("絵色白", 300, true);

	MFlash(30, 8);

	CreateSE("SE02b","se戦闘_動作_空突進01");
	CreateTextureEXmul("絵演銀二", 3020, -30, -80, "cg/st/3d銀星号_騎航_通常4.png");
	Request("絵演銀二", Smoothing);
	MusicStart("SE02b",0,1000,0,1000,null,false);
	Move("絵演銀二", 300, -160, -40, Dxl2, false);
	Fade("絵演銀二", 300, 1000, null, true);

	CreateSE("SE02c","se戦闘_動作_空突進02");
	CreateTextureEXmul("絵演銀三", 3030, 150, -130, "cg/st/3d銀星号_騎航_通常.png");
	Request("絵演銀三", Smoothing);
	MusicStart("SE02c",0,1000,0,850,null,false);
	Move("絵演銀三", 300, 280, -80, Dxl2, false);
	Fade("絵演銀三", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811b]
　在十字枪火的缝隙间，用手指应付必杀的剑招，
欢乐地舞蹈。
　对——她在舞蹈。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//――――――――――――――――――――――――

	CreateSE("SE01b","se戦闘_動作_空突進02");
	MusicStart("SE01b",0,1000,0,1500,null,false);

	Move("絵演銀一", 300, -1300, -576, Dxl2, false);
	Wait(50);
	Move("絵演銀二", 300, -1024, 576, Dxl2, false);
	Wait(50);
	Move("絵演銀三", 300, 1024, @0, Dxl2, true);

	WaitKey(300);

	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_1.png", true);
	Delete("@MF*");
	Delete("絵演*");
	Delete("絵演銀*");
	Delete("絵背効果");

	CreateTextureSP("絵空背景", 1000, Center, Middle, "cg/bg/resize/bg203_旋回演出背景海a_03.jpg");
	CreateTextureSP("絵雑魚二", 2010, -410, -110, "cg/st/3dトロール_騎航_通常.png");
	CreateTextureSP("絵雑魚一", 2000, 120, -280, "cg/st/3dガルム_騎航_通常.png");
	Request("絵雑魚*", Smoothing);
	Zoom("絵雑魚二", 0, 800, 800, null, true);
	Zoom("絵雑魚一", 0, 740, 740, null, true);

	DrawDelete("絵黒幕", 150, 1000, "circle_01_00_0", true);

	CreateSE("SEL01a","se戦闘_動作_空走行01_L");
	CreateSE("SEL01b","se戦闘_動作_空走行02_L");
	MusicStart("SEL01a",2000,100,0,1000,null,true);
	MusicStart("SEL01b",2000,100,0,1500,null,true);

	CreateTextureEX("絵銀", 1800, Center, Middle, "cg/st/3d銀星号_騎突_通常.png");
	Move("絵銀", 0, @0, @10, null, true);
	Zoom("絵銀", 0, 20, 20, null, true);
	Move("絵銀", 1000, @0, @-10, DxlAuto, false);
	Fade("絵銀", 300, 1000, null, true);

	SetVolume("SEL*", 5000, 300, null);
	Zoom("絵銀", 5000, 100, 100, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811c]
　如同文字所述。
　银星号飞行的轨道，总是描绘出美丽的花纹，
该如何用其他词汇来解释呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("音001","se戦闘_動作_空突進04");
	SetVolume("SEL*", 5000, 350, null);

	Zoom("絵空背景", 5000, 1200, 1200, null, false);
	Zoom("絵雑魚*", 5000, @1000, @1000, null, false);
	Move("絵雑魚二", 5000, @-500, @0, null, false);
	Move("絵雑魚一", 5000, @500, @0, null, false);
	Zoom("絵銀", 5000, @60, @60, null, false);
	Wait(1600);
	MusicStart("音001",0,1000,0,1000,null,false);
	Wait(1400);
	Zoom("絵銀", 1000, 1500, 1500, Dxl3, false);

	Wait(400);

	SetVolume("SE*", 200, 0, null);
	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 3100, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev301_銀星号クラッシュ.jpg");
	SetVertex("絵演上", 850, 140);
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵黒幕");

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, false);

	SetVolume("音*", 2000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0811d]
　我呆楞地看入了迷。
　在观众席上，呆站着。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820a]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1090a01">
《……!!》


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0820b]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1100a01">
《主君！
　不好——并不是做这种事的时候！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1110a01">
《<RUBY text="·····">数量在减少</RUBY>……！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0830]
　数量在减少？
　数量——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0840]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1120a01">
《主君！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0850]
　——!!

　这一瞬间，我的意识终于清醒。
　自银星号出现之后便因冲击而完全麻痹的脑髓，
快速转动。

　发狂的士兵的数量<RUBY text="··">不够</RUBY>。
　这当然也有凄惨的自相残杀的原因。

　然而算上这些也不够。
　车辆和步兵应该都有这个的好几倍。消失到哪里去了？

　到哪里…………<k>
　难道说。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0860]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1130a00">
「向<RUBY text="··">眼前</RUBY>的片濑去了吗?!」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1140a01">
《有这个可能……
　他们已成为<RUBY text="··">野兽</RUBY>，
若他们寻找<RUBY text="··">饲料</RUBY>……的话。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0870]
　本能地，向人多的地方前进——
　确实有此可能！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0880]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1150a01">
《一定要去阻止！》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1160a00">
「嗯——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890a]
　刚想做肯定的回答。
　我的思考便戛然而止。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SEL01","se戦闘_荒覇吐_移動02_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	CreateTextureEX("絵荒覇", 10000, -680, InBottom, "cg/ev/resize/ev909_荒覇吐_l.jpg");
	Move("絵荒覇", 6000, @0, -150, DxlAuto, false);
	Fade("絵荒覇", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0890b]
　在狂乱的旋涡中，出现一只分外凶猛的东西。
　怪物——卡杰特少佐。

{	SetVolume("SEL01", 2000, 0, null);
	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　即使已经严重损坏，却仍瞄准空中的银骑，不停地炮
击。
　
　——而那之中，也包括<RUBY text="··">他们</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEXadd("絵効果", 10010, Center, Middle, "cg/ev/ev003_銀星号事件イメージ３.jpg");
	Fade("絵効果", 500, 500, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0891]
　这个地方真是一处地狱……
　精神被破坏，自相残杀的进驻军的士兵们……

　为了拯救他们，必须得阻止银星号——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵板写", 20000);
	Wait(1);
	CreateColorSP("絵色黒", 19000, "#000000");

	Delete("絵荒覇");
	Delete("絵効果");

	SetVolume("SE*", 1000, 0, null);
	FadeDelete("絵板写", 300, true);
	FadeDelete("絵色黒", 300, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0900]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1170a01">
《该怎么做?!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1180a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0910]
　怎么做。
　该怎么做才好——我是知道的。

　无法在短时间内将他们全部解决。
　在这里的已经只有村正了。

　在这里，没有可以依靠的战友。
　而且事到如今，她们还平安吗——不。这一点我坚信。
她们应该有生存下去的力量。正因如此，我才会答应让
她们被卷入这危险的道路中去。

　我只能以我一人的力量与目前的状况战斗。
　而且只能排出个优先顺位。

　……<RUBY text="····">优先顺位</RUBY>！
　这种狂妄自大是从何而来的啊。

　不过显而易见的事实只有一个。
　在这么做的期间也有人会<RUBY text="···">无谓地</RUBY>死掉！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0920]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1190a00">
「先解决怪物！
　接下来是狂乱的军团！
　最后，最花费工夫的银星号！」

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1200a00">
「以上，方针！」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1210a01">
《了解！》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵黒幕", 16000, "#FFFFFF");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0930]
　村正立刻启动了飞行推进器。
　全身都燃起了飞跃的冲动。

　……能量不足！
　接下来能运行到什么时候呢……！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0940]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs1220a14">
「来了吗……
　景明。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0950]
　银星号望向这边。
　在剑林弹雨下从容不迫地散步。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw銀星号_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0960]
//【光】
<voice name="光" class="光" src="voice/ma04/020vs1230a14">
「我正想着你也快等不下去了呢。
　很好——今天就送你个<RUBY text="···">好东西</RUBY>吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 1000, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 1000, "slide_01_03_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0970]
　话音刚落，那抹银影便从包围网的中央消失了。
　十分突然，连喷烟也未留下。

　并不是使用了魔术。
　只不过是用飞行来逃脱。

　然而由于她的加速性能与旋转性能过于异常，常人
用肉眼看只觉得像是消失了一般。
　进驻军的武者既惊慌又惊愕。

　只有操纵重力的银星号才拥有的超常机能。
　——她，袭来了！

{	CreateSE("SE01","se人体_足音_鎧歩く04");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　我摆好姿势。
　即使了解这是过于无谓的抵抗。

　下次见到那抹银色的瞬间，就算这身躯被切断，
也不足以感叹其不合常理。
　
　然而，并没有这样。

　白银武者的身影出现在暴风雨的中心。
　巨兽的头上。

{	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 200, 600, Axl2, false);}
　在那里优雅地端坐，她举起单手。
　指间出现的是——光明。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateSE("SE01a","se特殊_雰囲気_卵発光01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0980]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1240a01">
《“卵”!!》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1250a00">
「怎么会?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0990]
　连阻止她的时间都没有。

{	CreateSE("SE02","se特殊_雰囲気_崩壊音");
	MusicStart("SE02",0,1000,0,1250,null,false);}
　银星号将紧握着光球的手刺入怪物装甲的体内。

　虽然看不出十分用力，但她连手肘都沉了下来。

{	CreateSE("SE02a","se戦闘_銀星号_精神汚染波_L");
	MusicStart("SE02a",0,1000,0,1000,null,true);}
　翻腾的巨兽。
　轻快的笑声响起，银骑从那里飞了起来。


　好像越发被激起怒火，怪物催动迟钝的脚步向不可能
追上的敌骑追去。全身都暴露在炮火之下。
　几乎都没将视线移到它身上，银星号闪躲着。又轻易
躲开等待着的龙骑兵，在夜空中飞舞——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE02a", 1000, 0, null);
	CreateSE("SE01","se戦闘_動作_空上昇01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("絵黒幕", 16000, "#FFFFFF");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("絵色白");

	CreateTextureSPadd("絵演上", 3100, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	CreateTextureSP("絵演", 3000, -55, -190, "cg/ev/resize/ev504_村正突進l.jpg");
	Zoom("絵演上", 0, 1300, 1300, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 1000, 0, 10, 0, 0, 1000, Dxl3, false);

	Move("絵演*", 150, -615, @0, Dxl2, false);

	DrawDelete("絵黒幕", 150, 100, "slide_01_03_1", true);

	FadeDelete("絵演上", 200, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1000]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1260a01">
《主君！
　不好了！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1270a01">
《那个“卵”马上就要孵化了！
　和<RUBY text="·····">之前的家伙</RUBY>一样！
现在必须立刻阻止它才行！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1280a00">
「唔!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1010]
　理解村正话语的那一刹那，我连回答的时间都省了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆飛翔
	Move("絵演*", 150, @-60, @-200, Dxl2, false);

	CreateSE("SE01a","se戦闘_動作_空突進01");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("絵黒幕", 16000, "BLACK");
	DrawTransition("絵黒幕", 150, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	Delete("絵演");
	OnBG(100,"bg002_空a_03.jpg");
	FadeBG(0,true);

	DrawDelete("絵黒幕", 150, 100, "slide_02_01_1", true);

	CreateSE("SE01","se戦闘_荒覇吐_移動01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev909_荒覇吐.jpg");
	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1000, 1000, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1020]
　追逐着在夜空闪耀的银影，踯躅前进，半死的巨兽骑。
　我进一步地追赶着向它飞去。

　那仅仅以龟速前行的目标，它的背影在我视界中的大
小也<RUBY text="····">没有增加</RUBY>。
　我方也只能以同样的速度飞行。

　就算如此还是接近，瞄准目标。
　架起太刀。

　怪物完全没有将注意力分到我这边。
　只要追上它，想要找到漏洞就十分容易了，我将举过
头顶的刀刃对准某一点。

　翼甲。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆剣撃。ざしゅー。
	CreateColorEX("絵色黒", 10000, "#000000");

	CreateTextureSPadd("絵演効果", 6000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	CreatePlainSP("絵板写", 5000);
	SetBlur("絵板写", true, 3, 500, 80, false);

	Fade("絵色黒", 300, 1000, null, false);
	Zoom("絵板写", 500, 1200, 1200, Dxl2, false);

	Zoom("絵演効果", 300, 2000, 2000, AxlDxl, false);
	Fade("絵演効果", 300, 0, null, false);
	DrawDelete("絵演効果", 300, 100, "circle_01_00_1", false);

	WaitAction("絵色黒", null);

	Delete("絵板写");
	Delete("絵演効果");

	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_down2(10010,@0, @-200,2000);
	SL_downfade2(10);

	CreateSE("SE04a","se戦闘_攻撃_剣戟弾く02");
	MusicStart("SE04a",0,1000,0,850,null,false);
	CreateColorSP("絵色白", 30000, "#FFFFFF");
	Delete("絵色黒");

	CreateTextureSPadd("絵演荒覆", 13010, -100, -100, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	CreateTextureSP("絵演荒", 13000, -100, -100, "cg/ev/resize/ev909_荒覇吐_m.jpg");
	Zoom("絵演荒覆", 0, 1250, 1250, null, true);
	SetBlur("絵演荒覆", true, 3, 500, 80, false);
	FadeDelete("絵色白", 150, false);

	FadeDelete("絵演荒覆", 1000, false);
	Shake("絵演荒覆", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演荒覆", 200, 1000, 1000, AxlDxl, true);

	SetFwC("cg/fw/fwガーゲット_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1030]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1290b02">
《呜哦哦!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1040]
　怪物的姿势致命地倾斜了。
　在危险的平衡上成立的飞行一崩溃，巨大的躯体
便向万有引力折服而掉落到地上。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆ずずーん。
	CreateSE("SE03","se戦闘_荒覇吐_転倒01");
	MusicStart("SE03",0,1000,0,750,null,false);
	CreateColorSP("絵白転", 30000, "#FFFFFF");

	Wait(10);
	Delete("絵演荒*");
	CreateTextureSP("絵演", 2000, Center, -230, "cg/ev/ev122_擱坐した荒覇吐.jpg");
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);
	WaitKey(10);
	Delete("絵色黒");
	FadeDelete("絵白転", 300, false);
	CreatePlainSP("絵板写", 4999);
	FadeFR2("絵板写",0,1000,300,0,0,30,Dxl3, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1050]
　一半被埋在地里，奇异的剑胄搁浅了。
　已经飞不起来了吧——都不打算试探它了。


　我向扭曲作品的上空袭去。
　就算一秒也要珍惜。一瞬也要珍惜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fwガーゲット_不快.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1060]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1300b02">
《不要妨碍我!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	CreateSE("SE01","se戦闘_荒覇吐_攻撃05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演上", 3100, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev910_荒覇吐胸元アップ.jpg");
	Zoom("絵演", 0, 1000, 1000, Dxl2, false);
	Request("絵演*", Smoothing);

	Zoom("絵演上", 0, 1200, 1200, null, false);
	Zoom("絵演上", 200, 1100, 1100, Dxl2, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("絵演上", 200, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1070]
　骑士吼叫道。
　尚残留的无数枪炮对准了我。

　没有避开的时间。
　也没空给人当成标靶。

　用无法维持原状的双翼飞翔令人十分焦急。
　我任由自己做自由落体运动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演２", 4000, Center, Middle, "cg/ev/ev503_村正抜刀剣光.jpg");
	Fade("絵演２", 300, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0000]
　架起太刀。
　将全身都变为箭头。

　穿透————

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//―――――――――――――――――――――――――――――

//◆ずがーん。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	MusicStart("SE01",0,1000,0,1500,null,false);

	SL_down2(20000,@0, @0,2000);
	SL_downfade2(10);

	CreateSE("SE03","se戦闘_衝撃_鎧散華");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPover("絵演上", 3100, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ef/ef022_汎用武者散華.jpg");
	SetBlur("絵演上", true, 3, 300, 100, false);

	Delete("絵色黒");
	Delete("絵演２");

	Zoom("絵演上", 500, 1100, 1100, Dxl1, false);
	Shake("絵演", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	WaitKey(250);
	FadeDelete("絵演上", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1080]
　瞄准装甲上已然造成的深深裂痕的一击，将其完全穿
透、斩断，怪物的身体被一切为二。

　猛烈的惯性，使肩甲撞到了地表。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_1", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1090]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1310a00">
「……
　解决了吗?!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1100]
　冲击将昏迷的意识拉了回来，我向远方望去。
　残骸……在近旁的，四脚箱子。

　牢笼。
　——那里面的孩子们。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1110]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1320a00">
「芳养先生！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1120]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆がっ。格子を掴む
	CreateSE("SE01","se日常_建物_扉開かず");
	MusicStart("SE01",0,1000,0,800,null,false);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1130]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1330a00">
「芳养先生?!」

{	FwC("cg/fw/fw芳養_不安.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/020vs1340b48">
「………………啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1140]
　眼睑微微睁开。
　眼神涣散着。并没有看着我。然而。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw芳養_不安.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1150]
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/020vs1350b48">
「……凑斗先生……？」

//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/020vs1360b48">
「凑斗先生……
　在……这里吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1370a00">
「是！」

{	FwC("cg/fw/fw芳養_通常.png");}
//【芳養】
<voice name="芳養" class="芳養" src="voice/ma04/020vs1380b48">
「……啊……
　总觉得……安心了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1160]
　还活着。
　在四周，他的弟弟妹妹也微弱地呻吟着，扭动着身体。


　……还活着！　得救了！
　
　贯穿全身的安心感，让我不禁跪倒在地。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1170]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1390a01">
《主君！》

//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1400a01">
《还没结束呢!!》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1410a00">
「什么?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateSE("SE01","se特殊_雰囲気_発光04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵色白", 5000, "#FFFFFF");
	Fade("絵色白", 200, 1000, Axl2, true);

	CreateTextureSP("絵演荒", 4900, -680, -850, "cg/ev/resize/ev122_擱坐した荒覇吐l.jpg");
	Move("絵演荒", 6000, @0, -570, DxlAuto, false);

	WaitKey(300);

	FadeDelete("絵色白", 600, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1180]
　我慌忙抬起头。

　——还有?!

　我愕然地看着怪物。
　不——他已经死了。

　不会错的。凭这两年的经验我能断定。
　这副剑胄只会化为铁屑。

　那么，“卵”应该也会一起毁灭——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateColorEXadd("絵色白", 5000, "#FFFFFF");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1190]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma04/020vs1420a01">
《<RUBY text="····">不是这边</RUBY>！
被植入“卵”的，是里面的武者！》

{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1430a00">
「!!」

{	CreateSE("SE01a","se特殊_雰囲気_卵発光01");
	Fade("絵色白", 200, 750, Axl2, false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1440b02">
「唔哦哦哦哦哦哦哦!!」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	SL_rightdown2(5100,@0, @0,1500);
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");

	Delete("絵色白");
	Delete("絵演荒");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdownfade2(10);

	CreateSE("SE01a","se戦闘_攻撃_鎧_剣戟04");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateTextureSPadd("絵演覆", 110, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	CreateTextureSP("絵演", 100, Center, Middle, "cg/ef/ef040_汎用衝突.jpg");
	Request("絵演*", Smoothing);
	Rotate("絵演*", 0, @0, @180, @0, null,true);
	Zoom("絵演*", 0, 1300, 1300, null, true);
	SetBlur("絵演*", true, 3, 500, 30, false);
	Delete("絵色黒");
	Shake("絵演*", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵演*", 200, 1100, 1100, null, false);
	FadeDelete("絵演覆", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1200]
　理解和敌意同时造访。
　吼叫与斩击也在同一瞬间。

　我险险接下。
　与袭击者的视线相交。

　进驻军的将校。
　被华丽的剑胄包裹全身的骑士。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1210]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1450a00">
「卡杰特少佐!!」

{	FwC("cg/fw/fwガーゲット_不快b.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1460b02">
「蛮族们啊！
　蛮族们啊!!」

{	FwC("cg/fw/fwガーゲット_不快.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1470b02">
「竟然、竟然将我的同胞——
　在国外的这种偏僻地方！」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1480b02">
「死掉了几个人?!
　啊啊……」

//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/020vs1490b02">
「为了母亲大陆，而应当一同为圣战而战的
他们！
　啊啊！　啊啊啊啊啊啊啊啊!!」

{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma04/020vs1500a00">
「……唔。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg043_江ノ島山林_03.jpg");
	StL(1000, @-75, @0,"cg/st/3dアスカロン_立ち_抜刀.png");
	StR(1100, @75, @0,"cg/st/3d村正標準_立ち_戦闘.png");
	FadeStA(0,true);
	FadeBG(0,true);
	DrawDelete("上背景", 150, 100, "slide_01_03_0", true);
	DrawDelete("絵暗転", 150, 100, "slide_01_03_0", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1220]
　用恶人先告状这话反唇相讥也没什么问题吧。
　因为他们并不是作为无辜的市民而来这里的。
而是为了向我攻击，同我战斗而来到这里的。

　然而少佐的愤怒是真实的。
　悲伤也是。

　眼泪也是。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_斧振る01");
	SL_down2(5100,@0, @-288,2000);
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_downfade2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1222a]
　一刀一刀，都载满了愤怒。
　那白刃一闪，寄宿着悲痛。

　从无机质的铁面深处渗出的液体，泛着血色
滴落到地面上。

　将这所有<K>
　
　置之不理。

　将心门关闭。
　一切，什么都不反省——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE*", 100, 0, null);

//◆斬。ずばしゅー。
	CreateColorSP("絵色黒", 5000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_centerout2(5100,@0, @0,1500);
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_centeroutfade2(10);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01a","se人体_血_血しぶき01");
	SL_centerdamN(@0, @0,1500);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_centerdamfadeN2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text1230]
　我——
　杀了乔治·卡杰特少佐。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

..//ジャンプ指定
//次ファイル　"ma04_021.nss"

}



.//プロセス用======================================================

..//明滅な光
function MeimetuAction()
{
	CreateProcess("プロセス明暗", 5000, 0, 0, "MeimetuSET");
	SetAlias("プロセス明暗","プロセス明暗");
	Request("プロセス明暗", Start);

}

function MeimetuSET()
{
	begin:
	while(1)
	{
	Fade("@絵演上", 800, 1000, null, true);
	Wait(200);
	Fade("@絵演上", 800, 250, null, true);
	Wait(200);
	}

}