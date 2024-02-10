//<continuation number="740">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_008vs.nss_MAIN
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
	#bg022_山林a_02=true;
	#bg004_鄙びた村a_01=true;
	#bg014_鎌倉繁華街_02=true;
	#ev951_小太郎装甲_a=true;
	#ev951_小太郎装甲_c=true;



	//▼ルートフラグ、選択肢、次のGameName
	#av_月山従三位=true;

	$PreGameName = $GameName;

	$GameName = "ma02_009vs.nss";

}

scene ma02_008vs.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"ma02_007.nss"


//◆森
	PrintBG("上背景", 30000);

	OnBG(100,"bg022_山林a_02.jpg");
	FadeBG(0,true);

	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm32",0,1000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0001]
　……最后由于将少女送到了森林的出口，再次进入
森林深处时已将近日落时分，四周一片昏黄。
　虽说还不至于看不见东西。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @0,@0,"cg/st/st景明_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0010a00">
「快点。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0020a01">
《嗯。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　虽然剑胄之眼并非会因夜晚而无效，但还是不如白天
来得自在。
　不可否认的是探索的困难性和奇袭的危险性增加了。
可能的话想趁现在做个了断。

　距离白天与地方官战斗之时还不到四五个小时。
时间应该完全不够他重整旗鼓的。
　就算他身心强健，也应该勉强在这之后才能行动。

　虽不能期待存有余裕，但也为时不晚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0030a01">
《那个……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0040a00">
「什么。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0050a01">
《我有个想法。
　刚才那狗果然很奇怪啊。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0060a00">
「看起来是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　那体格。是狼的末裔，或本身就是狼呢。
　流传狼已然灭绝了，但未必没有残存下来的。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0070a01">
《不是说这个……不，说得也是。
　体型那么大，就算有再多的食物也不够吃。
但是那狗完全不见饥饿的迹象吧？》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0080a00">
「的确。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　虽然说不上胖。
　却也不算痩。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0090a01">
《而且，如果不饿，为什么会袭击人呢。》

{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0100a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　不管是野狗还是狼，传闻都很凶残很强大。
总会为地盘起争执吧。
　但……它们又与大多数的犬科不同，理应以团体行动
为基本原则。

　那又是为何，在不饿之时单独袭击人类这等
麻烦的猎物呢。
　令人难以理解。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0110a01">
《我是说，或许。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0120a00">
「哦。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0130a01">
《那或许是谁——<?>
{	Wait(300);
	SetVolume("@mbgm*", 100, 0, null);}
上面!!》

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//――――――――――――――――――――――――

	OnSE("se人体_動作_後ずさり01",1000);

	Move("@StR*", 150, @+150, @+30, Axl1, false);
	DeleteStR(150,false);

//◆攻撃
//◆景明、避け
	CreateColorEXadd("絵色100", 1000, "White");
	OnSE("se戦闘_攻撃_振る02",1000);
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 50, 0, 600, 100, Dxl1, "cg/data/crow_01_00_0.png", true);
	DrawTransition("絵色100", 300, 600, 0, 100, Axl1, "cg/data/crow_01_00_0.png", true);
	Delete("絵色100");

	CreateColorSP("黒幕１", 16000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0099]
