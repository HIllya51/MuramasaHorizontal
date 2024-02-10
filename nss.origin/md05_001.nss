//<continuation number="930">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_001.nss_MAIN
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
	#bg026_普陀楽山塞a_02=true;
	#bg066_普陀楽城内のどか_02=true;
	#ev237_空に昇った金神_a=true;
	#ev237_空に昇った金神_b=true;
	#ev237_空に昇った金神_c=true;
	#ev239_茶々丸の最期_a=true;
	#ev801_戦争絵シリーズその１_a=true;
	#ev240_戦争状況図説_a=true;
	#ev240_戦争状況図説_b=true;
	#ev240_戦争状況図説_c=true;
	#ev240_戦争状況図説_d=true;
	#ev240_戦争状況図説_e=true;
	#ev240_戦争状況図説_f=true;
	#ev240_戦争状況図説_g=true;
	#ev240_戦争状況図説_h=true;
	#ev240_戦争状況図説_i=true;
	#ev240_戦争状況図説_j=true;
	#ev240_戦争状況図説_k=true;
	#ev240_戦争状況図説_l=true;
	#ev240_戦争状況図説_m=true;
	#bg049_景明故郷住宅地b_02=true;
	#bg049_景明故郷住宅地モブb_01=true;
	#ev239_茶々丸の最期_b=true;
	#ev239_茶々丸の最期_c=true;
	#ev239_茶々丸の最期_d=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_002.nss";

}

scene md05_001.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md04_062.nss"


