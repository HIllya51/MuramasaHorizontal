//<continuation number="1250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_003.nss_MAIN
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
	#bg093_山間の村a_01=true;
	#bg023_弥源太の家_01=true;
	#bg023_弥源太の家_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_浦夢=true;

	$PreGameName = $GameName;

	$GameName = "md01_004.nss";

}

scene md01_003.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_002.nss"

//◆蝦夷村
//◆飽間
	PrintBG("上背景", 30000);

	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg093_山間の村a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);

	StR(1000, @30, @0,"cg/st/st飽間_通常_私服.png");
	FadeStR(500,true);
	Wait(500);

	SetFwC("cg/fw/fw飽間_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030010b50">
「这个村子，我也很久没来过了。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030020b30">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @-60, @0,"cg/st/st村正_通常_私服.png");
	FadeStL(500,true);
	Wait(500);

	SoundPlay("@mbgm05",0,1000,true);

	StCL(1000, @90, @0,"cg/st/st二世村正_通常_私服.png");

	SetFwC("cg/fw/fw村正_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0015]
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030030a01">
「饱间大人，欢迎。」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030040b50">
「哦！　我几乎都不认得了。
　虾夷长得真是快啊。」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030050b50">
「哪边是村正的女儿，哪边是孙女，
　不小心就会搞错啊。」

{	FadeStCL(300,false);
	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030060a15">
「……说得太夸张了。
　她还只是孩子。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030070a15">
「锻造的技术，也才刚刚有了基础而已。」

{	FwC("cg/fw/fw村正_通常b.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030080a01">
「不过，我比妈妈稍微高了一点。」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030090a15">
「唔。」

{	FwC("cg/fw/fw始祖妻_通常.png");}
//【始祖妻】
<voice name="始祖妻" class="始祖妻" src="voice/md01/0030100b29">
「呵呵……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030110b30">
「汝似乎很长时间转战于各地呢。」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030120b50">
「嗯。
　赤松那家伙的背叛造成的劣势，终于挽回一
半了。」

{	FwC("cg/fw/fw飽間_沈鬱.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030130b50">
「先帝至死都为俘虏，其遗恨也算是昭雪了
些许吧。
　还有你女婿的遗恨……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030140a15">
「……」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030150a01">
「……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030160b30">
「……那边那位是？」

{	FwC("cg/fw/fw飽間_通常b.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030170b50">
「哦。
　这位是鞍马山的学僧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆浦夢。フード男？
	DeleteStA(300,true);

	StR(1000, @0, @0,"cg/st/resize/st浦夢_通常左_私服a.png");
	FadeStR(500,true);

	Wait(500);

//◆※浦夢の喋りはややカタコト。
//◆日本語の上手い外国人、のイメージで
	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

	#voice_on_浦夢=true;

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030180b16">
「我叫浦梦。
　请多指教。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030190b30">
「……」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030200b50">
「他的学识非常渊博。
　我曾长期请他做南朝的幕后咨询师。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030210b30">
「嚯……」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030220b50">
「他也帮了我几次忙。
　之前也是有事找他商量，当时突然就说到了
你的事——」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030230b16">
「我听说，你的目标是至高的剑胄。
　这件事让我特别感兴趣。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030240b16">
「请务必让我来协助你。」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030250b50">
「——结果他就说了这样的话。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030260b30">
「协助？
　……汝有锻造的经验吗。」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030270b16">
「不。我并无锻造的技术。
　但是我周游了广阔的世界。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030280b16">
「我了解到了各种学问。
　也看到了很多剑胄。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030290b30">
「……唔。」

{	FwC("cg/fw/fw飽間_通常a.png");}
//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030300b50">
「如何呢。
　看你应该还没有找到巧妙的方法吧？」

//【飽間】
<voice name="飽間" class="飽間" src="voice/md01/0030310b50">
「作为尝试，借用一下浦梦的知识，应该也
没什么损失。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030320b30">
「嗯……
　既然汝这样说，吾也没理由拒绝。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030330b30">
「正如汝所见，这是个贫穷的村子。对于习惯
在京城生活的人来说，应该会有诸多不便……
　即使这样也可以吗？」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030340b16">
「不要紧。
　谢谢你。村正大人。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030350b16">
「请多关照。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030360b30">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 2000);

//◆家内
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	SoundPlay("@mbgm23",0,1000,true);

	Wait(500);

	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030370b16">
「村正大人，你擅长计算吗？」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030380b30">
「……汝问得很奇怪。
　如果不擅长计算，怎么可能完成剑胄的锻造。」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030390b16">
「那么请回答。
　六十二万五千五百九十二加七万八千四百二
十一，减十五万六千五十九，然后再乘以三，
得多少？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030400b30">
「…………等一下。
　吾马上用算木——」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030410b16">
「呵呵呵。
　即使用算木，也需要一些时间来得到答案吧。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030420b30">
「需要一些时间。」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030430b16">
「请试着使用这个吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆筆記する音
	OnSE("se日常_物_鉛筆筆記01",1000);

	Wait(1500);
	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0035]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030440b30">
「……这是什么？
　看起来像是某种记号。」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030450b16">
「这是天竺的数字。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030460b30">
「数字？　这个？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030470b16">
「对。
　这个是一，这个是二，这个是三……就是这
样。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030480b30">
「唔……
　那么，这个圆的记号是十吗。」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030490b16">
「不对，并非如此。
　那个是<RUBY text="Ｚｅｒｏ">零</RUBY>。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030500b30">
「零？」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030510b16">
「表示无。
　表示空白的数字就是<RUBY text="Ｚｅｒｏ">〇</RUBY>。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030520b30">
「？　……？」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030530b30">
「没有的东西，为何要用数字表示？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030540b16">
「……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030550a15">
「啊啊——?!」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030560b30">
「怎么了。」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030570a15">
「什么怎么了啊，父亲！
　这是很厉害的发现啊!!」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030580b30">
「什么？」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030590a15">
「浦梦大人，如果用这种数字表示十……
　难道是这样？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030600b16">
「对。<RUBY text="一">１</RUBY>和<RUBY text="零">〇</RUBY>排列起来。
　不过正确的表示方法不是竖着，而是横着写。」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030610a15">
「父亲，看啊。
　用这种数字，做刚才的计算——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆フェードイン
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 500, 1000, null, true);

	OnSE("se日常_物_鉛筆筆記01",1000);
	$残時間=RemainTime("@OnSE*");
	WaitKey($残時間);

	FadeDelete("絵色黒", 500, true);

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030620a15">
「一百六十四万三千八百六十二。
　一瞬间……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030630b30">
「————」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030640b16">
「如何呢。
　如果使用天竺的数字，计算就会变得方便吧。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030650b30">
「没有了十百千这些数字……
　从一到九，再加上<RUBY text="Ｚｅｒｏ">〇</RUBY>成为十个数字，
表示各种数……」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030660b30">
「仅仅这样，就能大量减少计算的工作量吗！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//嶋：修正（形を）【090930】
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030670b16">
「其实这种数字和计算方法，在更加古老的年
代就已传到大和。
　虽然形式稍有变化……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030680b16">
「但是，大部分人都无法理解其中的价值。
　能够理解的人，也是将其独占，并隐藏起来。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030690b16">
「所以才未能普及。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030700b30">
「唔……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030710b16">
「千辛万苦从大洋彼岸传来的知识却被埋没，
这种情况还有很多。
　当然，也有完全未知的知识。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030720b30">
「那些知识，浦梦大人也知道吗？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030730b16">
「是。」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030740b30">
「……教给吾！
　不，拜托汝。请教给吾吧。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030750b30">
「请一定！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030760b16">
「不要这样低头。
　我会教给你的。我正是为此而来。」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030770b16">
「为了把我所有的知识都教给村正大人……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(500);

//◆蝦夷村
	OnBG(100,"bg093_山間の村a_01.jpg");
	FadeBG(0,true);
	FadeDelete("絵色黒", 2000, true);

	SetFwC("cg/fw/fw浦夢_頭巾口閉.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030780b16">
「村正大人。
　既然你要追求至高的剑胄，那就必须了解三
大<RUBY text="力量">源气</RUBY>。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030790b30">
「三大源气？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030800b16">
「那是这个宇宙的根源力量。
　我将其称为磁气、辰气、创气。」

{	FwC("cg/fw/fw始祖村正_大悟.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030810b30">
「…………」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030820a01">
「磁气，就是磁石的那个？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030830b16">
「是。
　是指磁石相互吸引，相互排斥的力量。」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030840b16">
「另外两个明白吗？」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030850b30">
「不……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030860b16">
「辰气，各种物体都具备。
　那是吸引其他物体的力量。」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030870b30">
「……？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030880b16">
「现在，我捡起了石头。
　放开手，就会这样。」

{//◆ころ。
	OnSE("se人体_動作_石を落とす",1000);
	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030890b16">
「石头落向地面。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030900b30">
「……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030910b16">
「这就是辰气。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0030920a01">
「？　……？」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030930a15">
「…………」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030940a15">
「就是说——物体会下落，是因为大地的辰气
将其吸引……？」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030950b16">
「对。
　你总是能理解得很快呢。」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//◆難しい顔
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0030960a15">
「……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030970b30">
「……那么，创气呢？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0030980b16">
「是令基素结合，创造物体的力量。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0030990b30">
「基素？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031000b16">
「将物体不断地粉碎，最后留下的东西——
已经不能再粉碎的东西，称为基素。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031010b16">
「那是万物的素材。
　将其多种多样地组合，能产生出花草、矿物、
昆虫、以及<RUBY text="··">我们</RUBY>。
　这种力量即为创气。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031020b30">
「那是……神佛的所为吗？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031030b16">
「也可以这样说。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031040b30">
「……创气。
　还有磁气……辰气……？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031050b16">
「请不要勉强自己去理解。
　焦躁和急切会妨碍头脑的运转。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031060b16">
「学问没有近道。
　请循序渐进地学习吧。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆家内
	CreateColorEX("絵色黒", 5000, "#000000");
	Fade("絵色黒", 2000, 1000, null, true);

	Wait(500);
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	FadeBG(0,true);
	FadeDelete("絵色黒", 2000, true);

	SetFwC("cg/fw/fw始祖村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031070b30">
「之前吾就想问汝……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031080b16">
「嗯？」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031090b30">
「浦梦大人，为什么对剑胄感兴趣？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031100b16">
「难以理解吗。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031110b30">
「穷极了森罗万象的汝，为何会执着地对武
具感兴趣……
　现在我还完全无法理解。」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031120b16">
「能得到你如此夸奖，是我的光荣。
　但是，我还什么都不了解。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031130b30">
「怎么会。」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031140b16">
「不。其实我什么也不知道。
　我真正想知道的事情，尚在遥不可及
之处。」

{	FwC("cg/fw/fw始祖村正_驚き.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031150b30">
「即使以浦梦大人的知识，也还遥不可及吗？」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031160b16">
「这种感觉就像是在寻找落入海中的一粒砂金。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031170b30">
「……无法想象。」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031180b16">
「<RUBY text="Ａｇｅｐｅ">神之爱</RUBY>。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031190b30">
「？」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//嶋：修正【090930】
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031200b16">
「不知其在何处。
　不知其存何形……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031210b16">
「但我相信。
　剑胄是给予人类的翅膀。是飞往天空的唯一
方法……那么。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031220b16">
「在穷极剑胄之后，应有我寻求之物。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0031230b30">
「…………」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031240b16">
「村正大人。我遇见你，是我的天命。
　我是为了见到你，才来到这东方尽头之国度
的。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0031250b16">
「请务必来引导我吧。
　……引向那黄金的黎明！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
	ClearWaitAll(2000, 3000);


}

..//ジャンプ指定
//次ファイル　"md01_004.nss"