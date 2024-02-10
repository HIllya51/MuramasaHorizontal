//<continuation number="630">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_014.nss_MAIN
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
	#bg054_湊斗家祭殿a_01a=true;

	#voice_on_二世村正=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "ma05_015.nss";

}

scene ma05_014.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma05_013.nss"


	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg050_湊斗家門前_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　要救妹妹，在心中重新起誓——
　然而，仅为此而迈进之事却并未被允许。

　不是因为工作繁忙。
　延长向公司申请的休假期限是不可避免的。
  

　是因为本家宣布要举行束发仪式。

　皆斗家法规定，凑斗家祭司——即巫女的继承，需在
作为下任继承人的女子到一定年龄时行束发仪式。
　不可提前也不可推后。

　继承仪式——束发仪式近在眼前之际，光却因病卧床
不起，这无疑是本家步入晚年所遭遇的最为痛恨之事。
在本家即将履行现今最后的头等大事之时，却横遭拦路
虎。

　不过，经过麦格列博士的治疗，光的肉体正逐渐好转。
　自那之后，一次也未曾发作过。

　束发仪式之时，继承人只要按照既定仪式的规定去做就
好。要说复杂倒也繁琐，却也无需技巧和主观判断。
　就算是现在的光，只需有人陪同便可行事。

　对本家来说，怎能放跑这一大好时机——想必正处于这
一阶段。
　博士才刚回国，这边便已将仪式日期定下。

　我则希望让光再休息一阵子，待体力恢复后再行事。
　束发仪式长达半天，会对体力造成不小的负担。因此，
至今为止都无法进行。

　即便现在，仍十分勉强。
　然而，由于承蒙聘请博士之大恩，我和养母都无法强求
本家。

　只要悉心从旁辅佐，想必也能减轻光的负担……
　如此一想，无奈只得妥协，顺从了本家的要求。

{	CreateColorEX("絵暗転", 5500, "#000000");
	Fade("絵暗転", 3000, 1000, null, false);}
　于是，今日——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	WaitAction("絵暗転", null);

//◆祭殿
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　养母的祷文上奏无论何时听都是那么美妙。
  平淡的语调中蕴含着无以言喻的深奥。

　这是历经数年，反复千万次，才得以完成的咏唱。
  规定上奏之时列席者须伏首静待，即便没有规定人们
也会自然地垂头聆听吧。

　我抬眼窥视情况，将视线从末席开始沿地面扫过。
　虽然很不礼貌，但也没办法。既然不拘小节让我这个
原本没有列席资格的人参加，就不可玩忽职守。

　本家及皆斗各家要人分列左右两列，相对而坐。
　光则跟随在母亲身旁。

　她像是靠在椅背上，茫然地聆听祷文。……现阶段还
未有异常。
　在这祭殿中举行的正礼之前的诸多仪式，应该已使她
积存了些疲倦，但似乎还未超越极限。

　那把靠椅当然并非遵循礼法之物，还因此惹得本家极
为不快，但果然还是必不可少的。
　若躺着也行的话，就不必如此大费周章了。

　照现状来看，应该能完满收场。
　但不可大意。

　就算是为了不再冒犯本家，必须严加防备，以便在万
一发生意外之时迅速应对。
　我移开视线，意识却仍集中在光身上。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆フェードアウト、イン
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg054_湊斗家祭殿a_01a.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	WaitKey(1000);
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　养母的祷文顺利诵完。
　若是普通祭祀，之后便只剩供奉供品与玉串了。

　然而今日不同。
　接着要进行通称为『会颜』，可说是束发仪式之关键
的祭礼。

　皆斗家诸位暂退。<k>
　……不久复而归位。

　身着武家装束。
　佩太刀。

　他们全副<RUBY text="··">武装</RUBY>。
　不过是仪式需要罢了。

　接着仪式暂返起始。
　再次将御扉——神前之门开启。

　当然，门已被打开过。
　在祷文上奏之前。祷文是献给祭神的，不在那之前开
启门扉就毫无意义了。

　但，此时——即普通祭礼中开启的御扉深处，还有另
一扇御扉。
　名曰奥御扉。

