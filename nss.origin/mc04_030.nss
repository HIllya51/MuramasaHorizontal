//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_030.nss_MAIN
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
	#bg092_森の道a_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mc04_031.nss";

}

scene mc04_030.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"mc04_029.nss"

//◆森
	PrintBG("上背景", 30000);
	CreateColorSP("黒幕１", 25000, "BLACK");

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg092_森の道a_01.jpg");
	CreateSE("SEL01","se人体_足音_歩く01_L");
	MusicStart("SEL01",0,1000,0,700,null,true);

	Delete("上背景");
	FadeDelete("黒幕１",1500,true);

	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　冬季的森林有着独特的景致。

　不若夏季般喧闹凉爽。
　不似春季般清爽悠然。
　不像秋季般闲静温暖。

　若要说出冬季的森林有什么得以代表的
美丽特质，确实相当难以言表。
　冬季的森林的独特性，与其说来源于其特征存在本身，
倒不如说来源于特征的欠缺。

　没有色彩。
　没有温度。
　没有生机。
　没有发展。

　冬季的森林是缺陷之物，有着残缺之姿，自古以来
赞美它的人就不多。
　
　不过，也并非完全没有。

　冬季的森林并非残缺，而是一尊裸像——
　是实体，是真相。

　剥去虚饰之后留下真实的美观，
　这才是完整。

　关键是需要从这份缺陷，这份虚无中发现美感。
　
　有的人是这样说的。

　此刻，在这森林中步行的我，心情也与此相近。
　以此作为凑斗景明的葬身之地，
感觉有些太过美好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　是因为这般心情的缘故吗。
　内心仿佛与森林同化了一般，不可思议地
没有半点涟漪。

　对死亡的恐惧，自然无可避免。
　大鸟香奈枝那包含杀意的指尖已经迫近我的咽喉——
明白到这点，不可能不害怕。

　看破死亡的境界，对于我这个
既不是达到信仰之极致的圣人，
亦不是达到武道之极致的高手而言，是遥不可及的。
　恐惧之情充斥内心。

　然而这份恐惧只是凝结起来，没有渗出心脏之外。
　因此手足才没有颤抖，头脑也没有陷入错乱。


　……我怀着与此矛盾的平静心情，等待着死神的来访……




</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300020a01">
《————》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　没有显露身姿。
　然而无言的气息一直都追随在我身旁。

　虽是无言……
　但一定是想说些什么吧。

　估计是虽然有话想对我说，但又不知是否
该说，犹豫着无法做出决断。
　于是一直保持沉默……


　在没有响起的剑胄传音中解读着她的心思，我的
心中同时涌起了抱歉与感谢的念头。
　……对村正抱有这样的心情，或许还是第一次也
说不定。

　虽然剑胄的无言很是难得，但我还有需要向她传达
的事情。
　即便隐匿身姿我也清楚她的所在。转身正对那个方
向说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("SEL*", 300, 0, null);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300030a00">
「村正。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300040a01">
《……什么？》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300050a00">
「承蒙你照顾了。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300060a01">
《…………》