　……利爪？
　是什么的——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃演出
//◆避けっ
	OnSE("se戦闘_攻撃_振る02",1000);
	CreateColorEXadd("絵色100", 100, "White");
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 100, 0, 600, 100, Dxl1, "cg/data/crow_02_00_0.png", true);
	DrawTransition("絵色100", 300, 600, 0, 100, Axl1, "cg/data/crow_02_00_0.png", true);
	Delete("絵色100");

	CreateColorEX("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);


	Shake_Delete(2000,300,true,"cg/bg/bg022_山林a_02.jpg");
	OnSE("se人体_動作_後ずさり01",1000);
	Fade("フラッシュ白",100,0,null,true);
	Delete("フラッシュ白");


	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0140a00">
「——猴子!?」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0150a01">
《不是——！》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆攻撃演出
//◆村正蜘蛛糸
//◆きんかんがきーん。
	OnSE("se戦闘_攻撃_振る02",1000);
	CreateColorEXadd("絵色100", 1500, "White");
	Fade("絵色100", 0, 1000, null, false);
	DrawTransition("絵色100", 100, 0, 600, 100, Dxl1, "cg/data/crow_02_00_0.png", true);

//嶋：SE素早く吐く
	OnSE("se特殊_生物_蜘蛛の糸吐く01",1000);
	CreateTextureEX("絵ef100", 2000, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	CreateTextureEXadd("絵ef200", 2100, Center, Middle, "cg/ef/ef018_蜘蛛の糸.jpg");
	SetBlur("絵ef200", true, 3, 500, 100, false);

	Fade("絵ef100", 100, 1000, null, false);
	Fade("絵ef200", 0, 1000, null, true);

	Zoom("絵ef200", 500, 2000, 2000, Dxl1, false);
	Fade("絵ef200", 500, 0, null, true);
	Delete("絵色100");

	CreateColorEX("フラッシュ白", 15000, "WHITE");

	OnSE("se戦闘_攻撃_剣戟弾く01",1000);

	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵ef100");
	Delete("絵ef200");

	Shake_Delete(2000,700,false,"cg/bg/bg022_山林a_02.jpg");

	Fade("フラッシュ白",1000,0,Dxl1,true);
	Delete("フラッシュ白");


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0109]
　猴子——不对。
　看那暗淡的光辉，还有钢铁的芳香！

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//◆月山従三位·猿猴
//嶋：初登場演出（ＣｕｔＩｎ？）
/*
	StL(1000, @100,@0,"cg/st/3d月山猿_俯瞰.png");

	Move("@StL*", 300, @-100, @0, Dxl1, false);
	FadeStL(300,true);
*/

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0160a00">
「……剑胄！」

{	NwC("cg/fw/nwその他.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0170b35">
「正是。
　那猿猴名为月山从三位……是我族
相传之物。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小太郎
	StC(1000, @0,@0,"cg/st/st小太郎_通常_私服.png");
	FadeStC(500,true);

	Wait(500);

	SetFwR("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0121]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0180a00">
「……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　年轻女子悄无声息地从树影中显现。
　然而——方才听到的声音无疑是老人的。

　另一人在哪……？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw小太郎_自嘲.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0190b35">
「呵呵。怎样？」


{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0200a00">
「……!?」


{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0210b35">
「这招呼打得有些粗鲁吧。
　请不要见怪。老夫和剑胄都是在大山里
土生土长……粗野的行动是出自天性……」


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0220a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　称得上妖艳的美女从唇中吐露出嘶哑的声音。
　这情形除了异样之外无词可表，实在欠缺现实感。

　——是狐狸，还是妖怪呢。
　甚至令人浮现出这样的愚蠢想法。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0230a00">
「……可以称您为老人家吗。」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0240b35">
「呵呵。如你所见，已经老得一塌糊涂了。
　无需顾虑。到了我这岁数，就算客气地说
年轻也高兴不起来。」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　「呵呵」，妙龄女子用饱经沧桑的苍老声音笑道。
　若这不是性质恶劣的幻觉，又是什么。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――



	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0250a00">
「……明白了，方才的<RUBY text="··">戏耍</RUBY>是招呼。
　那么您的目的也自然明了，这么理解
没有问题吧？」


{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0260b35">
「无妨。无妨。
　我这副老骨头出山就是为了保护身为雇主的
地方官长坂。真遗憾，无法与你成为饮茶
闲谈的关系……警官殿下。」


{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0270a00">
「……！」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　是地方官的手下——这点察觉到了。会遇到也是
意料之中。虽说带着剑胄来倒是出乎意料。
　然而。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0280a00">
「我不记得自己曾在地方官面前自称警察。
　说到底我根本就没露过正脸吧。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0290a00">
「但是老人家，您毫不犹豫地攻击了我。」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0300b35">
「只不过有人告诉老夫而已。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0310a00">
「那是……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆回想·村と雪車町
//◆回想·鎌倉の通りと雪車町（第一話）
//◆森

	SetVolume("@mbgm*", 300, 300, null);


	CreateColorEX("フラッシュ白", 15000, "WHITE");
	OnSE("se擬音_フラッシュバック01",1000);

	Fade("フラッシュ白",0,1000,null,true);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg004_鄙びた村a_01.jpg");

	CreateTextureSP("絵回想200", 2100, 618, InBottom, "cg/st/st雪車町_通常_私服.png");
	CreateTextureSP("絵回想300", 2100, 106, InBottom, "cg/st/st景明_通常_私服.png");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");

	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);

	Fade("フラッシュ白",0,1000,null,true);
	OnSE("se擬音_フラッシュバック01",1000);

	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg014_鎌倉繁華街_02.jpg");
	CreateTextureSP("絵回想200", 2100, 618, InBottom, "cg/st/st雪車町_通常_私服.png");

	Fade("フラッシュ白",300,0,null,true);

	WaitKey(1000);

	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵回想*");
	Delete("Memory_cover");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetVolume("@mbgm*", 500, 1000, null);

	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0320a00">
「那个拄拐杖的混蛋吗。
　记得……是叫雪车町一藏。」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0330b35">
「似乎和你是知己。
　你们有什么因缘过往吗？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0340a00">
「不过是在路上打了个照面。
　但是，竟能不可思议地在这种地方再会，
我很在意……他也是地方官的协助者吗。」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0350b35">
「那男人小有才干。被当成宝贝供奉。
　光是与ＧＨＱ有<RUBY text="ｐｉｐｅ">接点</RUBY>就很令人放心。
本人虽说自己是跑腿的，但所谓的
交上朋友就有用，说的就是这种人。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0360a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　原来如此。
　那男人是地方官与ＧＨＱ的中间人。那么，刚才造访
村长宅邸是为了与大鸟中尉做交涉吗。

　然后立马失败了，于是回到地方官身边。
　……大概是这样吧。

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0370a00">
「他现在在哪里……？」

{	FwR("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0380b35">
「谁知道？　在哪里呢。
　他很忙的……」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0390a00">
「……」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0400b35">
「呵呵。
　虽然分散注意力不错……但也请别忘了老夫。
有点寂寞。」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0410b35">
「难得老夫这么期待。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0420a00">
「……这是何意？」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0430b35">
「欺负可怜的村人也玩得有点腻了。无论如何
都想来个带劲的。
　就是所谓的髀肉之叹。呵。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0440a00">
「…………
　请让我问个问题，您帮助地方官的理由是？
难道要说目的是为了玩吗？」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0450b35">
「怎么会。老夫没那么闲。
　若是有闲倒好。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0460a00">
「……」

{	FwR("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0470b35">
「是钱。虽然很世故，但是需要钱。
　我族虽曾经侍奉某个名门之家，但那一家
不久之前失势了。
陷入了绝嗣的惨境。」

{	FwR("cg/fw/fw小太郎_警戒.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0480b35">
「受到影响的我们，从身份到收入都尽失，剩下的
只有祖先的土地。听起来很不错，
其实只有结不出粮食的狭窄山地。
呵，只能枯等死亡。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0490a00">
「……被逐出武士家族了吗。
　那剑胄是——」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0500b35">
「当然被没收过。
走门路求官府大发慈悲，才得以放过。但是……
之后不久就因ＧＨＱ的剑胄狩猎化为虚有了。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0510a00">
「……？」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0520b35">
「此时出现的就是那男人，雪车町一藏。
　他告诉老夫有个男人打算挖矿山发横财，
并保证如果协助的话就打点ＧＨＱ取回剑胄。」

{	FwR("cg/fw/fw小太郎_冷静.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0530b35">
「老夫怎么可能不上钩呢？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0540a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

	CreateColorEXadd("フラッシュ白", 2500, "WHITE");

	CreateEffect("Memory_cover", 2200, 0, 0, 1024, 576, "Sepia");

	Fade("フラッシュ白",0,1000,null,true);
//	OnSE("se擬音_フラッシュバック01",1000);
//	Delete("絵回想*");

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg014_鎌倉繁華街_02.jpg");
	CreateTextureSP("絵回想200", 2100, 618, InBottom, "cg/st/st雪車町_通常_私服.png");

	Fade("フラッシュ白",300,0,null,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　……真奇怪。
　
　我难以放过一丝疑惑。

　名为雪车町的男人，<RUBY text="········">行动得太过积极了</RUBY>。
　一边到幕府御雇组安身，一边到进驻军去抛头露面
当二者的中间人，有这种人物在也不奇怪。
这恐怕是贤明的处世法之一。

　但是这种在局部社会上非常受重视的人，是受别人
索求，被他人<RUBY text="··">驱使</RUBY>之人。
自己不会去掺和生意。即使不这么做，轻松的工作搭配着
高额的报酬也会接踵而至。

　前提是相信这些听来的话。雪车町活跃的行动有些
令人生疑。
　<RUBY text="六波罗">国内势力</RUBY>与<RUBY text="ＧＨＱ">国外势力</RUBY>中介的立场可称不上轻松。

　而且说要归还剑胄的话也有疑点。
　ＧＨＱ现在的措施是禁止除大和正规军——
目前是六波罗——以外的人持有剑胄，
否则采取没收措施。

　然后被没收的剑胄大部分都被封存了。由于语言或
体质问题，让ＧＨＱ士官有很多不便之处，于是就被
认为没有利用价值。但即便如此，剑胄还是剑胄。

　因为一介联络人员的要求而轻易地带出来，着实
难以相信。只可能是有什么<RUBY text="··">内幕</RUBY>。
　……不顾我的疑问，眼前的怪人开始总结说明。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	Fade("フラッシュ白",0,1000,null,true);

	Delete("絵回想*");
	Delete("Memory_cover");

	Fade("フラッシュ白",300,0,null,true);
	Delete("フラッシュ白");

	SetFwR("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0550b35">
「然后，如此这般。
　为了养活一族就必须完成地方官的计划。
既然如此，地方官的敌人就是老夫的
敌人，在这里遇见可就是你的末日。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0560a00">
「……您的情况我理解了。
　您觉得为此牺牲这村子也是不得已吗？」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0570b35">
「嗯？　怎么，想让老夫说无聊话吗。
什么弱肉强食，这个那个吗。
　你非常希望的话也不是不能说，但是说的人和
听的人都不觉得羞耻吗？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0580a00">
「完全没错……」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0590b35">
「呵呵。
　那种事随它去。」

{	FwR("cg/fw/fw小太郎_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0600b35">
「凑斗景明阁下……没错吧？
　来，差不多该让老夫尝尝那边的蜘蛛
——村正的刃味了吧？」

{	FwR("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0610a00">
「！」

{	FwR("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/ma02/008vs0620a01">
《————》

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　……此人。
　就连不曾对任何人说过的村正之事都——

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――


	SetFwR("cg/fw/fw景明_怒りa.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0630a00">
「老人家……
　您知道的未免太多了吧？」

{	FwR("cg/fw/fw小太郎_自嘲.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0640b35">
「哼。」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0650a00">
「……」

{	FwR("cg/fw/fw小太郎_笑い.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0660b35">
「接下来——进行太刀较量吧！
　月山!!」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆月山·猿
//◆バリーン。月山猿、鎧パーツに分離
	SetVolume("@mbgm*", 100, 0, null);
	OnSE("se特殊_鎧_装着03",1000);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",100,1000,null,true);

	DeleteStC(0,true);

	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");



	SetFwR("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0670a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆小太郎、胸の前で両手を重ねる。触れないように
//◆隙間を空けて。左手を上、右手を下。巴図を模す

//嶋：本番きたら、装甲演出


	CreateTextureEX("絵ＥＶ", 4110, Center, Middle, "cg/ev/ev951_小太郎装甲_a.jpg");
	Zoom("絵ＥＶ", 0, 1500, 1500, null, true);
	SetBlur("絵ＥＶ", true, 2, 300, 100, false);

	OnSE("se特殊_鎧_装着01",1000);
	OnSE("se特殊_鎧_装着04",1000);
	Zoom("絵ＥＶ", 1600, 1000, 1000, Dxl2, false);
	Fade("絵ＥＶ", 1600, 1000, null, true);

	Wait(500);

	SoundPlay("@mbgm08",0,1000,true);

	SetFwL("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0680b35">
「迷茫六界，地狱·饿鬼·畜生·阿修罗·
人·天，赴战——」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

/*
//◆両手を左右に広げる。指を上へ立てつつ
	StC(1000, @0,@0,"cg/st/st小太郎_装甲_私服b.png");
	FadeStC(300,true);
*/
	OnSE("se戦闘_動作_突進01",1000);
	EffectZoomadd(10000, 500, 100, "cg/ev/ev951_小太郎装甲_a.jpg", true);

	SetFwL("cg/fw/fw小太郎_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0690b35">
「开悟四界，声闻·缘觉·菩萨·佛，赴战……
　死中有生生中有死，死即是生生即是死，
死往十界生往十界！」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ガシーン
//◆武者·月山従三位
	#av_月山従三位=true;

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	CreateTextureEX("絵ＥＶ２", 4110, Center, Middle, "cg/ev/ev951_小太郎装甲_c.jpg");
	CreateTextureEX("絵大ＥＶ３", 4110, -700, -575, "cg/ev/resize/ev951_小太郎装甲_c_l.jpg");
	SetBlur("絵ＥＶ２", true, 1, 500, 200, false);

	OnSE("se特殊_鎧_装着02",1000);

	Fade("フラッシュ白",1000,1000,null,false);

	Zoom("絵ＥＶ*", 1000, 1500, 1500, Axl2, true);

	Fade("絵ＥＶ２", 0, 1000, null, true);
	Fade("絵大ＥＶ３", 0, 1000, null, true);

	Fade("フラッシュ白",500,0,null,false);
	Move("絵大ＥＶ３", 2500, @0, @575, Axl3, false);
	Wait(2200);
	Fade("フラッシュ白",200,1000,null,true);

	Wait(50);
	Delete("絵大ＥＶ３");

	OnSE("se特殊_鎧_装着03",1000);
	Zoom("絵ＥＶ*", 2000, 1000, 1000, Dxl2, false);
	Fade("フラッシュ白",1000,0,null,true);
	Delete("フラッシュ白");

	Wait(1500);

	CreateColorSP("黒幕１", 20000, "BLACK");
	DrawTransition("黒幕１", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("絵ＥＶ*");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg022_山林a_02.jpg");
	Rotate("絵背景100", 0, @0, @180, @0, null,true);

//嶋：アニメ挿入予定
//	DeleteStC(0,true);

	DrawDelete("黒幕１", 300, 100, "slide_01_01_1", true);


//◆景明
//◆村正、鎧パーツに分離
//◆左手で顔を覆う。片目は覗く

	OnSE("se戦闘_攻撃_鎧_剣戟01",1000);

	StC(1000, @0,@0,"cg/st/st景明_装甲_私服a.png");
	FadeStC(500,true);

	SetFwL("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0695a00">
「遇鬼斩鬼，
　逢佛弑佛。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆左手を前へ伸ばす
	CreateColorEXadd("絵色100", 1500, "WHITE");

	OnSE("se特殊_鎧_装着05",1000);

	Fade("絵色100", 100, 1000, null, true);
	StC(1000, @0,@0,"cg/st/st景明_装甲_私服b.png");
	FadeStC(0,true);

	FadeDelete("絵色100", 500, true);


	SetFwL("cg/fw/fw景明_戦闘.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0700a00">
「剑胄之理，正在于此。」

</PRE>
	SetTextEXL();
	TypeBeginLIO();//―――――――――――――――――――――――――――――

//◆ガキーン
//◆武者·三世右衛門尉村正

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",0,1000,null,true);

	OnSE("se特殊_鎧_装着04",1000);
	OnSE("se特殊_鎧_装着02",1000);
	StC(1000, @0,@0,"cg/st/3d村正標準_立ち_通常.png");
	FadeStC(0,true);

	Wait(500);

	Fade("フラッシュ白",2000,0,null,true);
	Delete("フラッシュ白");

	Wait(1500);

//◆村正と月山

	CreateWindow("ウィンドウ上", 15000, 0, 0, 1024, 288, false);
	CreateWindow("ウィンドウ下", 15000, 0, 288, 1024, 576, false);
	SetAlias("ウィンドウ上","ウィンドウ上");
	SetAlias("ウィンドウ下","ウィンドウ下");

	CreateTextureEX("ウィンドウ上/絵背景01", 3600, 0, 0, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureEX("ウィンドウ上/絵ga01", 3600, Center, -250, "cg/st/3d月山_立ち_通常.png");

	Move("ウィンドウ上/絵背景01", 0, @-200, @0, null, true);

	CreateTextureEX("ウィンドウ下/絵背景01", 3600, -1024, 0, "cg/bg/resize/bg003_荒れ野_02.jpg");
	CreateTextureEX("ウィンドウ下/絵mura01", 3600, -1, 134, "cg/st/3d村正標準_立ち_通常.png");

	Move("ウィンドウ下/絵背景01", 0, @+200, @0, null, true);
	Move("ウィンドウ下/絵mura01", 0, @-200, @0, null, true);
	Move("ウィンドウ上/絵ga01", 0, @20, @0, null, true);

	Move("ウィンドウ上/絵背景01", 2900, @+200, @0, null, false);
	Move("ウィンドウ下/絵背景01", 2900, @-200, @0, null, false);

	Fade("ウィンドウ上/絵背景01", 300, 1000, null, false);
	Fade("ウィンドウ下/絵背景01", 300, 1000, null, true);

	Move("ウィンドウ上/絵ga01", 2500, @-300, @0, Dxl1, false);
	Move("ウィンドウ下/絵mura01", 2500, @+300, @0, Dxl1, false);

	Fade("ウィンドウ下/絵mura01", 1000, 1000, Dxl1, false);
	Fade("ウィンドウ上/絵ga01", 1000, 1000, Dxl1, false);

	SetFwC("cg/fw/fw月山_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0710b35">
「相模国足柄郡风间谷小太郎。
　及月山从三位。」

//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0720b35">
「终极武者村正，老夫前来领教！」

{	FwC("cg/fw/fw村正武者_通常.png");}
//【景明】
<voice name="景明" class="景明" src="voice/ma02/008vs0730a00">
「!?
　风魔——小太郎吗!!」

{	FwC("cg/fw/fw月山_通常.png");}
//【小太郎】
<voice name="小太郎" class="小太郎" src="voice/ma02/008vs0740b35">
「哈哈!!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆飛翔

	OnSE("se戦闘_動作_空上昇01",1000);


	CreateColorEX("フラッシュ白", 20000, "WHITE");
	Fade("フラッシュ白",300,1000,null,true);

	Delete("ウィンドウ上/*");
	Delete("ウィンドウ下/*");
	Delete("ウィンドウ上");
	Delete("ウィンドウ下");

	Wait(2000);


}

..//ジャンプ指定
//次ファイル　"ma02_009vs.nss"