　仅在束发仪式等特别重要的祭祀时开启。
　封藏于门中之物，一年也不得接触一次室外的空气。

　被厚重的铁门夹在其中的城门。
　几个身着古董般战服的人看到这个便紧张得抖起来，
鸣响出一阵细微的金属声。

　他们都知道这是皆斗一族之中枢。
　无论是他们自身的武装之意。还是铁制奥御扉之意。

　养母按照礼法，用御匙打开门锁。
　厚重的硬质之音，宣告着<RUBY text="··">某物</RUBY>的开示。

　养母将钥匙归位，接着，为开启门扉而膝行前进。
　到达规定位置后，将手放上。开始开启门扉。

　配合着这个时机，列席者（包括我）一起前倾。
　哦哦哦——地齐声警跸。

　警跸两次，以分别打开左右两扇门扉。
　奥御扉开启完毕。

　于是——在我们面前。
　显现出皆斗家最高机密。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆二世村正（女王蟻）＆三世村正（蜘蛛）

	CreatePlainSP("絵面写",5000);
	Wait(10);
	CreateColorEX("絵演背景黒化", 999, "#000000");
	Fade("絵演背景黒化", 0, 600, null, true);
	CreateTextureSP("絵演立左", 1000, Center, Middle, "cg/st/3d二世女王蟻_正面.png");
	CreateTextureSP("絵演立右", 1000, Center, Middle, "cg/st/3d村正蜘蛛_俯瞰.png");
	Rotate("絵演立左", 0, @0, @180, @0, null,true);
	Move("絵演立右", 0, @300, @50, null, false);
	Move("絵演立左", 0, @-280, @50, null, false);
	FadeDelete("絵面写", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　一个是白银女王蚁。
　一个是深红蜘蛛。

　两者都貌似昆虫，却又有着昆虫无法比拟的巨大。
　体态大小堪比人类。

　其身为钢铁。
　极致之技锻造出的钢铁。

　那是剑胄。
　且并非现代战场的主力——数打。

　而是锻造师献出全部肉体和灵魂才能得以完成的……
　真打剑胄。

　古来——而且时至今日也是如此，拥有剑胄仅为武士
阶级的特权。
　而皆斗家则不拘泥于这种阶层变迁，始终秘藏这两副
剑胄并代代相传。……极为隐秘。

　皆斗家是奉天皇封印“邪物”之诏命，扎根于此地的氏
族。
　此剑胄是一族万世<RUBY text="··">应尽</RUBY>之使命。

　其铭，其由来，我也不甚了解。仅听闻是绝不可将其解
放之物。
　但看过之后就会明白，剑胄所散发出的妖气超乎常态，
充斥着不祥之感。

　千言万语不及亲眼所见。
　无论谁人见过之后，都必断定应将其永世封印于此。

　曰：禁碰此物。
　曰：禁言此物。
　
　——皆斗一族最高禁忌。

　别说血迹，连一粒灰尘都未沾染的装甲锃光瓦亮，美
丽而又令人畏惧……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	CreatePlainSP("絵面写",2000);
	Delete("絵演*");
	FadeDelete("絵面写", 300, true);

	SetFwL("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【統】
<voice name="統" class="統" src="voice/ma05/0140010b46">
「…………」

{	FwL("cg/fw/fw景明_過去.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0140020a00">
「……！」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　养母不露痕迹的眼色，将沉醉于那光泽的我唤回了现
实。
　养母扶着光勉强站起，正欲将她领往剑胄的方向。

　短短几步的距离，对现在的光来说却极为严苛。此时
发生意外的危险最大。
　不能在这时发呆。

　我重振精神，将注意力集中在光的背影上。
　不知是否为了本日而进行的手脚复健成果显现，光被
养母半抱着，令人捏把汗却又一步一步地向前走着。

　步行这种身体的习惯性动作，在他人的催促下似乎也
不是不能够勉强做到的。
　巫女背着继承人前行实在有些不成体统，因而如此真
乃幸事一件。

　光拖着步子摇摇晃晃地好不容易才走到神座前。
　这时整个祭殿充满了安心的氛围，恐怕除了她本人，
其他人都松了口气。

　至此，今日最重要的『会颜』基本结束。
　可以认为掌管凑斗祭祀的巫女交接之事，
确已告知了作为祭祀对象的两副剑胄。

　大家都松了口气也很自然。
　
　——但，这样却有可能弄巧成拙。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

//◆がしゃん。金物を床に落とした
	CreateSE("SE01","se日常_金属落ちる");
	MusicStart("SE01",0,800,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　突然响起的声音，令在场所有人都惊得跳了起来。
　这不过是形容心理上、神情上的变化罢了。实际上并
没有如此欠缺自制力的人。

　取而代之的是，视线全都集中在一处。
　在场的一位——愕然的老者脚边。

　那里有一块金属物件。
　是太刀刀饰。不知为何，掉了下来。

　本家怒不可遏地瞪着他。
　那位老者惊慌失措地拾起刀饰，收入怀中。

　——仅此而已。
　
　当时的意外，不止这些微不足道的小事。

　我亲眼看到了<RUBY text="··">那个</RUBY>。
　……却不知为何会如此。

　光是因为被声音吓到，才<RUBY text="····">变成那样</RUBY>的呢。
  或是扶着光的养母受惊回头看去之时，
<RUBY text="······">导致变成那样</RUBY>的呢。

　原委不明。
　然而，事实却是……

　光的指尖碰到了白银之蚁。
　——即便在祭礼之时也严禁碰触的，那副剑胄。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0140030a00">
「——」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　一开始，发觉这一情况的似乎只有我。
　但……大概是我的视线引起了其他人的注意。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【統】
<voice name="統" class="統" src="voice/ma05/0140040b46">
「啊。」

{	FwL("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0140050b52">
「……!!」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　养母和本家顺着我的视线，看到了那一幕——
　同时发出仿佛浓缩压抑着“不妙”的轻声惊呼，
和无声的悲鸣。

　养母当即将光的手放回原位。
　在其他人看到之前就已做完这一动作。

</PRE>
	SetTextEXL();
	TypeBeginLI();//―――――――――――――――――――――――――――――

	SetFwL("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【統】
<voice name="統" class="統" src="voice/ma05/0140060b46">
「…………」

{	FwL("cg/fw/fw本家_通常.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0140070b52">
「…………」

{	FwL("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0140080a00">
「…………」

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　三人反应迥然。
　目光交汇间蕴含着各自的想法。

　毋庸置疑，其中最强烈的当数本家包含着破坏力的愤
怒目光。
　而最现实的则是养母。

『就当什么都没看到』
　
　………………

　结果，除此之外，不可能有别的办法。
　伴随着本家的咬牙切齿，我苦笑着舒了口气。

　若被碰触的瞬间剑冑巨大化或是开始喷火则另当别论，
然而并未出现那种事态，吹毛求疵也没有用。
　当下，总之祭礼已圆满结束。

　……想必本家除了这样说服自己，也别无他法了吧。
　揣测着将守规摆在第一位的老总领心中所想，我感到同
情。虽然我觉得被人同情他也不会开心。

　至少必须保证这之后的仪式平安进行。
　想到这儿，我将注意力转回光身上。

　——就在那一刹那。
　<RUBY text="·····">最后的意外</RUBY>发生了。

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ＳＥ
//◆……要は光の肉体が急激に回復するのだが、どういう音が良い？
	SetVolume("@mbgm*", 2000, 0, null);
	CreateSE("SE01","se擬音_雰囲気_超回復");
	MusicStart("SE01",0,1000,0,750,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(100);
	FadeDelete("絵フラ", 600, false);

	SetFwL("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/ma05/0140090a00">
「…………什么——」

{	FwL("cg/fw/fw本家_驚き.png");}
//【本家】
<voice name="本家" class="本家" src="voice/ma05/0140100b52">
「哦!?」

{	FwL("cg/fw/fw統_驚き.png");}
//【統】
<voice name="統" class="統" src="voice/ma05/0140110b46">
「呃？
　…………哎？」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆光の世界
//◆薄く二世村正
//あきゅん「SE：要望：キーンとかファーンとかなんか高音で耳につく嫌悪感な音」
	CreateSE("SE01","se特殊_雰囲気_共鳴01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	CreateColorEXadd("絵白", 10000, "#FFFFFF");
	Fade("絵白", 200, 1000, Axl3, true);
	WaitKey(2000);
	WaitPlay("@mbgm*", null);
	PrintGO("上背景", 25000);
	CreateColorSPadd("絵白", 10000, "#FFFFFF");
	CreateColorSP("絵白地", 100, "#FFFFFF");
	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	Fade("@StL*", 0, 600, null, true);
	Delete("上背景");
	FadeDelete("絵白", 2000, true);
	SoundPlay("@mbgm32",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140120a15">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　真是不可思议。
　没想到能在这牢狱之中，见到<RUBY text="···">其他人</RUBY>。

　客人。
　你是何人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140130a15">
《……胄乃——》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	Fade("@StL*", 500, 0, null, true);
//◆女王蟻村正。半透明？
	CreateTextureEX("絵背景100", 100, -273, -117, "cg/st/3d二世女王蟻_煽り.png");
	Fade("絵背景100", 1000, 500, null, true);

	SetFwC("cg/fw/fw二世村正_通常.png");

	#voice_on_二世村正=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140140a15">
《冑名曰村正。
　乃剑胄是也。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　哦……
　剑胄吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140150a15">
《正是。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　武器吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140160a15">
《诚然。
　胄乃武器。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　是吗。
　是保护人、阻止纷争的力量吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140170a15">
《…………》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　不是吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140180a15">
《非也。
　不然。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　……并非武之力吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140190a15">
《乃是武也。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　那么？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140200a15">
《武非止战之物。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　哦。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140210a15">
《乃是凶法。
　乃是杀法。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140220a15">
《所谓武，仅为夺命之力。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　原来如此。
　可是，母亲和哥哥是那样说的。

　止戈为武。
　平息斗争、引导和平才是武道，他们是这样说的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140230a15">
《……………………
　是吗。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140240a15">
《果不其然，世人已将武之正道忘却。
　任由无用之伪善横行吗。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140250a15">
《胄无以回报父辈之苦战吗!!》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140260a15">
《眼中有刃便可……
　眼中有箭便可……》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140270a15">
《锐利是为割裂肉身而存在。
　是为贯穿五脏六腑而存在。》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140280a15">
《为何反复欺瞒？
　为何愚昧粉饰？》

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140290a15">
《保护之力！
　和平之力！　此话差矣！》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140300a15">
《为何，将真实隐于伪善!?》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140310a15">
《看这利刃！
　唯一之真实在此！》

{	FwC("cg/fw/fw二世村正_侮蔑.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140320a15">
《如此锋利只为——
　<RUBY text="··">杀人</RUBY>!!》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140330a15">
《武仅此用途！
　别无他用！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　…………

　唔。
　这话听起来很好懂。

　刀剑是伤人、杀人之物。
　没错。毋庸置疑。

　实际上我也百思不得其解。
　为什么手上拿着<RUBY text="····">这种东西</RUBY>，嘴上却必须叫嚷和平呢。

若是挥舞着写有『为了全世界人类的和平』的大旗，我倒
能理解……
　武道真让人摸不着头脑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_侮蔑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140340a15">
《……乃因世人将其扭曲。
　真实之武，单纯而明朗。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　嗯。
　但是，村正。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140350a15">
《何事。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　我母亲说她的武是追求和平。
　那么，你所说的武，最终目的是什么？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140360a15">
《…………》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140370a15">
《武乃兴风作浪之力。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140380a15">
《是杀法。亦是凶法。
　称己刃为善，敌刃为恶，然世间善恶界线
并非单一。故众人皆信己之善，而憎敌之恶。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140390a15">
《故此。
　武之一杀，一善一恶俱灭。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140400a15">
《因而。
　武非善。
　武非恶。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140410a15">
《<RUBY text="····">仅为杀戮</RUBY>之杀法。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140420a15">
《……杀法之终结人人自明。
　强者生，弱者死。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0440]
　其尽头……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0450]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140430a15">
《……》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140440a15">
《社会灭亡。
　文明崩溃。
　生命枯竭。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140450a15">
《仅唯一最强之人存活。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140460a15">
《……武之目的，正在于此。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0460]
　哦……
　哦。

　那，最后那人是何人。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0470]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140470a15">
《无从知晓。
　或许是神。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0480]
　——神么。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0490]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140480a15">
《虽非敬之为神。
　然毁灭世界、独立武之巅峰者，唯有称其为
神。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0500]
　是吗。

　……是吗。

　…………<RUBY text="·····">还有这一招</RUBY>。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0510]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140490a15">
《……？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0520]
　哈，
　哈！

　哈——!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0530]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140500a15">
《……为何而笑？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0540]
　高兴。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0550]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140510a15">
《高兴？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0560]
　村正。
　你为光指明了路。

　现在，指明了光应走之路!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0570]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140520a15">
《……何意？》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0580]
　我被夺走了父亲。
　从出生之时起，就被夺走了。

　必须夺回。
　但，却不被人类伦理所允许。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_疑念.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0590]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140530a15">
《……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0600]
　父亲是属于母亲的。
　女儿无法夺走。

　光身为被夺走的一方，
　却不被允许将其夺回。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0610]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140540a15">
《……原来如此。
　因此才于这牢狱中相见。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0620]
　是。
　既无法实现存在意义，便只能沉沦于此。