{	DeleteStR(150, false);}
</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ウェイト。森の音とか。
	CreateTextureEX("絵背景100", 100, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	Fade("絵背景100", 2000, 1000, null, false);

	Wait(1000);
	OnSE("se人体_足音_歩く04_L", 1000);
	Wait(2000);


	SetVolume("@OnSE*", 5000, 0, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　在森林中散步。

　差不多有一小时了。
　看太阳的高度，早晨这一时段即将结束。

　没有约定好时间。
　
　……不过，应该快了吧。

　有这样的感觉。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("絵背景100", 1000, true);

	Wait(500);

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300070a01">
《主君……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300080a00">
「阳光减弱了呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　原本晴朗明亮的天空此刻正被迅速扩张的云层
所侵蚀。
　山中的天气实在善变。

　看样子，一场雨即将来临。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 500, 0, null);
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300090a01">
《主君！》


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300100a00">
「唔!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm08",0,1000,true);
	CreateSE("ちかづいてくる","se戦闘_動作_空突進05");
	MusicStart("ちかづいてくる",1000,200,0,1000,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　听到第二次喊声，我才终于——
　
　意识到村正发出声音并不是想进行漫无目的的闲聊，
而是想唤起我的注意。

　而且，还是对<RUBY text="····">特定危险</RUBY>的提醒。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetVolume("ちかづいてくる", 1000, 400, null);
	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300110a00">
「——是敌性未确认骑吗?!」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300120a01">
《方向，上方一五度！
　距离九五〇，速度五七〇单位——》


{	SetVolume("ちかづいてくる", 500, 600, null);}
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300130a01">
《这种反应是……南蛮物？》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300140a00">
「……进驻军吗?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("ちかづいてくる", 1000, 800, null);
	CreateColorSP("黒幕１", 15000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);
	DeleteStR(0, true);
	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg002_空a_01.jpg");
	DrawDelete("黒幕１", 300, 1000, "slide_02_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　一则情报孕育出一则理解，理解又产下另一则理解。
　如今进驻军的武者会出现在这里，也就是说……

　是来讨伐<RUBY text="···">背叛者</RUBY>的——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ズキューン。推参。
	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",1000,1000,Axl1,false);

	SetVolume("ちかづいてくる", 1000, 1000, null);

	CreateSE("とつ","se戦闘_動作_空上昇01");
	MusicStart("とつ",0,1000,0,1000,null,false);
	SetVolume("ちかづいてくる", 0, 0, null);
	Wait(250);

	StL(300,@-100,@400,"cg/st/3dバロウズ_騎航_戦闘a.png");
	Zoom("@StL*", 0, 500, 500, null, true);
	Move("@StL*", 200,@1150,@0, null, false);
	FadeStL(200,true);
	DeleteStA(300, false);
	Wait(500);

	CreateTextureSP("絵背景10", 10, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	Fade("フラッシュ白",1000,0,Axl3,true);



	OnSE("se戦闘_動作_空突進04",1000);

	WaitKey(500);

	OnSE("se戦闘_動作_鎧_着地01",1000);

	WaitKey(1150);

	CreateColorEX("黒幕１", 4500, "BLACK");
	Fade("黒幕１", 500, 1000, null, true);


	StC(300,@0,@0,"cg/st/3dバロウズ_立ち_通常.png");
	FadeStC(0,true);

	WaitKey(200);

	SetFwR("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/mc04/0300150a01">
《……那个骑体。》


{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300160a00">
「……那个是。」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想：署長を殺すバロウズ。部分カット
//◆現れたバロウズ。部分カット
//inc久保田　他CGで演出確認。　要調整。

//署長を殺すバロウズ。
	EfRecoIn1(18000,300);
	CreateTextureEX("絵回想01", 5000, @200, @100, "cg/ev/ev170_バロウズ署長を射殺_a.jpg");
	Request("絵回想01", Smoothing);
	Zoom("絵回想01", 0, 1500, 1500, null, true);
	Fade("絵回想01",0,1000,null,true);
	EfRecoIn2(300);

	Move("絵回想01", 1500,@-400,@-200, Axl3, true);
	WaitKey(500);


//バロウズ。部分カット


	EfRecoOut1(300);
	Delete("絵回想*");
	CreateColorSPadd("フラッシュ白", 15000, "WHITE");
	EfRecoOut2(600,true);


	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/resize/bg022_山林a_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	Move("絵ウルティマ*", 0, @0, @-200, null, true);

	Request("絵ウルティマ1", Smoothing);
	Request("絵背景100", Smoothing);


	Move("絵背景100", 10000, @0, @+100, null, false);
	Move("絵ウルティマ*", 10000, @0, @+200, null, false);

	Fade("フラッシュ白",500,0,null,true);

	Wait(1000);

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300170a00">
「是你这家伙吗！」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想：署長を殺すバロウズ
//◆現れたバロウズ

	EfRecoIn1(18000,600);
	CreateTextureEX("絵回想01", 5000, Center, Middle, "cg/ev/ev170_バロウズ署長を射殺_b.jpg");
	Request("絵回想01", Smoothing);
	Delete("絵背景100");
	Zoom("絵回想01", 0, 1500, 1500, null, true);
	Move("絵回想01", 0,@-200,@0, null, false);
	Fade("絵回想01",0,1000,null,true);
	Delete("絵ウルティマ1");

	EfRecoIn2(300);

	WaitKey(1500);

//バロウズ。部分カット
	EfRecoOut1(300);

	Delete("絵回想*");

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2000, 2000, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, 0, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	CreateTextureEXadd("絵ウルティマ2", 11100, 0, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");

	Move("絵ウルティマ*", 0, @-500, @0, null, true);

	Move("絵背景100", 5000, @-212, @0, null, false);
	Move("絵ウルティマ*", 7000, @-1000, @0, null, false);

	EfRecoOut2(600,true);

	Fade("絵ウルティマ2", 0, 700, null, false);
	DrawTransition("絵ウルティマ2", 1500, 0, 1000, 100, Dxl1, "cg/data/beam_01_00_0.png", true);

	Fade("絵ウルティマ2", 1000, 0, null, false);
	DrawTransition("絵ウルティマ2", 1000, 1000, 0, 100, Axl1, "cg/data/beam_01_00_1.png", true);

	Fade("フラッシュ白",500,1000,null,true);

	Delete("絵ウルティマ*");
	Delete("絵背景100");

	CreateTextureSP("絵背景100", 10000, Center, Middle, "cg/bg/bg022_山林a_01.jpg");
	SetVertex("絵背景100", 0, middle);
	Zoom("絵背景100", 0, 2500, 2500, null, true);
	SetShade("絵背景100", HEAVY);

	CreateTextureSP("絵ウルティマ1", 11000, Center, Middle, "cg/st/resize/3dバロウズ_立ち_通常l.png");
	Move("絵ウルティマ1", 0, -819, -871, null, true);
	Zoom("絵ウルティマ1", 0, 1500, 1500, null, true);

	Move("絵背景100", 0, @0, @-100, null, false);
	Move("絵ウルティマ*", 0, @0, @-200, null, true);

	Move("絵背景100", 500, @, @100, Dxl2, false);
	Move("絵ウルティマ*", 500, @0, @200, Dxl2, false);

	Zoom("絵背景100", 500, 2000, 2000, Dxl2, false);
	Zoom("絵ウルティマ*", 500, 1000, 1000, Dxl2, false);
	OnSE("se戦闘_バロウズ_ボーガン構え01",1000);


	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

	Wait(1000);

	SetFwR("cg/fw/fw景明_怒りb.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/mc04/0300180a00">
「你就是——那个时候的!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆過去
//◆鎌倉全景か何かにモノクロマスク？
//inc久保田　ブラックアウトのいい機会なので素材をきれいに。


	SetVolume("@mbgm*", 3000, 0, null);
	CreateColorEX("絵暗転", 15000, "#000000");
	Fade("絵暗転",3000,1000,null,true);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg013_鎌倉俯瞰a_01.jpg");
	FadeBG(0,true);
	CreateEffect("Memory_cover", 2400, 0, 0, 1024, 576, "Sepia");
	FadeDelete("上背景", 0, true);
	WaitKey(1500);
	SoundPlay("@mbgm35",0,1000,true);
	FadeDelete("絵暗転", 2000, true);



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　
　　　　　　　　　　『王杉事件』

　兴隆二十四年九月，王杉荣及其家人被陆军将兵绑
架并且杀害的事件。
　这被人们看作是从极右势力的抬头到六波罗政权建
立，兴隆二十至三十年代间，象征时代潮流的一个事例。

　王杉荣生于军人家庭，他最初自己也立志走上从军
道路，入读陆军幼年学校。但因引发多个问题而被开除。
之后一直过着将自幼以来的成长环境全盘否定的生活。


　他在江户与许多思想家结识，与反帝国主义和反战
论产生共鸣。这也可以说是对于被军队这个世界拒绝一
事的反抗。
　然而，他没有将自己局限为一个反动的惰性行动者。

　在文坛，或者说在文学之路上，王杉荣基于新的价
值观斗志昂扬地展开活动，并对很多人产生了影响。
　不管从正面意义还是负面意义上说，均是如此。

　他富有文才的评论充溢着能鼓惑人心的力量。而且
他奔放的个性还有生活都无法不吸引人们的目光。
王杉在以『物种起源』为题翻译出版达尔文的名著后
不久，又被情人刺伤。

　他对权威的否定最终走向<RUBY text="·····">无政府主义</RUBY>，
并且热衷于此。
　于是孕育出了称为王杉派的思想势力，但同时也
招致了极右派的强烈憎恶。

　对信奉帝国主义的人们而言，光是反战论和自由主
义就已经非常碍眼。
　至于无政府主义，则完全是他们的敌人、障碍，除
了消灭以外再不会考虑其他处理手段。

　兴隆二十四年九月一日。
　关东大地震爆发。

　以相模湾西北冲为震源爆发的地震以及紧接发生的
火灾彻底毁灭了关东南部。导致了仅死者数目就达十
万之巨的极重损害。
　真正是史无前例的大灾难。

　在混乱中，趁机在民间散布流传当时在大和数量众多
的来自大陆的外来劳工以及反体制主义者发起暴动
的传言。
　这当然不过是毫无根据的谣言。

　但不幸的是，处于恐慌状态的人们缺乏辨别真伪的
能力。
　把谣言信以为真，歇斯底里的私刑事件接连爆发，
出现了大量的牺牲者。

　其中，一部分军人的行动相对要多几分冷静。
　他们遵照「被干掉前先把对方干掉」这一军事原则，
积极计划（或者说更积极地，<RUBY text="········">不管传言是真是假</RUBY>
先趁这个机会收拾掉）看准敌人断然行动。

　震灾爆发数日后，约十名活动家在江户葛饰被逮捕
虐杀。这就是以龟户事件之名流传至今的惨剧。
　然后在九月十六日。

　王杉荣及其妻子，七岁的长子、六岁的次子共四人，
在探望受灾的王杉之妹后，于回程路上失踪。
　一家人离开王杉之妹在横浜的宅邸后，没有回到位
于江户的自宅。

　一周后，官方发表的事实如下。
　
　对王杉之存在早有怨恨的某陆军大尉
及其同伙绑架了王杉一家——

　并将四人杀害。
　大尉以下将兵随后自决。
　
　　　　　　　　　　　　　　　　　　　　　　以上。

　……如今，大多数人对政府机关发行的公文书中记载
的『王杉事件』概要不抱怀疑。
　只有极小范围内的人知道，公开记录中包含虚假的信
息，并且缺少些许真实性。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);
}

..//ジャンプ指定
//次ファイル　"mc04_031.nss"