//◆普陀楽城
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",2000,700,0,250,null,true);

	OnBG(100, "bg026_普陀楽山塞a_02.jpg");
	FadeBG(0, true);

	Delete("上背景");
	FadeDelete("黒",2000,true);

	Wait(1000);

	SoundPlay("@mbgm32", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　保住了濒死的茶茶丸一命，却没办法从根源上治愈她
的致命伤。
  缓慢地接近死亡……如今，生命即将终结。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内。bg066
	CreateTextureEX("城内", 200, @0, @0, "cg/bg/bg066_普陀楽城内のどか_02.jpg");
	Fade("城内", 1000, 1000, null, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　遵从她想看天空的愿望，把她带到外面。
  现在的普陀乐城内人迹罕见。不用担心会遇到纷争。

  让茶茶丸坐在松树根部，我也在她隔壁坐下，两人一起
抬头望天。
  村正就伫立在离我们一步之遥的地方。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空。第二太陽。ev237a
	CreateTextureEX("第二太陽", 210, @0, @0, "cg/ev/ev237_空に昇った金神_c.jpg");
	SetVolume("SE01L*", 2000, 1000, null);
	Fade("第二太陽", 1000, 1000, null, true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　奇怪的天体依然在那里。

  人们已经将对它的称呼定为第二太阳。
  这是仅从外观而来的名称，实际上它与太阳几乎是毫
无共通点——例如它会进行无视引力的运动；虽然放出
强烈的光芒却似乎并不发热等等。

  据说在目前的专家之间，普遍将它推测为自然产生或
人为制造的一种幻象。
  各国也有在计划要为了确定真伪而进行正式调查——
不过如今情势下大概难以实行吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010010a00">
「那真的是光吗？」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010020a07">
「……嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　虽然声音衰弱，茶茶丸却毫不犹豫地，肯定了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 20000, 700, null);

//◆ＥＶ：茶々丸最期
	CreateTextureEX("さらば茶々丸", 240, @0, @0, "cg/ev/ev239_茶々丸の最期_a.jpg");
	Fade("さらば茶々丸", 1000, 1000, null, true);
	Delete("第二太陽");

	Wait(500);

	SetFwC("cg/fw/fw茶々丸_寂寥.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010030a07">
「那是公主殿下……也是从地底的牢笼解放出
来的神哦。
  虽然我不清楚到底是谁吞噬了谁。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010040a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010050a07">
「声音变了。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010060a00">
「声音？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010070a07">
「我给你听过的吧。那个大混蛋神明的吼声。
　那声音……变得柔和了。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010080a07">
「现在听起来像摇篮曲。
　……这是公主殿下的声音哦。一定是的。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010090a00">
「…………」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010100a07">
「哥哥听不到吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010110a00">
「……不。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010120a00">
「我觉得我听得到。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　自天空出现第二太阳以来，一直持续着吹拂的这阵风。
  在耳旁回荡的回音，不知为何——怎么听都会让人想起
银星号的歌。

  想起那生生激起人之斗争冲动的，可怕的歌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 20000, 0, null);

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010130a07">
「这声音正在将世界包裹住。
  大家都……毫无知觉地，听着公主殿下的歌
……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010140a00">
「……这就是原因吗？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010150a00">
「所以，才会这样吗？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010160a07">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　茶茶丸没有回答。
  只用眼神表示了肯定。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：戦争イメージ

	CreateTextureSP("戦争絵00", 230, @0, @0, "cg/ev/ev801_戦争絵シリーズその１_a.jpg");
	CreateTextureSPadd("絵背景100", 230, Center, Middle, "cg/ef/ef026_汎用爆撃.jpg");
	Fade("絵背景100", 0, 700, null, true);


	Fade("さらば茶々丸", 1000, 0, null, true);
	Delete("さらば茶々丸");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　自那个『神』解放以来，并没有过去多久。然而在这
极短的时间内发生于世界各地的剧变，大概与过去历史
的几年，甚至几十年的变化相当了吧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆世界地図をレイヤ重ね
//◆中近東を示す。赤塗り？

	CreateTextureEX("戦争状況01", 240, @0, @0, "cg/ev/ev240_戦争状況図説_a.jpg");
	Fade("戦争状況01", 1000, 1000, null, true);

	Delete("絵背景100");

	WaitKey(1000);

	CreateTextureEX("戦争状況02", 250, @0, @0, "cg/ev/ev240_戦争状況図説_b.jpg");
	Fade("戦争状況02", 1000, 1000, null, true);
	Delete("戦争絵00");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　先是在中近东地区，长期被迫服从于大英联邦的各个
<RUBY text="Islam">回教</RUBY>国家纷纷暴动。
  这是过去也曾发生过的事……但是没有任何先兆，而
且国家之间也没有联合起来的突发性起义，很是异常。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆中国
	CreateTextureEX("戦争状況03", 260, @0, @0, "cg/ev/ev240_戦争状況図説_c.jpg");
	Fade("戦争状況03", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　同样在大英联邦保护下的大汉帝国中，宫廷内的武装
政变与地方军阀的叛乱，再加上民众的暴动都一齐爆发。
  听说皇帝已经往大英本国逃命去了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆スペイン
	CreateTextureEX("戦争状況04", 270, @0, @0, "cg/ev/ev240_戦争状況図説_d.jpg");
	Fade("戦争状況04", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　伊比利亚半岛上也飘起了反抗大英的狼烟。
  领袖是弗朗西斯科·佛朗哥·巴哈蒙德将军。身
为军人的他名望很高，他所率领的<RUBY text="Reconquista">国土收复运动</RUBY>军
精锐强悍，战况在大英军渐处劣势的情况中推移着。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆イタリア

	CreateTextureEX("戦争状況05", 280, @0, @0, "cg/ev/ev240_戦争状況図説_e.jpg");
	Fade("戦争状況05", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　另外在意大利半岛上，<RUBY text="Duce">统帅</RUBY>慕索里尼东山再起。
  他本应该死于之前的大战，其真面目只能说是
无比的诡异——尽管如此还是有很多人集结于他的旗下，
使夺回祖国的情绪不断高涨。

  简直就像只要有成为掀起战争的契机，无论是正主还
是冒牌货都无所谓一样……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆イギリス本国

	CreateTextureEX("戦争状況06", 290, @0, @0, "cg/ev/ev240_戦争状況図説_f.jpg");
	Fade("戦争状況06", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　连大英联邦自己也无例外地发生了剧变。
  受严格的阶级社会所压迫，劳动者阶层在各地暴动。
不仅袭击资产家，甚至袭击首都的王宫，使之一片骚乱。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ポーランド

	CreateTextureEX("戦争状況07", 300, @0, @0, "cg/ev/ev240_戦争状況図説_g.jpg");
	Fade("戦争状況07", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　也不知是否是看见了大英联邦的混乱。
　<RUBY text="Russia">俄国</RUBY>的西方诸侯军开始侵略波兰。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆南アフリカ
	CreateTextureEX("戦争状況08", 310, @0, @0, "cg/ev/ev240_戦争状況図説_h.jpg");
	Fade("戦争状況08", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　非洲南部的德兰士瓦公国为了结束与大英联邦之间围
绕金刚石矿的争端而向非洲总督府宣战……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ニュージーランド、オーストラリア

	CreateTextureEX("戦争状況09", 320, @0, @0, "cg/ev/ev240_戦争状況図説_i.jpg");
	Fade("戦争状況09", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　澳大利亚总督府，与作为南洋原住民最后据点的新西
兰之间也燃起了战火。
  
  再有，与大英联邦没有直接联系的地域——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラジルとアルゼンチン

	CreateTextureEX("戦争状況10", 330, @0, @0, "cg/ev/ev240_戦争状況図説_j.jpg");
	Fade("戦争状況10", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　南美大陆的二雄，巴西与阿根廷开战了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆インドネシア
	CreateTextureEX("戦争状況11", 340, @0, @0, "cg/ev/ev240_戦争状況図説_k.jpg");
	Fade("戦争状況11", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　曾经被统一的印度尼西亚诸岛分裂。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆タイとビルマ

	CreateTextureEX("戦争状況12", 350, @0, @0, "cg/ev/ev240_戦争状況図説_l.jpg");
	Fade("戦争状況12", 1000, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　泰国与缅甸两个王国再度开始了注定的对抗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ここまで取り上げられた地域を全て赤表示
//◆全世界を赤表示

	CreateTextureEX("戦争全部", 360, @0, @0, "cg/ev/ev240_戦争状況図説_m.jpg");
	Fade("戦争全部", 1000, 1000, null, true);
	Delete("戦争状況*");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　————归根结底。

　存在于地球上的战争火种，不知是联动还是各自
单独发起，<RUBY text="··">全都</RUBY>燃起火来将周围烧焦。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内。bg066

	FadeDelete("戦争全部",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　大和也不例外。
  六波罗与进驻军的战斗是习惯性地持续着，而各
地的倒幕势力介入其中，使得幕府与进驻军各自产
生内部分裂——纷争的混乱程度愈加扩大了。

　这世界性的剧烈动荡，并不像一部分有识之士所主
张的，是现代人类对以大英联邦为首的专制统治的综合
性拒绝意志表现。
  而只是……<k><RUBY text="··········">个人意志所期望的结果</RUBY>吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010170a00">
「也就是说，银星号的精神污染正使得全世界
发狂吗？」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010180a07">
「因为范围太广，污染的进度比较慢。
　不过只要再过一周左右……」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010190a07">
「全人类都会变为只懂战斗的狂兽了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010200a00">
「……」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010210a00">
「也就是说，人类世界将会毁灭。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010220a07">
「因为有装甲保护所以武者会存活下来哦。
　暂时的。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010230a00">
「这确实只能是<RUBY text="··">暂时</RUBY>而已吧。
  不可能仅靠武者就能维持社会。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010240a07">
「是啊……」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010250a07">
「是社会将崩溃，走向灭亡呢。
  还是在这之前就都变成玻璃塑像呢……只剩这
两种可能了。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　玻璃塑像。
　
　……没错。这也有可能。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆bg049b

	CreateTextureEX("街", 210, @0, @0, "cg/bg/bg049_景明故郷住宅地モブa_01.jpg");
	Fade("街", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　那天体，不定期地往地面降雨。
　雨——也不知这个形容是否正确。

　<RUBY text="·······">宛若液体的光线</RUBY>。如此奇妙的喷出物。
　这东西侵袭了世界各地。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
	CreateColorEX("ホワイト", 15000, "WHITE");
	Fade("ホワイト", 1000, 1000, null, true);

//◆bg049c
	CreateTextureEX("街2", 210, @0, @0, "cg/bg/bg049_景明故郷住宅地モブb_01.jpg");
	Fade("街2", 0, 1000, null, true);
	Delete("街");
	FadeDelete("ホワイト",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　接着让该地的生物——有时是生物以外的东西也发生
变异。
　变成像玻璃或水晶般透明，可是同时却具有金属性质
的奇妙物质。

　调查毫无进展。接触到该物质的人有极大几率会发生
同样的变异，因此难以调查。
  而且已变异的人甚至连生死，现在都还未弄清楚。

　只是变成“雕像”的人都停止了生命活动。
　这是毫无疑问的事实。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り

	FadeDelete("街2",1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010260a00">
「果然……是死的吗？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010270a07">
「他们是没当成金神的同伴呢，还是已经完全
成为金神的同伴了呢。
  实际上到底是哪种情况我也不知道。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010280a07">
「反正，作为生物这跟死了是一样的吧。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010290a00">
「……那些光雨，终究也会——」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010300a07">
「覆盖全地球……
  我想这同样花不了多少时间。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010310a00">
「…………」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010320a00">
「……世界，会毁灭……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010330a07">
「这样下去的话，确实呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　以仿佛给答案打勾一样的轻松与果断，濒死的公方
肯定了灭世预言。
　不过这也是理所当然的事吧。

　因为主导了这种毁灭的，不是别人，正是她自己。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――




//◆ev239

	CreateTextureEX("さらば茶々丸", 220, @0, @0, "cg/ev/ev239_茶々丸の最期_a.jpg");
	Fade("さらば茶々丸", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010340a00">
「然后，你们怎么办？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010350a07">
「嗯？」

{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010360a00">
「你们……绿龙会。
　如今如愿以偿，召唤了神明。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010370a00">
「那么，今后打算怎么办？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010380a07">
「谁知道。
  大概谁也没考虑过这之后的事情吧。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010390a07">
「大家也许会心满意足，从而自杀。
  或者事到如今才后悔，而在大吵大闹吧……
总觉得这种情况会比较多。」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010400a00">
「……你们——」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010410a07">
「我说过的吧，我们是无聊的渣滓集团。
  他们也就是这种程度……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010420a07">
「我自己，也一样。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010430a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆空と黒太陽
	CreateTextureEX("黒太陽", 230, @0, @0, "cg/ev/ev237_空に昇った金神_c.jpg");
	CreateSE("SE01L","se戦闘_神_グラビティブラスト_準備_L");
	MusicStart("SE01L",2000,1000,0,250,null,true);
	Fade("黒太陽", 1000, 1000, null, true);

	Wait(500);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010440a00">
「该怎样才能阻止？」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010450a07">
「……阻止世界毁灭？」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010460a00">
「是啊。」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010470a07">
「那就只有破坏掉那个了吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　以仿佛指引方向的声音——事实上她的手臂已无法
动弹——茶茶丸指向天空。
　那是个简单的结论。既然那天体是元凶，那么只要去
除掉它就能解决问题了。

　可是，没有办法。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010480a00">
「……无论如何都到达不了。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010490a07">
「怎么看它都超越了大气层。
  并不是武者的飞行能达到的高度。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010500a07">
「只能请哥伦比亚炮出击了。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010510a00">
「我没兴趣跑到月球上去。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　在此之前我不打算尝试<RUBY text="Science·Fiction">科幻小说</RUBY>里的手法。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239
	SetVolume("SE01L", 10000, 0, null);
	FadeDelete("黒太陽",1000,true);

//おがみ：茶々丸台詞、音声あわせ
//「……待っていればいいよ」

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010520a07">
「……等待就行了。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010530a00">
「等待？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010540a07">
「那个东西——
　公主殿下一定会降落的。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010550a07">
「快了。
　为了得到渴望的东西。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010560a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　它会降落？
　那个天体……？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010570a07">
「哥哥，你等待就行了。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010580a07">
「调整好自己的状态……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010590a00">
「身体状态吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239a
//■aだとそのままなので記述なし inc櫻井
	CreateTextureEX("さらば茶々丸02", 230, @0, @0, "cg/ev/ev239_茶々丸の最期_b.jpg");
	Fade("さらば茶々丸02", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　茶茶丸的双眼紧紧盯住我。
　那双——逐渐变得空洞的眼眸。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010600a07">
「听好了哦？
　这是我对哥哥，最后的忠告。」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010610a07">
「只要哥哥还是凑斗景明，你就绝对赢不了公
主殿下。
  因为公主殿下，是凑斗光。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010620a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010630a07">
「哥哥要变成无名英雄。
  只以守护世界为目的……舍弃个人。
成为遵从公之大义的武力行使者。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010640a07">
「成为真正的英雄。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010650a00">
「……我……」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010660a07">
「有无资格无所谓。
  这是唯一的方法哦。哥哥。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010670a07">
「打倒公主殿下，拯救世界的办法，只有这个。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010680a00">
「……」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010690a07">
「……听好了哦？
　哥哥，别搞错了。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010700a07">
「这是我足利茶茶丸。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010710a07">
「对哥哥，
　对世界。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239b

	CreateTextureEX("さらば茶々丸021", 230, @0, @0, "cg/ev/ev239_茶々丸の最期_c.jpg");
	Fade("さらば茶々丸021", 1000, 1000, null, true);
	Delete("さらば茶々丸02");

	Wait(500);

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010720a07">
「最后的————诅咒。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010730a00">
「…………？」

{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010740a07">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239

	FadeDelete("さらば茶々丸021",1000,true);

	SetFwC("cg/fw/fw茶々丸_冷酷.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010750a07">
「……呼……」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010760a00">
「茶茶丸？」

{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010770a07">
「我累了。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010780a00">
「……是吗？」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010790a07">
「唉。
　我好想……见到世界的毁灭啊。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010800a07">
「好想，
在听不到任何人声音的安静世界中睡觉。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010810a00">
「…………」

{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010820a07">
「不过……算了。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010830a07">
「吵死人的混蛋神明的声音，
已经变成公主殿下的歌声。
　而且哥哥的声音很温柔。」

{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010840a07">
「其它的声音也……很远了。」

{	FwC("cg/fw/fw景明_悲しみ.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010850a00">
「茶茶丸。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010860a07">
「嗯。
　这样，就很好。」

{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010870a07">
「这就……睡得着了……」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010880a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ev239c

	CreateTextureEX("さらば茶々丸03", 230, @0, @0, "cg/ev/ev239_茶々丸の最期_d.jpg");
	Fade("さらば茶々丸03", 1000, 1000, null, true);

	SetFwC("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010890a07">
「哥哥。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010900a00">
「……嗯。」

{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md05/0010910a07">
「再见。」

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010920a00">
「…………嗯。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0010930a00">
「再见。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ボックス消してウェイト
	SetVolume("@mbgm*", 2000, 0, null);

	WaitKey(2000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　就这样。
　堀越公方足利茶茶丸，去世了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆シーン切り
	ClearWaitAll(2000, 2000);


}

..//ジャンプ指定
//次ファイル　"md05_002.nss"