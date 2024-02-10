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

scene ma05_015.nss_MAIN
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
	#ev128_病床の光_f03=true;


	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_016.nss";

}

scene ma05_015.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_014.nss"

//◆道場
//◆素振り
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg052_湊斗家道場_01.jpg");
	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,900,null,false);
	WaitPlay("SE*", null);
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　……落刀劈风之音，一点也不清脆。
　大概是因为腰盘不稳，刀尖无力之故。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm33",0,1000,true);
	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　我认识到自己状态不佳和其理由。
　死心地放下木刀。

　不管做什么，大脑总是跳脱不了昨天的情景。

　曾怀疑那是一场梦，但今早醒来后马上再次去确认，
眼前的情景令人难以忘怀。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆カット挿入。回復した光
	EfRecoIn1(18000,600);
	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/ev/ev128_病床の光_f03.jpg");
	EfRecoIn2(300);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　光的肉体得以复苏。
　在昨天那一刹那——<RUBY text="····">一瞬之间</RUBY>。

　脱落的头发、牙齿，
　骨瘦如柴的皮肉，
　枯枝般的骨骼。

　全都重获新生。

　……当然。
　这种事在常理范畴内不可能发生。

　促成这一切的是，超越常理的力量——
　剑胄的力量。

　真打剑胄能使操控者……使用者的身体能力飞跃式地
提高。
　其中也包含恢复力。

　武者即便被砍掉手臂，<RUBY text="····">只需接上</RUBY>，
不久便可复原。
　据说甚至可以<RUBY text="····">脱胎换骨</RUBY>。

　光所呈现出的异常恢复，若看作是剑胄的作用，倒也
合情合理。
　
　然而这不可能。

　即便操控者没有装配真打剑胄，而是处于分离状态，
也会出现伤口迅速复原的情况。
　但需要剑胄与操控者结下奇缘方能实现。

　有一种武家传统礼仪，名为佩刀礼。
　武人与剑胄面对面询问彼此资质，互相承认对方使用
者和武器的身份——就是这种礼仪。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　经过这种礼仪，武人才能与剑胄合而为一，作为异能
武者重生。
　经过这种结缘后，两者之魂不离不弃，就算相隔万里
也紧紧相连。

　光应该未完成那种佩刀礼。
　一个没有心的废人，为何剑胄会认其为主。

　现在光仍躺在床上。
　就算身体恢复，也没有活动的迹象。


</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	CreateTextureSP("絵回想背景", 7999, Center, Middle, "cg/bg/bg054_湊斗家祭殿a_01a.jpg");
	FadeDelete("絵回想", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0052]
　剑胄也是如此。
　那之后，所有人都心怀疑虑，但好歹将祭礼进行到
最后，并圆满地再次封印进奥御扉深处。其间，未有一
丝动静。

　光是不可能与那副白银剑胄结缘的。
　
　然而，光的超常恢复除剑胄之力外不做他想。

　这种事，从古今中外何种武者传说中都闻所未闻。
　至少我没有听说过。

　太不可思议了。
　正因如此。本来应当雀跃不已，现在却完全没有那种
感觉。

　养母似乎也一样。
　昨天，本家及其他德高望重之人，虽不明就里但怀疑
是发生了什么<RUBY text="·····">不好的事情</RUBY>——满面
不安地散了会。

