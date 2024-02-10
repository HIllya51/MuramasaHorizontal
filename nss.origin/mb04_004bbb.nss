

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb04_004bbb.nss_MAIN
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
	#ev139_統を殺害_b=true;
	#bg060_円応寺境内_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb04_005.nss";

}

scene mb04_004bbb.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb04_004bb.nss"

//●噛み締めて
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("上背景");

	Fade("絵演背景", 1000, 0, null, true);

//あきゅん「演出：統の表情を過去編と同様に」
	SetFwC("cg/fw/fw統_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【統】
<voice name="統" class="統" src="voice/mb04/0040580b46">
『如果你死了，我绝对会将弑杀你的人全部铲除。
　一个人都不放过。』

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw統_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【統】
<voice name="統" class="統" src="voice/mb04/0040590b46">
『……如果你把某个人杀了。
　那个人的亲人说不定也会立下同样的誓言。』

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　养母是正确的。
　她的话完全正确。

　不管是为了救养母，还是为了其他什么，如果此时此地
我将敌人弑杀，
　一定会有人在某处憎恨着我。

　怀着“绝不可原谅”的想法，憎恨着我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【景明】
<voice name="景明" class="景明" src="voice/mb04/0040600a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm32",2000,1000,true);
	Fade("絵演背景", 300, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　我咬紧牙关。
　用力。用力。用力。

　为了不让这即将夺取人性命的双手停下。

　因为
　——即使如此，我也有必须要战斗的理由。

　理由便是，我自己的正义。
　贯彻自己的正义，将敌人断为邪恶，然后斩杀。

　某处的某人会憎恨我。
　对那个人而言，被我所杀的敌人是正义的——
所以我便是邪恶的。

　为了完成正义而变为邪恶。
　因为被杀死的人既是邪恶，又是正义。

　
　　　　　　　　　　　善<k>恶<k>
　　　　　　　　　　　相<k>抵

　……没错。
　这便是杀人这种行为。

　将这一真理搁置在心中，
　正面面对它，

　我将斩杀一个人类。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ざしゅー。
	PrintBG("上背景", 30000);
	CreateColorSP("絵色黒", 100, "#000000");
	CreateTextureSP("絵演背景", 3000, Center, Middle, "cg/ef/ef003_汎用移動.jpg");
	Delete("上背景");

	CreateSE("SE01","se戦闘_動作_空突進01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵演背景", 150, 100, "circle_01_00_1", true);

	CreateSE("SE01b","se戦闘_攻撃_野太刀振る01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	SL_leftdown(@0, @0,1500);
	SL_leftdownfade2(10);

	CreateSE("SE01c","se人体_血_血しぶき01");
	MusicStart("SE01c",0,1000,0,1000,null,false);
	SL_centerdamN(@0, @0,1000);
	SL_centerdamfadeN2(10);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　斩杀了。
　杀掉了。

　我将一个不知姓名的山贼武者——
　
　……不。不是这样。

　在杀死他之后，他便既不是山贼，
　也不是武者了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆皇路卓
//◆ちょっと出して消し
	StL(1000, @0, @0,"cg/st/st皇路_通常_私服.png");
	FadeStL(300,true);
	WaitKey(500);
	DeleteStA(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　……究竟是谁呢？
　此时此刻，我想不起那个人的名字。

　但尽管想不起来，我也很清楚。
　他是怎样的一个人。为什么会被我
杀掉。

　他的身边都有些怎样的人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆皇路操
	StR(1000, @0, @0,"cg/st/st操_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw操_悲痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【操】
<voice name="操" class="操" src="voice/mb04/0040610b42">
「……父亲!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　少女大声叫着，紧紧地抱着尸体。
　啊——这是他的女儿。

　依旧想不起他的名字。
　但我却知道——她仰慕着自己的父亲。

　少女用她哭肿的眼睛望着我。
　在她的眼神中憎恶之色刚刚冒头。

　为什么杀了他？少女质问道。
　我告诉她我的理由。

　就因为那种理由？少女喊道。
　的确啊。那是只有我一人可以接受的理由。
我一个人的正义。

　少女开始诉说。
　死去的男人，对她而言是怎样的一个人。是一个多么
善良的人。一个多么爱她的人。

　诉说着我所不知道的，男人的正义。
　我方才连同他的性命一同斩杀的正义。

　那的确是一种正义。
　而与这正义相对的，我才是邪恶的一方。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_沈痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【操】
<voice name="操" class="操" src="voice/mb04/0040620b42">
「不可原谅！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　少女如此宣言道。

　道出我的邪恶。
　以及对于我的邪恶无休止的憎恨。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw操_悲痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【操】
<voice name="操" class="操" src="voice/mb04/0040630b42">
「不可原谅、不可原谅、不可原谅——!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　少女是正确的。
　她的憎恨是完全正当的。

　我是不能被原谅的。
　因为是我杀了他。

　因为我为了正义——为了贯彻自己的信条。
　将他人的正义、信条，连同性命一起摧毁掉了。

　没错。
　就是这样。

　那是决不允许得到宽恕的，恶鬼的行径。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ホワイトアウト
//◆第四話、景明ＶＳ雪車町。最後の激突
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev914_九〇式竜騎兵魔剣インメルマンターン.jpg");


//	OnBG(100,"bg006_雄飛の部屋_01.jpg");//ダミー注意
	CreateSE("SE01","se擬音_回想_フラッシュバック01");
	FadeBG(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("上背景", 1000, 0, Axl2, true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　一个骑兵从屋顶袭来。
　他指责我是个杀人杀得心不甘情不愿的没用男人，
是一个既成不了英雄，也当不了恶鬼的废物。

　英雄是昂首挺胸地杀人。
　恶鬼是笑着杀人。
　两者都做不到的凑斗景明是一个普通的人类。也只应
是一个普通的人类。他如此说道。

　——不是的。

　无关喜悲。
　为了自己去杀人的人，即是恶鬼。

　不。

　即使是为了理想，也毫无关系。
　被称为英雄的杀戮者，同时也是恶鬼。

　杀人者，皆为恶鬼。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw雪車町_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/mb04/0040640a12">
「……没错。
　当时，你是这样说的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　异常落魄的男人，嘲笑着我。
　
　……没错。
　我的确曾一度得到了这个答案。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆激突音＆ホワイトアウト
	PrintGO("上背景", 30000);
	CreateColorSPadd("絵暗転", 5000, "#FFFFFF");
	CreateSE("SE01","se戦闘_衝撃_衝突01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("上背景", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　为什么——
　将其忘却了呢。

　我误解了杀人的意义吗。
　银星号曾说过，杀人有正确与错误之分。我难道
真按这思路去思考了吗？

　也就是说，我在无意识间相信了普遍的正义与邪
恶的存在吗？

　……恶。
　这个我是明白的。

　也明白它为何总是会坚定地存在于我的心中。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆養母の最期
	PrintBG("上背景", 30000);
	CreateColorSPadd("絵暗転", 15000, "#FFFFFF");
	CreateTextureSP("絵演", 3000, Center, Middle, "cg/ev/ev139_統を殺害_b.jpg");
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　——————————————————
　
　没错。就是这个。

　这份大罪。
　凑斗景明永远的罪名。

　弑母。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆新田雄飛
//◆蝦夷姉妹
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 100, "#000000");
	FadeDelete("上背景", 1000, true);

	StL(1000, @0, @0,"cg/st/st雄飛_通常_制服.png");
	FadeStL(300,true);

	WaitKey(500);

	DeleteStL(300,true);

	WaitKey(500);

	CreateColorSP("絵暗転２", 3000, "#000000");
	StCR(1000, @-60, @0,"cg/st/stふき_通常_私服.png");
	StR(1010, @60, @0,"cg/st/stふな_通常_私服.png");
	FadeStA(0,true);
	Fade("絵暗転２", 300, 0, null, true);

	WaitKey(500);

	Fade("絵暗転２", 300, 1000, null, true);
	DeleteStA(0,true);
	Wait(10);
	Delete("絵暗転２");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　以及宛如弑母的写照一般的，数次杀人。
　虽然认为那个人是善，是正确的，自己却仍持续着杀戮。

　这个罪名是清晰的，不可动摇的。
　
　因此——正义也作为与其对立的一面出现了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆円往寺の一条
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg060_円応寺境内_01.jpg");
	StR(1000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(0,true);
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0040650a02">
『凑斗景明。
　我不会原谅你的。』


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0040660a02">
『我要杀了你。』


{	FwC("cg/fw/fw一条_戦闘.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb04/0040670a02">
『杀了你!!』

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　对于不可动摇之罪的检举。
　而后是处刑的宣告。

　无情地做出正当的裁判。

　那时——
　
　绫弥一条在我心中便成了完美的正义。我如今
明白了这一点。


　因为我没有任何辩解的余地。
　连恳求她酌情以待的空隙都完全没有。

　判决书中的一字一句都没有丝毫的错误。
　正义。

　为我的恶定罪的，完美的正义。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　……即使如今重新想来。
　我所怀抱的认知，仍然没有变。

　凑斗景明杀害养母，是完完全全的恶行。
　无法原谅如此恶行的想法也是完全正义的。

　但我却误会了一点。
　我误以为，邪恶与正义都只是单纯的邪恶与正义。

　遗忘了除此之外的正义与邪恶。
　
　例如……检举罪人并对其审判后进行处刑的检察官／
法官／执刑人——

　<RUBY text="·····················">正义的执行者难道不需要背负罪名与邪恶之名吗</RUBY>。
我将这一点忘却了。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb04_005.nss"