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

scene md05_011.nss_MAIN
{
	//★個別マクロ超速対応
	Conquest("nss/md05_011.nss","TurboBlur3",true);
	

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
	#ev244_時間移動図解_a=true;
	#ev244_時間移動図解_b=true;
	#ev244_時間移動図解_c=true;
	#ev244_時間移動図解_d=true;
	#ev244_時間移動図解_e=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "md05_012.nss";

}

scene md05_011.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();



..//ジャンプ指定
//前ファイル　"md05_010vsb.nss"

//◆「すげー勢いで時間移動」のイメージ画像


	PrintBG("上背景", 30000);
	CreateColorSP("黒", 5000, "BLACK");
	CreateColorSPadd("白", 2500, "WHITE");

	CreateTextureEX("瞬間移動覆", 1010, @0, @0, "cg/ef/ef039_時間移動.jpg");
	Fade("瞬間移動覆", 0, 300, null, true);
	MoveFFP1("@瞬間移動覆",3000);

	CreateTextureSP("瞬間移動", 1000, @0, @0, "cg/ef/ef039_時間移動.jpg");

	CreateColorEXadd("絵色100", 2000, "WHITE");
	Fade("絵色100", 0, 1000, null, true);

	$Warpトランジ = @絵色100;
	$Warpトランジ速度 = 3000;
	$Warpトランジなめらかさ = 500;



	CreateTextureEXadd("絵背景効果線", 1500, Center, Middle, "cg/ef/resize/ef039_時間移動l.jpg");
	SetVertex("絵背景効果線", 800, 420);
	$効果ナット名 = @絵背景効果線;


	CreateProcess("プロセス２", 150, 0, 0, "TurboBlur");
	SetAlias("プロセス２","プロセス２");
	CreateProcess("プロセス３", 150, 0, 0, "TurboBlur3");
	SetAlias("プロセス３","プロセス３");


	Request("プロセス２", Start);
	Request("プロセス３", Start);

	Delete("上背景");
	FadeDelete("黒",1500,true);
	FadeDelete("白",2000,true);

	Wait(500);

	SoundPlay("@mbgm02", 0, 1000, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　闪光、闪光、闪光。

　无数闪光。
　出现便消失，出现随后又逝去。

　如同沐浴在闪耀的雨中。

　……不对。

　也许，恰恰相反？

　是我在光群之中奔跑吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_困惑.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110010a00">
「……村正，在可能范围内即可，
　说明现在的情况。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110020a01">
《……那个……》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　接受了我理直气壮的无理要求，村正经过一番犹
豫，决定作为一名学生代替教授紧急招待来自伦敦
皇家科学协会的众人，进行论文发表，最后她慢慢
述说起来。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110030a01">
《现在，我们在时间上被移动了。
　……这是毫无疑问的。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110040a01">
《不过，我们的意识并未混乱，说明我们的<RUBY text="····">
内在时间</RUBY>仍维持正常。
　内在时间和外在时间相背离了……》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110050a01">
《在这宇宙中，我和你的时间坐标，
脱离常规正在转移。
　……如此表达是否正确呢……》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110060a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　当下我的理解程度是七五成。

　……强行理解，将其简单化。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110070a00">
「总而言之。
　我们是在<RUBY text="········">四次元上被吹飞了</RUBY>吗？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110080a01">
《……大致，如此。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110090a00">
「被放逐到了莫名的过去，或是未来……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　绝望地叹息。
　……这真是困扰，很是困扰。在原本的世界，
原本的时间里，尚留有想做的事情。

　必须回去。
　但是，要如何做……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110100a01">
《不。
　这会如何，不得而知。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110110a00">
「为什么？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110120a01">
《若是我的认知力能正确理解状况的话，
但是……
　我们并非在时间轴上直线移动。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110130a01">
《来往于过去和未来。
　似乎也无法有如此大的移动范围……
虽是猜测，也许充其量就只是在数百年
的范围内吧。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110140a00">
 「…………
　因此我们现在，是因为从几百年前到几百年
后，在富士山上空的时间坐标激烈变化，
而存在的？」


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　简而言之。
　没有当时所想的状况残酷……吗？

　总之，看来不会出现在盘古大陆上，
或是未知生物和文明繁荣的世界呢。
　……就算如此，也不值得高兴。

　移动数百年范围内停滞的时间，对我们来说也是极为
不适的，这点不会变。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110150a01">
《富士山上空，除此以外都是一样的哦。
　……并不是事实，
说到底也不过是我的推测罢了。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110160a00">
「……？　什么意思？
　我们不只是在富士山上空？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　明明只是时间上的移动？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110170a01">
《时间移动不伴随着空间移动，是无
保障的，即便我们的空间坐标保持固定，
相对的移动也有可能发生。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110180a01">
《世界这边要动起来也是同理。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110190a00">
「……原来如此。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　确实如此。
　地球自转，同时也在太阳周围公转。

　所幸，从身体无异常这点看来，似乎是没有
被丢至宇宙空间……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110200a00">
「村正？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110210a01">
《什么？》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110220a00">
「……没有<RUBY text="··">减速</RUBY>吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　一边观察周围，一边交谈。
　可以感觉到，光的流动速度在渐渐变缓。

　或许因为如此，我的脑内也对眼前所见有了理解。
　……只能认知到光群的疾走，事实上，
那是流逝而去的无数<RUBY text="··">场景</RUBY>。

　我确实进行了时空间的移动。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110230a01">
《是啊。
　金神赋予我们的时间行动力
正在慢慢消耗，接近零。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110240a01">
《很快就要停止……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110250a00">
「我们能做的就只有祈祷吗？
　向金神以外的神……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
　尽可能停在最接近我们原来的时空间之处。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110260a01">
《…………
　这也是无法猜中的推测呢。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110270a01">
《或许我们的状况，也并非那么悲观。》

{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110280a00">
「……是吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
　没有绝望，是距绝望仅半步之遥。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110290a01">
《试着整理下吧……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆時間図
//◆中央に「本来の位置」の点

	CreateTextureEX("時間図01", 3000, @0, @0, "cg/ev/ev244_時間移動図解_a.jpg");
	Fade("時間図01", 1000, 1000, null, true);


	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110300a01">
《我们从原来时间的位置上，
被金神的力量所弹飞。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆矢印で移動を示す

	CreateTextureEX("時間図02", 3100, @0, @0, "cg/ev/ev244_時間移動図解_b.jpg");
	Fade("時間図02", 1000, 1000, null, true);
	Delete("時間図01");
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110310a01">
 《若是影响我们的外部之力再无其他，我们
便会永远以同一速度在时间轴上持续移动。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆矢印を端まで伸ばす

	CreateTextureEX("時間図03", 3200, @0, @0, "cg/ev/ev244_時間移動図解_c.jpg");
	Fade("時間図03", 1000, 1000, null, true);
	Delete("時間図02");
	
	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110320a01">
《……但事实并非如此。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110330a01">
《推动我们的力量正慢慢削弱。
　有某种其他力量在运作，从金神那里削减
时间移动力。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110340a01">
《那是……》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「本来の位置」へ向かう矢印

	CreateTextureEX("時間図04", 3300, @0, @0, "cg/ev/ev244_時間移動図解_d.jpg");
	Fade("時間図04", 1000, 1000, null, true);
	Delete("時間図03");

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110350a01">
《欲将我们拉回原本时间的力量。
　那便是时间的<RUBY text="···">修正力</RUBY>——》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110360a01">
《……这是我的考虑。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110370a00">
「…………
　那么，最终会如何？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110380a01">
《直至将我们拉回正确的位置，
修正力理应会一直运作……
　如果金神不给我们施加新的力量的话……》

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110390a01">
《我认为——我们会回到原来的时间。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
　……就是说。
　我们是从陆地上用大炮发射向天空的炮弹，
因炮弹会被地球引力所影响——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆「本来の位置」から撃ち出された村正が引力に引かれ、
//◆ぐるぐる回ったすえ元に戻るの図

	CreateTextureEX("時間図05", 3400, @0, @0, "cg/ev/ev244_時間移動図解_e.jpg");
	Fade("時間図05", 1000, 1000, null, true);
	Delete("時間図04");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　最终会回归地面。
　
　……是那样吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110400a00">
「那么确实……无需悲观。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110410a01">
《是的。
　这个推断是正确的。》

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	FadeDelete("時間図*",1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　推测出错会让人困扰。
　无法通过自身之力进行时间移动的我们，
已无其他可寄托希望。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110420a01">
《只不过……》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110430a00">
「嗯？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110440a01">
《现在倒是能轻易进行时空移动。
　移动力像这样变弱……最后会被诸多空间和
时间<RUBY text="··">抓住</RUBY>。》

{	FwC("cg/fw/fw景明_驚き.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110450a00">
「抓住？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110460a01">
《会暂时成为其他时空间的居民。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110470a00">
「……那可是，很不得了的事呢。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　所谓的时空旅行吗？

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw村正蜘蛛_通常.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110480a01">
《不出意外，很快修正力就会压制此世界的约
束力，我们又能向原本的时空间移动了。》

//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110490a01">
《<RUBY text="····">不出意外</RUBY>呢。》

{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110500a00">
「……如果发生什么，就不一定了吧？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110510a01">
《是的。
　便会成为其他空间的居民。什么时候被固定
在那个时空而无法逃走，存在这样的危险。》

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110520a00">
「要避免的话？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110530a01">
《什么都不做最明智。
　对世界的一切不闻不问，
等待修正力运作。》

{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110540a00">
「明白了。」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110550a01">
《但是，要注意这也并非绝对。
　若因为无举动一味等待，也可能和这世界的
现象有所牵扯。》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　——比如，在被抓住的时空间，枪战正激烈时现身。
　在那儿站着，当然会被子弹射穿，与世界发生关联。
    
　村正是要表达这意思吧。

  ……不，这种场合下，和世界的关联已经无所谓了。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110560a00">
「基本上不要妄动。
　但要准备随机应变。」

{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/md05/0110570a00">
「这便行了？」

{	FwC("cg/fw/fw村正蜘蛛_通常.png");}
//【村正】
<voice name="村正" class="村正さん" src="voice/md05/0110580a01">
《大概吧！》

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　命运共同体的剑胄，用不怎么可靠的话语
给了我保障。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetVolume("@mbgm*", 1000, 0, null);

//◆ばーん。壁を破るような。
//◆ホワイト

//おがみ：↑次スクリプトで演出


//	WaitKey(1500);

}

..//ジャンプ指定
//次ファイル　"md05_012.nss"


function TurboBlur3()
{

	while(1){

	DrawTransition($Warpトランジ, $Warpトランジ速度, 0, 1000, $Warpトランジなめらかさ, Axl2, "cg/data/circle_01_00_0.png", true);
	DrawTransition($Warpトランジ, $Warpトランジ速度, 1000, 0, $Warpトランジなめらかさ, Dxl2, "cg/data/circle_01_00_1.png", true);

	}

}