//<continuation number="710">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_018.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_018.nss","RandomMeimetsu_mc04_018",true);
	Conquest("nss/mc04_018.nss","RandomMeimetsuSet_mc04_018",true);
	

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
	#bg044_研究施設内_01b=true;
	#ev189_銀星号の成れの果て_a=true;
	#ev189_銀星号の成れの果て_b=true;
	#ev189_銀星号の成れの果て_c=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_019.nss";

}

scene mc04_018.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_017vsaa.nss"


//◆地下へ
//◆かつーんかつーん。階段下りる
	PrintBG("上背景", 30000);

	CreateColorSP("黒幕１", 15000, "BLACK");
	CreateSE("足音", "se人体_足音_歩く_地下_L");
	MusicStart("足音", 2000, 1000, 0, 800, null,true);

	Delete("上背景");

	Wait(3000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　楼梯比我想象的要长。

　而且楼梯很平缓，有时还会成为水平的通道。
　虽然我走了很长时间，但我应该并没有进入地下太深
的地方。

　我问了村正，我们是不是离开了地面宅邸的范围，村
正否定了我的疑问，说我们只是<RUBY text="···">在绕圈</RUBY>。
　……我搞不懂这里的设计意图。

　过了几分钟之后，我终于来到了一个像是房间的地方。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆地下研究施設。江ノ島の研究所絵を流用。
	CreateTextureSP("絵背景10", 12, Center, Middle, "cg/bg/bg044_研究施設内_01b.jpg");
	Fade("黒幕１",1000,0,null,false);
	SetVolume("足音", 1000, 0, null);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　室内没有光源。
　虽然这里应该有电灯，但在这种黑暗的地方很难找出
开关。

　总之，我看了看周围。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180020a01">
《……主君。》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180030a00">
「……嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　<RUBY text="··">在此</RUBY>。

　我并没有在黑暗中看到什么。
　但是我知道。就在这里——皮肤的感觉让我理解了这
种单纯的事实。

　银星号就在这里。

　……我必须要避免未经考虑的行动。
　既然银星号在附近，这里也就必然是猛虎的
<RUBY text="···">狩猎场</RUBY>。

　尖锐的利爪无论何时袭击过来，都不会难以置信。
　
　我让自己冷静，向室内踏入了一步。

　我必须极其小心地探索……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//◆顔グラなし
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180040a07">
「不要紧的。
　你不用那么担心哦。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カチッ。
//◆ホワイトアウト
	OnSE("se日常_建物_照明点灯",1000);
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	CreateTextureSP("絵背景10", 12, Center, Middle, "cg/bg/bg044_研究施設内_01a.jpg");

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180050a00">
「！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureSP("EV1", 1550, Center, Middle, "cg/ev/resize/ev189_銀星号の成れの果て_am.jpg");
	Request("EV*", Smoothing);
	SetBlur("EV1", true, 3, 500, 60, false);
	Zoom("EV1", 0, 750, 750, null, true);

	Fade("フラッシュ白",10000,800,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　房间深处徐徐传出声音的同时。
　白光在我眼前炸开。

　……这仅仅是照明。光亮也并不强。
　但是我的眼睛已经习惯了黑暗，现在无法应对这种突
然的变化，我暂时地失明了。

　我的视力缓缓恢复。
　地下室的状况——逐渐明朗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ：金神／魔王尊
//◆地下室。青白い光源？　部屋中央に怪奇物体
//◆怪奇物体アップ。ねじれ狂った銀の柱？

	Fade("フラッシュ白",3000,0,null,false);

	Wait(2700);

	Zoom("EV*", 300, 1000, 1000, Dxl2, false);

	SoundPlay("@mbgm02",0,1000,true);

	SetFwL("cg/fw/fw景明_驚き.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180060a00">
「————」


{	FwL("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180070a01">
《————》

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　什么？
　这是什么。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101a]
　
　　　　　　　　　　扭曲了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101b]
　我不认得这种东西。
　不可能存在这种东西。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101c]
　
　　　　　　　　　　疯狂了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101d]
　这种东西不可能存在于现实之中。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101e]
　
　　　　　　　　　　奇怪，
　　　　　　　　　　　　　奇怪。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101f]
　不可能存在。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101g]
　
　　　　　　　　　　奇块，
　　　　　　　　　　　　　奇械。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101h]
　不允许存在的物体。
　这是不应该存在的物体。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101i]
　
　　　　　　　　　奇异的块状物。
　　　　　　　　　奇异的生命。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0101j]
　这是什么呢。
　这是————什么呢。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180080a07">
「……嗯，该说是<RUBY text="Ａｖａｎｔ－ｇａｒｄｅ">前卫艺术</RUBY>？
　用了多得愚蠢的<RUBY text="Ｃｏｓｔ">精力</RUBY>做出了毫无意义的东西，
其实就是这样吧～」


