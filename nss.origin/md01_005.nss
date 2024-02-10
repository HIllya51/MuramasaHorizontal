//<continuation number="580">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_005.nss_MAIN
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
	#bg004_鄙びた村a_01=true;
	#bg023_弥源太の家_03a=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md01_006.nss";

}

scene md01_005.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md01_004.nss"

//◆裏里。bg004
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg004_鄙びた村a_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);

	Wait(500);
	SoundPlay("@mbgm32",0,1000,true);

	StL(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStL(500,true);

	StR(1000, @0, @0,"cg/st/st始祖村正_通常_私服.png");

	SetFwC("cg/fw/fw二世村正_疑念.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050010a15">
「……只有这些活下来了吗。」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050020a01">
「母亲。
　……外婆，不在了。」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050030a15">
「…………」

{	FwC("cg/fw/fw村正_厳しい.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050040a01">
「不在了……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050050a15">
「不在了就是，已经去世了。」

{	FwC("cg/fw/fw村正_通常a.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050060a01">
「……怎么会。」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050070a15">
「……」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050080a01">
「……呜……」

{	FwC("cg/fw/fw二世村正_叱咤.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050090a15">
「要哭的话，找个地方躲起来一个人哭。
　别在这里。」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050100a15">
「别在父亲面前。」

{	FadeStR(300,false);
	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050110b30">
「……………………」

{	FwC("cg/fw/fw村正_哀愁.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md01/0050120a01">
「……外公……」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050130b30">
「…………为什么…………」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050140b30">
「为何，为何他……
　饱间大人他……背叛了吾辈！」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050150b30">
「不是误会吗……？」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050160a15">
「……从长岛逃出来的人这样说的。
　是事实。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050170b30">
「…………啊。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050180b30">
「为何……
　…………为何啊!!」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050190b16">
「……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050200b30">
「……浦梦大人……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050210b16">
「在……」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050220b30">
「吾是看错了吗……
　那位大人……」

{	FwC("cg/fw/fw浦夢_頭巾口開.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050230b16">
「饱间大人是非常好的人。
　在吉野时，我曾被叫做不可靠的咒术师，
被很多人嫌恶，
但是饱间大人一直很袒护我。」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050240b30">
「……那……为何……」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050250b16">
「……」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050260b16">
「越是友善的人，越是不义……
　也有这样的时代。」

//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050270b16">
「如今就是这样。
　如今是恶世。」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050280b30">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆フェードアウト
//◆家
	ClearWaitAll(2000, 1000);
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg023_弥源太の家_03a.jpg");
	CreateSE("SE01","se日常_建物_扉開閉02");
	FadeBG(0,true);
	Delete("上背景");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("絵暗転", 2000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm14",0,1000,true);

	StR(1000, @0, @0,"cg/st/st二世村正_通常_私服.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw二世村正_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050290a15">
「父亲。
　吾回来了。」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050300b30">
「嗯……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050310a15">
「吉野的众人，他们坚持认为如果不花
时间就无法做出好东西。
　不过大家，相当火大啊。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050320b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050330a15">
「也不是他们不讲理。
　自从接受了打造剑胄的敕命，
已过了十多年……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050340a15">
「到底是忍耐到极限了吧。
　甚至有传言说，村正是害怕舍弃肉体。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050350a15">
「将身体变为钢铁，锻造成剑胄乃虾夷人的夙愿，
没什么好厌恶的，
虽然这样劝说了他们。但……」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050360b30">
「……」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050370a15">
「父亲。为何不锻造。」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050380a15">
「又要说没有办法吗？
　但是，浦梦大人也已经——」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050390b16">
「是。
　我已将我所知道的都传授给村正
大人了。」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050400a15">
「他都这样说了。
　除此之外，汝还打算寻求什么？」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050410b30">
「看不到。」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050420a15">
「……？」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050430b30">
「看不到……
　至高的剑胄的身姿，依然看不到。」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050440b30">
「不。
　比起之前，变得更加不明白了。」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050450a15">
「为何。」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050460b30">
「为了什么去锻造剑胄……」

//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050470b30">
「该相信着什么去锻造，吾不明白。」

{	FwC("cg/fw/fw二世村正_通常.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050480a15">
「……当然是为了真正的王，为御大将楠木大人
献上讨伐逆贼的剑胄。
　不能这样吗。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050490b30">
「楠木大人如果也背叛，要怎么办？」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050500a15">
「说什么傻话……
　楠木家六代不都是对南朝鞠躬尽瘁的吗？」

//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050510a15">
「逆天地而行，背叛王这种事情。」

{	FwC("cg/fw/fw始祖村正_通常.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050520b30">
「吾也这么认为。」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050530a15">
「那么。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050540b30">
「但是同样值得信任的饱间大人，如今
已对北朝伪帝低下了头……」

{	FwC("cg/fw/fw二世村正_疑念.png");}
//【二世村正】
<voice name="二世村正" class="二世村正" src="voice/md01/0050550a15">
「…………」

{	FwC("cg/fw/fw始祖村正_沈鬱.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050560b30">
「吾不明白。」

{	FwC("cg/fw/fw始祖村正_険しい.png");}
//【始祖村正】
<voice name="始祖村正" class="始祖村正" src="voice/md01/0050570b30">
「吾……已经搞不懂了！」

{	FwC("cg/fw/fw浦夢_頭巾口閉.png");}
//【浦夢】
<voice name="浦夢" class="浦夢" src="voice/md01/0050580b16">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆フェードアウト
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"md01_006.nss"