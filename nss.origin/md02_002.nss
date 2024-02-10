//<continuation number="850">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_002.nss_MAIN
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
	#bg097_堀越御所内景明の部屋_01=true;
	#ev218_茶々丸と同衾する景明_a=true;
	#ev953_護氏装甲_a=true;
	#bg031_八幡宮境内_01=true;
	#ev924_銀星号飢餓虚空魔王星=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md02_003.nss";

}

scene md02_002.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"md02_001.nss"

//◆ホワイトイン。目覚め
//◆景明の部屋（堀越御所内）
	PrintBG("上背景", 30000);
	CreateColorSP("ホワイトイン", 5000, "White");
	OnBG(100, "bg097_堀越御所内景明の部屋_01.jpg");
	FadeBG(0, true);
	CreateTextureSP("絵背景100", 100, Center, Middle, "cg/bg/bg097_堀越御所内景明の部屋_01.jpg");
	SetShade("絵背景100", HEAVY);
	Delete("上背景");

	Wait(2000);

	FadeDelete("ホワイトイン",2000,true);
	FadeDelete("絵背景100", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020010a00">
「……………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　这里是<k>
　
　………………哪里？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetNwC("cg/fw/nwその他.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020020a07">
「呀。」

{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020030a00">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SoundPlay("@mbgm19", 0, 1000, true);

//◆ＥＶ：景明の上に乗っかってる茶々丸
	CreateTextureEX("ちゃちゃまる", 1000, @0, InBottom, "cg/ev/ev218_茶々丸と同衾する景明_a.jpg");
	Fade("ちゃちゃまる", 1000, 1000, null, true);

	Wait(1000);

	Move("ちゃちゃまる", 4000, @0, -120, null, true);

	Wait(1000);

	SetFwR("cg/fw/fw茶々丸_笑顔.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020040a07">
「早啊，哥哥。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020050a00">
「你早。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020060a07">
「今天天气也很好哟。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020070a00">
「是啊。
　换洗的衣物都能干吧。」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020080a07">
「真好。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020090a00">
「是啊。」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020100a07">
「…………」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020110a00">
「…………」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020120a07">
「从早上起一直相互对视的男女。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020130a00">
「我们在哪里见过的吗？」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020140a07">
「你没有印象了吗？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020150a00">
「没有见过。」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020160a07">
「明明都好到同床共枕了。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020170a00">
「所以，刚才起就绞尽脑汁不停地在想。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020180a07">
「不记得了。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020190a00">
「也不算。
　很难形容——碰触到记忆的东西。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020200a07">
「有吗？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020210a00">
「……」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020220a07">
「……」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020230a07">
「好到一早就会亲嘴这种程度的
相互对视的男女。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020240a00">
「你误解了。
　究竟这里是哪里，自己又为何会在这里呢？」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020250a07">
「那个也记不起来了？」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020260a00">
「…………」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆フラッシュバック。護氏、銀星号、飢餓虚空
	EfRecoIn1(18000,300);

	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ev/ev953_護氏装甲_a.jpg");

	EfRecoIn2(500);

	WaitKey(500);

	EfRecoIn1(18000,300);

	Delete("絵回想*");
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/bg/bg031_八幡宮境内_01.jpg");
	CreateTextureSP("絵回想200", 2100, 100, InBottom, "cg/st/3d銀星号_立ち_通常.png");

	EfRecoIn2(500);

	WaitKey(500);

	EfRecoIn1(18000,300);

	Delete("絵回想*");

//■CGこれだろうか inc櫻井
	CreateTextureSP("絵回想100", 2000, Center, Middle, "cg/ef/ef037_飢餓虚空魔王星b.jpg");

	EfRecoIn2(500);

	WaitKey(500);

	EfRecoOut1(500);

	Delete("絵回想*");
	Delete("絵板写");
	Move("ちゃちゃまる", 0, @0, -100, null, true);

	EfRecoOut2(1000);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　——我被那黑暗的漩涡卷了进去……

　不。不对吧。

　在快被卷进之前就失去了意识。
　但我不认为被那样卷进去的话会没事。
要是那样的话，现在也该灰飞烟灭了吧——<k>
也就是在这之前，破解了银星号的攻击吗？

　那之后……
　那之后？

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020270a00">
「……失去意识之前在哪里，
在干些什么我还是有记忆。」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020280a07">
「但是，那记忆跟这里无法接上？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020290a00">
「是的。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020300a07">
「那就没办法了。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020310a00">
「为什么？」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020320a07">
「是我将昏迷了的哥哥带到这里来的。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020330a00">
「…………」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020340a00">
「也就是……
　当时你也在<RUBY text="那里">八幡宫</RUBY>吗？」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸r】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020350a07">
「嗯。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020360a00">
「……<RUBY text="·······">那时候的八幡宫</RUBY>里？」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020370a07">
「真不得了啊——」

{	FwR("cg/fw/fw茶々丸_歯噛.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020380a07">
「差点就被卷进那黑洞里去……
　你说这让人害怕不害怕……」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020390a07">
「感觉好像将浴场的栓拔开时，会和水
一起被吸进去。我明白那种头发被拔掉的感觉。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020400a00">
「……………………………………确实。」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020410a07">
「那是身心创伤啊。」

{	FwR("cg/fw/fw茶々丸_怒り.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020420a07">
「在天上，哥哥你们气氛高涨时，我在地面上
也是危机重重哦。
　嗯嗯，在谁也看不见的地方拼死努力着！」

{	FwR("cg/fw/fw茶々丸_落胆.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020430a07">
「想起来就觉得悲伤。
　十分……」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020440a00">
「……给你添麻烦了。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020450a07">
「没有没有。趁没人发现的空挡
就急急忙忙地逃走了。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020460a07">
「唉，那也没什么辛苦的。
　和之前要逃出排水沟的游戏相比起来。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020470a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRIO();//―――――――――――――――――――――――――――――

//◆室内

	FadeDelete("ちゃちゃまる",1000,true);
	Wait(500);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　视线环视室内。
　……她在。

　枕边伏着深红蜘蛛。
　身体动弹不能。

　对我的意志也没回应。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020480a00">
「————」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　心脏冻结，不过是一瞬间的事。

　操控者和剑胄的<RUBY text="ｌｉｎｋ">结缘</RUBY>告诉我。
　——她在休眠。

　受到严重的损伤，再生以外的机能全部封锁。
竭力地恢复当中。
　不必说那绝对是严重事态，但暂且也不是最坏的情况。

　我松了口气。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw茶々丸_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020490a07">
「……呼？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆茶々丸に戻り

	CreateTextureEX("ちゃちゃまる", 2000, @0, -120, "cg/ev/ev218_茶々丸と同衾する景明_a.jpg");
	Fade("ちゃちゃまる", 1000, 1000, null, true);

	SetFwR("cg/fw/fw茶々丸_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020500a07">
「你是担心剑胄吧？」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020510a00">
「因为她是我伙伴。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020520a07">
「呣。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020530a00">
「什么？」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020540a07">
「听了哥哥你这话，我心里就有点刺刺的感觉。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020550a00">
「……为什么？」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020560a07">
「是个人感情啦。
　你这木头。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020570a00">
「……？」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020580a07">
「那么。
　哥哥。差不多该看出我是什么人，
而这里又是哪里了吧？」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020590a00">
「……」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0020600a00">
「你刚刚说出村正了的名号。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020610a07">
「的确说了。」

{	FwR("cg/fw/fw景明_怒りa.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020620a00">
「那么你该是和我有关的人。
　否则的话……」

//【景明】
<voice name="景明" class="景明" src="voice/md02/0020630a00">
「就是和银星号有什么关系的人。
　……又或者两方面都涉及。」

{	FwR("cg/fw/fw茶々丸_悩む.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020640a07">
「千子右卫门尉村正的真作，仅余下两副。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020650a00">
「……」

</PRE>
	SetTextEXR();
	TypeBeginRI();//―――――――――――――――――――――――――――――

	SetFwR("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020660a00">
「而且当时你也在八幡宫。」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020670a07">
「是啊。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020680a00">
「在奉刀参拜的——
　对于外部人士禁止入内，
正在重大祭祀的八幡宫里。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020690a07">
「没错。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020700a00">
「……之前就觉得可疑。
　明明作为行踪不明人员在全国搜寻，
为什么光的消息还是完全无法知晓。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020710a00">
「两年多的时间。
　这就是光受到什么有权势的人保护的佐证……」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020720a07">
「你说得很对。」

{	FwR("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020730a00">
「……从这房间的情况来推断……
　这是在一座相当宏伟的宅邸之中。」

{	FwR("cg/fw/fw茶々丸_笑顔.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020740a07">
「没那么夸张啦。
　啊，这话只是略表谦逊。
哥哥你的推测是对的。」

{	FwR("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020750a00">
「…………」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020760a07">
「请。」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020770a00">
「你是幕阁的人。」

{	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020780a07">
「堀越公方足利茶茶丸。
　不得不说初次见面这样的话啊。」

//◆語尾にハートマーク付く感じで
{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020790a07">
「哥哥。」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020800a00">
「————————」

//◆ぐー。腹の虫。

{	OnSE("se擬音_コミカル_腹の虫01", 1000);
	FwR("cg/fw/fw茶々丸_通常a.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020810a07">
「……」

{	FwR("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020820a00">
「…………」

{	FwR("cg/fw/fw茶々丸_通常b.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020830a07">
「肚子饿了？」

{	FwR("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md02/0020840a00">
「……似乎是的。」

{	FwR("cg/fw/fw茶々丸_悪戯.png");}
//【茶々丸】
<voice name="茶々丸" class="茶々丸" src="voice/md02/0020850a07">
「那么，先吃早饭吧。」

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,150);//―――――――――――――――――――――――――――――

	ClearWaitAll(1500, 1500);
}

..//ジャンプ指定
//次ファイル　"md02_003.nss"