　但——
　
　武！

　武之正道！
　去伪存真的武！

　若其终点是登极为神……
　光就还有路可走！

　成为神便可！
　人的章法对神无效！

　不，将其破坏便可。
　若武之风暴最终毁灭了人类世界，人的章法必将不复
存在。

　武！
　武道！

　踏上这条路吧。
　走向毁灭世界的神座吧。

　为了夺回父亲!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0630]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140550a15">
《…………》

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140560a15">
《汝为狂人。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140570a15">
《虽不知缘由，但欲得令尊，
诉诸武力抢来便是。
　若有不惜毁灭世界之意志，
则毫无踌躇之理。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0640]
　不。
　那样并不能得到父亲。

　父亲的身心被人类章法所束缚。
　即便用武力拘束其身体，也无法得到他的心。

　更不会属于光。
　这样毫无意义。

　……所以。
　要毁掉那章法！

　然后，光成为神——
　<RUBY text="···">合法地</RUBY>夺回父亲！

　完美！
　如此一来，父亲就会认同光！

　就会允许光回到他的怀抱！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0650]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140580a15">
《…………
　方才已讲明。武之终结唯有毁灭。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140590a15">
《汝渴求武，如欲凭武之力夺取至尊宝座——
　令尊亦必将命丧刀下。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0660]
　什么话。
　既如此，父亲也成为神就行了。

