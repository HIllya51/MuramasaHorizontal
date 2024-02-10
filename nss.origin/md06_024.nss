//<continuation number="1140">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_024.nss_MAIN
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
	#bg016_公園a_01=true;
	#bg016_公園d_01=true;
	#ev260_骨董屋に立ち寄る景明と村正=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md06_025.nss";

}

scene md06_024.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();


..//ジャンプ指定
//前ファイル　"md06_023.nss"

//◆公園
	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");

	OnBG(100, "bg016_公園a_01.jpg");
	FadeBG(0, true);

	CreateSE("SE01L","se背景_ガヤ_ざわめき01_L");
	MusicStart("SE01L",600,1000,0,1000,null,true);

	Wait(1000);

	Delete("上背景");
	DrawDelete("黒", 1000, 100, "blind_01_00_1", true);

	SoundPlay("@mbgm29", 0, 1000, true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　原本这里只是个冷清的公园，唯有零星几个长凳
和儿童游艺设施。
　但今日却一反常态。

　地面上整齐划一地铺着席子、地毯和塑料布。　
　上面摆放着各式商品，一旁是贩卖商品的人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("SE01L*", 1000, 500, null);

	StR(1000, @0, @0,"cg/st/st村正_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240010a01">
「集市？」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240020a00">
「是旧货市场。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　若是稍具规模的街道，偶尔会开放适当 
大小的广场以便做自由市场使用。
　在镰仓，已屡见不鲜。

　只是最近开放的频率格外高，这与时势
有所关联吧。

　被战祸殃及而逃入镰仓的难民，为了
赚取当下的生活费而变卖随身物品。
　也有孑然一身的难民，用仅剩的薄财
换取廉价的物品。

　以满足双方要求而设立交易场，互换互利。
　这个市场也一样，人群中的大部分看上去都是
有一定物资需求的难民。

　当然，除此之外也零星可见当地市民参与
其中，或买或卖。
　我催促着正迷茫环顾四周的村正，向　
一家商铺走去。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	DeleteStR(300,true);
	SetVolume("SE01L*", 1000, 0, null);

//◆ＥＶ：骨董市の村正？
	CreateColorSP("絵色黒", 5000, "#000000");
	DrawTransition("絵色黒", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Wait(1000);
	OnBG(100,"bg016_公園d_01.jpg");
	FadeBG(0,true);

	DrawDelete("絵色黒", 1000, 100, "blind_01_00_1", true);

	SetFwC("cg/fw/fw骨董商_通常.png");



//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
{	SetComic(@0,@0,11);}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240030e075">
「啊，欢迎光临！
　请随便拿来看！」

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　伴随声音出现的是一个身材矮小，但精气十足的 
年轻女店主，安坐于地毯上。
　贩卖的物品有——
雕刻品、茶碗、壶、贵金属工艺品……

　不能称之为旧货，即便称作古董也受之无愧。
　应该不是销售给外行的货物。这里估计是
专职古董商经营的吧。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240040a00">
「嗯……」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240050a01">
「……主君很中意这些吧？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240060a00">
「你知道？」

{	FwC("cg/fw/fw村正_笑顔.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240070a01">
「感觉如此。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240080e075">
「全身散发出这种气场呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　不知为什么店主也表示同意。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240090a00">
「……东西不错呢。」

{	SetComic(30,10,4);
	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240100e075">
「咦，您知道吗？您原来懂这些啊？
　哎呀，真高兴，居然遇到了
<RUBY text="识货的客人">送上门的冤大头</RUBY>！」

{	DeleteComic();}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240110e075">
「来，请再看看其他的货！」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240120a01">
「……不觉得刚才有点可疑吗？
　或者说感觉有点危险。」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240130a00">
「是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　我被店主劝说着，拿起眼前的一件商品。
　天目茶碗——色彩华丽，但……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw骨董商_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240140e075">
「客官眼光真不错。这是个好东西啊。
　这可是里千家的师傅也赞不绝口的
丸山雅永的孔雀天目。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240150a00">
「哦……这个就是吗？」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240160e075">
「这当然是<RUBY text="真品">赝品</RUBY>。
　盒子也在，而且盖子内侧也有出自 
里千家师傅<RUBY text="绝无作假！">错误百出</RUBY>的亲笔题字。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240170a01">
「……果然有点不对劲……」

{	FwC("cg/fw/fw景明_戦闘.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240180a00">
「多少钱？」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240190e075">
「本来要价上万也不足为过呢。
　但近来不太景气，客官的　
眼光也很高……」

//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240200e075">
「三千怎么样？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240210a00">
「还真是便宜。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　如果是真品的话。
　
　我把后半句话吞入腹中，将茶碗放回原来的位置。

　在它的旁边，有一个着色深邃的壶。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240220a00">
「这是……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240230e075">
「这是信乐烧。
　嘿嘿嘿，这也是稀世珍品啊。」

//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240240e075">
「不错吧？　这个桧垣文。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240250a00">
「的确不错。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240260e075">
「虽然没上釉，但也别有风味。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240270a00">
「的确……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240280e075">
「手感也很棒。
　来来客官，感受一下。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　店主抓着我的手，摸上壶身。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240290a01">
「唔……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240300e075">
「怎么样？」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240310a00">
「触感不错呢。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240320e075">
「这种官能上的诱惑……连脊梁都阵阵
打颤的感觉对吧？」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240330a00">
「的确。」

{	FwC("cg/fw/fw骨董商_照れ.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240340e075">
「哎呀……
　与客人这般接触，就连我都 
开始不对劲了……」

{	FwC("cg/fw/fw景明_笑顔b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240350a00">
「老板……」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240360a01">
「你在说什么呀!!」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240370a00">
「壶啊。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240380e075">
「是壶吧？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240390a01">
「……是、是么……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240400e075">
「那么，客人意下如何？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　店主握住我的手不放，手指爬上
我的手背。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw骨董商_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240410e075">
「稍微有点贵，不过绝不会
让您吃亏哦？」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240420a00">
「多少？」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240430e075">
「看在客人这般美男子容貌的份上，
我是几番打折……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　老板如同抚摸一般，用指尖描画出数字。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_厳しい.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//◆怒
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240440a01">
「…………」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240450e075">
「这个价。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240460a00">
「这个价我可出不起。」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240470e075">
「哎呀～真是的～
　这可是江户时代，甚至更早以前　
的商品哦。不能再便宜了～」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240480e075">
「哎，真没办法。
　虽然赚不了多少钱，但为了客人您
……这个价怎么样!?」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240490a00">
「那……」

//◆にこやか怒
{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240500a01">
「……你的手也该松开了吧……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240510e075">
「别这样啦～客人。
　我也是要养家糊口的啦～」

//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240520e075">
「就这个价啦，和和气气地做了这笔生意。」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240530a00">
「不过这可伤脑筋了。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240540e075">
「别这么说别这么说。
　买下的话……我会亲自
送货上门哦？」

{	FwC("cg/fw/fw骨董商_照れ.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240550e075">
「一点儿<RUBY text="····">售后服务</RUBY>也是可以的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　店主别有深意地说道。　
　身体也不明缘由地靠近了我。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_不機嫌.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240560a01">
「……………………」

{	FwC("cg/fw/fw村正_怒りb.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240570a01">
「主<?>
{	Wait(300);}
·君<?>
{	Wait(300);}
～」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240580a00">
「村正？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240590a01">
「很想要这个壶吗？」

{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240600a00">
「嗯，我觉得不错。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240610a01">
「那，把价钱减到十分之一。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240620a00">
「……那么唐突？」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240630e075">
「喂喂喂喂喂！
　小姑娘，不要以为自己耳朵是尖的，　
就蹬鼻子上脸了!!」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　店主甩开我的手，骂街般劈头盖脸一顿痛斥。
　明明长得很矮小，却以俯视般的目光盯着村正。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw骨董商_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240640e075">
「你是想对我的商品找茬吗？
还是想要杀价？
　如果你这么做，
就不算是我尊贵的客人了!!」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240650a01">
「都不是。
　我只不过提出了正确的价格。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240660e075">
「你这样说真的不要紧么?!」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240670a01">
「嗯。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240680e075">
「咯——真他妈的搞笑！
　既然这样我们就来一决胜负，
耳朵咕噜噜转的大姐!!」

{	FwC("cg/fw/fw村正_怒りa.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240690a01">
「谁转了啊！」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240700e075">
「那么你倒是说出个理由啊！
　这个上了年代的信乐壶和刚才那　
搞笑的估价，怎么就可以等同了！」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240710a01">
「也算不上是理由吧。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240720e075">
「我可不会听你的借口！」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240730a01">
「……这不是古代器物。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240740e075">
「————」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240750e075">
「什、什么意思?!
　这是货真价实江户以前的——」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240760a01">
「主君，江户是什么时候？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240770a00">
「百年前就终结了的时代。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240780a01">
「太虚张声势了吧。
　实际上连一半都不及。」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240790e075">
「小姐，随便的吹嘘就算了——」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240800a01">
「２２年零４个月。」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240810e075">
「……啥？」

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240820a01">
「自这个壶制造完成以来，
不过就２２年零四个月。
　如果你知道这壶的来历，
就请计算一下吧。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240830a01">
「应该正好这点时间吧。」

{	SetComic(@0,@0,17);
	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240840e075">
「……………………」

{	DeleteComic();
	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240850a00">
「这么清楚啊。」

{	FwC("cg/fw/fw村正_不機嫌.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240860a01">
「不想想我是谁。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240870a00">
「没想到你连看古董都这么眼尖。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240880a01">
「可不是嘛。
　但是从土里或矿藏中挖出的东西，
其<RUBY text="··">年岁</RUBY>一看便知。」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240890e075">
「……啊——可恶……所以我才说虾夷
的家伙真……
　买卖是很辛苦的啊……」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240900e075">
「够了……就这个价钱拿去吧……」

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　店主变得垂头丧气，抱着膝坐了下去。
　……总觉得有点可怜。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240910a01">
「怎么办？」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240920a00">
「还是不要了。
　村正……这里面最古老的货品　
是哪个？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240930a01">
「嗯……
　那边那个小小圆圆的东西。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240940a00">
「这个茶叶罐啊。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　我拿起那个满覆尘埃，位于角落的文琳形物品。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw骨董商_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240950e075">
「呵、呵呵……真眼尖……
　这东西外观看似廉价，行家发现后为自己
偶得珍品欢天喜地之时，上前漫天要价令其
垂头丧气……障眼法之用。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240960a01">
「你的性格还真是扭曲啊？」

{	FwC("cg/fw/fw骨董商_通常.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0240970e075">
「耳朵能打响板的大姐就别再顶嘴了……
开个正确的价格拿走吧……
　如果还想压价的话就绝对不行了……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　用指尖擦去灰尘，色泽上果然能　
堪称名作。
　象牙盖也很好。

　打开盖子往里看，同样积满了灰尘。
　为了除去灰尘，我向里吹了口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_苦痛.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【景明】
<voice name="景明" class="景明" src="voice/md06/0240980a00">
「……咳。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StR(1000, @30, @0, "cg/st/st村正_通常_私服.png");
	Move("@StR*", 300, @-30, @0, Dxl2, false);
	FadeStR(300, true);

	SetFwC("cg/fw/fw村正_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0000]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0240990a01">
「你在做什么？」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241000a00">
「比想象中还脏……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　我伸手拂去飞到脸上的灰尘。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

//memo:ここらへんで村正大きいの表示する？　でもなんかいかにもすぎるかもしれない inc櫻井

	SetFwC("cg/fw/fw村正_凹む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241010a01">
「等等。
　我帮你擦擦……」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241020a01">
「来，转过来。」

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241030a00">
「嗯……」

{	DeleteStR(300,false);
	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241040a01">
「你有时简直像个孩子一样。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241050a00">
「是吗？」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241060a01">
「就是啊。
　真是的。」

{	FwC("cg/fw/fw村正_凹む.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241070a01">
「连耳上都是。」

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241080a00">
「……手指伸进去的话，很痒啊。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241090a01">
「忍耐一下吧。」

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241100a00">
「背后也要？」

{	FwC("cg/fw/fw村正_優しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md06/0241110a01">
「那当然。
　来，转过身。」

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md06/0241120a00">
「嗯……」

{	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0241130e075">
「……那个……客人……
　您这样妨碍到我做生意了吧……或者说，　
看到这样我也难耐独身的寂寞……」

{	SetComic(@0,@0,5);
	FwC("cg/fw/fw骨董商_困り.png");}
//【ｅｔｃ／骨董商】
<voice name="ｅｔｃ／骨董商" class="その他女声" src="voice/md06/0241140e075">
「呜呜……眼泪流出来了。
　要调情的话到那边去……」

</PRE>
	DeleteComic();
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(1500, 1500);

}

..//ジャンプ指定
//次ファイル　"md06_025.nss"