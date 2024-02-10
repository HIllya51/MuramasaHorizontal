//<continuation number="450">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma04_011.nss_MAIN
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
	#bg041_片瀬海岸_01=true;
	#bg044_研究施設内_01a=true;
	#bg044_研究施設内_01a=true;

	//▼ルートフラグ、選択肢、次のGameName
	#voice_on_義清=true;

	$PreGameName = $GameName;

	$GameName = "ma04_012.nss";

}

scene ma04_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"ma04_010.nss"

//◆転換
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg041_片瀬海岸_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　顺着原路返回的途中。
　无意中突然听见当地居民的窃窃私语。

　——又有人失踪了。<k>
　
　这次是，芳养家的孩子们——

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/ma04/0110010a00">
「……?!」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	ClearWaitAll(2000, 2000);

//◆江ノ島
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg040_江ノ島全景_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	WaitKey(500);

//◆黒。もしくはサーキット場通路を使い回し
//◆どかーん。戸を蹴り破る音。
	CreateSE("SE01a","se日常_物_木箱壊れる01");//ダミー注意
	MusicStart("SE01a",0,1000,0,1000,null,false);
	OnBG(100,"bg036_競技場通路_01.jpg");
	FadeBG(0,true);
	CreatePlainSP("絵振", 100);
	FadeFR2("絵振",0,1000,600,0,0,30,Dxl2, true);
	Delete("絵振");

