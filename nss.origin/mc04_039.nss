//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_039.nss_MAIN
{

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#���٥�ȥե�������=true;
	#ev204_΢Ц�����פ�����֦_h=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_040vs.nss";

}

scene mc04_039.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_038.nss"


//������
	PrintBG("�ϱ���", 30000);
/*
	CreateColorSPadd("�}ɫ100", 18000, "WHITE");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Move("�}����50", 0, @0, @2000, null, true);
	SetBlur("�}����50", true, 3, 800, 200, false);
	Request("�}����50", Smoothing);

	CreateTextureEX("�}��", 1590, center, middle, "cg/st/3d�����˜�_�T��_���La.png");
	Request("�}��", Smoothing);
	Zoom("�}��", 0, 50, 50, null, true);
	Move("�}��", 0, @0, @-100, null, true);
	SetBlur("�}��", true, 3, 200, 100, false);
	Fade("�}��", 0, 1000, null, true);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(100,"off",false);
	CP_EnemyFade(300,10,420,300);
*/

	CreateTextureEX("�}����02", 19000, Center, Middle, "cg/ev/ev204_΢Ц�����פ�����֦_g.jpg");
	Fade("�}����02", 500, 1000, null, true);
	CreateColorSP("����", 500, "#000000");
//	CP_AllDelete();
//	Delete("�}��");

	FadeDelete("�ϱ���", 500, true);
	SoundPlay("@mbgm14",0,1000,true);
	FadeDelete("�}ɫ100", 2000, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���ն������ƻ����Ǹ������δ����
��������������������û�е�����������û�ие�
ʹ�࣬��һ���о����������ޡ�

�����ò�ȥ�������С�

�������������㡣

�����㣿

��ֻҪ��ɸ��𡪡�
���ѵ����Ǹ�����ͻ������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev204g�����饬��ɥ���󡣱���
//���\
	CreateColorSP("�ե�å����", 15000, "WHITE");

	OnSE("se����_�z_�ҤӸ��01",1000);
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("�}����03", 6000, Center, Middle, "cg/ev/ev204_΢Ц�����פ�����֦_h.jpg");
	Delete("�}����02");
	Wait(50);
	Fade("�ե�å����",0,0,null,true);
	Delete("�ե�å����");
	Wait(2000);
	OnSE("se����_냇��_������",1000);
	DrawEffect("�}����03", 1500, "Split", 0, 1000, null);
	FadeDelete("�}����03", 1500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������������֦����������һ�Σ�������Ϊ���ҷ�
�ĵ�����
������һ����ʼ����û��ֹ����

��Ϊ��Ҫ����
��Ϊ�ηǵø���

���Լ�����븴����
�����������

��
���������������̫ǿ��
���������ǣ���İ�̫���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������ңԶ�����︴�ա�
����Ů�������������󣬸�������˵����һ�䡣

��������������������֮�ԡ�

����������֦һֱ��Ϊ������û������Լ���
�����ǣ�������������

����ĳ�����棬�ѵ����Ǳ�����֦�Լ���Ҫ���Ƚ�
����֦�ı�����
��
�����ᡣ���ᡣ�����������ᡣ

������������
��
��
������˵��

���Լ���
����������������⣬
��ֻ�ǣ�
�����Ը��ӵأ�

��<RUBY text="����">�ٶ�</RUBY>���ѡ�
��
�������ǿ���ģ���������κζ��� ��ֻ�����Ǻ�
����������洦����Ϊ����ʶ����˵�������ʵ����

������˹̩�ǡ�
��
������˹��˹Ϊ�����׸����ɱ����ĸ�ף��򼫶�
ʹ������������

������ɽ������
��
�����Գɾ͸���֮�ˣ����ڸ���֮���»��۵�������
������ղ��ѡ�

����ķ���ء�
��
�����ӵĸ��𲻽�ɱ�����Լ��ĳ�У�Ҳ����������
���֮�ˣ�ʲôҲû�����¡�

��������ȥ��һ����һ��ͨ�����ĵ����ߣ��ù�����˵��
����������ԡ�
�������Ǽ��������ȷ�ġ���<k>����������

���Ų���������
�������ǡ���<k>
�����������������������������������ġ�
�������������������������������ǡ���

�������ǡ�
�������ǡ�
�������ǡ�

��
�����������������������ǣ�ʲô��

���໥��ִ�Ŀ϶���񶨣�������ͬһ�����ʡ�
���˿̱����ʼ�ֵ�ĸ���������Ϊ�Ρ�

������֪�����壬������޴�̸��

��������ʲô��
��
��
��������������֪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��Ӧ��ɱ�ն�������<k>
��
������������������������������������ɱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(500, false);

	Wait(200);
//�����w

	StL(1000, @0, @0, "cg/st/st���w_ͨ��_�Ʒ�.png");
	FadeStL(500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��Ӧ��Ϊ�����۷�֮��������<k>
��
�����������������������������������뱨����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(500, false);

	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����ô��������ȷ�ġ���
����ô������<RUBY text="����������������">��������֦����ȷ</RUBY>��

��Ϊ�˵õ���һ�𰸡�
������������⸴��Ķ��塣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����B���u�ġ��{�Ӻ�
	CreateColorSP("�����Ǥ�", 15000, "#000000");
	CreateTextureSP("�}����05", 600, Center, Middle, "cg/bg/bg089_���Bۡ�F�ˤ��g_01.jpg");

	CreateTextureSP("�}�����}", 1000, Center, InBottom, "cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	Move("�}�����}", 0, @-256, @0, null, true);

	FadeDelete("�����Ǥ�", 1500, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������֦����һ�������Լ��ĸ���
����ɱ�����׵Ĵ���ʨ�Ӻ�ĸ���

������Ϯ������լ���ַ�ʨ�Ӻ�ľ��ϣ�Ҳ����Ϊ
�жϳ����Ĵ��ڶԴ���к���
���Ⲣ�ǻ��ԡ���ֻ�ǣ����Ҫ˵�Ⱥ�˳��Ļ���
��һ�ж���<RUBY text="����">����</RUBY>��

������֦������Ϊ���Լ���ԭ���ʨ�Ӻ𸴳�ġ�
����������������˽������֮�ˣ�����ֱ��Ӱ��һ
��������


������֦�Ӹ�������̳еĵ���ѧ�������Ͽɽ�Ϊ��
���������ҡ���ҵ���Ϊ��
��Ϊ������֦��ʼѰ��ɱ��ʨ�Ӻ��<RUBY text="��������">��������</RUBY>��
����ֵ���ƽ���֮�ʣ����������͵����ˡ�

���������󡪡�
����֪������������������õ�����ɡ�


��ֻҪ����ɱ��֮��Ӧ�þͻ�֪����������塣
������֦�������ţ�ʵ���˶�ʨ�Ӻ�ĸ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���{�Ӻ𚢺���

//inc�ñ��ԓ��������VS�ե������δ�ݳ��ʤΤǁ��Ǥ���
	OnSE("se���L_����_���̤���05",1000);

	CreateColorSP("�}ɫѪ", 19000, "#990000");

	CreateStencil("�}����",1000,center,InBottom,128,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png",false);
	SetAlias("�}����","�}����");

	CreateTextureSPover("�}����/�}��Ѫ", 1100, Center, Middle, "cg/anime/Center/bloodA_5.png");
	CreateColorSP("�}����/ɫ", 1050, "#990000");

	Fade("�}����/�}��Ѫ", 0, 750, null, true);
	Fade("�}����/ɫ", 0, 950, null, true);
	DrawTransition("�}����/ɫ", 0, 0, 200, 1000, null, "cg/data/slide_02_01_0.png", true);
	Move("�}����", 0, @-256, @0, null, true);

	Wait(100);
	FadeDelete("�}ɫѪ", 300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ǡ���������������
��
����֪���ˡ�

���õ�����Ҫ�Ķ�����
����ȫ�ء���ȷ�أ�����ˡ�

��������ʲô��
��
��
����������֪���ˣ����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������֦�Ȫ{�Ӻ���^ȥ�ã�
//���ۥ磻�ȥ�����

//�����ߣ�EV��Ҋ�Ĥ���ʤ��ä��Τǻر�
//	CreateTextureEX("�}����01", 5000, 0, Middle, "cg/ev/???.jpg");
//	Fade("�}����01",1000,1000,null,true);

	WaitKey(1500);

	CreateColorEXadd("����", 25000, "WHITE");
	Fade("����",2500,1000,null,true);

//	ClearFadeAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc04_040vs.nss"