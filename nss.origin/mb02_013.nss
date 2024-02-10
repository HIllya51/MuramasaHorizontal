//<continuation number="790">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_013.nss_MAIN
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
	#bg057_普陀楽城廊下_01=true;
	#bg068_普陀楽城内部屋_01=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_014.nss";

}

scene mb02_013.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_012.nss"

//◆京極屋敷
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg057_普陀楽城廊下_01.jpg");
	FadeBG(0,true);
	Delete("上背景");
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　当我自称四郎邦氏的使者请求晋见冈部樱子
后，京极家的人看似大惊失色。
　邦氏不愿兴师动众的意思也说明了，总之他们
同意了我的晋见，但一定不会就此罢休的。

　即便如此，总比足利邦氏亲自上马
要好的多，而且总不能偷偷行事，
所以，这也是无奈之举。
　但估计会有人不露声色地向邦氏刨根问底吧。

　不过，他早已心中有数吧。
　这应该是他熟虑之后的请求。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆城内部屋
	PrintGO("上背景", 25000);
	CreateColorSP("絵暗転", 10000, "#000000");
	OnBG(100,"bg068_普陀楽城内部屋_01.jpg");
	FadeBG(0,true);
	DrawDelete("上背景", 1000, 100, "blind_01_00_1", true);
	DrawDelete("絵暗転", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm23",0,1000,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
　我被带到了深处的一间房，樱子小姐
埋头行礼等待着。
　上座之处已经空出。

　……如今的我好歹也算是堂堂左近卫大将，
这般招待也是理所当然。
　但是，这坐不舒坦的感觉真是无奈。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130010a00">
「小姐。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130020b28">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
　确认身后的门已经关上后，我轻声
唤道。
　小姐愣神抬起头，正与我视线交融。

　片刻的空白。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130030b28">
「哎呀……这……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130040a00">
「似乎，与小姐很有缘。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130050b28">
「真的。
　但是，这是怎么回事……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130060a00">
「小姐有疑惑也是自然。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
　毕竟我自己回首也甚是疑惑。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130070a00">
「容我简单说明一下——」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130080b28">
「总之，先泡杯茶吧。
　啊、请继续。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130090a00">
「不劳费心。
　那么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
　坐下之后，我便简短介绍了下与邦氏的奇妙缘分。
　这事要说怪也真是相当怪，但是她已经目睹过
那位高贵少年热衷足球的样子的，所以想让她
理解此事并不难。

　一边说着，一边环顾四周，观察着这房间。
　并没有铁格栅围着，窗子也并非只能透光
的小窗。

　这房间稀疏平常。
　即便这房间不是她的居室，从她对这的适应程度
可以看出这里确是她生活空间的一部分。
也就是说，小姐的周身环境并不是那般苛刻。

　就像那天一样，散步也是可以的。
　
　……但是这温和的待遇，绝非出自为她身心
健康的考虑吧。

　六波罗提防着樱子小姐与倒幕势力的接触。
所以才将她置于这普陀乐中。
　但同时也应该是有所期待的——两方接触后
采取行动的话，便可一网打尽。

　就算樱子身边守备薄弱也没有问题。因为，
她<RUBY text="····">终不可能</RUBY>从这座城内逃出。
　舍去无用的严密戒备态势，把这作为钓大鱼
的诱饵。六波罗真是狡猾万分。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130100b28">
「是这样啊……
　所以那时……」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130110a00">
「是。
　我自觉有了过分的举动。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
　她自己也清楚这些情况吗——
　看到她强颜欢笑的同时眼角那掩盖不住的疲惫，
便不问自知。

　啜饮着端上的茶。
　惬意的苦味而今如此悲戚。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130120a00">
「……不管怎样，因这事有幸得以
与殿下相知相遇。
　所以才有了此次的使者一职。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130130b28">
「使者……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
　樱子小姐的视线转向那里。
　不会是现在才发觉吧。

　那是我带来的一盆花。
　我重新拿起花，摆到小姐面前。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130140a00">
「这是邦氏殿下给小姐的。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
　我忽然闭口。
　本想继续说……「赏赐之物」。

　从礼数上来说这样是正确的。
　但是，总觉得没有传达那位少年的真意。
　
　一瞬犹豫后，改成了更为单纯的用词。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_黙考.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130150a00">
「这是礼物。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130160b28">
「这个给我……？
　那位大人？」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130170a00">
「是。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
　是紫色的花。
　乍看之下，像是堇，但是叶与茎的形状不对。

　也许对于大和来说，这花还比较陌生。
　刚想开口加以介绍，樱子小姐
略带疑惑地小声说道。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130180b28">
「这是紫罗兰花……？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130190a00">
「正是。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130200b28">
「以前只是在照片上看到过。
　原来是这个颜色的啊……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130210a00">
「听说还有红色与白色的品种。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130220b28">
「是吗……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　紫紫罗兰花。西洋名为斯托克。
　原产于南欧，古时曾作药用。

　花香属于浓郁类型的吧。
　闻上去不至于呛着，但如果鼻子凑太近的话，
仿佛会沉醉其中。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130230b28">
「这花绽放的时节……不是
早春吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130240a00">
「是的。
　这是由城内花匠培育的早开品种。」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130250b28">
「这样的礼物……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130260a00">
「听闻邦氏殿下的祖母、养德院大人
甚是喜欢这花。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130270b28">
「……？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
　冈部樱子露出惊奇的表情。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130280b28">
「也就是说这并不是殿下自己喜欢所以才
培育的吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130290a00">
「是。
　为了送给小姐，请求养德院大人
赠与的。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130300b28">
「特地选了这花。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
　她凝视着紫色的花瓣。
　似乎，正在挖掘深处的记忆一般。

　我默默等待着。
　我不必自作聪明地摆弄唇舌。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130310b28">
「……我记得，紫罗兰花的花语是……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130320a00">
「……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130330b28">
「永远的美丽。依恋。幸福……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130340a00">
「听闻还有，迈向未来的力量，
　……挂念等。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240]
　国度不同，文化不同，花语
也会各有千秋。
　这些混淆在一起，导致现在大多数的花都带有
多重意义。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130350b28">
「……迈向未来的力量。
　挂念……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130360a00">
「……」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130370b28">
「这就是殿下赐与我的礼物。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130380a00">
「是……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130390b28">
「……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130400a00">
「敢问，小姐有所顾虑吗？」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　斗胆提出了这有失礼数的问题。
　这位无家可归的小姐，秀目圆瞪，一脸惊讶之色——
不过也只是数秒之事。

