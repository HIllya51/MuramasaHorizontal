//<continuation number="900">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_006.nss_MAIN
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
	#bg058_曇空a_01=true;
	#bg034_署長宅茶の間b_01=true;
	#bg034_署長宅茶の間c_02=true;
	#bg059_蕎麦屋の店内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_007.nss";

}

scene mb01_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_005.nss"

//◆空。荒れ模様
//◆署長宅
//◆雨ざーざー。
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(350,"bg058_曇空a_01.jpg");

	CreateSE("SEL01","se自然_水_雨音01_L");

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("絵効果雨", 360, 256, 0, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Rotate("絵効果雨", 0, @-60, @0, @0, null,true);
	Zoom("絵効果雨", 0, 3000, 3500, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	FadeDelete("絵暗転", 2000, true);

	WaitKey(2000);

	OnBG(100,"bg034_署長宅茶の間b_01.jpg");

	CreateTextureEX("絵背景250", 250, Center, Middle, "cg/bg/bg034_署長宅茶の間c_02.png");
	CreateEffect("絵効果雨2", 200, 0, 150, 512, 288, "Rain");
	SetAlias("絵効果雨2","絵効果雨");
	Rotate("絵効果雨2", 0, @0, @0, @0, null,true);
//	Zoom("絵効果雨2", 0, 3000, 3500, null, true);

	SetVolume("SEL01", 3000, 200, null);

	Fade("絵背景250", 0, 1000, null, true);
	Fade("絵効果雨2", 0, 500, null, true);
	FadeBG(2000,false);
	FadeDelete("絵効果雨", 2000, true);

	Delete("絵効果雨");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　从早晨起就很诡谲的天气，终于在接近正午时现出本性。
　大滴的雨水将庭院的土地打得乱七八糟，拼命地将每日
精心护理的成果化为乌有。

{	SetVolume("SEL01", 5000, 300, null);}
  还能听到雷鸣声。
　现在虽尚远，但似乎正在逐渐接近。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060010a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　天象的喧嚣却无法阻止我莫名空虚的意识，想要沉浸
在忧郁的思绪之中。
　也没人能当我的倾诉对象。

　署长出勤去了，家宰牧村女士又很繁忙。
　村正也为每日必做的银星号搜寻出门去了。下雨虽然
会干扰剑冑的探查功能，但搜索银星号气息的能力似乎
另当别论，不受影响。

　不会生锈的剑冑在雨中搜寻也不觉得辛苦吧。我遥想
着那个呈蜘蛛之姿，不畏迅雨地在黑暗的镰仓盘旋的同
伴，不由得心生羡慕。
　若能有所作为，就不用为无所事事而烦恼了。

　……战斗。
　战斗、战斗、杀戮。

　结果了几个被银星号的“卵”侵袭的武者。
　于是相应的，杀死了相同数量的我身边之人。

　善恶相抵。

　我所背负的这一虐杀法，还没有结束。
　仍旧必须杀戮。

　下次杀谁。
　谁是敌人、谁是同伴，将这两者全都杀死。

　我不知道谁是敌人。是银星号、或是被最后的“卵”
附身的什么人。
　同伴——我知道同伴是谁。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆黒
//◆一条
	SetVolume("SE*", 1200, 1, null);
	CreateColorEX("絵暗幕", 2000, "#000000");
	Fade("絵暗幕", 1700, 1000, null, true);

	StC(2100, @0, @0,"cg/st/st一条_通常_制服.png");
	FadeStC(300,true);

	CreateTextureEXmul("絵演", 2200, Center, Middle, "cg/anime/Left/blood_C_6.png");
	CreateTextureEXadd("絵演裏", 2050, Center, Middle, "cg/anime/Left/blood_C_6.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　是她吧。
　一心一意地渴求、想要踏入正道的少女。

　我憧憬着、羡慕着那样的她。
　每当遇到她、见到她时，这种想法就会愈加强烈。

　可以的话，我也希望像她那样活着。

　刚正不阿。
　为人耿直。
　勇往直前——

　我早已无法实现的活法。
　因为，已犯下几桩罪行的我，只能选择被其束缚、背
负责任的活法。

　对于绫弥一条，我觉得她遥远而又高贵。
　
{	CreateSE("SE01","se戦闘_攻撃_刀刺さる05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("絵演", 0, 800, null, true);
	Fade("絵演裏", 0, 1000, null, true);}
　所以，我大概会杀了她。

　下次杀敌之时。
　将她——

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆部屋
	CreatePlainSP("絵板写", 5000);
	DeleteStA(0,true);
	Delete("絵演*");
	FadeDelete("絵板写", 1000, true);
	FadeDelete("絵暗幕", 1000, true);
	SetVolume("SEL01", 3000, 200, null);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　暗淡的房间里，独自一人。
　一旦独自坐下，总是会想这些事情。

　我也出去找银星号吧。
　
　正当我知道这样做毫无意义，却又下定决心之时。

　突然察觉到人的气息，我便向庭院张望。
　
　有个人像石像般伫立在那里，看着我。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆庭（居間背景から切り取る）
//◆一条
//◆※最悪、居間背景の庭辺りに一条の顔グラとテキス
//◆トボックスを置くだけでもＯＫ
	CreatePlainSP("絵板写", 5000);

	Delete("絵背景*");
	Delete("絵効果*");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/resize/bg034_署長宅茶の間b_01l.jpg");
	Move("絵背景100", 0, @512, @0, null, true);
	CreateTextureSP("絵背景150", 150, Center, Middle, "cg/bg/resize/bg034_署長宅茶の間c_02l_ex.png");
	Move("絵背景150", 0, @512, @0, null, true);
	CreateTextureSP("絵背景200", 160, Center, Middle, "cg/st/resize/st一条_通常_制服m.png");
	Move("絵背景200", 0, @-212, @130, null, true);

//	OnBG(100,"bg034_署長宅茶の間b_01.jpg");
//	StL(1000, @0, @0,"cg/st/st一条_通常_制服.png");
//	FadeBG(0,true);
//	FadeStL(0,true);


	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 64;
	CreateEffect("絵効果雨", 120, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 300, null, true);

//	Delete("絵板写");

	SetVolume("SEL01", 500, 350, null);
	FadeDelete("絵板写", 200, true);

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060020a02">
「…………」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060030a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　我瞬间有种想法：是不是阴郁的沉思招致幻象出现。
　——不对。少女是真实存在的。

　少女就在那里，一动不动地站着。

　一言不发。
　面无表情。

　对我来说，她是理应欢迎的来客。
　却又犹豫着要不要出声叫她。

　她特有的、甚至于凛烈的、直视前方的目光，现在隐
藏在阴影之中，隐约笼罩着一丝阴霾。
　那双平淡的眼睛令人觉得她像一尊石佛。

　就像冰冷的佛像实际上是由雕刻师灌注无数情感雕刻
而成的一样，轻易便能看出，少女纹丝不动的双眸深处
也隐藏着汹涌的波涛。
　但我却看不透其本质。

　我第一次看到这样的一条。不同于相遇之初，她毫不
掩饰地对我表现出厌恶的模样。
　而且，她也用一副仿佛初次看到我似的眼神盯着我。

　有丝凉意。
　无关雨天和季节，而是不知名的冰冷。

　或许这是恐惧。
　
　——恐惧什么？　因什么而恐惧？

　淋着冰雨的少女无声地伸出一只手。
　好似举枪的动作。

　她握紧手中的纸片。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060040a02">
「凑斗先生。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　在我无言以对之时，少女终于首先打破了沉默。
　就算眼前的男人想说些什么，那声音里却具备着迫使
他将话语吞回喉咙深处的魄力。

　我无计可施，屏住呼吸。
　不得不承认被她的气势镇住了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060050a02">
「和我——」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　是杀意。
　是愤怒。
　还是悲切。

　我察觉到，现在的一条根本就是一把刀。
　一把注入情感而造的刀。

　为了刺向什么人的胸膛。

　什么人……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060060a02">
「和我……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　是为了
　刺我——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆フラッシュエフェクト。つまり稲光だ。
//◆画面が元に戻った瞬間、
	CreateTextureEXmul("絵背景160", 150, Center, Middle, "cg/bg/resize/bg034_署長宅茶の間c_02l_ex.png");
	Move("絵背景160", 0, @512, @0, null, true);
//	CreateTextureEXmul("絵背景210", 210, Center, Middle, "cg/st/resize/st一条_通常_制服m.png");
//	Move("絵背景210", 0, @-212, @130, null, true);

	CreateStencil("絵背景210",911,Center,Middle,128,"cg/st/resize/st一条_通常_制服m.png",false);
	SetAlias("絵背景210","絵背景210");
	CreateColorEXmul("絵背景210/色", 911, "#000000");
	Move("絵背景210", 0, @-212, @130, null, true);

	CreateColorSPadd("絵白", 145, "#FFFFFF");
	Fade("絵背景160", 0, 1000, null, true);
	Fade("絵背景210/色", 0, 800, null, true);
	Wait(50);
	FadeDelete("絵背景160", 1600, false);
	FadeDelete("絵背景210/色", 1600, false);
	FadeDelete("絵白", 1600, false);

	WaitKey(500);

	SetFwC("cg/fw/fw一条_照れ.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060070a02">
「去看场电影吧!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆雷の音。ごろごろごろごろごろ……
	CreateSE("SE01","se自然_雷_稲光02");
	MusicStart("SE01",0,800,0,1000,null,false);

	$残時間=RemainTime("SE01");
	WaitKey($残時間);
	WaitKey(1000);

	ClearWaitAll(2000, 2000);

//◆映画。
//◆次回作のＣＭでどうか。
//◆無ければジャンゴで良いな。
//◆もしくはなんか一発ネタ。

//あきゅん「演出：映画ネタダミー」


	CreateSE("SE01","se戦闘_攻撃_刀連撃02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	MoviePlay("dx/mv剣戟_チャキーンチャキキーン.ngs", true);

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);

//◆蕎麦屋
//◆※刃鳴散らすの背景を使用
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg059_蕎麦屋の店内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm27",0,1000,true);

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060080a00">
「……好前卫的有声电影啊。」


{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060090a02">
「对、对不起。
　我没想到电影内容那么奇怪……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　我和一条一起去了北镰仓的电影院。
　大概是天气的缘故，电影院很冷清，我们看了大约两
小时的电影，内容像是用黏着剂粘在一起炖透了的西瓜
和长靴。

　我们一面沉浸在某些暧昧的感慨中，一面为了吃迟到
的午饭而去了附近的荞麦面店。
　现在，我们面对面地坐在一张桌子旁。

　我还没询问一条突然邀请我到底有何意图。
　虽然很在意，且还没能问出口。

　不管怎么说，虽然感激她将我救出阴郁孤独也是一个
缘故。但更大的原因是，今天的一条果然有些古怪，浑
身散发的气场让我犹豫起该不该轻易询问。

　现在也是如此。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆蕎麦屋の娘·なまにくリファイン

	CreateTextureEX("絵背景蕎麦娘", 100, Center, -100, "cg/st/resize/st蕎麦屋の娘_通常_制服ex.png");

	OnSE("se特殊_鎧_鳩",1000);
	Move("絵背景蕎麦娘", 300, @0, @-100, Dxl1, false);
	Fade("絵背景蕎麦娘", 300, 1000, null, true);

	Wait(1000);

	StL(1000, @0, @0,"cg/st/st蕎麦屋の娘_通常_制服.png");

	FadeDelete("絵背景蕎麦娘", 300, false);
//	Move("@StL*", 300, @0, @0, AxlDxl, false);
	FadeStL(300,true);

	SetNwC("cg/fw/nw蕎麦屋の娘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060100e053">
「客人，要点什么？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060110a00">
「一条，吃点什么？」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060120a02">
「啊，是。
　那么……还有冷油渣豆腐荞麦面吗？」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//嶋：修正（出しま）【090930】
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060130e053">
「什么还不还的，那种反人类的东西我们店里
可没有。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060140a02">
「……不，给我等一下。
　反人类是什么意思。」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060150e053">
「什么？」


{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060160a00">
「你说什么呢，一条。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060170a02">
「呃……哎？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060180a00">
「人类怎么可能允许<RUBY text="·······">蘸着冷汤吃油渣</RUBY>的行为呢。
　就算追溯到南方古猿时代也绝对不可能。」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060190e053">
「对，没错。
　您今天带来的同伴真会说笑。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060200a00">
「是啊，我自己也觉得很意外。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060210a02">
「……那个……」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060220e053">
「话说回来，最近，我听到奇怪的传闻哦。
　居然真的有把叫什么冷油渣豆腐荞麦面的东
西端出来给客人吃的店呢……」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060230a00">
「怎么可能。是都市传说吧。
　不，或许是麦高芬表现手段的一种。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060240a00">
「不知道是哪个爱开玩笑的家伙说得跟确有其
事一样，而听话人也顺水推舟信以为真。因为
这种互动很有趣，所以才流行起来……难道不
是这样吗。」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060250e053">
「是吧？　果然是这样啊。
　不过，道理我是知道的。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060260a00">
「你似乎也很爱开玩笑呢。」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060270e053">
「啊哈哈。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060280a02">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060290a00">
「好了，一条。
　不开玩笑了，你点什么。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060300a02">
「啊，是啊。
　那……普通的油渣豆腐荞麦面……」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060310a00">
「是吗。点得好。
　那我也要一份一样的。」


{	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060320e053">
「好，油渣豆腐荞麦面两份！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	OnSE("se特殊_鎧_鳩",1000);
	Move("@StL*", 300, @-30, @0, Axl2, false);
	DeleteStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　店员用很有气势的声音接受了订单，退回厨房。
　第一次掀开这家店的门帘已经是十年前的往事了，她
从那个时候起就成了我的知己，但她那种开朗的性格一
直未变。

　一听到她的声音，就想吃美味的食物。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060330a02">
「好吃吗？
　这里的油渣豆腐荞麦面。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060340a00">
「嗯。
　一开始吃到的时候，对我的冲击可不小。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060350a02">
「……总觉得，无法想像。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060360a00">
「那是十年前的事情了。
　那时候，我还像你一样穿着学生制服。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　环视店内。一切都和过去一样。
　俯拾到处散落的记忆种子，我滔滔不绝地聊了起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060370a00">
「是毕业旅行的时候。
　和朋友一起去游览镰仓的名胜。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060380a00">
「参拜五山，在八幡宫玩实朝暗杀游戏……然
后刚好在吃午饭的时间，走进了附近的荞麦面
店。
　就是这里。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060390a00">
「其实，那次旅行，我犯了个错误。
　带的钱太少了。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060400a00">
「他们不一样。因为想着是难得一次的旅行，
他们带了很多零用钱。
　他们像是故意讽刺我似的，不，就是在讽刺
我，他们接二连三地点起了高价荞麦面。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060410a00">
「我现在都还记得。
　小长谷点的是金枪鱼浇山药汁荞麦面。尾崎
也点的这个。安藤好像是大碗特选荞麦面吧。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060420a00">
「都是超过一百日元的高价荞麦面。
　我手头的钱大概总共也就一百日元左右。这
事他们当然是知道的。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060430a00">
「你能明白吗？」


{	FwC("cg/fw/fw一条_慌て.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060440a02">
「…………不、不明白。」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060450a02">
（他在问我什么啊……）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060460a00">
「他们在挑战啊。
　在向我挑战：你小子有没有当场拿出全部财
产，维护自尊的气度。」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060470a00">
「他们那充满优越感的笑容，已经足够让我做
一个决定了。
　钱包里共有一二五日元。这根本不用确认，
无需犹豫。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060480a00">
「我点了油渣豆腐荞麦面。
　六〇日元。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060490a02">
（……没有气度啊……）


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060500a00">
「等点的荞麦面一到，他们就美滋滋地吃了起
来。
　而且还一边对正在等油渣豆腐荞麦面的我，
说些怜悯意味的场面话。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060510a00">
「他们最擅长藐视败者了。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060520a02">
「真的是朋友吗？　那些人。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060530a00">
「但是，他们大概不知道吧。
　胜败有着转瞬之间便可颠覆的命运。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060540a00">
「转机在我的荞麦面端上桌时到访了。」


{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060550a00">
「一目了然。
　每个人都看明白了：一切都逆转了。」


//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060560a00">
「出店的时候，小长谷还嘟囔着：点最便宜荞
麦面的家伙却吃到了最好吃的东西。
　而旁边的尾崎则拼命地想要记住这家店的地
址。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060570a00">
「我是胜者。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060580a02">
「…………{WaitKey(2000);}<BR>　那么，那个……那到底是
什么样的荞麦面呢？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060590a00">
「嗯。
　就是那种。」


{	FwC("cg/fw/fw一条_驚く.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060600a02">
「啊？」


{	OnSE("se特殊_鎧_鳩",1000);
	NwC("cg/fw/nw蕎麦屋の娘.png");}
//【ｅｔｃ／蕎麦屋の娘２】
<voice name="ｅｔｃ／蕎麦屋の娘２" class="その他女声" src="voice/mb01/0060610e053">
「来了，久等了！」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//――――――――――――――――――――――――

//◆天かすがばちばちと弾ける音
//◆要は油が弾ける音なんだが。

	CreateSE("SE01","se日常_料理_揚げる02_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

	WaitKey(1000);

	ClearWaitAll(1000, 2000);

//◆一度フェード。間を取って
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg059_蕎麦屋の店内_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);
	SoundPlay("@mbgm30",0,1000,true);

	SetFwC("cg/fw/fw一条_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060620a02">
「……好厉害。
　这种荞麦面我还是第一次吃到。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060630a00">
「是吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　汤汁中的油渣<RUBY text="····">劈劈啪啪</RUBY>地跳跃着，
这种荞麦面我也只在这里吃过。
　虽然我觉得只是让油渣跳跃很简单。

　但是要做到与味道融合就很难了。这家店的油渣豆腐
荞麦面，充满活力的油渣和荞麦面的配合简直绝了。
　一条似乎也很满足。

　如果这样能变得容易开口说话倒也挺好。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060640a02">
「但是，客人不是很多呢……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060650a00">
「是啊。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060660a02">
「明明这么好吃。
　是因为下雨的关系吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060670a00">
「也有这个原因，不过……
　因为受到幕府粮食增产计划的冲击这里暂时
关闭了一阵子。直到最近才开业。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　于是我环视起并不大的店内。
　现在勉强还能算是午饭时间，却只有两位客人。
也就是说，只有我们俩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060680a00">
「客人们都在那期间流失了吧。
　如果知道这里恢复营业，又会热闹起来的。」


{	FwC("cg/fw/fw一条_笑顔a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060690a02">
「这样说来倒也没错。
　我家附近之前关店的饭铺，最近不是恢复营
业就是新开张。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060700a00">
「最大的反幕势力冈部党被镇压，六波罗的统
治趋于稳定。
　可以说拜这种恩惠所赐。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　虽然不知道今后会怎样。
　前一阵子的大事变想必会导致政情朝着完全背离稳定
的方向发展——暂且不论从长期视角做出评价。

　悲观点说，导致这家店出现在恢复热闹前再度关闭的
结局也是有可能。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060710a02">
「恩惠吗……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060720a00">
「……？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060730a02">
「必须得心怀感激吗。
　迄今为止都在彻底地严加管束，现在好不容
易才缓解了一丁点。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　疑问之意仅停留在语法句式上。
　从说话人的声音、眼神可以看出，她已经对自己的
问题有了确切的答案。

　我突然感觉有些害怕。
　这或许类似于尖状物恐惧症的心理。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060740a02">
「真是可笑。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060750a00">
「……但是也总比无作为要好。」


{	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060760a02">
「嗯……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060770a00">
「食品规制的缓和绝对是喜事一件。
　想必也有许多人因此而获救吧。」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060780a02">
「我也是这样想的。
　但是，我<RUBY text="····">无法原谅</RUBY>。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060790a00">
「…………」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060800a02">
「这是两码事。
　只要做些善举，过去所犯下的恶行就能一笔
勾销，这种事是绝对不可能的。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060810a00">
「……是啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　没错。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060820a02">
「善就是善。
　恶就是恶。」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060830a02">
「即便善的部分得到认可，
  恶的部分也应受到制裁。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　正是如此。
　所以——我。

　对于我自己
　绝对——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060840a02">
「所以我无法原谅。
　就算表面上在与恶斗争。」


//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060850a02">
「而内在却作恶多端。
　如果有这种人，我绝对……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ブラックアウト
	SetVolume("@mbgm*", 1500, 0, null);
	CreateColorEX("絵暗転", 5000, "#000000");
	Fade("絵暗転", 600, 1000, null, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　
　　　　　　　　　　　无法原谅。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	FadeDelete("絵暗転", 600, true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060860a00">
「…………」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060870a02">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　一条没有看我。
　她低着头，注视着桌上的木纹。

　那么，刚才那是偶然吗。
　刚才的……<RUBY text="···">一致性</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	StL(1000, @30, @0,"cg/st/st一条_通常_制服.png");
	CreateSE("SE01","se日常_物_椅子鳴る02");

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0060880a00">
「一条。」


{	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 300, @-30, @0, DxlAuto, false);
	FadeStL(300,false);
	FwC("cg/fw/fw一条_警戒.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060890a02">
「……该走了吧。
　请再陪我一会儿。」


{	FwC("cg/fw/fw一条_正義.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0060900a02">
「有个地方想让你跟我一起去。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	OnBG(5000,"bg058_曇空a_01.jpg");
	CreateSE("SEL01","se自然_水_雨音01_L");
	MusicStart("SEL01",3000,1000,0,1000,null,true);
	FadeBG(1500,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　一条依然没有看我，将视线移至店外。
　外面依旧下着雨。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitKey(2000);
	SetVolume("SE*", 2000, 0, null);
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_007.nss"