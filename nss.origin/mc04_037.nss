//<continuation number="0">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
//	$GameDebugSelect = 1;

		Reset();
	}

}

scene mc04_037.nss_MAIN
{

//���å��ԥå��ãӣ��
	//CP_AllSet("�Х���");

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
	#ev204_΢Ц�����פ�����֦_f=true;
	#ev204_΢Ц�����פ�����֦_g=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	Cockpit_AllFade0();

	$GameName = "mc04_038.nss";

}

scene mc04_037.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"mc04_036.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//������
	PrintBG("�ϱ���", 30000);

	CreateSE("SE�ȥ�ǥޥ�L01a","se���L_����_������01_L");
	CreateSE("SE�ȥ�ǥޥ�L01b","se���L_����_������02_L");
	MusicStart("SE�ȥ�ǥޥ�L01a",2000,750,0,1000,null,true);
	MusicStart("SE�ȥ�ǥޥ�L01b",2000,750,0,1500,null,true);

	CreateColorSPadd("�}ɫ100", 18000, "WHITE");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg202_�����ݳ�����ɽ_01.jpg");
	Move("�}����50", 0, @0, @2000, null, true);

	SetBlur("�}����50", true, 3, 800, 200, false);
	Request("�}����50", Smoothing);

	CreateTextureSP("�}��", 1590, center, middle, "cg/st/3d�����˜�_�Tͻ_���L.png");
	Zoom("�}��", 0, 7, 7, null, true);
	SetBlur("�}��", true, 3, 200, 100, false);

	Cockpit_AllFade2();

	CP_HighChangeA();
	CP_AltChangeA();
	FrameShake();

	MyLife_Count(1,470);
	MyTr_Count(0,325);
	CP_HighChange(0,1012,null,false);
	CP_SpeedChange(0,315,null,false);
	CP_AziChange(0,31,AxlDxl,false);

	CockPit_LockSet(@0,@0);
	CP_LockOnFade(0,"off",false);
	CP_EnemyFade(0,10,420,300);

	Delete("�ϱ���");
	FadeDelete("�}ɫ100", 2000, true);

	CreateSE("SE01","se����_�Υ���01");
	CreateTextureEXsub("�}����30��", 19010, -1000, -125, "cg/ev/resize/ev133_����������_cl.jpg");
	CreateTextureEX("�}����30", 19000, -1000, -125, "cg/ev/resize/ev133_����������_cl.jpg");
	SetTone("�}����30", Monochrome);
	SetVertex("�}����30��", 1637, 296);
	Zoom("�}����30��", 0, 1150, 1150, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���Ǹ�ʱ������ס�
���Լ����ˡ�

�������Ƕ����Ŀ����Ϳ־岢�档
����������һ��<RUBY text="��������������">���ڿ��Ƿ�Χ��</RUBY>��

���ն������������Լ�����Ȩ��

���������Լ�������Ȩ��
�������������Լ������Ե�Ȩ����

����ˣ�Ҳ���ٹ��Ƕ����Ŀ־塣
���Կ��������ı�����֮����ȴ��ӷ��ȣ���ӭ���̡�

��Ҳ����˵��
���������Լ�������˵ز���

//�����Ȥ���˨D�D���ȡ��Լ��Ρ����g�Ƕ���ã�һ˲
������֪�������������ԭ��
������Ϊ�������µ����ز�ʹ�������������������
���߲�����ˣ����ڸ����ĵط�����<?>
{	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeFR3("�}����30��",0,500,400,@0,@0,30,null, false);
	Fade("�}����30",0,1000,null,true);
	WaitKey(100);
	Fade("�}����30*",100,0,null,false);}
������
���Լ�һ�еĶ�����

���������������Ҳ��������Լ��ļ�ֵ��
��������֦�ӳ�����һ��ʱ����Ҳ����޵ֿ�����
֮���µس��ܰɡ�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��inc�ñ���ץ�֤����ޤ���

	SetVolume("SE�ȥ�ǥޥ�*", 1000, 0, null);
	CreateColorEX("�����ʤ�", 30000, "#000000");
	Fade("�����ʤ�",1500,1000,null,true);

	SoundPlay("@mbgm18",0,1000,true);

	//CP_AllDelete();
	Cockpit_AllFade0();

	PrintBG("�ϱ���", 30000);
	CreateColorSP("���餯�ʤ�", 10000, "#000000");
	CreateColorSP("�}ɫ�\��", 10, "#000000");
	Delete("�ϱ���");
	Delete("�����ʤ�");

//��inc�ñ���ץ�֤����ޤ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
��
���������������������޷���⡣

�������ղ������������뷨��

����������֦֪�����Լ�����Ϊ�Ʋ���ʲô���С�
�����ĸ������������ɵġ�����ͬʱ����Ҫɱ������
���ͬ��Ҳ��һ�������ɡ�

����Ȼ���Ƿ��������Ը�������У�������������
���ͳ嶯�������е���ȴֻ��������
�����ǻ���Ҳ����Ϊ���ǵ�����ͱ�Ȼ��ȥ��������

����������ִ֦�и����ʱ�򣬴Ӳ��������˯ʱϮ
�������ڱ���ͻ�������
���������˵ֿ�����������Ϊ�Լ��������ս���ڴ�
�����ϴ����潫����顣

���������ף���ռ����໥�����ķ�ͥ��
��ֻ�����������������ȷ�ġ�

���ն�����Ҳ���������ɡ�
�������Լ�������Ϊ�ķ�Χ���Ѿ��߾�ȫ������һ��
����ȷʵ���ڵġ�

����Ȼֻ�Ǻ̵ܶ�ʱ�䣬������֦���Կ�����������
����
����ȷʵ�Ѿ�Ŭ�����߾����Լ���ȫ����

����ݿභ��
��
��������˭��Ҳû�кô���

��������������Լ��ĵ���
���������ֻ֦�����෴�ĵ�������Ļ���

��
������Ҳû�г������Ѿ��������ˡ�

���ն������ĿභҲ�������κ�����⣬
��������Ϊ�޼�ֵ�Ķ�����������

��
�������������������޷���⡣

���������ŭ��������顣

��
�����������������������ɱ������

�������ǽ��ǡ�

��
��������������������ɱ����

�����аûڡ�

��
����������������������ɱ��

����������

��
����������������ô��
��������������������ɱ���ͺ�����

���������ҷ񶨡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev204
//����ev204e���ѥ��`�󡣤ʤ󤫸��Ɖ������д
	CreateTextureSP("�}����01", 6000, Center, Middle, "cg/ev/ev204_΢Ц�����פ�����֦_e.jpg");
	Fade("���餯�ʤ�",1000,0,null,true);

	WaitKey(1000);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	OnSE("se����_�z_���٥�_�ҤӸ��",1000);
	Fade("�ե�å����",0,1000,null,true);

	CreateTextureSP("�}����02", 6000, Center, Middle, "cg/ev/ev204_΢Ц�����פ�����֦_f.jpg");
	Wait(50);
	Fade("�ե�å����",0,0,null,true);

	WaitKey(1500);

//	OnSE("se����_냇��_������",1000);
//	Zoom("�}����03", 500, 2000, 2000, null, false);
//	DrawEffect("�}����03", 500, "Split", 0, 500, null);
//	FadeDelete("�}����03", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��ΪʲôҪɱ��

�����ǲ���ɱΪ�λ�Ҫɱ��

��Ϊ�˸���

�����ж��ļ�ֵ��

�����𲢷�Ψһ�����壬
��������������Ϊ���ڶ������֮һ��
�����ܾ���ǰ��֪����㡣

��ΪʲôҪִ���ڴˣ�

��Ϊʲôִ�ŵ����

��������Ϊ�Ǻ���졣
��������Ϊ<RUBY text="��������">��������</RUBY>��

����������֦���ڣ�
�����ǲ�����<RUBY text="����������">����������</RUBY>���뷨��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ev204f�����饬�顣�����
//	CreateTextureSP("�}����02", 6000, Center, Middle, "cg/ev/ev204_΢Ц�����פ�����֦_g.jpg");
//	OnSE("se����_냇��_������",1000);
//	DrawEffect("�}����03", 1500, "Split", 0, 1000, null);
//	FadeDelete("�}����03", 1500, true);

	OnSE("se����_�z_�ҤӸ��01",1000);
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("�}����03", 6000, Center, Middle, "cg/ev/ev204_΢Ц�����פ�����֦_g.jpg");
	Delete("�}����01");
	Delete("�}����02");
	Wait(50);
	Fade("�ե�å����",0,0,null,true);
	WaitKey(1500);

	CreateTextureEX("�}�����}��", 6100, Center, InBottom, "cg/st/st����_ͨ��_˽��.png");
	Move("�}�����}��", 0, @-256, @0, null, true);

	CreateTextureEX("�}�����}��", 6100, Center, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");
	Move("�}�����}��", 0, @256, @0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ԡ����ԡ�
������������

{	Fade("�}�����}��", 300, 700, null, false);}
���Դն������ĸ����һֱ�����Ĳ�ͬ��
���Ǵ�������֦�Լ��ĸ���

{	Fade("�}�����}��", 300, 700, null, false);}
�������۷ɡ���
����Ҫ�����ĺ��ӡ��������Ҹ��ĺ��ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�ե�å����2", 15000, "WHITE");
	Fade("�ե�å����2",600,1000,null,true);


}

..//������ָ��
//�Υե����롡"mc04_038.nss"