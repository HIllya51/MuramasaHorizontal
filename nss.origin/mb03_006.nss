//<continuation number="140">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_006.nss_MAIN
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
	#bg034_署長宅茶の間a_01=true;
	#ev158_一導の最期=true;
	#bg072_火災で倒壊した和風建築_03=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb03_007.nss";

}

scene mb03_006.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb03_005.nss"

//◆部屋
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	CreateTextureEX("絵演眩暈", 500, Center, Middle, "cg/bg/bg034_署長宅茶の間a_01.jpg");
	SetShade("絵演眩暈", HEAVY);
	OnBG(100,"bg034_署長宅茶の間a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm27",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　这里——不是凑斗先生的家。镰仓署长的官邸住起来
感觉还不错。尤其适合疗养中的身体。
　如果住在自己那间便宜的公寓，烧伤的恢复速度也许
会更慢。

　必须得感谢凑斗先生吧，在他的安排下我才能在这里
休息。
　还得感谢这家的主人。以及虽然话不多却非常周到的
佣人，是叫牧村吧。

　每次动弹身体都会牵到各处伤口，疼痛感掠过全身。
但这些都无所谓。
　多亏了庭院的植物送来的怡人空气。

　不。不对吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_正義.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060010a02">
（……我做到了）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　在胸中满溢的成功感面前，疼痛这点小事就像深海海水
一般。要多远有多远。
　不由得连受伤这件事本身都忘却了。

　总觉得焦急而心神不宁。
　如果手脚多少有点力气的话，就能在这附近任意奔跑、
好好发泄一番了。对于直到今天早晨才清醒的身体来说，
在这间屋内踱步已是极限。

　然而踱步也让我厌烦，没有办法，只好坐着。
　但还是闲不住。毫无意义地握起拳头又张开，毫无缘由
地伸长双腿又缩回来。

　情绪万分激昂，在旁人看来只会觉得我是举止可疑吧。
　但那是当然的。

　因为我，做到了。
　我打败了六波罗四大公方之一，游佐童心。

　我已经不再是空有名号没有实力的徒有虚名之人了。
　我为正义而战——<RUBY text="····">我在战斗</RUBY>，可以
挺起胸膛这么说了。

　因为是我亲手，打倒了邪恶！
　虽然只有一个人。很不得了的一个人。只要那和尚在
这世间专横跋扈一日，与冈部小姐遭受相同经历的人就
一定会不断增多。

　是我阻止了这一切的发生……
　
　思及此，我就高兴，自豪。

　觉得自己终于不愧于父亲的教诲。
　父亲说过。应憎恶邪恶，绝不可容许，绝不可原谅。

　所谓正义，是为人正确的生存之道。是人的原则。是
正道。
　所谓邪恶，是与正义相悖之物。是人道的脱离。是邪
道。

　只有灭尽邪恶，才能正确引导这个世间。
　所以赌上性命否定万恶。否定它们，与其战斗。而后
消灭它们。

　哪怕这份恶有着无可抗拒的理由，也绝不可宽恕。
不可容许“必要恶”的存在。一旦允许，邪恶肯定会灭之
不尽。

　正义战胜邪恶的那天不会来临。
　因恶牺牲的人会源源不断。

　——必须消灭。
　万恶。不问缘由。一切。

　尤其是像那游佐童心那种，为恶而行恶的混蛋。
　就应当赶出人世间，驱逐到与其相符的地狱。

　父亲一定会夸奖我的。
　一定会夸我做得好。<k>
　
　就像那时——第一次惩恶的时候一样。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆短くレッドアウト
//◆レッドイン
	CreateSE("SE01","se特殊_ノイズ01");
	MusicStart("SE01",0,500,0,1250,null,false);
	CreateColorEX("絵色赤", 5000, "#CC0000");
	Fade("絵色赤", 200, 850, null, false);
	Fade("絵演眩暈", 200, 1000, null, true);
	Wait(50);
	Fade("絵演眩暈", 200, 0, null, false);
	Fade("絵色赤", 200, 0, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　过于兴奋，似乎被冲昏了头脑。
　有些许晕眩。我扶住额头。

　……感觉有些烫。
　说不定有些微微发热。

　都已经恢复到这种程度了，要是明天开始因为感冒再
次卧床，我可不乐意。
　为了日后不遭罪，还是用心静养为好。况且凑斗先生
也说过严禁我逞强。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060020a02">
（……要不先看下报纸吧）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　突然停下了迈向床前的脚步。
　觉得这个想法真不错。

　我还没有看到自己所做成的事登上报纸。
　虽然每天都会看报纸，但并没有相关报道。


  凑斗先生说过政府对报道有限制，大概是这样吧。
　竟然被区区两个敌人打败，甚至还失去自己的领袖，
这种新闻六波罗肯定会想封杀到底。

　但如今幕府的统治力已显弱势。而且这次的事件是纸
包不住火的。
　是时候也许会有某家报纸爆料了——今天早晨，那个
人如是说。

　环视四周，发现晚报被整整齐齐地塞在门口。
　还未到日落之时，正是送报员四处奔走送报的时候。
那位佣人做事真是无懈可击。

　我急忙拿起报纸。
　忽然激动不已，心脏如疾槌打鼓般砰砰直跳。

　就算有报道，也不过就是简单事实的罗列罢了。
　不可能含有对我褒奖的措辞。名字也不会提及。

　这我明白。根本不曾有所期待。
　但那是社会对我所做之事的<RUBY text="··">认可</RUBY>。
承认我行使正义之事为一个既定的事实。

　是社会的宣言，认同我和正宗的存在。
　说穿了就是类似于表彰的东西。不管是什么竞技，如
果得不到这个就不算胜利。

{	CreateSE("SE01","se日常_物_紙を置く");
	MusicStart("SE01",0,1000,0,1000,null,false);}
　我带着即将登上表彰台般的心情，打开了报纸。

　报纸上，登载着<RUBY text="··">事实</RUBY>。

　
　　　　古河公方游佐童心中将<k>
{	SetVolume("@mbgm*", 1000, 0, null);}
　　　　　　　　　　　　　　被杀害

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ＣＧ：赤字で「殺害」
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,500,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	Wait(10);
	CreateColorSP("絵色黒", 3000, "#000000");

	SetFont("@黑体", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害", 0, @0, @0, @90, null,true);
	Request("絵文字殺害",NoLog);
	Move("絵文字殺害", 0, @20, @0, null, false);

//	CreateTextureSP("絵文字殺害", 3100, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意
	FadeDelete("絵板写", 50, true);
	Wait(10);
	CreatePlainSP("絵板写", 5000);
	Delete("絵色黒");
	Delete("絵文字殺害");
	WaitKey(100);
	FadeDelete("絵板写", 300, true);

	SetFwC("cg/fw/fw一条_憎悪a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060030a02">
「…………………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　头版新闻。
　这篇报道占据了晚报第一页的整个版面。不，看这架势，
中间的版面也一定全都是与此相关的报道。

　但是标题以外的内容，我已看不下去。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

//◆ＣＧ：赤字で「殺害」
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,750,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	Wait(10);
	CreateColorSP("絵色黒", 3000, "#000000");

//	CreateTextureSP("絵文字殺害", 3100, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意
//	CreateTextureSP("絵文字殺害面", 3200, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意

	SetFont("@黑体", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害", 0, @0, @0, @90, null,true);
	Request("絵文字殺害",NoLog);
	Move("絵文字殺害", 0, @20, @0, null, false);

	SetFont("@黑体", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害面",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害面", 0, @0, @0, @90, null,true);
	Request("絵文字殺害面",NoLog);
	Move("絵文字殺害面", 0, @20, @0, null, false);

	FadeFR2("絵文字殺害面",0,750,250,0,0,10,DxlAxl,false);
	FadeDelete("絵板写", 50, true);
	Wait(200);
	CreatePlainSP("絵板写", 5000);
	Delete("絵色黒");
	Delete("絵文字殺害*");
	WaitKey(100);
	FadeDelete("絵板写", 300, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　奇怪。
　……为什么，我会如此动摇。

　这篇报道只是将一直盘踞在我脑海中的事实文字化而
已。
　对于镰仓市民来说堪称惊天动地的内容，对我来说毫
无新鲜之处。

　可是，为什么。

　为什么我的手指在<RUBY text="····">不停颤抖</RUBY>啊。

　事到如今，我还在惊讶什么。
　这里所描写的事实我不是早就知道了吗。

　——是我打倒了游佐童心。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//◆赤色フォント
　
　　　　　　　　　　　<FONT incolor="#CC0000">不对。</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　是的。
　一个贪食腐肉连鬣狗都不如的混蛋却悠然自得地飘上
天际，是我把他打落到了与其相符的地面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆赤色フォント
　
　　　　　　　　　　　<FONT incolor="#CC0000">不对。</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　我没有忘记，也没有移开视线。
　不过就是重新通过他人的语言知晓而已，有什么值得
惊讶的……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆赤色フォント
　
　　　　　　　　<FONT incolor="#CC0000">不对。
　　　　　　　　不是<RUBY text="··">打倒</RUBY>。
　　　　　　　　也不是<RUBY text="··">打落</RUBY>。</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　有什么……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆赤色フォント
　　　　　　　　<FONT incolor="#CC0000">我，
　　　　　　　　把那个人，<k>
　
　　　　　　　　<RUBY text="··">杀了</RUBY>。

//◆赤色フォント
　
　　　　　　　　　　把他杀了。</FONT>

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＣＧ：父の死
	CreateSE("SE01","se特殊_ノイズ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEX("絵回想", 5000, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	SetTone("絵回想", Monochrome);
	Fade("絵回想", 0, 1000, null, true);
	Wait(50);
	Delete("絵回想");

//◆回想·遊佐童心
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 10000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想", 8000, Center, Middle, "cg/bg/bg072_火災で倒壊した和風建築_03.jpg");
	CreateColorEXmul("絵回想幕", 8100, "#847000");
	Fade("絵回想幕", 0, 400, null, true);

	Fade("絵白転", 600, 200, null, true);

	SetFwC("cg/fw/fw童心_通常.png","Sepia");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060040a09">
「你高举正义的旗帜。
　与奸邪之人游佐童心战斗。」

//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060050a09">
「取得了胜利。」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060060a09">
「了结了我的性命。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆血飛沫
	CreateSE("SE01","se人体_血_血しぶき01");
	SL_centerdamN(@0, @0,1200);
	CreateColorEX("絵色血", 20000, "#CC0000");

	Fade("絵色血", 500, 1000, null, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	SL_centerdamfadeN2(10);

	Wait(500);

	PrintGO("上背景", 25000);
	CreateColorSP("絵色黒", 100, "#000000");
	FadeDelete("上背景", 500, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　
　　　　　古河公方游佐童心中将被杀害

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆ＣＧ：赤字で「殺害」
	CreateSE("SE01","se人体_体_心臓の音02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreatePlainSP("絵板写", 5000);
	Wait(10);
	CreateColorSP("絵色黒", 3000, "#000000");

//	CreateTextureSP("絵文字殺害", 3100, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意
//	CreateTextureSP("絵文字殺害面", 3200, Center, Middle, "cg/sys/Telop/tp_陸奥.png");//ダミー注意



	SetFont("@黑体", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害", 0, @0, @0, @90, null,true);
	Request("絵文字殺害",NoLog);
	Move("絵文字殺害", 0, @20, @0, null, false);


	SetFont("@黑体", 60, #FF0000, #000000, HEAVY, RIGHTDOWN);
	CreateText("絵文字殺害面",30411,Center,Middle,auto,auto,"殺 害");
	Rotate("絵文字殺害面", 0, @0, @0, @90, null,true);
	Request("絵文字殺害面",NoLog);
	Move("絵文字殺害面", 0, @20, @0, null, false);

//	Zoom("絵文字殺害", 0, 1200, 1200, null, true);
//	Zoom("絵文字殺害面", 0, 1200, 1200, null, true);


	FadeFR3("絵文字殺害面",0,750,250,0,0,30,DxlAxl,false);
	FadeDelete("絵板写", 50, true);
	Wait(200);
	CreatePlainSP("絵板写", 5000);
	Delete("絵色黒");
	Delete("絵文字殺害*");
	WaitKey(100);
	FadeDelete("絵板写", 300, true);

//◆童心
	CreateTextureEX("絵演", 4000, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	CreateTextureEX("絵演面", 4100, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	StR(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw童心_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060070a09">
「只管自豪。
　只管畅笑。」


//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060080a09">
「只管蔑视这个败者，只管无情地嘲笑！」

{	FwC("cg/fw/fw童心_バサラ.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060090a09">
「<RUBY text="······">你是秉承正义</RUBY>、
{
//◆ＣＧ：父の死
	WaitKey(2200);
	OnSE("se特殊_ノイズ01",1000);
	Fade("絵演", 0, 1000, null, true);
	FadeFR2("絵演面",0,500,300,0,0,30,DxlAxl, true);
	Delete("絵演*");
}
　<RUBY text="··········">心怀这份正义杀了我的</RUBY>
<RUBY text="··">对吧</RUBY>!!」


{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/mb03/0060100a09">
「喀、喀、喀……
　哈哈哈哈哈哈哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆署長宅。部屋
	PrintBG("上背景", 30000);
	CreateColorSP("絵白転", 15000, "#FFFFFF");
	OnBG(100,"bg034_署長宅茶の間a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	Wait(50);
	FadeDelete("絵白転", 50, true);

	SetFwC("cg/fw/fw一条_悔しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060110a02">
「…………!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//◆どったんばったん。椅子とか蹴倒してるような音。
	CreateSE("SE01","se人体_動作_室内暴れる");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　为何。
　为何。

　我在做什么。
　为什么，会这样？

　为什么我会哽咽。
　为什么会爬到走廊<RUBY text="····">一阵作呕</RUBY>呢。

　弄不明白。
　我在做什么。

　我没有做任何可耻之事。
　我秉承正义，与恶交战，取得了胜利。

　怎么会觉羞耻，这是足以博得父亲褒奖的事情。
　证据就是……<k>我可以听到父亲的声音。

　父亲在表扬我，夸我做得好。
　……我听到了。那时他所说的话。

　那时所说的——话——

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//―――――――――――――――――――――――――――――

//◆ＣＧ：父の死
	CreateColorSP("絵色黒", 3000, "#000000");
	CreateTextureSP("絵演", 4000, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	CreateTextureSP("絵演面", 4100, Center, Middle, "cg/ev/ev158_一導の最期.jpg");
	OnSE("se特殊_ノイズ01",1000);
	FadeFR2("絵演面",0,500,300,0,0,30,DxlAxl, true);
	Fade("絵色黒", 0, 1000, null, true);
	Delete("絵演*");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
　
　　　　　　　　　　　很好。
　　　　　　　　　　这样就好。

　
　　　　　　　　　做得好啊。
　　　　　　　　　　　一条。

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//―――――――――――――――――――――――――――――

//◆部屋
	FadeDelete("絵色黒", 600, true);

	SetFwC("cg/fw/fw一条_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060120a02">
「呜……啊……」


//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060130a02">
「…………凑斗、先生……」

{	FwC("cg/fw/fw一条_悔しい.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb03/0060140a02">
「凑斗先生……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb03_007.nss"