　……没错。
　那是什么呢。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ぶん。

	CreateSE("SE01","se戦闘_攻撃_刀振る02");
	MusicStart("SE01",0,1000,0,900,null,false);
	EfRecoOut1(100);
	Delete("絵回想*");

	EfRecoOut2(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　怀着将心中纠葛一扫而空的心情挥下最后一刀，将木
刀收起。
　光的身体恢复了——这样很好。好事一件。

　然而却牵涉到剑胄。
　而且，还是皆斗家规定应永世封印的“邪物”。

　这点让人不能不介怀。
　没来由地感到焦躁，心跳也异常凌乱。

{	CreateColorEX("絵黒", 5000, "#000000");
	Fade("絵黒", 3000, 1000, null, false);}
　这是吉。
　还是凶。

　尚不能做出判断。
　这种心情简直就像是压双单数赌博时，看着盖着骰子
的小罐的感觉。

　若是赌博，必有结果。
　骰子的点数决定胜负。

　如果这是赌博的话……
　最终的点数将会是什么——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆とん。
	CreateSE("SE01","se人体_動作_一歩");
	MusicStart("SE01",0,800,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　突然，从背后传来轻轻的脚步声。<k>
　我还以为是养母，不以为意地回头看去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆光
//◆ちょっと演出入れるか。
//あきゅん「演出：バストアップここだけやってみるか」

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Delete("絵黒");
	Fade("フラッシュ白",0,1000,null,true);

	CreateCamera("カメラ１", Center, Middle, 250);
	SetAlias("カメラ１","カメラ１");

	CreateTextureSP("カメラ１/絵背景100",500, -709, -338, "cg/bg/resize/bg052_湊斗家道場_01l.jpg");
	CreateTextureEX("カメラ１/絵背景200",500, -709, -338, "cg/bg/resize/bg052_湊斗家道場_01l.jpg");
	SetAlias("カメラ１/絵背景100","絵背景100");
	Request("カメラ１/絵背景100", Smoothing);
	Zoom("カメラ１/絵背景100", 0, 1200, 1200, null, true);
	Zoom("カメラ１/絵背景200", 0, 1200, 1200, null, true);
	SetShade("カメラ１/絵背景200", SEMIHEAVY);

	CreateTextureSP("カメラ１/絵１",600, 173, -658, "cg/st/resize/st光二年前_通常_私服ex.png");
	SetAlias("カメラ１/絵１","絵１");
	Request("カメラ１/絵１", Smoothing);
	Zoom("カメラ１/絵１", 0, 300, 300, null, true);
	Move("カメラ１/絵１", 0, @+50, @+50, null, true);

	SetVolume("@mbgm*", 1000, 0, null);
	FadeDelete("フラッシュ白",1000,false);
	Move("絵背景100", 5000, @0, -586, Dxl1, false);
	Move("絵st100", 5000, @0, -71, Dxl1, true);


//	CreateColorSP("絵黒", 5000, "#000000");
//	Wait(10);
//	StR(1000, @0, @0,"cg/st/st光二年前_通常_私服.png");
//	FadeStR(0,true);
//	DrawDelete("絵黒", 1000, 100, "slide_01_00_1", true);

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150020a00">
「——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("カメラ１/絵背景200", 3000, 1000, null, false);
	MoveCamera("@カメラ１", 5000, @+450, @0, @+300, Dxl1, true);
	SetShade("カメラ１/絵背景100", HEAVY);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　是光。

　沐浴在午后柔和的阳光下。
　我的妹妹，就站在那里。

　一年前还是那么熟悉，<k>
　在这一年间又变得那样遥远，<k>
　曾经纵使渴盼再见一次，却反而愈渐远去、朦胧模糊
的身影。

　光微笑着。

　——光在那里。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//	FadeDelete("絵写板", 800, false);
//	SoundPlay("@mbgm14",0,1000,true);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150030a00">
「光……」

{	FwL("cg/fw/fw光二年前_通常a.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0150040a14">
「嗯。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　本应遥远的、开朗的声音。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150050a00">
「……光……
　是你吗。」

{	FwL("cg/fw/fw光二年前_好戦.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0150060a14">
「嗯。<RUBY text="··">是我</RUBY>。
　景明。」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　是光的声音。
　是妹妹的话语。

　光——
　站在那里，还开口说话。

　曾经失去的人。
　理应已失去的人。

　就在那里——！

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150070a00">
「光!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　一切都烟消云散。
　无论是无聊的忧虑还是不安，所有的一切都在事实面
前消失无踪。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

	CreateColorEX("絵色100", 1500, "Black");

	Fade("カメラ１/絵背景200", 500, 0, null, false);
	MoveCamera("@カメラ１", 1000, @0, @0, @+700, Dxl1, true);
	CreateSE("SE01","se人体_動作_掴む01");
	CreateSE("SE02","se人体_動作_抱きつき01");
	Shake("カメラ１/絵１", 500, 0, 3, 0, 0, 500, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0151]
　跑过去。
　碰触她的身体。

{	MusicStart("SE02",0,1000,0,1000,null,false);
	MoveCamera("@カメラ１", 1000, @0, @0, @+500, Dxl1, false);
	Fade("絵色100", 500,1000,null,false);}
　触感如此真实，但我的内心却仍不敢相信。 
　紧紧抱住她，进一步确认着。

　……她在。
　光在这里。

　回来了。
　我的妹妹回来了！

</PRE>
	SetTextEXL();
	TypeBeginTimeLO(0);//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【光】
<voice name="光" class="光" src="voice/ma05/0150080a14">
「嗯，景明……
　有点疼。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150090a00">
「啊……嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　温柔的嗔怪，让我想放松力道。
　然而手臂却违背了我的意愿。

　渴求更多。
　渴求这份触感。

　不是梦。
　这不是妄想，也不是幻觉。

　想要更多确信的证据。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【光】
<voice name="光" class="光" src="voice/ma05/0150100a14">
「……真拿你没办法。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　妹妹纵容了我。
　像是寻求补偿似的，用手指触摸我的头发。

　一切——都已无所谓。
　只要有这份触感，其他的我什么都不要。

　不管是什么造就的。
　剑胄也好禁忌也罢。

　我只感谢这个奇迹。
　不管是什么，我都心怀感激！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【統】
<voice name="統" class="統" src="voice/ma05/0150110b46">
「……啊——」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150120a00">
「统大人……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 15000);

	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg052_湊斗家道場_01.jpg");
	Fade("絵背景100", 0, 1000, null, true);

	StL(1000, @0, @0,"cg/st/st統_通常_私服.png");
	FadeStL(0,true);

	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210a]
　是听到声音了吗。
　不知何时，养母也出现在那里，如同刚才的我那样惊愕
地凝视着光——她的女儿。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StR(1000, @-30, @0,"cg/st/st光二年前_通常_私服.png");
	Move("@StR*", 300, @30, @0, DxlAuto, false);
	FadeStR(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210b]
　她硬把我拉开，拉离光的身体。
　母亲的心境应当和我一样。不管眼前的情景是现实还是
幻想，都不禁想要去确认。不可能让我一人独占。

　就像被什么牵引一般，养母向光靠近。
　她的双眼都湿润了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【統】
<voice name="統" class="統" src="voice/ma05/0150130b46">
「光——」

{	FwC("cg/fw/fw光二年前_冷笑.png");}
//【光】
<voice name="光" class="光" src="voice/ma05/0150140a14">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　接着。
　养母站住了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150150a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　心中满溢思念之情……并不像。
　看到养母的表情，我吃了一惊。

　<RUBY text="····">她在疑惑</RUBY>。
　不同于我因为这不可思议的奇迹而怀疑自己的眼睛。

　承认女儿复活的事实。
　自然而然的欣喜却被什么阻碍了。

　是什么？

　……养母看着的是光。
　是光的面容。

　而光也看着母亲。
　让她看自己的表情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150160a00">
（……什么？）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
　我难以理解此刻看到的这一幕。
　不——

　我能理解。
　却难以接受。

　为何？
　为何？

　<RUBY text="··">为何</RUBY>，<RUBY text="·········">饱含恶意地看着母亲</RUBY>？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw光二年前_冷徹.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【光】
<voice name="光" class="光" src="voice/ma05/0150170a14">
「…………」

{	FwC("cg/fw/fw統_通常b.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0150180b46">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　怎么可能。
　然而不管看多少遍，这一幕仍丝毫未变。

　光<RUBY text="·····">邪恶地笑着</RUBY>，
　而养母则默默承受。

　没想到会有这种事。

　卧病在床之前，大概是因为青春期的缘故，光经常对
母亲摆出反抗性的态度。
　但——从未露出过这种眼神。

　……是不是因为刚刚醒来，脑子还不清醒呢。
　若不这样想，便无法理解。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_過去.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0150190a00">
「光……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆がたん。乱暴に扉を開けた？
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se日常_建物_扉開く02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
　撇开这些不谈，想要打破这种尴尬的气氛，我开口叫
光的名字——
　话说到一半，却咽了回去。

　…………从门的方向传来一阵声响。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_016.nss"