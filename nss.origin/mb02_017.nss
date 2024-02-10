//<continuation number="270">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_017.nss_MAIN
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
	#bg001_空a_03=true;
	#bg067_普陀楽城内能楽堂_01a=true;
	#bg067_普陀楽城内能楽堂_01b=true;

	//▼ルートフラグ、選択肢、次のGameName
	$PreGameName = $GameName;

	$GameName = "mb02_018.nss";

}

scene mb02_017.nss
{
	$スクリプトバージョン = "  Version $Revision: 1 $";
	$構成名 = ModuleFileName();
	$構文名 = $SYSTEM_present_process;
	SystemInit();

..//ジャンプ指定
//前ファイル　"mb02_016.nss"

//◆夕
//◆能楽堂
	PrintBG("上背景", 30000);
	CreateColorSP("絵暗転", 15000, "#000000");
	OnBG(100,"bg001_空a_03.jpg");
	FadeBG(0,true);
	Delete("上背景");
	FadeDelete("絵暗転", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg067_普陀楽城内能楽堂_01a.jpg");
	CreateSE("SEL01","se背景_ガヤ_ざわめき01_L");
	MusicStart("SEL01",3000,800,0,900,null,true);
	FadeBG(3000,true);


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0010]
　政所公职人员全都被安排坐在舞台斜向的看台上。
　由于柱子遮挡视线，所以这片区域最不适合欣赏能乐，
但考虑到身份问题，这也是理所当然的。

　作为主客上宾的高官贵人们还未到场。
　但有位体格颇壮的男子已经到了，想必是游佐童心。毕
恭毕敬的态度不合他尊贵的地位……是为了显示作为主办
人的关怀吗。

　不过那位公方，虽然平日也常穿潇洒的武士礼服，今天
甚至还配上了藏青色的头巾。
　这到底是何风格。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_警戒.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0020]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170010a02">
「啊……
　小姐！」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170020a00">
「什么？」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170030a02">
「景……景秋先生，你看那里。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0030]
　视线投向一条所指方向。

　高官们开始入场了。
　队伍中混着一位打扮并不显眼的年轻女性——那正是
冈部樱子。

　……真没想到。
　童心和尚连那位小姐都请来了吗。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_笑顔a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0040]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170040a02">
「看上去比之前要精神点了。」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170050a00">
「嗯……」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	StL(1000, @0, @0,"cg/st/st桜子_通常_私服b.png");
	FadeStL(300,true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0050]
　虽然我心中有数，但只是点了点头不再多言。
　我凝视着小姐的身姿。

　光润亮泽的发丝上佩戴着花——
　那是一朵紫罗兰。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0060]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170060a00">
「……这样啊。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170070a02">
「？　怎么了？」


{	FwC("cg/fw/fw景明_笑顔a.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170080a00">
「没什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

	DeleteStA(300,false);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0070]
　高官和夫人们大致就座后，正面中央的主宾之席仍然
空着。
　那是何人之位，不言而喻。

　不久。
　一伙甚是小题大做的集团——这更多的是因为严防四
周的女官与卫兵而非这集团的领头人物——出现了，走
向那个主宾席。

　那是足利四郎邦氏。
　这位少年将要从过世的祖父那继承六卫大将领之位，
成为六波罗的……不，成为天下的统帅。

　静静行走中的他看似心情并不愉快，突然，他转过了
头。
　似乎是感受到了不寻常的视线。

　转头看去。
　……是冈部樱子。

　少年因为惊讶而瞪圆了眼睛。
　也许谁都没有料到，会在这次集会上看到她的身影。

　他眨了眨眼睛，似乎是为了确认，再次看去。
　接着，吃惊的表情变成了难以抑制的喜悦。

　因为那妆点着小姐姿容的小装饰物映入了他的眼帘。
　那是他赠予的花——其中一朵。

　面对少年的视线，樱子小姐回以微笑。
　
　尽管隔着人墙，他们之间确实联系着一根无形之线。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――


	SetFwC("cg/fw/fw景明_笑顔b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0080]
//◆ちょっと満足げ
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170090a00">
「…………」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170100a02">
「？？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆客席の照明が落ちる
	SetVolume("SE*", 2000, 0, null);
	OnBG(100,"bg067_普陀楽城内能楽堂_01b.jpg");
	FadeBG(2000,true);

	CreateTextureEX("絵演背景", 2100, -437, -418, "cg/bg/resize/bg067_普陀楽城内能楽堂_01bl.jpg");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0090]
　能乐表演开始了。

　首先是二番目物。称为修罗物，以武人之灵为主角的
故事。
“朝长”或“敦盛”等共有十多种，不过今晚这里要上演
的是——

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//◆ＢＧＭ
//◆能の部分だけ別窓？　横書き窓を中央に。
//◆頼政台詞にはfw童心_頼政を使用。名前欄も付ける
//◆他の登場人物台詞には名前欄のみ
	SoundPlay("@mbgm09",3000,1000,true);
	Fade("絵演背景", 2000, 1000, null, true);

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0091]
　
　……山城国为宇治之地。
　游历诸国的僧人到访，感叹于壮美之景。

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_驚き.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0100]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170110a00">
「——这个是。」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170120a02">
「怎么了？」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0110]
　
　这时出现了一位老人。
　向僧人讲解名胜古迹之后，带他去往平等院。

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0120]
//◆老人
《请至此处。
　此乃平等院是也……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0130]
　嘈杂声蔓延整个会场。
　虽然谁也没有大声喧哗，大家都在小声耳语交流，恰
好形成波浪之势。