　她的脑中，也许还记着那天的
一句话。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130410b28">
「是的。」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130420a00">
「这是自然而然之事。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130430b28">
「胜者可以……低头求和，就算失去些许
自尊，也仍然拥有
许多。
　但是对于败者来说……」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130440b28">
「曾经战斗过，败者拥有的只是这份自尊。
　如果连这个也失去了，那真是一无所有了。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130450a00">
「可以理解。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
　真心实意地，表示赞同。
　真的，小姐的心情完全可以理解。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130460b28">
「那么……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130470a00">
「殿下也深知这一点。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130480b28">
「殿下他？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130490a00">
「殿下忧心过。
　担心这是否是自己的任性。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130500b28">
「…………」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130510a00">
「即便如此，殿下仍然决定
派我来。
　如果说，殿下心中揣度之事
得到允许的话——」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130520a00">
「恐怕殿下并不是作为胜者足利一门的
家长，
　而是想作为与小姐同等立场的个人将这花
赠与小姐的吧，以上是本人愚见。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130530b28">
「同等立场……？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130540a00">
「紫罗兰花语中，也包含了
“同情”。」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130550b28">
「……」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130560a00">
「有时这词听上去会不甚
悦耳。但殿下并不是居高临下地
伸出手，而是站在小姐的身旁，
这一点恳请小姐的理解。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
　若说这番话越出常轨，确实无可厚非。
　足利家的公子与冈部家的遗女，两者之间的立场
相隔十万八千里。