</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆茶々丸。平服
	FadeDelete("EV*", 2000, true);

	StR(1100,@0,@30,"cg/st/st茶々丸_通常_私服.png");
	FadeStR(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　一个少女绕着<RUBY text="··">那个</RUBY>出现了。
　不知为什么，她很轻松。

　我在哪里见过她吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_悪戯.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180090a07">
「这是巴别塔！」


{	FwC("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180100a07">
「梦想成为神的下场！」


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180110a07">
「这里已经什么都没有了。
　因为已经结束了，所以什么都没有。」

//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180120a07">
「神不会降临。
　世事无常。」

{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180130a07">
「……是什么不够呢～
　是勇气吗。是友情吗。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180140a07">
「果然还是爱吧。
　仔细想想，只要有爱，这世界上的各种问题
都能很随意地解决吧～」


//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180150a07">
「哥哥。
　我果然不该放你不管啊。」


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180160a07">
「我应该把你抓住的啊。
　……我为什么没有那么做呢。那样做了的话
应该会过得很开心啊。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180170a07">
「对吧～？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　少女分开双手“啊哈哈”地笑。
　我听到她那笑声，似乎并不是在室内回响，而是在她
体内的空洞中回响。

　没有骨头没有肺腑没有心脏，空洞的少女。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180180a07">
「……抱歉让你听我抱怨。
　来。这边才是你要找的。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180190a00">
「……？」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180200a07">
「是要谈情说爱还是要道别。
　随你喜欢。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180210a00">
「…………？」


{	FwC("cg/fw/fw茶々丸_驚き.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180220a07">
「啊。
　你还没有发现吗。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180230a07">
「还是说，你在从现实面前全力地战略性撤退？」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180240a00">
「……」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180250a07">
「哥哥。
　不行哦，要仔细看。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180260a07">
「因为这是最后了……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180270a01">
《主君。》


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180280a07">
「这是，
　<RUBY text="····">这个人是</RUBY>，」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆オブジェ表面。瞳のような模様が現れる

	CreateTextureEX("絵演", 1600, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_a.jpg");
	Fade("絵演", 1000, 1000, null, true);

	CreateSE("SE01","se戦闘_正宗_投擲腸管");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateTextureSP("EV1", 1550, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_b.jpg");
	FadeDelete("絵演", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　
　　　　　　　　　　在
　　　　　　　　　　　看我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180290a00">
「————」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　
　　　　　　　　　我认识。
　　　　　　　　　我认识的，眼睛。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180300a00">
「————啊——」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　
　　　　　　　　　在笑着。
　　　　　　　　　好像很开心。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180310a00">
「————啊、啊——」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　
　　　　　　　　能见到我
　　　　　　　　所以很开心吗。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	SetFwL("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180320a00">
「——————————」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　
　　　　　　微笑着。
　　　　　　微笑着，轻轻叫了我的名字。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180330a00">
「——————————————————」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆キーン。共鳴音ぽいの。
	CreateSE("きーん","se特殊_雰囲気_不協和音");
	MusicStart("きーん",0,800,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　
　　　　　　　　　　　景<k>
　　　　　　　　　　　明

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆キーン。共鳴音ぽいの。
//◆瞳が巨大化
	MusicStart("きーん",0,1000,0,1000,null,true);

	CreateTextureSP("EV2", 1600, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_c.jpg");
	CreateTextureEXadd("絵ブラー１", 2000, Center, Middle, "cg/ev/ev189_銀星号の成れの果て_c.jpg");
	Zoom("絵ブラー１", 0, 1500, 1500, Dxl1, true);
	Zoom("絵ブラー１", 1500, 2000, 2000, Dxl1, false);
	Request("絵ブラー１", Smoothing);
	Fade("絵色白", 0, 1500, null, true);
	Fade("絵ブラー１", 0, 1500, null, false);
	Shake("絵ブラー１", 1500, 50, 50, 0, 0, 1000, Axl2, false);
	SetBlur("絵ブラー１", 8, true, 400, 200);
	FadeDelete("絵ブラー１", 1500, false);

	FadeDelete("EV1", 0, true);

	SetFwC("cg/fw/fw景明_恐怖.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180340a00">
「啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊
啊啊啊啊咿咿咿咿咿咿咿咿咿咿咿咿咿!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆後退。アップから地下室全景へ
	FadeDelete("EV2", 1000, true);
	SetVolume("きーん", 1000, 0, null);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180350a01">
《……母……》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180360a01">
《母亲大人。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180370a01">
《母亲大人。》


{	FwC("cg/fw/fw景明_恐怖.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180380a00">
「啊……呜呜呜啊啊啊啊哎啊啊啊啊啊啊啊！」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180390a00">
「光、光——光——」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180400a00">
「光！」


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180410a00">
「光！」


//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180420a00">
「光——光！　光!!」


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180430a07">
「……没有达到呢。」


{	FwC("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180440a07">
「那力量——想要吞噬地上最大的破坏力，必
须要形成完全的“黑洞”。
　但是没有达到那种程度啊。」


{	FwC("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180450a07">
「有什么不够呢。
　果然是爱吧。是爱吧。嗯。」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180460a00">
「……………………」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180470a07">
「那么。
　那，就到此为止吧。」


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180480a07">
「哥哥要快跑哦。
　虽然这只是我的猜测，不过你在这世上
还有没做完的事吧？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180490a00">
「——————」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180500a07">
「留在这里会被卷进来的。
　喂，村正。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180510a01">
《……哎？》


{	FwC("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180520a07">
「你清醒些啊。
　你应该用你那钢铁之心，在操纵者
不冷静的时候支撑他吧，
这也是剑胄的工作啊？」


{	FwC("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180530a07">
「把他拽到外面去。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180540a01">
《…………
　你、你怎么办？》


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180550a07">
「别管我啊，生锈的古董。
　我这边的事情由我来了结。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180560a01">
《————》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180570a01">
《你……》


{	FwC("cg/fw/fw茶々丸_冷酷.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180580a07">
「烦死了。
　快走。」


{	FwC("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180590a07">
「正国！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆同田貫正国。亀

	OnSE("se特殊_鎧_装着03",1000);
	CreateColorSPadd("絵フラ", 15000, "#FFFFFF");
	StL(1000,@0,@100,"cg/st/3d同田貫亀_正面.png");
	FadeStL(300,true);
	WaitKey(1000);
	FadeDelete("絵フラ", 2000, true);

	SetFwC("cg/fw/fw茶々丸_悪戯.png");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180600a07">
「你对没有主人的世界也失去兴趣了吧。
　一起走吗？」


{	FwC("cg/fw/fw同田貫亀_通常.png");}
//【正国】
<voice name="正国" class="正国" src="voice/mc04/0180610b39">
《…………》


{	FwC("cg/fw/fw茶々丸_寂寥.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180620a07">
「你那力量……
　八大地狱炎之力，我想要最后借助一下。」


{	FwC("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180630a07">
「虽然无法将世界全部烧掉。
　但至少希望能把我烧得灰飞烟灭。」



{	FwC("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/mc04/0180640a07">
「上吧，同田贯!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆陰義·界現八大地獄
//◆業火
//inc久保田　界現八大地獄ですが　現状、CGが無いため仮で演出。なくなるかも知れない演出なのでタイミング調整はしていません。
	CreateSE("SEL00","se特殊_陰義_界現八大地獄準備_L");
	MusicStart("SEL00",0,1000,0,1000,null,true);

	CreateTextureEX("EF1", 1500, Center, Middle, "cg/ef/ef021_汎用陰義発動a.jpg");
	CreateTextureEX("EF2", 1400, Center, Middle, "cg/ef/ef021_汎用陰義発動b.jpg");
	Fade("EF1",500,1000,Dxl3,true);
	Fade("EF2",0,1000,Dxl3,true);

	Delete("絵背景10");
	DeleteStA(0, true);

	Fade("EF1",1000,500,Axl3,true);
	Fade("EF1",900,1000,Dxl3,true);
	Fade("EF1",1500,700,Dxl3,true);
	Fade("EF1",1000,500,Axl3,true);
	Fade("EF1",900,1000,Dxl3,true);


	DrawDelete("EF1", 300, 100, "circle_09_00_1", true);

	WaitKey(500);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",1500,1000,null,true);

	CreateTextureSP("EF2", 1500, Center, Middle, "cg/ef/ef046_炎a.jpg");
	CreateTextureSPadd("絵ブラー１", 2000, Center, Middle, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	SetBlur("絵ブラー１", 3, true, 400, 200);

	SetVolume("SEL00", 300, 0, null);

	SetVolume("@mbgm*", 100, 0, null);

	CreateSE("SE01","se戦闘_攻撃_火炎放射");
	MusicStart("SE01",0,1000,0,800,null,false);
	FadeDelete("フラッシュ白",100,true);

	Request("絵ブラー１", Smoothing);
	SetVertex("絵ブラー１", center, 820);
	Zoom("絵ブラー１", 1500, 1100, 2000, Dxl1, false);
	Shake("絵ブラー１", 1500, 2, 50, 0, 0, 1000, Axl2, false);

	Wait(1000);

	Fade("絵ブラー１", 500, 0, null, false);

	FadeDelete("絵ブラー１", 1500, true);

	CreateColorSP("黒幕１", 25000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);
	Delete("絵背景11");

	CreateTextureEXadd("絵演効果炎", 2010, -910, -50, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	Fade("絵演効果炎", 0, 200, null, true);
	DrawEffect("絵演効果炎", 0, "HighWave", 10, 10, null);
	MoveFFP1("@絵演効果炎",10000);

	RandomMeimetsu();

	CreateProcess("プロセス１", 150, 0, 0, "fire01");
	CreateProcess("プロセス２", 150, 0, 0, "fire02");
	CreateProcess("プロセス３", 150, 0, 0, "fire03");

	Request("プロセス１", Start);
	Request("プロセス２", Start);
	Request("プロセス３", Start);

	CreateSE("SEL01","se背景_ガヤ_建物炎上_L");
	MusicStart("SEL01",0,1000,0,1400,null,true);

	CreateTextureSP("絵背景20", 1000, Center, Middle, "cg/bg/bg044_研究施設内_01a.jpg");

	CreatePlainEX("絵板写", 1100);
	Fade("絵板写", 0, 500, null, true);
	MoveFRP1("@絵板写",1000,1,10);
	DrawEffect("絵板写", 0, "HighWave", 20, 20, null);

	CreateColorEX("絵演黒煙", 900, "#000000");
	Fade("絵演黒煙", 0, 800, null, true);
	DrawTransition("絵演黒煙", 0, 0, 200, 1000, null, "cg/data/circle_13_00_1.png", true);

	CreateTextureEXadd("火前だー", 1100, -480, 50, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	Zoom("火前だー", 0, 1100, 1100, null, true);
	Fade("火前だー", 0, 300, null, false);
	DrawTransition("火前だー", 0, 0, 180, 1000, null, "cg/data/circle_13_00_0.png", true);
	DrawEffect("火前だー", 0, "HighWave", 20, 20, null);

	Delete("EF2");
	Delete("EF1");
	DrawDelete("黒幕１", 300, 1000, "slide_01_02_1", true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180650a01">
《……阴义!?》


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180660a01">
《不妙——主君！》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180670a00">
「……………………」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180680a01">
《我知道你无法恢复正常。
　我也不会勉强让你去忘掉。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180690a01">
《但是，现在行动起来！
　要痛苦要疯狂之后再说！》


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0180700a00">
「————」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0180710a01">
《快跑吧！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆火がぼー。
	CreateSE("SE02","se戦闘_破壊_爆発05");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateTextureEX("絵演効果炎覆", 2010, -910, -50, "cg/ef/resize/ef028_汎用火炎放射l.jpg");
	DrawEffect("絵演効果炎覆", 0, "HighWave", 10, 10, null);
	MoveFFP2("@絵演効果炎覆",10000);

	Fade("絵演効果炎", 2000, 1000, null, true);

	Wait(1000);

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc04_019.nss"

..ランダム明滅
function RandomMeimetsu_mc04_018()
{
	CreateProcess("Ｐランダム明滅", 5000, 0, 0, "RandomMeimetsuSet_mc04_018");
	SetAlias("Ｐランダム明滅","Ｐランダム明滅");
	Request("Ｐランダム明滅", Start);
}

function RandomMeimetsuSet_mc04_018()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 1000);
	Fade("@絵演効果炎", $RFTS, 400, null, true);

	$RWaitSet = Random(10) + 10;
	$RWS = ($RWaitSet * 10) +600;

	Wait($RWS);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 1000);
	$RFade = Random(4)+2;
	$RF = ($RFade * 50)+600;

	Fade("@絵演効果炎", $RFTS2, $RF, null, true);

	$RWaitSet2 = Random(10) + 10;
	$RWS2 = ($RWaitSet2 * 10) +600;

	Wait($RWS2);

	}

}