　——偏偏上演这出。
　——为何。

　众人愕然。即使没有出声议论的人也一脸疑惑。
　若无其事继续看着表演的，只有坐在主办人位子上的男
人。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny僧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0140]
//◆僧
《此处甚是有趣。
　竟能见此青青结缕。》

//◆僧
《形如扇状……
　是何意。》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0150]
　冈部小姐满眼愕然，视线偏离舞台
在宾客坐席间徘徊。
　注意到这视线的两人，一位是不知作何反应的邦氏，
另一位是不作任何反应的游佐童心。

　一无所获的樱子小姐，再次凝视舞台。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0160]
//◆老人
《昔日此处曾有过战争。
　源三位赖政战败。》

//◆老人
《在此处展开军扇自尽赴黄泉。》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0170]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170130a02">
「赖政……？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170140a00">
「是啊……」


{	FwC("cg/fw/fw一条_通常b.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170150a02">
「所谓赖政，是那个吗？
　在源赖朝举兵之前奉以仁王圣旨
与平氏交战，结果战败而亡的那个人吗？」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170160a00">
「正是。
　源三位赖政。」


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170170a00">
「这就是以他为主角的能乐。
　但是……为何……」


{	FwC("cg/fw/fw一条_通常a.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170180a02">
「有什么奇怪的吗？」


{	FwC("cg/fw/fw景明_警戒.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170190a00">
「你想想看。
　那可是官列<RUBY text="··">三位</RUBY>的<RUBY text="··">赖政</RUBY>。」


//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170200a00">
「你能联想到谁？」


{	FwC("cg/fw/fw一条_剣呑.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170210a02">
「……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0180]
　——冈部<RUBY text="··">赖纲</RUBY>。
　其官职为弹正尹，官阶<RUBY text="···">从三位</RUBY>。
　旧姓为源氏。

　两者都是反抗当权者后战败而亡的大将。
　连境遇都惊人地相似。

</PRE>
	SetTextEXC();
	TypeBeginCI();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常a.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0190]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170220a00">
「我不认为这是偶然。
　古河公方在考虑什么。」

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny老人.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0200]
//◆老人
《故而此处成为名将古迹……
　留下这片扇形……》

//◆老人
《如今称其扇之芝……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0210]
　喧闹声渐止。
　这出曲目在此六波罗普陀乐城上演着实不适合，但既
然是在耆宿游佐童心的允许下进行的，谁也无法指责。

　地谣那玄妙的嗓音充满整个重回肃静的能乐堂……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0220]
//◆地謡
《浮生若梦乃中宿也。
　梦若浮生之中宿者。》

//◆地謡
《宇治桥守经年历月，
　沧海桑田翻江跨浪。》

//◆地謡
《谨言相禀远方来客，
　吾乃赖政幽灵是也。》

//◆地謡
《报名不及既已去也……
　报名不及既已去也……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw一条_悩む.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0230]
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170230a02">
（是故意惹人不快吗？
　特地请来小姐，却让她听这样的唱词）


{	FwC("cg/fw/fw景明_困惑.png");}
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170240a00">
（……也许吧）

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240a]
　故意找茬。身为幕阁统帅，其行为
却让人不由得<RUBY text="····">心生厌恶</RUBY>。
　
　……间隔一段休息之后，表演继续。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0240b]
　
　这位老人是源赖政的灵魂。
　老人消失之后，当地人出现回答僧人的疑问，向他诉
说赖政的传说。

　
　僧人对赖政心生悲悯，便祭奠了他的灵魂。
　于是，那夜。僧人枕边响起——

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0250]
//◆頼政
《血成琢鹿之川。
　红波流淌盾牌，白刃斩碎骸骨。》

//◆頼政
《世间不过宇治川上竹箔之浪。
　呜呼阎浮何其挂怀。》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0260]
　此曲此角的专用能乐面具——其名正是赖政。
　戴上这刻有武人悔恨的能面，后半部分的主角登场。

　跟随配角，气概震慑舞台，体格魁梧威风的演员悠然
起舞。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetNwNoh("cg/fw/ny僧.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0270]
//◆僧
《不可思议……
　法体之躯却身披甲胄，令我诵经所为何故。》

//◆僧
《敢问可是听闻中的源三位
　之幽灵否。》

{	FwNoh("cg/fw/fw童心_頼政b.png");}
//◆頼政
《诚然将赤红植于庭园之中也无可隐藏。
　自报赖政之名前已被知晓实属耻辱。》

//◆頼政
《还请诵经……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw景明_通常b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0280]
//【景明】
<voice name="景明" class="景明" src="voice/mb02/0170250a00">
「相当有看头。」