　但至少樱子小姐没有因为一句话就
有所退却。
　凝视着紫罗兰花，她陷入了沉思。

　她是否忆起了那天擦肩而过般的
相逢呢……
　我似乎在小姐的眼瞳中看到了少年通红的
脸庞。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130570b28">
「……改先生。」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130580a00">
「在。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130590b28">
「不知邦氏殿下，是位怎样的大人呢？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130600a00">
「……自己所了解的也很
有限。那天——小姐也在场的
那次，以及今天拜访此处前见过
一面以外，便再无接触了。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130610b28">
「是这样啊……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130620a00">
「不过，
　就是这样一个相交尚浅的自己，却承蒙殿下
之命成为拜访小姐的使者。」


{	FwC("cg/fw/fw景明_悲哀.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130630a00">
「……不得不命我成为使者。
　这是殿下的立场所造成的。」


{	FwC("cg/fw/fw桜子_悲哀.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130640b28">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
　我没有再多加唇舌。
　因为我只想说明事实。我此行并不是为了
将小姐牵扯进来。

　那位少年的身姿与背影，会引人思考更多。
　但那即便通过我传达给小姐，只怕也
无济于事。

　只有小姐自己了解到的才是真实的。
　而这，似乎并非——遥不可及。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130650b28">
「……是位寂寞的大人吗？」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130660a00">
「既然宝座之上只可一人独坐……
　身边无人才是情理之中吧。」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130670b28">
「……挂念。
　同情。
　迈向未来的力量……」


//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130680b28">
「如果是条孤独凄凉之道，至少希望能有位同伴
同行……
　他是这样期盼的吗。」


{	FwC("cg/fw/fw景明_黙考.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130690a00">
「……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
　无以回答，只有低下了头。

　这绝非易事。
　纵然两人有此期盼，周围的人又能否
容许呢——不，绝不容许的吧。

　亦或较之独行，同行将成为更多困难的荆棘之路。
　但……即便如此仍然选择相随的话。

　便不会寂寞。
　好于孤独一人。多少可以温暖——冰冷的肌肤。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130700b28">
「…………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360]
　冈部家的小姐在考虑什么呢。
　她也许还是会先考虑到……灭我一族之人
究竟意欲为何。

　若是这样，那我便再无良策劝说了。
　
　但是。虽说只有一次，她见过邦氏。

　那时。
　如果小姐触摸到了足利四郎这位少年
真实的一面……

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0370]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130710b28">
「改先生，
　能恳请为我带句话给殿下吗？」


{	FwC("cg/fw/fw景明_通常a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130720a00">
「是。请说。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380]
　好像彻底变成了传话人，不过
这也没办法。
　如果事情就此成为一场争吵，那是最糟糕的情况。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130730b28">
「请转告殿下，身处普陀乐，犹如眠于岩上……」


{	FwC("cg/fw/fw景明_通常b.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130740a00">
「——」


{	FwC("cg/fw/fw桜子_通常a.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130750b28">
「如果殿下挂念我，
　恳请赐我青苔之裳。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
　……………………

　那一刻，我是何表情呢。
　也没有镜子，所以无从知晓。

　但确实小姐因为我的表情而轻微一笑。
　……青苔之裳。是指粗陋的衣服……<k>但是，这里所指
何意呢…………

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_笑い.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130760b28">
「可以吗？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130770a00">
「……小姐。
　殿下还很、那个、年轻……」


{	FwC("cg/fw/fw桜子_通常b.png");}
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0130780b28">
「这点小刁难，上天也不会有所
责罚的吧？」


{	FwC("cg/fw/fw景明_疲労.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0130790a00">
「是……」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
　意料之外。
　没想到…………这位小姐。

　喜欢恶作剧。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_014.nss"