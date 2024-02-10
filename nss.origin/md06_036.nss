//<continuation number="160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_036.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md06_036.nss","Hikaru",true);
	Conquest("nss/md06_036.nss","Last_MuramasaVSMasamune",true);
	Conquest("nss/md06_036.nss","FullMetalDeamon",true);
	Conquest("nss/md06_036.nss","EventFlag",true);

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
	#bg112_川沿いの道b_02=true;
	#ev267_真生悪鬼ＥＤ_a=true;
	#ev267_真生悪鬼ＥＤ_b=true;
	#ev267_真生悪鬼ＥＤ_c=true;
	#ev000_わをもってとぉとしとす=true;

	//▼ルートフラグ、選択肢、次のGameName
	#msong03 = true;
	#悪鬼編終了 = true;

	$PreGameName = $GameName;

	$GameCircle=0;


	//★ＥＤロール超速対応
	PreSetRoll02A();

	//☆ひかる
	Hikaru();

	PreSetRoll02B(3);

	//☆村正vs正宗
	Last_MuramasaVSMasamune();

	TheEND(3);

	//☆最終演出
	FullMetalDeamon();

	//☆フラグ回収
	EventFlag();
}

scene md06_036.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md06_035.nss"


//◆川沿い。bg112a_夕

//ホワイトアウト時間が長いのは終わったと思ったら音楽が？　と思わせる演出です。Enter押されたら意味がないですが inc櫻井

	PrintBG("上背景", 30000);
	CreateColorSP("白", 25000, "WHITE");

	OnBG(100, "bg112_川沿いの道b_02.jpg");
	FadeBG(0, true);

	Delete("上背景");

	CreateSE("SE01","se自然_水_流れる01_L");
	MusicStart("SE01",1000,1000,0,1000,null,true);

	WaitKey(3000);

	SetVolume("SE*", 3000, 500, null);

	FadeDelete("白",1500,true);

	SoundPlay("@mbgm30", 0, 1000, true);

	SetNwC("cg/fw/nw太った男.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0360010e109">
「喂，你们的工作怎么样了!?」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0360020e227">
「……哈啊？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0360030e109">
「桥梁啊，快点完工啦！」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0360040e227">
「关我屁事啦！
　要干你们自己干去！」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0360050e109">
「什么!?」

{	FwC("cg/fw/fw小光_通常.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0360060b34">
「不行。」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0360070e227">
「……啊？」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0360080e109">
「阿光？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆小光
	StR(1000, @0, @0, "cg/st/st小光_通常_私服.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw小光_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0360090b34">
「不可以，吵架。」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0360100b34">
「以和……」

//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0360110b34">
「以和为贵。」

{	FwC("cg/fw/fw小光_悩む.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0360120b34">
「……那个……」

{	NwC("cg/fw/nw太った男.png");}
//【ｅｔｃ／住民Ａ】
<voice name="ｅｔｃ／住民Ａ" class="その他男声" src="voice/md06/0360130e109">
「……？」

{	NwC("cg/fw/nw大柄な難民.png");}
//【ｅｔｃ／難民Ａ】
<voice name="ｅｔｃ／難民Ａ" class="その他男声" src="voice/md06/0360140e227">
「…………？」

{	FwC("cg/fw/fw小光_微笑.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0360150b34">
「嗯。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆２３４５６７８９０１２３４５６７８９０１２３４

}

function Hikaru()
{
	SetVolume("@mbgm*", 2500, 0, null);
	SetVolume("@SE*", 2500, 0, null);
	SetVolume("@OnSE*", 2500, 0, null);
	CreateColorEXadd("絵色白", 20000, "#FFFFFF");
	Fade("絵色白", 2000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	Wait(1000);

	PrintBG("上背景", 30000);
	CreateColorSPadd("絵色白", 20000, "#FFFFFF");
	CreateTextureSP("絵終焉", 5000, Center, Middle, "cg/ev/ev000_わをもってとぉとしとす.jpg");
	Delete("上背景");
	FadeDelete("絵色白", 2000, true);

	Wait(600);

	CreateVOICE("コヒカリ","md06/0360160b34");
	MusicStart("コヒカリ",0,1000,0,1000,null,false);

	WaitPlay("コヒカリ", null);

	Wait(2000);

/*

//あきゅん「演出：ここでテキストだすのは野暮だろう」

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0000]
//◆笑顔
{	FwC("cg/fw/fw小光_笑顔.png");}
//【小光】
<voice name="小光" class="コヒカリ" src="voice/md06/0360160b34">
「——以和为贵。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

*/
}

function Last_MuramasaVSMasamune(){
//◆最終ＥＤデモ。
//◆ＢＧＭは切ない系ではなく激しい系。
//◆村正ＶＳ正宗の３Ｄ戦闘画像を織り交ぜられたら良いな。

	CreateColorEXadd("絵色白", 20000, "#FFFFFF");//徒歩追加
	Fade("絵色白", 1000, 1000, null, true);//徒歩追加
	Delete("絵終焉");//徒歩追加

	CreateColorEXadd("絵色100", 1500, "White");

	CreateMovie("絵村正宗", 1000, 0, 0, false, false, "dx/mv正宗ＶＳ村正.ngs");
	Request("絵村正宗", Stop);
	CreateSE("SE01","se特殊_mv用_正宗ＶＳ村正");
	SetAlias("絵村正宗","絵村正宗");

	FadeDelete("絵色白", 500, false);//徒歩追加

	MusicStart("SE01",0,1000,0,1000,null,false);
	Request("絵村正宗", Play);

	$Movie_Time = RemainTime("絵村正宗");
	$Movie_Time = $Movie_Time-500;
	Wait($Movie_Time);
	SetVolume("SE01", 300, 0, null);
	Fade("絵色100", 300, 1000, null, true);

	Delete("絵村正宗");

	CreateTextureSP("絵正宗001", 100, Center, Middle, "cg/bg/bg041_海岸_02.jpg");
	Zoom("絵正宗001", 0, 2000, 2000, null, true);
	SetShade("絵正宗001", HEAVY);

	CreateTextureEXadd("絵爆001", 400, -363, -620, "cg/ef/ef044_火花c.png");
	Zoom("絵爆001", 0, 50, 50, null, true);

	CreateTextureEXadd("絵爆002", 400, -380, -617, "cg/ef/ef044_火花c.png");
	Zoom("絵爆002", 0, 50, 50, null, true);

	CreateTextureEXadd("絵爆003", 400, -368, -607, "cg/ef/ef044_火花c.png");
	Zoom("絵爆003", 0, 50, 50, null, true);

	CreateTextureEXadd("絵爆004", 400, -45, -611, "cg/ef/ef044_火花c.png");
	Zoom("絵爆004", 0, 50, 50, null, true);
	CreateTextureEXadd("絵爆005", 400, -29, -606, "cg/ef/ef044_火花c.png");
	Zoom("絵爆005", 0, 50, 50, null, true);
	CreateTextureEXadd("絵爆006", 400, -43, -595, "cg/ef/ef044_火花c.png");
	Zoom("絵爆006", 0, 50, 50, null, true);

	CreateSE("SE01","se戦闘_銃器_機関銃乱射02");

	CreateSE("SE02","se戦闘_動作_空上昇01");
	CreateSE("SE03","se戦闘_陰義_磁力弾く");
	CreateSE("SE04","se戦闘_陰義_磁力弾く");
	CreateSE("SE05","se戦闘_陰義_磁力弾く");
	CreateSE("SE06","se特殊_陰義_磁力加速01");

	CreateSE("SE07","se戦闘_攻撃_野太刀振る02");
	CreateSE("SE08","se戦闘_攻撃_剣戟弾く02");
	CreateSE("SE09","se戦闘_攻撃_エネルギー鬩ぎ合い01_L");
	CreateSE("SE10","se戦闘_動作_武装準備01");


	CreateTextureEX("絵正宗002", 200, Center, InBottom, "cg/st/3d正宗_立ち_戦闘c.png");

	SetBlur("絵正宗002", true, 3, 500, 50, false);
	Zoom("絵正宗002", 0, 1200, 1200, null, true);

	Fade("絵色100", 300, 0, null, true);

	MusicStart("SE10",0,1000,0,1000,null,false);
	Zoom("絵正宗002", 300, 1000, 1000, null, false);
	Fade("絵正宗002", 300, 1000, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("絵正宗002", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("絵爆001", 50, 300, 300, null, false);
	Rotate("絵爆001", 50, @0, @0, @360, null,false);
	Zoom("絵爆004", 50, 300, 300, null, false);
	Rotate("絵爆004", 50, @0, @0, @360, null,false);
	Fade("絵爆001", 50, 1000, null, false);
	Fade("絵爆004", 50, 1000, null, true);

	Shake("絵正宗002", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("絵爆002", 50, 300, 300, null, false);
	Rotate("絵爆002", 50, @0, @0, @360, null,false);
	Zoom("絵爆005", 50, 300, 300, null, false);
	Rotate("絵爆005", 50, @0, @0, @360, null,false);
	Fade("絵爆001", 50, 0, null, false);
	Fade("絵爆002", 50, 1000, null, false);
	Fade("絵爆004", 50, 0, null, false);
	Fade("絵爆005", 50, 1000, null, true);

	Shake("絵正宗002", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("絵爆003", 50, 300, 300, null, false);
	Rotate("絵爆003", 50, @0, @0, @360, null,false);
	Zoom("絵爆001", 0, 50, 50, null, false);
	Zoom("絵爆006", 50, 300, 300, null, false);
	Rotate("絵爆006", 50, @0, @0, @360, null,false);
	Zoom("絵爆004", 0, 50, 50, null, false);
	Shake("絵正宗002", 50, 3, 0, 0, 0, 1000, null, false);
	Fade("絵爆002", 50, 0, null, false);
	Fade("絵爆003", 50, 1000, null, false);
	Fade("絵爆005", 50, 0, null, false);
	Fade("絵爆006", 50, 1000, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Fade("フラッシュ白",500,500,null,false);

	Shake("絵正宗002", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("絵爆001", 50, 300, 300, null, false);
	Rotate("絵爆001", 50, @0, @0, @360, null,false);
	Zoom("絵爆002", 0, 50, 50, null, false);
	Zoom("絵爆004", 50, 300, 300, null, false);
	Rotate("絵爆004", 50, @0, @0, @360, null,false);
	Zoom("絵爆005", 0, 50, 50, null, false);
	Fade("絵爆003", 50, 0, null, false);
	Fade("絵爆001", 50, 1000, null, false);
	Fade("絵爆006", 50, 0, null, false);
	Fade("絵爆004", 50, 1000, null, true);

//	Fade("フラッシュ白",500,1000,null,false);

	Fade("フラッシュ白",500,1000,null,false);
	Fade("絵爆001", 500, 0, null, false);
	Fade("絵爆004", 500, 0, null, true);
	Fade("フラッシュ白",0,1000,null,true);

	SetVolume("SE01", 1000, 0, null);

	Wait(1000);

	Delete("絵正宗*");
	Delete("絵爆*");

	CreateTextureSP("絵村正001", 100, Center, Middle, "cg/ev/ev903_村正磁気バリアー展開_b.jpg");
	CreateTextureSP("絵村正002", 1000, Center, Middle, "cg/ev/ev903_村正磁気バリアー展開_b.jpg");

	SetBlur("絵村正001", true, 3, 500, 100, false);
	SetBlur("絵村正002", true, 3, 500, 100, false);


	CreateTextureEXadd("絵爆001", 1400, -29, -615, "cg/ef/ef044_火花c.png");
	Zoom("絵爆001", 0, 300, 300, null, true);

	CreateTextureEXadd("絵爆002", 1400, -380, -617, "cg/ef/ef044_火花c.png");
	Zoom("絵爆002", 0, 50, 50, null, true);

	CreateTextureEXadd("絵爆003", 1400, 151, -372, "cg/ef/ef044_火花c.png");
	Zoom("絵爆003", 0, 50, 50, null, true);

	CreateTextureEXadd("絵爆004", 1400, -323, -627, "cg/ef/ef044_火花c.png");
	Zoom("絵爆004", 0, 50, 50, null, true);
	CreateTextureEXadd("絵爆005", 1400, -5, -694, "cg/ef/ef044_火花c.png");
	Zoom("絵爆005", 0, 50, 50, null, true);
	CreateTextureEXadd("絵爆006", 1400, -263, -331, "cg/ef/ef044_火花c.png");
	Zoom("絵爆006", 0, 50, 50, null, true);


	MusicStart("SE02",0,1000,0,1000,null,false);
	Zoom("絵村正002", 500, 2000, 2000, null, false);
	FadeDelete("フラッシュ白",300,true);
	FadeDelete("絵村正002", 200, true);


	Shake("絵村正001", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("絵爆001", 200, 500, 500, null, false);
	Rotate("絵爆001", 200, @0, @0, @360, null,false);
	Zoom("絵爆002", 200, 500, 500, null, false);
	Rotate("絵爆002", 200, @0, @0, @360, null,false);
	Fade("絵爆001", 100, 1000, null, false);
	Fade("絵爆002", 100, 1000, null, true);

	MusicStart("SE03",0,1000,0,1000,null,false);
	Shake("絵村正001", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("絵爆003", 200, 500, 500, null, false);
	Rotate("絵爆003", 200, @0, @0, @360, null,false);
	Zoom("絵爆004", 200, 500, 500, null, false);
	Rotate("絵爆004", 200, @0, @0, @360, null,false);
	Fade("絵爆001", 100, 0, null, false);
	Fade("絵爆003", 100, 1000, null, false);
	Fade("絵爆002", 100, 0, null, false);
	Fade("絵爆004", 100, 1000, null, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Shake("絵村正001", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("絵爆004", 200, 500, 500, null, false);
	Rotate("絵爆005", 200, @0, @0, @360, null,false);
	Zoom("絵爆001", 0, 300, 300, null, false);
	Zoom("絵爆002", 0, 300, 300, null, false);
	Zoom("絵爆005", 200, 500, 500, null, false);
	Rotate("絵爆006", 200, @0, @0, @360, null,false);
	Zoom("絵爆006", 0, 500, 400, null, false);
	Shake("絵正宗002", 100, 3, 0, 0, 0, 1000, null, false);
	Fade("絵爆003", 100, 0, null, false);
	Fade("絵爆005", 100, 1000, null, false);
	Fade("絵爆004", 100, 0, null, false);
	Fade("絵爆006", 100, 1000, null, true);

	CreateColorEXadd("フラッシュ白", 15000, "WHITE");
	Zoom("絵村正001", 1000, 2000, 2000, null, false);
	Fade("フラッシュ白",400,500,null,false);

	MusicStart("SE05",0,1000,0,1000,null,false);
	Shake("絵村正001", 50, 3, 0, 0, 0, 1000, null, false);
	Zoom("絵爆001", 200, 500, 500, null, false);
	Rotate("絵爆001", 200, @0, @0, @360, null,false);
	Zoom("絵爆003", 0, 50, 50, null, false);
	Zoom("絵爆002", 200, 500, 500, null, false);
	Rotate("絵爆002", 200, @0, @0, @360, null,false);
	Zoom("絵爆005", 0, 50, 50, null, false);
	Fade("絵爆005", 100, 0, null, false);
	Fade("絵爆001", 100, 1000, null, false);
	Fade("絵爆006", 100, 0, null, false);
	Fade("絵爆002", 100, 1000, null, true);

//	Fade("フラッシュ白",500,1000,null,false);

	MusicStart("SE06",0,1000,0,1000,null,false);
	Fade("フラッシュ白", 500, 1000, null, false);

	Fade("絵爆001", 100, 0, null, false);
	Fade("絵爆002", 100, 0, null, true);


	MusicStart("SE07",0,1000,0,1000,null,false);
	Fade("フラッシュ白", 400, 1000, null, true);

	Delete("絵爆*");
	Delete("絵村*");

	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/ev/ev915_鍔競り合う村正と正宗.jpg");
	CreateTextureSP("絵背景200", 500, Center, Middle, "cg/ev/ev915_鍔競り合う村正と正宗.jpg");
	CreateTextureSP("絵背景300", 1000, Center, Middle, "cg/ev/ev915_鍔競り合う村正と正宗.jpg");
	CreateTextureEX("絵背景400", 1000, Center, Middle, "cg/ev/ev915_鍔競り合う村正と正宗.jpg");
	SetBlur("絵背景300", true, 3, 500, 100, false);
	SetBlur("絵背景400", true, 3, 300, 100, false);

	Shake("絵背景200", 10000, 5, 3, 0, 0, 1000, null, false);

	MusicStart("SE08",0,1000,0,1000,null,false);
	MusicStart("SE09",0,1000,0,1000,null,false);
	Zoom("絵背景300", 2000, 2000, 2000, null, false);
	FadeDelete("フラッシュ白", 500,true);
	FadeDelete("絵背景300", 1000, true);

	Shake("絵背景200", 2000, 5, 1, 0, 0, 1000, null, false);
	Wait(1000);

	Fade("絵背景400", 0, 500, null, true);
	Zoom("絵背景400", 2000, 2000, 2000, null, false);

	Shake("絵背景200", 2000, 3, 4, 0, 0, 1000, null, false);
	Wait(500);
	FadeDelete("絵背景400", 1000, false);
	Wait(500);
	Shake("絵背景200", 5000, 6, 4, 0, 0, 1000, null, false);
	Wait(1000);

	SetVolume("SE09", 2000, 0, null);

	CreateColorSP("絵色100", 1500, "White");
	DrawTransition("絵色100", 500, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Wait(1000);
	Delete("絵背景*");
	CreateColorSP("絵色10", 100, "Black");
	FadeDelete("絵色100", 2000, true);

}


function FullMetalDeamon()
{
//◆ＥＶ：真生悪鬼
//◆悪鬼編·完
	#play_speed_plus=#SYSTEM_play_speed;
	#SYSTEM_play_speed=3;

	PrintGO("上背景", 30000);
	CreateColorEX("絵色黒", 20000, "#000000");
	FadeDelete("上背景", 2000, true);

	Wait(1000);

	CreateSE("SE01","se擬音_雰囲気_抜刀01");
	$残時間=RemainTime("SE01");

//	SoundPlay("@msong03_full", 0, 500, false);

	Wait(160);

	MusicStart("SE01",0,1000,0,1000,null,false);
	WaitPlay("SE01", null);

	CreateTextureSP("悪鬼ED", 16000, Center, Middle, "cg/ev/ev267_真生悪鬼ＥＤ_a.jpg");
	CreateTextureSP("悪鬼EDEX", 16010, -750, -770, "cg/ev/resize/ev267_真生悪鬼ＥＤ_a.jpg");

	CreateSE("SE02","se戦闘_動作_鎧_踏み込み01");

	Delete("絵色黒");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Shake("悪鬼EDEX", 300, 0, 20, 0, 0, 1000, null, true);

	Wait(500);

	Move("悪鬼EDEX", 8000, @0, -60, DxlAuto, false);
	Wait(6000);
	FadeDelete("悪鬼EDEX", 1000, true);

	Wait(1500);

	CreateTextureEX("悪鬼ED02", 16100, @0, @0, "cg/ev/ev267_真生悪鬼ＥＤ_b.jpg");
	Fade("悪鬼ED02", 2000, 1000, null, true);
	Delete("悪鬼ED");

	Wait(2000);

	CreateSE("SE03","se特殊_雰囲気_鎧登場演02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateColorSPadd("絵色白", 30000, "#FFFFFF");
	Delete("悪鬼ED*");
	CreateTextureSP("悪鬼ED03", 16200, @0, @0, "cg/ev/ev267_真生悪鬼ＥＤ_c.jpg");
	CreatePlainEX("絵板写", 16210);
	SetBlur("絵板写", true, 2, 500, 80, false);
	Fade("絵板写", 0, 500, null, true);
	FadeDelete("絵板写", 1450, false);
	Zoom("絵板写", 1500, 1300, 1300, null, false);
	FadeDelete("絵色白", 1000, true);

	Wait(500);

	SetVolume("@m*", 3000, 10000, null);

	Wait(1500);

	ClearFadeAll(5000, true);

	#SYSTEM_play_speed = #play_speed_plus;
}













function EventFlag()
{
	#bg004_鄙びた村a_03=true;
	#bg012_鎌倉駅前周辺_02=true;
	#bg013_鎌倉俯瞰d_02=true;
	#bg020_山脈坑道_03=true;
	#bg023_弥源太の家a_02=true;
	#bg028_横浜ＧＨＱ基地_02=true;
	#bg032_八幡宮奥舞殿内a_03a=true;
	#bg033_署長宅景明私室_02=true;
	#bg033_湊斗家一室_03b=true;
	#bg034_署長宅茶の間a_02=true;
	#bg038_サーキット直線b_01=true;
	#bg041_海岸_02=true;
	#bg045_普陀楽城公方の間_02=true;
	#bg046_江ノ島観測台_03=true;
	#bg046_江ノ島灯台_03=true;
	#bg057_普陀楽城廊下_02=true;
	#bg061_普陀楽城大手門a_03=true;
	#bg061_普陀楽城大手門b_03=true;
	#bg065_普陀楽城内郭_03=true;
	#bg068_普陀楽城内部屋_02=true;
	#bg070_普陀楽城内階段ホール_01=true;
	#bg070_普陀楽城内階段ホール_02=true;
	#bg071_普陀楽城内張り出し_01=true;
	#bg087_大鳥邸玄関前a_02=true;
	#bg088_高級ホテルのホール_01a=true;
	#bg093_山間の村a_03=true;
	#bg097_堀越御所内光の部屋_03a=true;
	#bg100_天守閣_02=true;
	#ev128_病床の光_b01=true;
	#ev228_白銀の軍団_a=true;
	#ev235_迫る鍛造雷弾_f=true;
	#ev235_迫る鍛造雷弾_g=true;
	#ev303_村正VS真改=true;
	#ev805_戦争絵シリーズその３_c=true;
	#ev930_村正電磁抜刀穿_a=true;
	#ev933_銀星号蹴り_b=true;
	#ev935_村正膝蹴り_b=true;
	#ev944_村正ＶＳ荒覇吐_b=true;
	#ev950_膝丸斬撃汎用=true;
	#bg005_山中_03=true;
	#bg006_雄飛の部屋_01=true;
	#bg010_拘置所外観b_01=true;
	#bg013_鎌倉俯瞰d_01=true;
	#bg020_山脈_03=true;
	#bg039_競技場客席ｃ_01=true;
	#bg040_江ノ島全景_03=true;
	#bg047_景明故郷町a_02=true;
	#bg047_景明故郷町a_03=true;
	#bg048_景明故郷オフィス_02=true;
	#bg049_景明故郷住宅地モブa_01=true;
	#bg050_湊斗家門前_03=true;
	#bg051_湊斗家居間_03a=true;
	#bg052_湊斗家道場_03b=true;
	#bg053_湊斗家の庭_03=true;
	#bg055_アジト_02=true;
	#bg073_海a_03=true;
	#bg073_海c_02=true;
	#bg073_船上船縁付近_03=true;
	#bg080_飛行船船室Aa_01a=true;
	#bg080_飛行船船室Ad_01a=true;
	#bg091_山荘の一室_01=true;
	#bg092_森の道b_01=true;
	#bg100_天守閣_01=true;
	#ev102_大阪虐殺_b=true;
	#ev126_青江にんまり笑い_a=true;
	#ev126_青江にんまり笑い_b=true;
	#ev126_青江にんまり笑い_c=true;
	#ev170_バロウズ署長を射殺_c=true;
	#ev172_ヴィッカースメイフライMk4C型_b=true;
	#ev215_髭切に翻弄される村正=true;
	#ev237_空に昇った金神_b=true;
	#ev238_地球と太陽と月と金神_b=true;
	#ev242_金神激しく発光_e=true;
	#ev243_回避機動をとる村正_a=true;
	#ev503_村正抜刀剣光=true;
	#ev805_戦争絵シリーズその３_b=true;
	#ev925_野太刀断片_e=true;
	#ev925_野太刀断片_f=true;
	#ev930_村正電磁抜刀穿_d=true;
	#ev932_銀星号正拳突き_b=true;
	#ev993_一条カットイン=true;

	#bg010_拘置所外観_02=true;
	#bg013_鎌倉俯瞰b_01=true;

}



..//ジャンプ指定
//次ファイル