{	FwC("cg/fw/fw一条_悩む.png");}
//【一条】
<voice name="一条" class="一条" src="voice/mb02/0170260a02">
「………………」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0290]
　我并非对能乐持有一番见解。
　即便如此也能看出演员出类拔萃的演技。

　舞蹈的一举手一投足都饱含风度。
　挥舞军扇的动作之中都充满武士的气魄。

　而更为出色的便是嗓音。
　好听一词远远无法形容其高明。

　因为富有情感。
　那位主角台词的字里行间包含着艺术的抑扬顿挫与鲜
活的情感。

　用世间最美的曲调吟唱着注定失败的武人悲情……

　罕见的和谐。
　这才是高手的技艺。

　据观察，是金刚座系的藏王流吧……

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0300]
//◆地謡
《关路过驹尚有隙。
　官家六度落马甚是苦恼。》

//◆地謡
《想是因为前夜未眠。
　于平等院稍事小坐，去往宇治桥
正中而立。》

//◆地謡
《下涌江涛浪，上立官家人，源氏白旗举，
唯待敌人聚。》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0310]
“赖政”后场是以赖政口述交战场景
为重点的曲目。
　悲剧表演中常规的主人公心理描写并不多。

　但是，却能感受到情感的传递。
　名为源三位赖政的男子，他为何非战不可——战斗时
又作何感想。

　其中的苦恼。
　其中的悲痛。

　在演员的一举手一投足间，有着整个人的全部精魂。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0320]
//◆頼政
《不久，源平之兵现于
　宇治川南北两岸。》

//◆頼政
《士兵呐喊声、箭矢呼啸声……
　响彻江面，隔梁而战。》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0330]
　……樱子小姐单手捂嘴。
　在她眼中，主角的身姿已经化为父亲了吗。

　像是诉说给女儿听一般，“赖政”吟出敌将作战之状。
　……其名田原忠纲。正是足利氏之流。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0340]
//◆頼政
《名唤田原之太郎忠纲，
　乃宇治川先锋是也。》

//◆頼政
《未及通名三百余骑……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0341]
//◆地謡
《并驾齐驱直入川中，不曾踌躇。
　群鸟振翅之声不过尔尔乎。》

//◆地謡
《马蹄白波……
　惊涛打浪……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0350]
　——可以看到。
　勇士的身姿——纵然身为拥有剑胄之翼的武者，仍选
择与兵士共踏江河，鼓舞同伴。

　能之舞台亦非舞台。
　实乃大千世界。

　有人能成就这样一个世界。
　当能乐师拥有至上力量时，舞台就是世界。

　此刻的舞台就是一片别样天地。
　七百六十年前的宇治川就在那里。

　——亦或，上月的会津猪苗代。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360a]
//◆頼政
《忠纲命令兵士道……》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0360b]
//◆地謡
《水天逆卷，礁岩错立。
　瘦马立于下游之处，令壮马抵御
水浪之袭。》

//◆地謡
《川中武者手执弓弦两端，
　合力并驱。》

//◆地謡
《奉唯一统帅之命……
　渡过滔滔大江竟无一骑
逝于流水。》

　最后的防线要害已被冲破。
　敌军冲入同伴之阵汹涌如怒涛。

　同胞接连被杀……
　其中更有己所依赖的亲人。

　如今老将孤身寡人。

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380a]
//◆頼政
《想至此处。》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0380b]
//◆地謡
《想至此处。》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0390]
　结缕之上，军扇铺展。
　褪去铠甲，拔刀出鞘。

　于是，吟诵——
　辞世绝唱。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――

	SetFwNoh("cg/fw/fw童心_頼政b.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0400]
//◆頼政
《朽木之花无开日
　命绝之时何其哀。》

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0410]
　——花开无望早已知晓。
　却依然屹立于天地之间，悲悯唯有走向末路的自己。

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//―――――――――――――――――――――――――――――

	SetFwC("cg/fw/fw桜子_悲哀.png");

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0420]
//【桜子】
<voice name="桜子" class="桜子" src="voice/mb02/0170270b28">
「……父亲大人……！」

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//―――――――――――――――――――――――――――――

//――――――――――――――――――――――――――――――――――――――
<PRE @box0>
[text0430]
“赖政”退去。
　旅僧梦醒。

　无限静谧中，舞台落幕……
　唯有丧父之女的低声呜咽，拂动着能乐堂的空气。

</PRE>
	SetTextEXC();
	TypeBeginCIO();//―――――――――――――――――――――――――――――


//◆一度フェード。間取り
	ClearWaitAll(2000, 2000);

}

..//ジャンプ指定
//次ファイル　"mb02_018.nss"