//<continuation number="210">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb01_011.nss_MAIN
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
	#bg007_若宮大路b_01=true;
	#bg060_円応寺境内_01=true;
	#ev001_銀星号事件イメージ１=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb01_012.nss";

}

scene mb01_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb01_010.nss"

//◆翌朝
//◆雨の鎌倉
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg007_若宮大路b_01.jpg");
	CreateSE("SEL01","se自然_水_雨音02_L");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SEL01",2000,1000,0,1000,null,true);

	$SYSTEM_effect_rain_speed = 128;
	$SYSTEM_effect_rain_dencity = 16;
	CreateEffect("絵効果雨", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("絵効果雨","絵効果雨");
	Move("絵効果雨", 0, 256, 144, null, true);
	Zoom("絵効果雨", 0, 2000, 2000, null, true);
	Fade("絵効果雨", 0, 500, null, true);

	FadeDelete("絵暗転", 2000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　天亮后，再次下起雨来。
　黑灰色的云似乎非常喜欢镰仓上空。仅在夜间散去，
现在又霸占着天空不肯离去。

　沿着伞边滴落的水珠触及手背，冰冷异常。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110010a01">
《主君。
　明白必须做什么吧。》


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110020a00">
「……」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110030a01">
《我们身负使命。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110040a00">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEX("絵演", 100, -1024, -50, "cg/ev/resize/ev101_プロローグ_a.jpg");

	Move("絵演", 8000, @120, @0, null, false);
	Fade("絵演", 1000, 750, null, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　——必须阻止银星号。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110050a01">
《若遭妨碍……
　尽数驱散。》


//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110060a01">
《不论是谁。》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110070a00">
「我明白。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110080a01">
《……主君……》


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110090a00">
「我明白……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	FadeDelete("絵演", 1000, false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　与村正的对话，不过是在重复我昨夜已然反复了
几百几千遍的扪心自问。
　我明白——我明白自己该做的是什么。

　在镇上、村里或除此之外的人群聚集处突然出现并带
来腥风血雨的……杀戮天象——银星号。
　当代大和的噩梦。我的使命就是将之终结。

　因为只有我能够做到。
　因为是养母托付的希冀。
　因为那是我的妹妹。

　我必须去做。
　不管将谁踩在脚下。

　就像至今为止所做的那样。
　就像这两年间用铁鞋践踏了数条生命那样。

　今后也一样。
　今天也一样。

　在圆往寺等待的绫弥一条也一样——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆回想
//回想シーンまとめ
	OnSE("se擬音_回想_フラッシュバック01",1000);
	CreateColorEXadd("絵白転", 5000, "#FFFFFF");
	Fade("絵白転", 600, 1000, null, true);

	CreateTextureSP("絵回想背景", 3100, Center, Middle, "cg/bg/bg060_円応寺境内_01.jpg");
	StR(4000, @0, @0,"cg/st/st一条_通常_制服b.png");
	FadeStR(0,true);

	Fade("絵白転", 300, 400, null, true);

	SetFwC("cg/fw/fw一条_剣呑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0110100a02">
「凑斗景明。
　我无法原谅你。」


{	FwC("cg/fw/fw一条_憎悪a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb01/0110110a02">
「我要杀了你。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆戻り
	Fade("絵白転", 400, 1000, null, true);
	DeleteStA(0,true);
	Delete("絵回想*");
	FadeDelete("絵白転", 600, true);

	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110120a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//◆ばしゃ。
	CreateSE("SE01","se人体_足音_水一歩");
	MusicStart("SE01",0,1000,0,1000,null,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　冲击膝盖的痛感，使我清醒过来。
　不知不觉中踏进了水洼，滑了一跤。

　飞溅的水面映出一个跪在地上的男人姿态。
　多么狼狈的画面。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110130a01">
《……》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110140a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　潜伏在附近的剑冑默默投来的视线令人烦躁。
　但我还是视若无睹地站了起来。

　用惯了的肉体，却出奇地沉重。
　甚至到了松把劲膝盖便会打颤的地步。

　似乎是并非体重的沉重压在某处。
　某处——头盖中、心脏深处、或其他地方。

　精神上承受着负担。
　令四肢嘎吱作响。

　和绫弥一条战斗。
　这其中的意义，很沉重。

　那个少女扬言决不原谅。
　对于凑斗景明——对于他所犯下的罪孽。她说无法原
谅。

　定罪。

　被告我没有异议。
　没错——是无论如何也无法原谅的罪。

　不能宽恕的罪。

　那，为什么……
　我必须反抗呢。

　反抗就能被允许吗？

　不。
　不可能。

　这双手所剥夺的生命，
　绽开在指尖的鲜血，

　如果无法忘记……
　为什么要反抗裁决。

　不是应该认罪吗。

　如果认同定罪的公平性，不是应该
  乖乖躺在刽子手的刀下吗……

　对。
　那是当然。

　只是至今都没有出现制裁我的人而已。
　只是放任我为所欲为而已。

　而现在，有一个人。
　手持天秤和镰刀，既是法官又是行刑者的人降临了。

　那么——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110150a01">
《……主君。》


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110160a00">
「……我明白。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　反反复复的对话。

　我不被允许逃避到安逸之中。
　认罪、服刑、偿命就能得以解脱
——但时机未到。

　不是在完成使命之后，我就没有那样做的资格。

　我明白。
　我明白啊。

　但是——我想。
　那是不是在逃避罪行。

　任谁都有必须去做的事情。
　世间万物都有活着应尽的使命。

　但没人能够永生不死。
　人人都抱着未尽之事死去。

　如此想来，能说使命是逃避死亡的理由吗。
　不能。

　就像世间所有的死者一样——就像被我杀死，忽然之
间被夺走未来的人们一样，
　我是否应当心怀懊悔，在此挣扎、痛苦地死去呢。

　是否这才是正确的归宿呢……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110170a01">
《主君。
　我们须击败银星号——》


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110180a00">
「你想让我说多少次。
　<RUBY text="···">我明白</RUBY>。」


{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/mb01/0110190a01">
《……》


{	FwC("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110200a00">
「给我闭嘴……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	CreateTextureEXmul("絵演", 3000, Center, Middle, "cg/ev/ev001_銀星号事件イメージ１.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　毋庸赘言。
　如果我放弃自己肩上的使命……失去的就不仅仅是我
一人的生命。

{	Fade("絵演", 1000, 500, null, false);}
　银星号会继续杀戮。
　使人们疯狂……散布“卵”、孕育分身。

　历史将把她当作前所未有的灾厄，载入史册。
　……不能让事态演变至此。

{	FadeDelete("絵演", 1000, false);}
　由我来阻止。
　虽然已造成巨大的灾难，但至少要防止牺牲者的队伍
继续扩大。

　……但。
　要想如愿，今天——得与绫弥一条一战。

　剔除那正当的定罪。
　将之打倒、践踏，我……必须这样做。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb01/0110210a00">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　找不到出口。
　思考只是在来回兜圈子罢了。

　而且时间也不是无穷尽的。
　翻过巨福吕坡。

　圆往寺已近在眼前。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――



	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb01_012.nss"