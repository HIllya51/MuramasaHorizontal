//<continuation number="800">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_017vs.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/mc04_017vs.nss","DenziBladeCharge",true);
	Conquest("nss/mc04_017vs.nss","DenziBladeChargeSet",true);
	

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
	#ev186_村正ＶＳ銘伏_e=true;
	#ev186_村正ＶＳ銘伏_f=true;
	#ev186_村正ＶＳ銘伏_g=true;
	#ev186_村正ＶＳ銘伏_h=true;
	#ev186_村正ＶＳ銘伏_i=true;
	#ev186_村正ＶＳ銘伏_j=true;
	#ev186_村正ＶＳ銘伏_k=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene mc04_017vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_016vs.nss"

//◆景明サイド
//◆下がる獅子吼
	PrintBG("上背景", 30000);

	CreateColorSP("黒", 15000, "BLACK");

	OnBG(100, "bg090_大鳥邸通路b_01.jpg");
	FadeBG(0, true);

	StR(10000, @0, @0,"cg/st/3d村正標準_立ち_抜刀.png");
	FadeStR(0,true);

	Delete("上背景");
	FadeDelete("黒", 2000, true);

	SoundPlay("@mbgm10",0,1000,true);

	CreateWindow("絵窓", 19000, 0, 30, 1024, 288, false);
	SetAlias("絵窓","絵窓");
	Zoom("絵窓", 0, 1000, 0, null, true);
	CreateColorSP("絵窓/絵演色", 5010, "#336600");
	CreateTextureSPmul("絵窓/絵演背景", 5020, Center, Middle, "cg/ef/ef003_汎用移動.jpg");

	CreateTextureSP("絵窓/絵演立絵装甲", 5100, Center, Middle, "cg/st/resize/3d銘伏_立ち_抜刀l.png");
	Move("絵窓/絵演立絵装甲", 0, @-100, @160, null, true);
	Request("絵窓/絵演立絵装甲", Smoothing);
	Zoom("絵窓/絵演立絵装甲", 0, 900, 900, null, true);

	Move("絵窓/絵演立絵装甲", 3000, @-110, @0, DxlAuto, false);
	Zoom("絵窓", 300, 1000, 1000, Dxl2, true);


	SetFwC("cg/fw/fw銘伏_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0010a06">
「呜……呜！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　——我的手上有了命中的感觉。

　我低身用太刀横斩，击中了敌骑膝盖上方附近……
　
　我在他装甲上刻下了不浅的裂伤。

　虽然没有斩断他的这条腿，但打击应该到达了骨头。

　这种伤势应该能够深刻地阻碍敌骑的行动。

　应该会影响到他前进的攻击，
并且剑击的威力也必然会降低。
　
　我得到了很大的优势。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0020a01">
《就是现在。
　主君，最后一击——》


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0030a00">
（……不）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　我已经占有了优势。
　对方应该也不是不知道。

　虽然大鸟狮子吼看似容易冲动，但在战斗之中却总是
贯彻着冷静。
　那么——现在如果我与他交涉，应该能够期待他做出
冷静的判断吧……？

　我想要进行尝试。
　我想要避免能够回避的争斗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0040a00">
「告知大鸟中将！」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0050a06">
「……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0060a00">
「我重复一遍，我不愿意争斗。
　并且，我对于阁下、邦氏殿下、大鸟家当主
都没有加害的意思。」

//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0070a00">
「我只是因为自己的原因打扰了大鸟家宅邸。
我答应在解决自己的问题之后立刻离开这里。
　……请让我过去吧！」

{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0080a06">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よろめく獅子吼
	CreateSE("SE01","se特殊_鎧_駆動音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 500, 750, Dxl3);

	Shake("絵窓/絵演立絵装甲", 300, 10, 0, 0, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　篠川公方没有回答。
　不……是无法回答吧。

　即使铁面上无法看出他的表情，但从他失去平衡的站
相上能看出他的痛苦。
　我甚至似乎听到了他咬牙忍耐痛苦的声音。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0090a00">
「中将！」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0100a06">
「呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よろめく
	CreateSE("SE01","se特殊_鎧_駆動音01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetFrequency("SE01", 500, 750, Dxl3);

	Shake("絵窓/絵演立絵装甲", 300, 10, 0, 0, 0, 1000, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　狮子吼的身体左右摇摆——他的腿在颤抖。
　
　我感到这就是他内心的动摇。

　虽然他浑身是破绽，但我还是没有前去攻击。
　不过我当然不会忘记举起刀尖进行威压。


　如果我露出破绽，他这个锐气的将军即使在
负伤的情况下也一定会对我进攻。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆よろめき
	CreateSE("SE02","se人体_足音_鎧歩く04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("絵窓/絵演立絵装甲", 300, 0, 10, 0, 0, 1000, null, false);
	Move("絵窓/絵演立絵装甲", 300, @-20, @100, null, false);
	Fade("絵窓/絵演立絵装甲", 300, 0, null, false);
	Zoom("絵窓", 1000, @0, 0, DxlAuto, true);
	Delete("絵窓");

//◆どさっと膝をつく
	CreatePlainEX("絵板写", 9900);

	CreateSE("SE02","se戦闘_衝撃_鎧転倒01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 600, 0, 20, 0, 0, 1000, Dxl2, true);
	Delete("絵板写");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　他似乎是无法忍耐了，膝盖终于跪落下去。
　他的装甲撞在了坚硬的地面上，发出了响亮的声音。

　他低头屈身。
　大鸟狮子吼——<k><?>
{	CreateSE("SE03","se戦闘_動作_刀構え02");
	MusicStart("SE03",0,1000,0,1000,null,false);}
举起了太刀。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0110a00">
「呃——」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0120a06">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　他刀尖向后，将太刀举在腰间。
　他从坐着的姿势向前踏出一步，摆出了横斩的姿势——
但是。

　是吗。
　准备反击的同时，也想要让腿上的伤势得到恢复吗。


　这样让腿休息，伤势的恢复也会加快。
　而且，恢复的状况也能从我眼前隐藏。
　如果他是站着，我能从他的姿势看出变化，如果他不
用脚力，只是坐在地上，我无法看破。

　他在困境中还能有这种方法，值得赞赏。
　……但是。这种方法是否有意义，取决于我的判断。


　作为武者，在单挑之中提出休战，这也许是不该有的
懦弱行为。但我也并不会默默等待敌人恢复体力。
　
　我自认为自己没有那么天真。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	OnSE("se戦闘_動作_刀構え01", 1000);
	StR(10000, @0, @0,"cg/st/3d村正標準_立ち_戦闘.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0130a00">
「大鸟中将。这是我最后一句。
　之后我就要攻击了。」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0140a06">
「……」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0150a00">
「请让开吧。
　——沉默会当做拒绝，请回答吧。」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0160a06">
「……没，」


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0170a00">
「……？」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0180a06">
「没办法……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0190a00">
「……中将。」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0200a06">
「因为……没办法。
　……所以……」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0210a06">
「我就这样吧！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆しゅぱーん。下からなんか
	CreateTextureEX("絵背景500", 11000, Center, Middle, "cg/ef/ef042_汎用打撃.jpg");
	Request("絵背景500", Smoothing);
	Rotate("絵背景500", 0, @180, @0, @0, null,true);
	Zoom("絵背景500", 0, 1100, 1100, null, true);

	OnSE("se戦闘_攻撃_刀振る02",1000);
	FadeFR2("絵背景500",0,1000,300,@0,@0,40,Dxl2, true);

	CreatePlainEX("絵板写時間止", 12000);
	SetTone("絵板写時間止", Monochrome);

	Fade("絵板写時間止", 0, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　————什么!?

　他……踢起了脚。
　他踢起了跪在地上的脚。

　那种踢击，距离我太远。
　即使击中我，也完全没有威力。
　
　——为什么？　这有什么意义……

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆がーん。なんかぶつかった。
	CreateSE("SE01","se戦闘_攻撃_鎧攻撃命中");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateColorSP("絵色白", 20000, "#FFFFFF");
	DeleteStA(0,true);
	Delete("絵板写時間止");
	Delete("絵背景500");
	Wait(10);

	OnBG(100, "bg090_大鳥邸通路d_01.jpg");
	FadeBG(0, true);

	CreatePlainSPadd("絵板写", 10000);
	Zoom("絵板写", 0, 1250, 1250, null, true);
	SetBlur("絵板写", true, 4, 500, 60, false);

	FadeDelete("絵色白", 600, false);

	Shake("絵板写", 800, 0, 20, 0, 0, 1000, Dxl2, false);
	Zoom("絵板写", 200, 1000, 1000, null, false);
	FadeDelete("絵板写", 5000, false);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0220a00">
「!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　……我受到了攻击!?

　是什么!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆通路
//◆がしゃん。金物が床に落ちた。
	OnSE("se戦闘_動作_金属落とす", 1000);

	WaitKey(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　……这是。

　大鸟狮子吼，<k><RUBY text="·····">扔掉的小刀</RUBY>!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0230a00">
「啧——」


{	FwC("cg/fw/fw銘伏_通常.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0240a06">
「下贱的家伙!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼
//◆袈裟一閃。がーん。
	CreateColorSP("絵色黒", 19000, "#000000");
	CreateSE("SE01","se戦闘_攻撃_野太刀振る02");
	SL_rightdown2(20000,@0, @0,1500);

	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_rightdownfade2(10);

	CreateTextureSPadd("絵演効果", 5000, Center, Middle, "cg/ef/ef045_スパーク.jpg");
	CreateSE("SE01a","se戦闘_攻撃_鎧攻撃命中03");

	MusicStart("SE01a",0,1000,0,1000,null,false);

	CreatePlainEX("絵板写", 4990);

	Fade("絵板写", 0, 500, null, true);
	Shake("絵板写", 500, 10, 30, 0, 0, 1000, Dxl2, false);

	Delete("絵色黒");
	FadeDelete("絵演効果", 500, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　我未能及时向后避开。
　狮子吼跳起来似的挥出的斩击，击中了我的肩部。


　冲击穿过了我的身体，搅动着我的五脏六腑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0250a00">
「呜……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　难以相信这是一条腿带有重伤的一击。
　太重了。

　刚才我确实感到击中了他……
　他将伤势伪装成了更深的样子？　他那种摇晃着跪下
去的样子欺骗了我吗。

　他这种举动，只是为了不被发现地移动到小刀的位置，
然后将其藏在脚下吗！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0260a01">
《这都是因为你轻易地手下留情了啊！》


{	FwC("cg/fw/fw景明_苦痛.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0270a00">
（虽然我无话可说，但你还是闭嘴！）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　对于村正的斥责，我只是反驳而已。
　对于掩盖猛烈的疼痛，这样确实有些效果。


　我咬紧牙关，重新计算和对方的距离。
　有些远。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆再び対峙
	PrintGO("上背景", 20000);

	CreateTextureSP("絵背景01", 5000, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_e.jpg");

	FadeDelete("上背景", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　大鸟狮子吼再次举刀过顶，我看不出他腿上伤势的影
响。
　那伤势绝不是<RUBY text="Ｚｅｒｏ">丝毫没有</RUBY>……
　但现在已经无法推测了。

　对于这个男人，简易的预测会让自己丧命。
　刚才我切身体会到了这一点。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 5010, -1550, -500, "cg/ev/resize/ev186_村正ＶＳ銘伏_elm.jpg");
	Move("絵演", 6000, @0, -780, DxlAuto, false);
	Fade("絵演", 2000, 1000, null, false);

	SetFwC("cg/fw/fw獅子吼_冷笑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0280a06">
「竟然不断地胡闹……
　你连战场上基本的经验都没有吗!?」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0290a06">
「你这种人，都不值得让我用太刀来砍，但我
更不能让你活着回去。
　此地背负着大和的未来，你竟然愚蠢地入侵
这里，这种罪孽你要用鲜血来偿还!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　大鸟狮子吼激动地喊着。和他穿上装甲之前相比，除
了外表改变了以外，并没有其他不同。
　篠川公方。六波罗中将。幕府最后的将帅。

　他一手率领十万篠川军，是连冈部弹正尹赖纲都能打
倒的，名闻天下的勇将————

　但是。
　我现在却感到了极大的<RUBY text="···">不对劲</RUBY>。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	FadeDelete("絵演", 1000, false);

	SetFwC("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0300a00">
「大鸟中将。」


{	FwC("cg/fw/fw獅子吼_怒り.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0310a06">
「你不必再多说了！
　我不想再听你多言——」


{	SetVolume("@mbgm*", 500, 0, null);
	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0320a00">
「你不是正道的武人啊……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	Wait(800);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　对于我这句话，他没有立刻回答。
　但这沉默中也没有避而不答的预兆。


　这静寂，充满了心念——不，是充满了<RUBY text="··">怨念</RUBY>。
　
　我这句话刺入了大鸟狮子吼心中，似乎贯穿了某处。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0330a00">
「眩惑的妖剑。
　重伤的伪装。
　还有用脚操纵小刀的技术。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0340a00">
「如果只有其一，我会认为那是以防不备的特
殊技巧。
　……但却有三种。」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0350a00">
「中将，你是——」


{	FwC("cg/fw/fw獅子吼_不快.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0360a06">
「别随意乱说。
　叫凑斗的……」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0370a00">
「…………」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0380a06">
「……对。
　我本来……就是<RUBY text="···">那种人</RUBY>。」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0390a06">
「我对于自己的处境没有任何不满。
　大鸟的前前代当主——为了时治大人，我有
觉悟投身于任何污泥之中。」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0400a06">
「但是，愚蠢的前代当主毁坏了一切！
　都是因为他，我失去了本来的任务，所以我
为了贯彻前前代当主的遗志，只能去成为那个
人的<RUBY text="··">替身</RUBY>!!」

//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0410a06">
「你不可能明白。
　让本应潜伏在阴影中的自己出现在表面上
——而且还篡夺了自己宣誓过忠诚的主君之职，
这种耻辱！这种自虐！这种自渎！」


{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0420a00">
「…………」


{	FwC("cg/fw/fw獅子吼_笑い.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0430a06">
「你可以嘲笑我！　对。就是这样。
　就像你看穿的那样，被奉为篠川中将的我
————<?>
{	Wait(1000);}
以前只不过是一个影子!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆陰義·翳伏
//◆じわっと姿が滲む
	OnSE("se特殊_陰義_発動04", 1000);

	CreateTextureEX("絵背景02", 5200, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_f.jpg");

	CreateTextureEXadd("絵背景02EX", 5210, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_f.jpg");
	SetVertex("絵背景02EX", 768, 306);
	Zoom("絵背景02EX", 0, 1150, 1150, null, true);

	Fade("絵背景02", 1000, 1000, null, false);

	Fade("絵背景02EX", 300, 1000, null, false);
	DrawTransition("絵背景02EX", 300, 0, 500, 100, null, "cg/data/circle_12_00_0.png", true);

	SoundPlay("@mbgm13", 0, 1000, true);

	FadeDelete("絵背景02EX", 4000, false);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0440a01">
《哎——》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0450a00">
「……隐身!?」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　是阴义吗！
　加上大量的特殊技巧……竟然连剑胄都是这样的性质！
事到如今，我已经没有丝毫怀疑了。

　大鸟狮子吼——是<RUBY text="Ａｓｓａｓｓｉｎ">暗杀者</RUBY>!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵背景02EX", null);

//◆じわー。消える。
	OnSE("se特殊_陰義_発動03", 1000);

	CreateTextureSP("絵演背景", 10000, Center, Middle, "cg/bg/bg090_大鳥邸通路d_01.jpg");
	CreateTextureSPadd("絵演効果背景", 10010, Center, Middle, "cg/bg/bg090_大鳥邸通路d_01.jpg");

	Delete("絵背景02*");
	FadeDelete("絵演効果背景", 1000, true);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0460a01">
《消失了……？》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0470a00">
（……不。
　仔细看）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 30000);
	CreateTextureSP("絵演", 5000, -1400, -770, "cg/ev/resize/ev186_村正ＶＳ銘伏_glm.jpg");
	CreateTextureEX("絵演上", 5010, -1400, -770, "cg/ev/resize/ev186_村正ＶＳ銘伏_glm.jpg");
	Fade("絵演上", 0, 500, null, true);

	Request("絵演*", Smoothing);
	Zoom("絵演*", 0, 800, 800, null, true);

	SetBlur("絵演上", true, 3, 500, 200, false);

	MoveFFP1("@絵演",30000);
	MoveFFP2("@絵演上",40000);

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　空间和物体的边界上有断层。
　定睛凝视，能够微微看到那条细线。

　但是看起来已经几乎是<RUBY text="虚幻">错觉</RUBY>了……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0480a00">
（并不是让光线透过，
而是让装甲的颜色融入周围。
　这是一种拟态……是保护色）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0490a01">
《……原来如此。
　比月山三骑组要好些？》


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0500a00">
（这个啊。如何呢）

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演弐", 5100, Center, Middle, "cg/ev/ev186_村正ＶＳ銘伏_g.jpg");
	Fade("絵演弐", 1000, 1000, null, true);

	MoveFFP1stop();
	MoveFFP2stop();

	Delete("絵演");
	Delete("絵演上");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　他们那是<RUBY text="Ｔｒｉｃｋ">诈术</RUBY>。
　只要看穿原理，不难击倒。

　但是，这确实是单骑做到的阴义。
　虽然没有风魔党三骑的合力技那样夸张的效果，但也
无法期待能找到破除此术的关键。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0510a00">
（虽然像是<RUBY text="Ｎａｍｅｌｅｓｓ">无铭剑胄</RUBY>……
　但有很难对付的力量啊）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0520a01">
《……我的<RUBY text="耳朵">信号探索</RUBY>和<RUBY text="皮肤">热源探索</RUBY>上有反应。
　这点似乎没有任何影响。》

//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0530a01">
《可是……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　如果是武者擅长的空战，村正不断送来的信息可以极
大地协助我了解敌骑的位置。
　但是。现在这种近距离战斗，那完全没有用处。


　能依靠的，只有我自己的五感。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼近付く
	CreateTextureEX("絵背景05", 5400, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_h.jpg");
	Fade("絵背景05", 1000, 1000, null, true);
	Delete("絵演弐");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
　敌骑的轮廓——<k>逐渐变大了？

　他是在靠近我吗。
　不。真的是吗？　不是我看错了？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0540a00">
「……呜……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　我感到腹底变得寒冷，我颤抖了一下。

　我冷静地重新观察，我发现敌人靠近了半步。
　
　这件事本身没有问题。我们之间还有距离。我是因为
想到了其他的事才颤抖。

　<RUBY text="·········">我无法立刻做出判断</RUBY>。

　对方接近过来，我无法立刻发觉这一点。我需要一段
时间来判断这是否是错觉。
　……无论怎样想，这也是致命的。

　对于敌人的举动，我无法立刻应对。
　篠川公方进入了可以攻击我的范围，我也无法察觉。
如果他向我发出攻击，我不仅无法反击，甚至无法防御。
……就是这样。

　这样我不可能战胜他。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0550a00">
（那么，干脆——）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　我主动攻击他吗。
　现在这一瞬间，我大致掌握了敌人的位置，和我们之
间的距离。不用担心会砍错地方。

　……要上的话只有现在。
　如果敌人移动了，也许就晚了。

　如果要上，就趁现在。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0560a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト

	Wait(1200);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
　但是。
　我没有下定决心。

　我如果没有得到战斗的时机就前去进攻，那只会败在
<RUBY text="Ｃｏｕｎｔｅｒ">反击技</RUBY>上。
　那么用<RUBY text="Ｆｅｉｎｔ">佯攻</RUBY>进行二段攻击吗？那样也不行。
我已经试过一次，没有钓上他……

　不行。
　即使我先下手，我也无法战胜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0570a00">
（……可是）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
　如果我继续等，结果也是一样。
　对于无色的敌骑，我绝对无法迅速对他的攻击做出反
应，我的应对会产生延迟。

　我只会单方面被砍死吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw獅子吼_影人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0580a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
　——前进是死。后退也是死——
　
　现在不知所在的敌人，他似乎是在这样告诉我。


</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼接近
	CreateTextureEX("絵背景06", 5500, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_i.jpg");
	Fade("絵背景06", 1000, 1000, null, true);
	Delete("絵背景05");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　敌人的身影再次摇动。
　他接近我了吗。还是左右移动了呢——

　在我命令眼球进行识别之前。
　
　
　我做出了一个决定，然后行动了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se擬音_雰囲気_抜刀01", 1000);

	CreateWindow("絵窓", 19000, 0, 0, 1024, 576, false);
	SetAlias("絵窓","絵窓");

	CreateMask("絵窓/絵覆", 6000, 0, 0, "cg/mask/ciスラッシュ_05_00.png", false);
	SetAlias("絵窓/絵覆","絵窓/絵覆");

	CreateTextureEX("絵窓/絵覆/絵演", 6100, -590, -186, "cg/ev/resize/ev908_村正電磁擲刀_am.jpg");
	SetBlur("絵窓/絵覆/絵演", true, 3, 500, 90, false);

	Zoom("絵窓", 1, 1000, 0, null, true);


	Fade("絵窓/絵覆/絵演", 0, 1000, null, true);

	Move("絵窓/絵覆/絵演", 600, -880, @0, DxlAuto, false);
	Zoom("絵窓", 300, 1000, 500, null, true);

	WaitAction("絵窓/絵覆/絵演", null);
	SetBlur("絵窓/絵覆/絵演", false);
	Move("絵窓/絵覆/絵演", 1000, -812, -38, null, false);
	Zoom("絵窓", 2000, 1000, 2000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0484]
　我小心维持着平衡，后退了半步。
　我将剑收回了剑鞘。

　一呼。
　一吸。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0590a00">
（<RUBY text="Ｅｎｃｈａｎｔ">磁装</RUBY>
——<RUBY text="Ｅｎｄｉｎｇ">终焉</RUBY>）


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/017vs0600a01">
《奔流·集聚！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　剑胄没有反问我，而是回应了我。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆帯電
	CreateSE("SE01","se特殊_電撃_放電02");
	MusicStart("SE01",0,1000,0,1200,null,false);

	CreateColorEXadd("白", 20000, "WHITE");
	Fade("白", 300, 1000, Dxl3, true);

	Delete("絵窓");

	CreateSE("SE_帯電", "se特殊_電撃_帯電01");
	MusicStart("SE_帯電", 0, 1000, 0, 1000, null, true);

	CreateTextureSPadd("プロ絵上", 5560, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	CreateTextureSPsub("プロ絵", 5555, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	CreateTextureSP("絵演効果", 5550, Center, Middle, "cg/ev/ev908_村正電磁擲刀_c.jpg");
	SetVertex("プロ絵", 790, 320);
	SetVertex("プロ絵上", 790, 320);
	Request("プロ絵*", Smoothing);

	DenziBladeCharge();

	FadeDelete("白", 1500, true);

	SetFwC("cg/fw/fw獅子吼_影人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0610a06">
「…………！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　终焉之太刀……称为<RUBY text="ＲａｉｌＧｕｎ">电磁拔刀</RUBY>。

　这刀技正如其名，是利用磁力加速超越音速，能击破
任何的防御。
　
　无论谁也无法看穿，无论什么也无法阻挡。

　这是<RUBY text="··">必杀</RUBY>之术。
　对于不杀的对象，这剑技不应使用。但是，幸好现在
是地面战斗——与高速进行的空战不同，我可以避开胸
口和首级这种致命的地方。

　虽然这会让他重伤，但作为武者应该可以恢复。
　
　
　问题是……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵背景07", 5600, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_j.jpg");
	Fade("絵背景07", 300, 1000, null, false);
	DrawTransition("絵背景07", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);

	Delete("Ｐ電磁抜刀放電ループ");
	Delete("絵演効果*");
	Delete("プロ*");

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0620a00">
「……」


{	FwC("cg/fw/fw獅子吼_影人.png");}
//【獅子吼】
<voice name="獅子吼" class="獅子吼" src="voice/mc04/017vs0630a06">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　从根本上来说，状况没有<RUBY text="··">任何</RUBY>变化。

　即使我的电磁拔刀可以称为无敌，但那也只是有着
『在相同条件下比拼剑速一定会胜』这种程度的意思。
　
　相同的条件，也就是说要站在相同的<RUBY text="Ｓｔａｒｔ　Ｌｉｎｅ">起跑线</RUBY>上才能必胜。

　如果要说现状是否如此，那绝对是不同的。
　现在对方有着比我更先了解距离变化的权利。


　敌人或是我的前进使距离达到<RUBY text="Ｃｒｏｓｓ　Ｒａｎｇｅ">一足一刀</RUBY>时，
只有敌人会立刻知道这一点。

　而我则需要观察敌人，我必然会慢些。

　有了这种差距，神速的拔刀也只能睡于剑鞘之中。
　
　我没有时间使出剑技，就会被他砍死吧。

　……所以。
　如果不去除这根本的劣势，我就无法战胜大鸟狮子吼。


　电磁拔刀在<RUBY text="Ｅｖｅｎ">对等</RUBY>的战斗中是必胜的技术。
　为了让电磁拔刀发挥作用，首先要让条件对等。

　如何是好呢。

　就是说——
　如何才能掌握敌骑的<RUBY text="····">位置信息</RUBY>。要全力做到这一点。

　我的知觉、感觉，要怎样运用才能得到必需的信息？


　是视觉吗。
　……我只能看到敌人模糊的身影，我到底该如何使用
自己的眼睛呢。

　那么是听觉吗……这到底能有多可靠呢。
　敌人具备了压倒性的优势，但仍没有一口气来进攻，
这当然是为了掩盖脚步声。他知道声音才是我反攻的关
键，所以极其戒备。

　那么，尝试听出他的呼吸吗。
　……呼吸会如实地反应进退。但是对于这个男人来说，
也许会连呼吸也进行伪装。他太擅长暗杀奇袭了。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/017vs0640a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆獅子吼近付く
	CreateTextureEX("絵背景08", 5700, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");
	Fade("絵背景08", 1000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　我从肌肤上感到，时刻快要到来了。
　很快——就到了。

　无论我是否迷茫，我都必须做出决定。
　没有结果地一直等下去，那只是自杀行为而已。
　如果想要活下去达到目的，就必须有其他的选择。


{	SetVolume("SE*", 2000, 0, null);}
　那么决定吧。

　这种情况下……
　我该依靠哪种感觉？

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitPlay("SE*", null);

//◆選択：視覚／聴覚／第六感

}

..//ジャンプ指定
//◆視覚　"mc04_017vsa.nss"
//◆聴覚　"mc04_017vsb.nss"
//◆第六感　"mc04_017vsc.nss"

//★選択肢シーン
scene mc04_017vs.nss_SELECT
{
//■選択肢前定義
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

//■前の状態を定義
	PrintGO("背景０", 30000);

	SoundPlay("@mbgm13",0,1000,true);
	CreateTextureSP("絵背景08EX", 5800, @0, @0, "cg/ev/ev186_村正ＶＳ銘伏_k.jpg");

	FadeDelete("背景０", 0, true);


//■選択肢
	SetChoice03("视觉","听觉","第六感");
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
			ChoiceA03();
//◆視覚　"mc04_017vsa.nss"
				$GameName = "mc04_017vsa.nss";
		}
		case @選択肢２
		{
			ChoiceB03();
//◆聴覚　"mc04_017vsb.nss"
				$GameName = "mc04_017vsb.nss";
		}
		case @選択肢３
		{
			ChoiceC03();
//◆第六感　"mc04_017vsc.nss"
				$GameName = "mc04_017vsc.nss";
		}
	}
}


function DenziBladeCharge()
{
	CreateProcess("Ｐ電磁抜刀放電ループ", 5000, 0, 0, "DenziBladeChargeSet");
	SetAlias("Ｐ電磁抜刀放電ループ","Ｐ電磁抜刀放電ループ");
	Request("Ｐ電磁抜刀放電ループ", Start);
}

function DenziBladeChargeSet()
{
	begin:
	while(1)
	{
	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 300, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 300, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 300, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 250, 0, null, true);
	Wait(50);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 200, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 200, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 200, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	$RZoomSet = Random(3) + 3;
	$RZS = ($RZoomSet * 10) +1000;
	Shake("@プロ絵", 150, 0, 50, 0, 0, 1000, DxlAuto, false);
	Shake("@プロ絵上", 150, 10, 0, 0, 0, 1000, DxlAuto, false);
	Zoom("@プロ絵*", 150, $RZS, $RZS, null, false);
	Fade("@プロ絵*", 50, 800, null, true);
	Fade("@プロ絵*", 150, 0, null, true);
	Wait(10);
	Zoom("@プロ絵*", 0, 1000, 1000, null, false);

	}

}