//◆わらわらわら。集団が踏み込んでゆく音
//◆立ち絵：ガーゲット少佐·アスカロン（鞘付）所持
	CreateSE("SE01b","se人体_足音_走る01_L");//ダミー注意
	MusicStart("SE01b",0,1000,0,1000,null,false);
	StR(1000, @60, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,false);
	Move("@StR*", 300, @-60, @0, DxlAuto, true);
	SoundPlay("@mbgm21",0,1000,true);

	SetNwC("cg/fw/nw警備員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【ｅｔｃ／警備員】
<voice name="ｅｔｃ／警備員" class="その他男声" src="voice/ma04/0110020e061">
「请留步！
　这里是幕府的直辖设施！　就算是进驻军的人
也不能在没有许可的情况下擅闯！」

{	FwC("cg/fw/fwガーゲット_通常.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0110030b02">
「……」

{	NwC("cg/fw/nw警備員.png");}
//【ｅｔｃ／警備員】
<voice name="ｅｔｃ／警備員" class="その他男声" src="voice/ma04/0110040e061">
「等……
　所以说，等一下——」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆一閃。どきゃ。
	OnSE("se戦闘_攻撃_刀振る01",1000);
	CreateColorSP("絵斬", 5500, "#FFFFFF");
	Fade("絵斬", 600, 0, null, false);
	DrawDelete("絵斬", 200, 1000, "slide_08_00_1", true);



	SetNwC("cg/fw/nw警備員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【ｅｔｃ／警備員】
<voice name="ｅｔｃ／警備員" class="その他男声" src="voice/ma04/0110050e061">
「唔啊!?」

{	FwC("cg/fw/fwガーゲット_侮蔑.png");}
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0110060b02">
「别碰我，劣等人！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかどか。
	CreateSE("SE01","se人体_足音_複数兵士散開");
	MusicStart("SE01",0,1000,0,750,null,true);

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	SetVolume("SE*", 1500, 0, null);
	FadeDelete("上背景", 1000, true);
	WaitPlay("SE**", null);

//◆研究室
	PrintGO("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg044_研究施設内_01a.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 1000, true);

	SetNwC("cg/fw/nw研究員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0110070e068">
「所长！」

{	StL(1000, @-60, @0,"cg/st/st所長_通常_私服.png");
	Move("@StL*", 300, @60, @0, Dxl2, false);
	FadeStL(300,false);
	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110080b22">
「什么情况啊吵吵闹闹的?!
　你们全都脑子坏了，不论碰到什么就开始
乱交起来了吗?!」

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110090b22">
「让我也加入!!」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0110100e068">
「不是！
　ＧＨＱ的军官闯了进来。
要求我们公开研究……！」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110110b22">
「什——么!?」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg042_沿岸_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

//◆灯台付近？の雪車町
	StL(1000, @0, @0,"cg/st/st雪車町_通常_私服.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw雪車町_満足.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0110120a12">
「……嘿嘿。
　这下可好。事情一下简单起来了。」

{	FwC("cg/fw/fw雪車町_通常.png");}
//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0110130a12">
「沉不住气的少佐既然这样行动……
　那我就可以放手去做自己想做的事情了吧？」

//【雪車町】
<voice name="雪車町" class="雪車町" src="voice/ma04/0110140a12">
「嘿、嘿、嘿……！」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆普陀楽城内·童心の間
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg045_普陀楽城公方の間_01.jpg");
	FadeBG(0,true);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	#voice_on_義清=true;

	SetFwC("cg/fw/fw義清_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【義清】
<voice name="義清" class="義清" src="voice/ma04/0110150b21">
「入道大人。
　江之岛发来的联络。」

{	StL(1000, @0, @0,"cg/st/st童心_通常_私服a.png");
	FadeStL(300,false);
	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110160a09">
「哦。
　来了啊，来了啊……」

//◆がちゃ。
{	OnSE("se日常_機械_電話02",1000);
	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110170b22">
《喂喂喂?!
　游佐中将?!》

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110180a09">
「哎呀。原来是所长大人。
　你还是这么有精神啊。」

//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110190a09">
「研究进行得怎么样了——」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110200b22">
《不是说那些的时候啊————!!
　ＧＨＱ的王八蛋们
成群结队地闯进来了——!!》

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110210b22">
《这到底是怎么回事——————?!》

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110220a09">
「哦哦……」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110230b22">
《要我把研究成果交给他们！　少做梦了二傻子，
我要杀了这些人渣。想用他们软趴趴的家伙去
玷污我的甜心吗！　白人只是大而已，力度根本
不够啊！　对吧?!》

//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110240b22">
《光凭那种玩意我的甜心怎么可能高潮啊！
不可能高潮啊！　也不撒泡尿照照自己啊
白种猪！起码也带个黑人来啊！
所以说阁下，我有个请求！》

{	FwC("cg/fw/fw童心_驚き.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110250a09">
「嗯？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110260b22">
《带上军队过来！　我说话他们完全不理。
不敲敲他们的脑壳我看是不行了。我先用警备队
顶一会，你尽快支援。紧急求援啊！》

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110270a09">
「嗯……这个。
　这可不行啊……」

{	FwC("cg/fw/fw所長_拗ね.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110280b22">
《……咦？
　你说啥？》

{	FwC("cg/fw/fw童心_沈思.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110290a09">
「我不能和进驻军之间起争执啊，所长。
　虽然了解你的窘境……可
事情总得分个轻重缓急吧？」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110300b22">
《喂。
　不，你给我等一下啊秃驴。》

{	FwC("cg/fw/fw童心_悪笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110310a09">
「眼下只有咬紧牙关暂时忍耐，
听从ＧＨＱ的要求。
　卧薪尝胆。大丈夫能屈能伸。所长，
还是暂且忍耐一下吧。」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110320b22">
《你这秃驴在鬼扯些什么东西。
　你这家伙，脑袋明明长得像包茎被剥过头的
龟头一样，你怎么能这么做？　
难道我的研究成果被夺走也无所谓吗?!》

{	FwC("cg/fw/fw童心_哄笑.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110330a09">
「可惜，可惜啊！
　贫僧实在爱莫能助啊！」

{	FwC("cg/fw/fw所長_絶叫.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110340b22">
《你明明就有办法啊——————!!》

//◆がちゃ。
{	OnSE("se日常_機械_電話02",1000);//ダミー注意
	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110350a09">
「呼。」

{	StR(1000, @0, @0,"cg/st/st義清_通常_私服.png");
	FadeStR(300,false);
	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/ma04/0110360b21">
「入道大人。
　我给您泡茶吧。」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110370a09">
「也好。
　只是，义清……」

{	FwC("cg/fw/fw義清_通常.png");}
//【義清】
<voice name="義清" class="義清" src="voice/ma04/0110380b21">
「是？」

{	FwC("cg/fw/fw童心_通常.png");}
//【童心】
<voice name="童心" class="童心" src="voice/ma04/0110390a09">
「今天天气真不错。」

{	FwC("cg/fw/fw義清_笑い.png");}
//【義清】
<voice name="義清" class="義清" src="voice/ma04/0110400b21">
「……是。
　晴空万里，令人心情舒畅。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆研究室
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	DeleteStA(0,true);

	OnBG(100,"bg044_研究施設内_01a.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/st所長_通常_私服.png");
	FadeStL(0,true);
	SetVolume("OnSE*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);
	FadeDelete("上背景", 1000, true);
	FadeDelete("絵暗転", 1000, true);

	SetNwC("cg/fw/nw研究員.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0110410e068">
「……所长……」

{	FwC("cg/fw/fw所長_通常.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110420b22">
「……被摆了一道……
　那个秃驴把我当成了弃子……」

{	NwC("cg/fw/nw研究員.png");}
//【ｅｔｃ／研究員】
<voice name="ｅｔｃ／研究員" class="その他男声" src="voice/ma04/0110430e068">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆どかん
	OnSE("se戦闘_破壊_金属",1000);//ダミー注意

//◆ガーゲット
	StR(1000, @0, @0,"cg/st/stガーゲット_通常_制服a.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fwガーゲット_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【ガーゲット】
<voice name="ガーゲット" class="ガーゲット" src="voice/ma04/0110440b02">
「——你是这里的负责人？」

{	FwC("cg/fw/fw所長_怒り.png");}
//【研究所長】
<voice name="研究所長" class="研究所長" src="voice/ma04/0110450b22">
「…………白种猪。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"ma04_012.nss"