　成为神，拥有与光对等的力量就行了。
　如此一来，我们互不相残，就能永远在一起了。
  
</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw二世村正_疑念.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0670]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140600a15">
《……》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140610a15">
《…………》

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140620a15">
《……也罢。
　凶祸之人。》

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/ma05/0140630a15">
《将胄救出这牢狱，收为己用。
　冑将化为汝之半身，以示武。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0680]
　诺!!

　牢狱——没错。这里是牢狱。
　曾是牢狱。

　原以为这牢狱没有钥匙……

　这铁枷，是不允许我心愿的母亲的手。
　这铁枷，是不允许我心愿的社会的手。

　不允许你的存在。
　所以全世界都在说：待在那里。

　认为你无法反抗。
　不，根本连想都没想过你会反抗。

　……并非如此。
　只要拥有武，就能颠覆这种压迫。

　只要我强过<RUBY text="····">这群家伙</RUBY>，
就能将这牢狱彻底粉碎，对吧!?

　世界向我屈服，将我奉为神！

　光——
　就能夺回父亲!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかーん。なんか爆裂？
	CreateSE("SE01","se戦闘_破壊_建物01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEXadd("絵フラ", 5000, "#FFFFFF");
	Fade("絵フラ", 600, 600, null, true);
	WaitKey(2000);


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma05_015.nss"