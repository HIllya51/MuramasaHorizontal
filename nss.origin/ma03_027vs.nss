//<continuation number="820">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_027vs.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma03_027vs.nss","ma03_027vs_runs",true);
	Conquest("nss/ma03_027vs.nss","ma03_027vs_runsProcess",true);
	Conquest("nss/ma03_027vs.nss","ma03_027vs_runsDelete",true);
	Conquest("nss/ma03_027vs.nss","ma03_SB2",true);
	Conquest("nss/ma03_027vs.nss","ma03_SB",true);
	Conquest("nss/ma03_027vs.nss","ma_03_SBProcess",true);
	Conquest("nss/ma03_027vs.nss","ma_03_SBProcess2",true);
	Conquest("nss/ma03_027vs.nss","ma_03_SBDelete",true);
	Conquest("nss/ma03_027vs.nss","fakeCP",true);

	CP_AllSet("���٥�");
//	CP_AllSet("����");

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
	#bg038_���`���å�ֱ��b_01 = true;

	#ev504_����ͻ�M=true;
	#ev904_�����ޥ��ͥåȥ��`�ƥ���_a=true;
	#ev904_�����ޥ��ͥåȥ��`�ƥ���_b=true;

	#ev908_����늴ŔS��_a=true;
	#ev908_����늴ŔS��_b=true;
	#ev908_����늴ŔS��_c=true;

	#ev902_����늴Œi����`�륬��_d=true;

	#ev118_���`���åȤ�Ҋ�¤���ȶ�������=true;

	#ev925_Ұ̫����Ƭ_d=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "ma03_028.nss";

}

scene ma03_027vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_026.nss"

	PrintBG("�ϱ���", 30000);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg001_��a_03.jpg");

	Delete("�ϱ���");


	SoundPlay("@mbgm25",0,1000,true);


//������������
//����˥��`չ�_��ǰ���Υ��٥󥸤��å�����
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0010a01">
�����ﲶ׽����

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0020a00">
�����������������ɹ�ȥ�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥󥸡����`���å�ͻ��
//���۩`�ॹ�ȥ�`�Ȥ�
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/7.png", true);

	Delete("�}����100");

	CreateTextureSP("�}����100", 100, 0, Middle, "cg/bg/resize/bg001_��a_03.jpg");
	CreateTextureSP("�}st100", 100, -1024, Middle, "cg/st/3d���٥�_�T��_ͨ��.png");
	Rotate("�}st100", 0, @0, @180, @0, null,true);

	Move("�}����100", 1000, @-1024, @0, null, false);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_0", true);

	OnSE("se���L_����_��ͻ�M08",1000);

	Move("�}st100", 500, @+2548, @0, Dxl1, true);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}����100");
	Delete("�}st100");

	Cockpit_AllFade2();

//�룺��ǲ�֤ˉ��
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
//	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
//	Zoom("�}����100", 0, 2000, 2000, Dxl1, true);
//	SetBlur("�}����100", true, 3, 500, 50, true);

//	Shake("�}����100", 5000, 1, 10, 0, 0, 500, null, false);
//	Zoom("�}����100", 300, 1000, 1000, Dxl1, false);
..//�ٶȣ�167��������275
	CP_SpeedChange(0,167,null,false);
	CP_HighChange(0,10,null,false);
	MyLife_Count(0,150);
	MyTr_Count(0,275);


	ma03_027vs_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_03a.jpg");

	$ma03_027vs_runs01 = 175;
	$ma03_027vs_runs02 = 350;

	FrameShake();

	CreateSE("SE01","se���L_����_������02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);


	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����·�����·׿����������Ů��
��������������������á�

��׿�������Ů�������˲١�

�����ٸ�һ������������ȥ���εȲ������Ρ�


������һ���ϣ�ɥ����������Ӹ��ǲ���󳾡�
���ָ̻��˾��գ����º��ӣ��ļ����š�

��Ҳ�����˵��Է����Ƿ򳪸��棬������Ͷ��

������׿��������Ϊ����
����ʱ����׿���ԣ�����������һ�����¡�

��ս��������Ļ����
��δ��һƬ�ڰ���

����ͥ���������������ĵ��սᡭ��
�����ֳ������������У�������׹�ء�

�����Բٲ�����֤���ֳ��ĻԻ�ʱ�̡�
���Բٶ��ԣ��ֳ��Ǵӹȵ׿�ʼ�������𲽡�

�������ֳ���ʧ�⡣
����·�ٵ�ԭ�㡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ȥ�`�Ȥ��l���i����

	OnSE("se���L_����_��ͻ�M02",800);

	SetFrequency("SE01", 500, 1500, Axl1);

..//�ٶȣ�276��������321
	CP_SpeedChange(1500,276,AxlAuto,false);
	MyTr_Count(1500,321);

	$ma03_027vs_runs01 = 125;
	$ma03_027vs_runs02 = 250;

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	SetVertex("�}����50", 515, 390);
	SetBlur("�}����50", true, 3, 500, 50, false);
	Zoom("�}����50", 1000, 4000, 4000, Dxl1, false);

	Wait(1500);

	SetVolume("SE01", 1000, 0, null);

	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);
	ma03_027vs_runsDelete();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������ܥå���
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Cockpit_AllFade0();
	Delete("�}����*");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	CreateTextureSP("�}����200", 1000, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);

	Zoom("�}����100", 0, 3000, 3000, Dxl1, true);

	Shake("�}����200", 1000, 0, 1, 0, 0, 500, null, false);
	Move("�}����200", 500, @+1500, @0, Dxl1, false);
	Zoom("�}����200", 500, 3000, 3000, Dxl1, false);
	OnSE("se���L_����_��ͻ�M01",1000);
	Zoom("�}����100", 200, 1000, 1000, Dxl1, false);

	CreateSE("SE01","se���L_����_������01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);
	Shake("�}����100", 100000, 1, 2, 0, 0, 1000, null, false);
	FadeDelete("�}����200", 500, false);

	FadeDelete("�\", 300, true);

//��������˥��`

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�������յ�ֱ������ɫ����Խ���������ߡ�

���ÿ졣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0030a01">
��Ҫ��˦�ں����ˡ�������

{	FwR("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0040a00">
����װ���У�
����Դ��������������

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0050a01">
���˽⣡
{	OnSE("se����_��x_�k��04",1000);}
��������װ������������

{	FwR("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0060a00">
���������٣���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	OnSE("se����_��x_��������01",1000);

//�����٥�
//�����`�ʩ`�ؤ�

	SetVolume("SE01", 500, 0, null);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("@�}����*");
//	ma03_027vs_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");

//	FrameShake();
//	Cockpit_AllFade2();

	ma03_SB2(2000,2,700,-400);
	ma03_SB(2001,200);

	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",500,1000,0,1000,null,true);

	CreateTextureSP("�}st100", 2200, 1024, Middle, "cg/st/3d���٥�_�T��_ͨ��.png");

	Move("�}st100", 300, @-1324, @0, Dxl1, false);
	BGMoveAuto("@�}st100",3);

	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_1", true);




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��׿���ĳ�Ϊ�ٵĸ��ף����������˳ƺ��Լ���
�����ˣ����Ѳ²�����ʵ��һ����׾���ˡ�
��ʵ���ϣ����ڳ�����֮��ĵط����ܱ�׾��

��������ֻ���޶˶�ͻȻ�����ϸ������˵����Σ�
���Ľ�����ʽҲ��������Ϊ�����Ƶ���

���������ȫ�޽������ӵĲ��ܡ�

��ͯ��ʱ�����ٱ��������
������������ͬ�亢���ǳ��ܵø��ࡣ
������˵������־�������������ֳ���

��Ȼ������ȴ������С�
�������ֳ��������Ǹ��ٴ������洦�����ѣ�
���Ļ���������ȴ��Զ�ǳ��ڹذ���

����ˣ�����㹻��
����·��һ���������Ҹ����С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	BGMoveDelete();

	OnSE("se����_�z_���٥�_����01",1000);

	SetBlur("�}st100", true, 3, 400, 50, false);
	BezierMove("@�}st100", 800, (@0,@0){@+500,@+100}{@+500,@+100}(@+500,@+150){@-1000,@-100}{@-1000,@-100}(@-3000,@-300), Axl2, true);

	SetVolume("SE01", 300, 0, null);


	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);
	ma03_027vs_runsDelete();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������ܥå���
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Cockpit_AllFade0();

	Delete("�}����*");
	Delete("�}st100");

	CreateTextureSP("�}st100", 2200, 1024, Middle, "cg/st/3d�����˜�_�T��_��x.png");

	OnSE("se���L_����_��ͻ�M08",1000);
	Move("�}st100", 300, @-1324, @0, Dxl1, false);
	BGMoveAuto("@�}st100",4);
	FadeDelete("�\", 10, true);


//��������˥�
	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0070a00">
���ٿ�һЩ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0080a01">
��������!?��

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0090a00">
���������Ǳ�����������������ϣ�
�����඼�����£���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0100a01">
���˽⣡
�������ۼ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0110a01">
����Ƹ������

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0120a00">
���������٣���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	OnSE("se����_��x_��������01",1000);

	BGMoveDelete();
	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	CreateTextureSPsub("�}st200", 2200, -300, Middle, "cg/st/3d�����˜�_�T��_��x.png");

	SetBlur("�}st200", true, 4, 500, 50, false);
	Move("�}st200", 600, @-1500, @0, Dxl1, false);
	Move("@�}st100", 500, @-1500, @0, Dxl1, false);

	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	ma_03_SBDelete();
	Delete("�}st100");
	Delete("�}st200");
	Delete("@�}����*");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	ma03_027vs_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

..//�ٶȣ�276��������321
	CP_SpeedChange(0,276,null,false);
	CP_HighChange(0,10,null,false);
	MyTr_Count(0,321);

	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_02_1", true);

//�����٥�
//�����֣�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ʹ��Ϊ��װ�����֡�
����ʹ������������ᡣ

���ٵ��ֳ�����������ս������֮�⣬����һ��
��֪��
����û������֪ʶ�ɹ����ڡ����Ա����ս����

����������չ¶�Ż������͸����������������
��׿֪�����ܹ������Լ�ս����

����˵�Ὣһ�д��ڸ��٣���ʵ��Ҳ��ô���ˡ�

��ѵ�����Ǽ�����
��ϵͳ��ѧϰҲ�ǳ��Ͽ���
��
�����������ĵ�Ī�����ʽ�ĳ���ֶΡ�

���ȱ���ˣ����Ծ������˵ġ�
����Ϊ�ֳ��İ�˿�������ı䡣

���ֳ���Ҫ�١�
�����ǲ��ɻ�ȱ�Ĵ��ڡ�
��Ϊ��ʵ���Լ�����Ը��

���������ǡ�
�����������ѡ����ǰ���
��Ȼ����ֻҪ����Ҫ�Լ���
��ֻҪ���޿�������ز���ȱ�Ĵ��ڡ���

���Ǳ��ǽ����ڰ�����С�
��������ʹ�Ⲣ���ǰ���

��������Ϊ��·�ٵ���Ů��˵Ҳ���㹻��
�����������Ҹ���������ȥ��

��Ϊ�ֳ�Ч���������ϲ�á�
�������ס�

���Լ�����Ϊ�˶�����
������֪������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 500, 0, null);


	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	ma03_027vs_runsDelete();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������ܥå���
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Cockpit_AllFade0();

	Delete("�}����*");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_a.jpg");

	CreateTextureSPmul("�}����200", 200, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_a.jpg");
	Fade("�}����200", 0, 700, null, true);

	CreateTextureSPadd("�}����300", 150, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_a.jpg");
	Fade("�}����300", 0, 700, null, true);

	CreateSE("SE01","se����_��x_��������03_L");
	MusicStart("SE01",300,1000,0,1000,null,true);

	Shake("�}����200", 500000, 1, 1, 0, 0, 1000, null, false);
	SetBlur("�}����200", true, 3, 500, 100, false);
	Fade("�}����300", 1000, 0, Dxl1, false);
	Fade("�}����200", 1000, 0, Dxl1, false);
	Zoom("�}����200", 1000, 1200, 1200, Dxl1, false);

	FadeDelete("�\", 300, true);

//������
//�����٥󥸤��Ȥ롣��å�����
	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0130a00">
�������ܺá���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0140a01">
��׷���ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetVolume("SE01", 500, 0, null);

//�����٥�
//���Хå����ȥ�`��
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("@�}����*");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");

	ma03_027vs_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

..//�ٶȣ�276��������321
	CP_SpeedChange(0,276,null,false);
	CP_HighChange(0,10,null,false);
	MyTr_Count(0,321);

	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_02_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����·�ٵ��ֱ����ֳ����ֱۡ�
����·�ٵ�˫�����ֳ���˫�㡣
�����������ֳ����졢��������Ϊ��Ч����

����������������ֻΪ
��ʵ���ֳ�����Ը��

���ֳ���Ը������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����٥󥸡����å��塣����

	CreateColorEXadd("�}ɫ100", 10000, "BLUE");
	CreateColorEXadd("�}ɫ200", 10000, "White");
	OnSE("se����_�z_���٥󥸼���01",1000);

..//�ٶȣ�381��������392
	CP_SpeedChange(1000,381,null,false);
	MyTr_Count(1000,392);

	Fade("�}ɫ100", 100, 800, null, true);

	Fade("�}ɫ100", 100, 800, null, true);
	Fade("�}ɫ100", 100, 0, null, true);
	Fade("�}ɫ100", 100, 800, null, true);
	Fade("�}ɫ100", 100, 0, null, true);
	Fade("�}ɫ100", 100, 800, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ200", 200, 500, null, false);
	Fade("�}ɫ100", 500, 800, null, true);
	$ma03_027vs_runs01 = 100;
	$ma03_027vs_runs02 = 200;

	Fade("�}ɫ200", 1000, 0, null, false);
	Fade("�}ɫ100", 500, 0, null, true);

	SetVolume("SE01", 500, 0, null);

	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	ma03_027vs_runsDelete();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������ܥå���
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Cockpit_AllFade0();

	Delete("�}����*");
	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_a.jpg");

	FadeDelete("�\", 10, true);
//������
//�����x���s�ޤ�ʤ��ʤ�
	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0150a00">
������ʲ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0160a01">
����ô�ᡪ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���٤������x�����
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0170a01">
����Ȼ�ܲ������������ҡ���
����ΪѸ��?!��

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0180a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\", 25000, "Black");
	OnSE("se�M��_����_�ե�å���Хå�01",1000);
	Fade("�\",10,1000,null,true);

	Cockpit_AllFade0();

	SetVolume("@mbgm25", 2000, 0, null);

	OnBG(100,"bg037_����������`��b_01.jpg");
	FadeBG(0,true);

	CreateColor("�}����", 1000, 0, 0, 1024, 576, #847000);
	SetAlias("�}����","�}����");
	CreateColor("�}����2", 1000, 0, 0, 1024, 576, "White");
	SetAlias("�}����2","�}����2");
	Fade("�}����", 0, 400, null, true);
	Fade("�}����2", 0, 200, null, true);
	Request("�}����", MulRender);
	Request("�}����2", AddRender);


	Fade("�\",500,0,null,true);

//�����٥�
//���إ��ԥ�
	SetFwC("cg/fw/fw��·_ͨ��b.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//����·��
<voice name="��·" class="��·" src="voice/ma03/027vs0190b24">
��һ�ֶ�ʮ����һ����
��������֪���𣿡��١���

//����·��
<voice name="��·" class="��·" src="voice/ma03/027vs0200b24">
����Ҫ���Ǹ���������ս��
������δ����Ը�������綥��Ĺ�ȥ���𣡡�


//����·��
<voice name="��·" class="��·" src="voice/ma03/027vs0210b24">
�����ԡ���
����Խ���ҿ��ɡ���

{	FwC("cg/fw/fw��·_ͨ��a.png","Sepia");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/027vs0220b24">
����Խ����ļ��ޡ�
������ʵ���ҵ�<RUBY text="��������">����</RUBY>���١���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�\",500,1000,null,true);

	Delete("�}����");
	Delete("�}����2");
	Delete("OnBG*");
	Delete("�}ɫ*");
	Delete("�}����*");



	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	ma03_027vs_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_03a.jpg");

	Cockpit_AllFade2();

..//�ٶȣ�381��������392
	MyTr_Count(0,392);
	CP_SpeedChange(0,381,null,false);
	CP_HighChange(0,10,null,false);

	FrameShake();

	CreateSE("SE01","se���L_����_������02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	FadeDelete("�\",100,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������һ�ֶ�ʮ����һ����
����Խ���ϣ��ֳ���Ը����

��һ�ֶ�ʮ����һ����
����·�ٱ���սʤ�ĵ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	ma03_027vs_runsDelete();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������ܥå���
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Cockpit_AllFade0();
	Delete("�}����*");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/ev/ev504_����ͻ�M.jpg");

	FadeDelete("�\", 10, true);

	SoundPlay("@mbgm25",0,1000,true);

//������
	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0230a00">
��������
�����ڿ�ʼ�������һ��!!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0240a01">
��Ҫ����������

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0250a00">
���ӱ��󣡡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0260a01">
�������˽⣡��

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0270a00">
��<RUBY text="��������">������װ</RUBY>
����<RUBY text="�������">����</RUBY>!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}����10", 1000, Center, Middle, "cg/ev/ev908_����늴ŔS��_a.jpg");
	CreateTextureEX("�}����100", 1200, Center, Middle, "cg/ev/ev908_����늴ŔS��_a.jpg");
	CreateTextureEX("�}����120", 2000, Center, Middle, "cg/ev/ev908_����늴ŔS��_a.jpg");
	SetBlur("�}����120", true, 3, 500, 100, false);

	SetVolume("@mbgm*", 1000, 0, null);
	CreateSE("SE02","se���L_����_������02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("�}����100", 300, 1000, null, false);
	Zoom("�}����120", 300, 2000, 2000, null, false);
	Fade("�}����120", 300, 500, null, true);
	FadeDelete("�}����120", 300, true);

	Wait(1000);


	CreateColorEX("�\", 20000, "Black");
	Fade("�\",500,1000,null,true);

	Delete("OnBG*");
	Delete("�}ɫ*");
	Delete("�}����*");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	ma03_027vs_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_03a.jpg");

	Cockpit_AllFade2();

	MyTr_Count(0,513);
	CP_SpeedChange(0,463,null,false);
	CP_HighChange(0,10,null,false);

	FrameShake();

	CreateSE("SE01","se���L_����_������02_L");
	MusicStart("SE01",500,500,0,1000,null,true);

	SoundPlay("@mbgm11",0,1000,true);
	FadeDelete("�\",300,true);


//�����٥�
	SetFwC("cg/fw/fw��_����Ŀ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���١�
<voice name="��" class="��" src="voice/ma03/027vs0280b42">
������ҳ��
�����Ҿ��鰿�������

//���١�
<voice name="��" class="��" src="voice/ma03/027vs0290b42">
������ҳ��
��Ϊʵ��<RUBY text="����">��</RUBY>��Ը������

//���١�
<voice name="��" class="��" src="voice/ma03/027vs0300b42">
������ҳ��
����������������Գ����˫����

//���١�
<voice name="��" class="��" src="voice/ma03/027vs0310b42">
������Ϯ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ100", 10000, "BLUE");
	CreateColorEXadd("�}ɫ200", 10000, "White");
	OnSE("se����_�z_���٥󥸼���01",1000);


	MyTr_Count(1300,540);
	CP_SpeedChange(1300,586,Axl1,false);
	Fade("�}ɫ100", 100, 1000, null, true);

	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("�}ɫ100", 100, 0, null, true);
	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("�}ɫ100", 100, 0, null, true);
	Fade("�}ɫ100", 100, 1000, null, true);
	Fade("�}ɫ100", 300, 0, null, true);
	Fade("�}ɫ200", 200, 500, null, false);
	Fade("�}ɫ100", 500, 1000, null, true);
	$ma03_027vs_runs01 = 75;
	$ma03_027vs_runs02 = 150;
	Fade("�}ɫ200", 1000, 0, null, false);
	Fade("�}ɫ100", 500, 0, null, true);

	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	ma03_027vs_runsDelete();

	Cockpit_AllFade0();
	Delete("�}����*");
	Delete("�}ɫ*");

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/ev/ev908_����늴ŔS��_a.jpg");

	FadeDelete("�\", 10, true);

	CreateTextureEX("�}����200", 1000, -722, -13, "cg/ev/resize/ev908_����늴ŔS��_al.jpg");
	CreateTextureEX("�}����300", 1500, -722, -13, "cg/ev/resize/ev908_����늴ŔS��_bl.jpg");

	Move("�}����200", 0, @+300, @0, null, true);
	Move("�}����200", 300, @-300, @0, Dxl1, false);
	Fade("�}����200", 200, 1000, null, true);

	Wait(500);

	CreateSE("SE03","se����_�z_װ��05");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,500,null,true);
	Fade("�}����300", 200, 1000, null, true);
	Fade("�}����200", 0, 0, null, false);
	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");

	CreateTextureSP("�}����200", 1100, Center, Middle, "cg/ev/ev908_����늴ŔS��_b.jpg");
	FadeDelete("�}����300", 300, true);

	CreateTextureEX("�}����500", 1200, Center, Middle, "cg/ev/ev908_����늴ŔS��_c.jpg");
	CreateTextureEX("�}����400", 1200, Center, Middle, "cg/ev/ev908_����늴ŔS��_c.jpg");
	CreateTextureEX("�}����600", 1200, Center, Middle, "cg/ev/ev908_����늴ŔS��_c.jpg");
	SetBlur("�}����600", true, 3, 500, 100, false);
	SetVertex("�}����600", 680, 130);

	CreateSE("SE02","se����_늓�_���01");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}����500", 300, 1000, null, false);
	Shake("�}����400", 100000, 1, 1, 0, 0, 1000, null, false);
	Zoom("�}����600", 300, 1200, 1200, Dxl1, false);
	Fade("�}����600", 300, 500, null, false);
	Fade("�}����400", 500, 1000, null, true);
	Fade("�}����600", 300, 0, null, true);

//������
//���|���늤򎡤Ӥ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��������Ұ������ս�񷨡�
���ɻȡ�֮���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0320a00">
��<RUBY text="���������">�������</RUBY>�����������䡱����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE02", 500, 0, null);
	OnSE("se����_��x_��`�륬���",1000);

	CreateTextureEX("�}ef100", 3000, Center, Middle, "cg/ef/ef038_�������.jpg");
	SetBlur("�}ef100", true, 3, 500, 200, false);
	Zoom("�}ef100", 0, 2000, 2000, null, true);
	Zoom("�}ef100", 300, 2000, 1000, Dxl1, false);
	Fade("�}ef100", 300, 1000, null, true);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Delete("�}����*");
	Delete("�}ef100");

	ma03_SB2(2000,2,700,-400);
	ma03_SB(2001,200);

	CreateTextureSP("�}st100", 2200, 1024, Middle, "cg/st/3d���٥�_�T��_ͨ��_b.png");
	Request("�}st100", Smoothing);

	CreateTextureEX("�}st500", 3000, -300, Middle, "cg/st/3d���٥�_�T��_ͨ��.png");
	SetBlur("�}st500", true, 3, 300, 50, false);
	SetBlur("�}st100", true, 3, 300, 50, false);

	Move("�}st100", 200, @-1324, @0, Dxl1, false);

	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",500,1000,0,1000,null,true);


	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	CreateColorEXadd("�}ɫ100", 15000, #FFFFFF);

	SetBlur("�}st100", true, 3, 300, 50, false);

	OnSE("se����_�z_���٥�_����01",1000);
	Fade("�}st500", 100, 1000, Dxl1, false);
	Fade("�}st100", 100, 0, Axl2, false);
	BezierMove("@�}st500", 800, (@0,@0){@0,@-100}{@0,@-100}(@0,@-150){@0,@0}{@0,@0}(@0,@+50), Dxl1, false);
	BezierMove("@�}st100", 800, (@0,@0){@0,@-100}{@0,@-100}(@0,@-150){@0,@0}{@0,@0}(@0,@+50), Dxl1, false);
	Zoom("�}st100", 300, 500, 500, Dxl1, false);
	Zoom("�}st500", 300, 500, 500, Dxl1, false);
	Fade("�}ɫ100", 0, 1000, null, false);
	OnSE("se����_��x_������01",1000);
	DrawTransition("�}ɫ100", 200, 0, 400, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("�}ɫ100", 300, 400, 0, 50, Axl2, "cg/data/slide_05_00_1.png", false);
	Fade("�}st100", 100, 1000, Dxl1, false);
	Fade("�}st500", 100, 0, Axl2, false);

	Wait(300);

	OnSE("se����_�z_��`��_����02",1000);
	Zoom("�}st500", 300, 1000, 1000, Dxl1, false);
	Fade("�}st500", 10, 1000, Dxl1, false);
	Fade("�}st100", 10, 0, Axl2, false);
	BezierMove("@�}st500", 800, (@0,@0){@+500,@+100}{@+500,@+100}(@+500,@+150){@-1000,@-100}{@-1000,@-100}(@-3000,@-300), Axl2, true);

	Wait(100);

	SetVolume("SE*", 500, 0, null);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}ɫ100");
	Delete("�}st*");
	ma_03_SBDelete();

	CreateTextureSP("�}����50", 100, 0, 0, "cg/ev/resize/ev908_����늴ŔS��_bl.jpg");

	Move("�}����50", 300, @-512, @0, Dxl1, false);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);


//���|���i���Ť�Ͷ���Ťġ�
//����`���`�ө`��äݤ���
//�����٥󥸤��򤫤äƤФӤ�`�󡣹��١�
//�������ܤ��륢�٥󥸡����C�ӡ�
	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0330a00">
�������ܿ���?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0340a01">
������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��Ѹ������ĵ�Űε�����

����Ȼ��
�����������ܿ���?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥�
//���������ң�

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Delete("�}st100");
	Delete("@�}����*");

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");

	ma03_027vs_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_02_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
���ֳ�Ҫ�Ҷ���һ��վ���������塣
�����ԡ��������ֳ�Ҳ���Լ�����·�ٹ���һ�ˡ�

���������С�
��������Ӱ���ε�һ�С�

�����Ź¶���
��ǰ��ֻ�����Լ�һ�˵�<RUBY text="������">�ط�</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	ma03_027vs_runsDelete();
	Cockpit_AllFade0();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������ܥå���
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ma03_SB2(2000,2,700,-400);
	ma03_SB(2001,200);
	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",500,700,0,1000,null,true);

	CreateTextureSP("�}st100", 2200, 1024, Middle, "cg/st/3d�����˜�_�T��_��x.png");

	Move("�}st100", 300, @-1324, @0, Dxl1, false);
	BGMoveAuto("@�}st100",2);

	FadeDelete("�\", 10, true);

//������
//���h���ʤ륢�٥�
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0350a01">
���������С�����
���޷�׷�ϣ���׷���ϣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�����Ż��ǵ�һ�����ţ�
�������ܴ졣

��������ܵĲ��������Ǻš�
����������������ߡ�

����������ߣ������߶��Ʋ��ϵ��ˡ�
�����ִ��ģ������ؼ��������Զ���Դ�ª�����������
�����ý��С��������ƹ��񹤵Ľ��б����˾�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0360a00">
������
���޿��κΡ���

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0370a00">
��������
����������·�����ٶȣ�
�ڿ��ܽ���ĵص�ȴ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0380a01">
������������
�����ǣ����һ�������ܷ���Ϸ�������

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0390a00">
����֪����
�������Ǳ�����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0400a01">
�������˽⣡
����ô��Ŀ��ص��ǣ���

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0410a00">
�������������յ�ֱ�������롣
�������ߡ�<RUBY text="������">�յ���</RUBY>����

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0420a00">
��������ֱ��ǰ������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0430a01">
���������ɡ�
���������ǻ����е����
������Ҫ������ȴ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0440a01">
�����뾡���ܵ����ú�ʱ�䡣
��Ӧ�õ����Ǹ�ֱ������ڸ�������

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0450a00">
����������
�����һ�����ǻ�������Ϯ��֮��
��Ҳ�޷��ϳ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0460a01">
����ô���ܡ�����

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0470a00">
������<RUBY text="����">�ӿ�</RUBY>���ٶȣ�
�������������ҵ��жϣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0480a01">
�����������˽⣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetBlur("�}st100", true, 3, 400, 50, false);

	BGMoveDelete();

	OnSE("se����_�z_���٥�_����01",1000);

	BezierMove("@�}st100", 1000, (@0,@0){@+500,@+100}{@+500,@+100}(@+500,@+150){@-1000,@-500}{@-1000,@-500}(@-3000,@-1000), Axl2, true);

//�����٥�
//����K���`�ʩ`


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_03_01_0.png", true);

	Delete("@�}����*");
	Delete("@�}st*");
	BGMoveDelete();
	ma_03_SBDelete();

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");
	CreateTextureSP("�}����50", 100, Center, Middle, "cg/bg/bg038_���`���å�������_03a.jpg");

	ma03_027vs_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_03a.jpg");

	FrameShake();
	Cockpit_AllFade2();

	CreateSE("SE01","se����_�z_���٥�_����02_L");
	MusicStart("SE01",500,1000,0,1000,null,true);

	DrawDelete("�\Ļ��", 300, 100, "slide_03_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�����С�
�����ۡ�
�����衣

����·���ڴˡ�
����·׿�ڴˡ�
��<RUBY text="��������">������</RUBY>�ڴˡ�

������Ķ��㣬
��������ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 500, 0, null);

	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	ma03_027vs_runsDelete();
	Cockpit_AllFade0();

	Delete("�}����*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������ܥå���
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ma03_SB2(2000,4,600,-1524);
	ma03_SB(2001,200,4);

	CreateTextureSP("�}st100", 2500, -1524, Middle, "cg/st/3d�����˜�_�T��_��x.png");
	Rotate("�}st100", 0, @0, @180, @0, null,true);
	SetBlur("�}st100", true, 3, 500, 70, false);

	CreateColorEXadd("�}ɫ100", 2600, #330033);

	Move("�}st100", 500, @+1424, @0, Dxl2, false);

	OnSE("se����_�z_��`��_����02",500);


	Fade("�}ɫ100", 0, 1000, null, false);

	DrawTransition("�}ɫ100", 700, 0, 1000, 100, Dxl1, "cg/data/slide_01_02_0.png", false);
	FadeDelete("�\", 10, true);

	BGMoveAuto("@�}st100", 3);

	Wait(500);
	Fade("�}ɫ100", 700, 0, null, false);



//������
//���۩`�ॹ�ȥ�`�Ȥ������
//��������ͻ�뤷�Ƥ��딳Ӱ����å�����
	SetFwR("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0490a00">
����������!!��

{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0500a01">
����������������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������K���١��޽�Խ����ζ�ʸФ���
	OnSE("se����_��x_����ӥƥ������������",1000);

	CreateTextureEX("�}����100", 3000, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_b.jpg");
	CreateTextureEXadd("�}����200", 3100, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_b.jpg");

	Fade("�}����100", 300, 1000, null, false);

	Fade("�}����200", 300, 1000, null, false);
	Zoom("�}����200", 300, 2000, 2000, Dxl1, false);
	Move("�}����200", 300, @+256, @0, Dxl1, false);

	Wait(200);

	FadeDelete("�}����200", 300, true);



	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	ma_03_SBDelete();
	BGMoveDelete();

//�����٥�
//������

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��������ܥå���
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����٥󥸼���
	Delete("�}����*");

	ma03_SB2(2000,4,700,-2000);
	ma03_SB(2001,200,4);

	CreateTextureSP("�}st100", 2500, -1024, Middle, "cg/st/3d���٥�_�T��_ͨ��_b2.png");
	SetBlur("�}st100", true, 3, 500, 50, false);

	CreateColorEXadd("�}ɫ100", 2200, #1d7fee);

	Move("�}st100", 1000, @+3500, @0, Dxl2, false);

	OnSE("se����_�z_��`��_����02",500);


	FadeDelete("�\", 10, true);
	Wait(100);

	Fade("�}ɫ100", 500, 600, null, false);
	DrawTransition("�}ɫ100", 200, 0, 500, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("�}ɫ100", 800, 500, 700, 50, Dxl1, "cg/data/slide_05_00_1.png", false);
	Fade("�}ɫ100", 300, 0, null, true);

	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	Delete("�}st*");

	ma_03_SBDelete();
	BGMoveDelete();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����٥󥸼���
	ma03_SB2(2000,4,500,-1600);
	ma03_SB(2001,200,4);

	CreateTextureSP("�}st100", 2500, -1024, Middle, "cg/st/resize/3d���٥�_�T��_ͨ��_b2m.png");
	SetBlur("�}st100", true, 3, 500, 50, false);

	CreateColorEXadd("�}ɫ100", 2200, #1d7fee);

	Move("�}st100", 500, @+512, @0, Dxl2, false);
	BGMoveAuto("@�}st100",2);

	OnSE("se����_�z_��`��_����01",800);
	FadeDelete("�\", 10, true);
	Wait(100);

	Fade("�}ɫ100", 500, 600, null, false);
	DrawTransition("�}ɫ100", 200, 0, 500, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("�}ɫ100", 800, 500, 700, 50, Dxl1, "cg/data/slide_05_00_1.png", false);
	Fade("�}ɫ100", 300, 0, null, true);


	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	Delete("�}st*");

	ma_03_SBDelete();
	BGMoveDelete();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�\", 10, true);

//�����٥󥸼���
	ma03_SB2(2000,4,300,-1600);
	ma03_SB(2001,100,4);

	CreateTextureSP("�}st100", 2500, -2024, Middle, "cg/st/resize/3d���٥�_�T��_ͨ��_b2l.png");
	SetBlur("�}st100", true, 3, 500, 50, false);

	CreateColorEXadd("�}ɫ100", 2200, #1d7fee);

	Move("�}st100", 300, @+1100, @0, Dxl2, false);

	Wait(100);
	OnSE("se����_�z_���٥�_����01",1000);
	FadeDelete("�\", 10, true);

	Shake("�}st100", 100000, 10, 0, 0, 0, 1000, null, false);


	Fade("�}ɫ100", 500, 600, null, false);
	DrawTransition("�}ɫ100", 200, 0, 500, 50, Dxl1, "cg/data/slide_05_00_1.png", true);
	DrawTransition("�}ɫ100", 800, 500, 700, 50, Dxl1, "cg/data/slide_05_00_1.png", false);
	Fade("�}ɫ100", 300, 0, null, true);

	WaitKey(1000);

	CreateColorEX("�\", 20000, "Black");
	Fade("�\",10,1000,null,true);

	Delete("�}st*");

	ma_03_SBDelete();
	BGMoveDelete();

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��
����������������������������������

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm*", 1000, 0, null);

//���\����
	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���١�
<voice name="��" class="��" src="voice/ma03/027vs0510b42">
���������ס���
���ҡ�������ô����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/027vs0520b42">
�����������ˡ���ô��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ߣӣ�
	CreateSE("SE01","se����_�z_���٥�_����01");
	MusicStart("SE01",200,1000,0,1000,null,false);


	$���٤󤸤��ä��� = RemainTime("SE01");


	WaitKey($���٤󤸤��ä���);
	SetVolume("SE01", 1000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������ܥå���
//��һ���֤��ı�ʾ��
��
��������������������<?>
{WaitKey(300);}
��<?>
{WaitKey(300);}
��<?>
{WaitKey(300);}
��<?>
{WaitKey(300);}
��<?>
{WaitKey(300);}
��<?>
{WaitKey(500);}
��<?>
{WaitKey(500);}
��

</PRE>
	SetTextEXCH();
	TypeBeginCIconIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_03.jpg");

	DrawTransition("�\", 300, 1000, 0, 100, Dxl1, "cg/data/slide_03_01_1.png", true);
	Delete("�\");

//������
//���Ȥ륢�٥󥸤��å�����

	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",0,700,0,1000,null,true);


	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0530a00">
����Ұ������ս�񷨡�Ѹ�ס�֮���ѡ�����

{	FwC("cg/fw/fw��������_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0540a00">
����Űε�������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��늴Œi������

	CreateTextureEX("�}ev100", 1200, Center, Middle, "cg/ev/ev902_����늴Œi����`�륬��_d.jpg");
	CreateTextureEX("�}ef100", 1200, Center, Middle, "cg/ef/ef030_����늴Œi��a.jpg");
	SetBlur("�}ev100", true, 3, 500, 100, false);
	SetBlur("�}ef100", true, 3, 500, 100, false);
//	Zoom("�}ef100", 0, 2000, 2000, Dxl1, false);

	SetVolume("SE01", 200, 1000, null);
	Zoom("�}ev100", 300, 1500, 1500, Dxl1, false);
	Fade("�}ev100", 300, 1000, null, true);

	SetVolume("SE01", 500, 0, null);
	CreateSE("SE02","se����_늓�_���01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Zoom("�}ef100", 300, 2000, 2000, Dxl1, false);
	Fade("�}ef100", 300, 1000, null, true);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	Delete("�}ev100");
	Delete("�}ef100");
	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_03.jpg");
	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");




//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����������������һ����
��������׽��������ɫ����ĳ��β�������жϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������å��塣�����`��

	CreateTextureEXadd("�}����200", 2000, Center, Middle, "cg/ef/ef045_���ѩ`��.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);
	CreateTextureEX("�}����300", 3100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureEXadd("�}����400", 3200, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetBlur("�}����400", true, 3, 500, 100, false);
	CreateTextureEXadd("�}����500", 3200, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetBlur("�}����500", true, 3, 500, 100, false);

	CreateSE("SE01","se����_�z_���٥�_�ҤӸ��");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}����200", 200, 1000, null, true);
	Zoom("�}����200", 300, 2000, 2000, Dxl1, false);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",200,1000,null,true);
	Shake("�}����300", 100000, 1, 2, 0, 0, 500, Dxl1, false);
	Shake("�}����400", 100000, 10, 10, 0, 0, 500, Dxl1, false);
	Fade("�}����300", 300, 1000, Dxl1, false);
	Fade("�}����400", 300, 1000, Dxl1, false);
	Zoom("�}����400", 600, 2000, 2000, Dxl1, false);
	CreateSE("SE01","se���L_�Ɖ�_�z05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");

	FadeDelete("�}����400", 300, true);

	Wait(300);

	Fade("�}����500", 300, 500, Dxl1, false);
	Zoom("�}����500", 300, 2000, 2000, Dxl1, false);

	Wait(300);

	FadeDelete("�}����500", 300, false);

//����������

	SetVolume("SE*", 2000, 0, null);
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorEX("�ե�å����", 15000, "Black");
	Fade("�ե�å����",1000,1000,null,true);
	Delete("�}����*");

	WaitKey(3000);

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/ev/ev118_���`���åȤ�Ҋ�¤���ȶ�������.jpg");

	CreateSE("SE01","se��Ȼ_�L_��Ұ_L");
	CreateSE("SE02","se��Ȼ_�L_��Ұ_L");
	MusicStart("SE02",1000,1000,0,1000,null,true);

	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");




//���ߤ�������ϡ����륨�åȶ��ġ���Ů�Ȯ��Σ�Ů��ρ��
//�����ʹ�鷺
	SetNwR("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0550a14">
���š������ʡ�
���ǳ����ʡ���·���ã�������Ϯ���

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0560a14">
��������չʾ�ĻԻ͡���
����������������

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0570a14">
����˵������

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0580a14">
����������

//������������
<voice name="��������" class="��������" src="voice/ma03/027vs0590a15">
������������

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0600a14">
�������ǵĹ�âΪ�����á�
�����ҵ����̳����ǵ���Ӱ׷�硣��

//������������
<voice name="��������" class="��������" src="voice/ma03/027vs0610a15">
������ӵ�����ּ��١�
����Ϊ���£�����������

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0620a14">
�����Զ�������

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0630a14">
��������ʾ�䣡��

//������������
<voice name="��������" class="��������" src="voice/ma03/027vs0640a15">
�������š�����

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0650a14">
��Ȼ��ȥ��������ǰ��
��ȥ�����Ѫ��������������ǰ����

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0660a14">
����Ҫ���ֶ���Լ���һ�����������ߵ�
������
����֮��Ը��ֻ���ڴˣ���

//������������
<voice name="��������" class="��������" src="voice/ma03/027vs0670a15">
��������

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0680a14">
���ڹ�����ӵס�İ��ĸ���֮ǰ��
���⽫һ�̲�ͣ�ر��ߡ���

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0690a14">
�������ǳ�Խ����ɫ����Ӱ����

//������������
<voice name="��������" class="��������" src="voice/ma03/027vs0700a15">
�������ǣ��𡣡�

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0710a14">
����������
������������

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0720a14">
����Ͳ��ٵ���θ���ˡ���

//���⡿
<voice name="��" class="��" src="voice/ma03/027vs0730a14">
��������ˡ����´Σ�
����һ����Ϸ�ɣ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 1000, 0, null);
	SetVolume("SE02", 1000, 0, null);

	CreateColorEX("�ե�å����", 15000, "Black");
	Fade("�ե�å����",1000,1000,null,true);
	Delete("�}����100");

	CreateTextureSP("�}����100", 1000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_03.jpg");
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_ͨ��.png");
	FadeStR(0,true);

	SoundPlay("@mbgm16",0,1000,true);

	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");


	CreateTextureEX("�}����200", 2500, Center, Middle, "cg/ev/ev925_Ұ̫����Ƭ_d.jpg");
	Fade("�}����200", 500, 1000, null, true);

//�����`���å�
//������
//���ʤ����F
	SetFwC("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0740a00">
������Ұ̫���ģ��ʡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0750a01">
���š�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorEXadd("�ե�å����", 15000, "WHITE");

	CreateSE("SE01","se����_��x_�k��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�ե�å����",0,1000,null,true);

	FadeDelete("�}����200", 0, true);

	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");


//�����äȡ�
	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="����" src="voice/ma03/027vs0760a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0770a01">
��������
�����������š���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0780a00">
��ʲô��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0790a01">
����Ȼ������ȫ�⵽�ƻ���
������ȴ������Ȼ���š���

//��������
<voice name="����" class="��������" src="voice/ma03/027vs0800a01">
����������ǡ���
�����б�������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/027vs0810a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/027vs0820a01">
��������δ��ã���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("@mbgm16", 1500, 0, null);

	ClearFadeAll(1600, true);


//���ҥ��󚢺��ե�����
//��������ж�
//�룺main�ǥե�����
//	judgment_of_catch();

..//������ָ��
//�Υե����롡"ma03_028.nss"

}

..//ma03_027vs_runs
function ma03_027vs_runs($md03_027vs_�ȴ�ե�����,���ȶ�,$md03_027vs_�ե�������){

	CreateTextureEX("�}runs01", ���ȶ�, Center, Middle, $md03_027vs_�ե�������);
	CreateTextureEX("�}runs02", ���ȶ�, Center, Middle, $md03_027vs_�ե�������);
	SetBlur("�}runs01", true, 3, 400, 20, false);
	SetBlur("�}runs02", true, 3, 400, 20, false);

	SetVertex("�}runs01", 518, 389);
	SetVertex("�}runs02", 518, 389);
	SetVertex($md03_027vs_�ȴ�ե�����, 518, 389);

	CreateProcess("����", 1500, 0, 0, "ma03_027vs_runsProcess");
	SetAlias("����","����");
	Request("����", Start);

	$ma03_027vs_runs01 = 125;
	$ma03_027vs_runs02 = 250;

}

..//ma03_027vs_runsProcess
function ma03_027vs_runsProcess(){

	begin:


		Zoom($md03_027vs_�ȴ�ե�����, 50000, 2000, 2000, AxlAuto, false);
		Shake($md03_027vs_�ȴ�ե�����, 50000, 1, 1, 0, 0, 500, null, false);
		Fade($md03_027vs_�ȴ�ե�����, 500, 0, null, false);

		Fade("@�}runs01", $ma03_027vs_runs01, 500, null, false);
		Zoom("@�}runs01", $ma03_027vs_runs02, 3000, 3000, AxlAuto, false);

		Wait($ma03_027vs_runs01);

	while(1){

		Shake($md03_027vs_�ȴ�ե�����, 50000, 1, 1, 0, 0, 500, null, false);

		Zoom("@�}runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs01", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@�}runs02", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs02", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);
		Zoom("@�}runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs02", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@�}runs01", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs01", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);
		Zoom("@�}runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs01", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@�}runs02", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs02", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);
		Zoom("@�}runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs02", $ma03_027vs_runs01, 0, Axl1, false);
		Zoom("@�}runs01", $ma03_027vs_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs01", $ma03_027vs_runs01, 700, Dxl1, false);
		Wait($ma03_027vs_runs01);

	}


}

..//ma03_027vs_runsDelete
function ma03_027vs_runsDelete(){

	Request("@����", Stop);
	Delete("@����");
	Delete("@�}runs*");

}

..//ma03_SB2
function ma03_SB2($���`���å����_BG,$ma03_BGNum,$ma03_BGTime,$ma03_BGpoint){

	//���g
	if($ma03_BGNum==1){
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
	//ҹ
	}else if($ma03_BGNum==2){
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
	}else if($ma03_BGNum==3){
		CreateTextureSP("Circuit01", $���`���å����_BG, InLeft, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InLeft, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
	}else if($ma03_BGNum==4){
		CreateTextureSP("Circuit01", $���`���å����_BG, InLeft, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InLeft, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
	}else{
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

	$ma03_BGNum = 0;

}


..//ma03_SB
function ma03_SB($���`���å����_BG01,$ma03_SBtime,$ma03_BarNum){


	if($ma03_BarNum == 1){
		CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BarNum == 2){
		CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BarNum == 3){
		CreateTextureEX("Circuit_Bar", $���`���å����_BG01, 1124, Middle, "cg/bg/bg038_���`���å����b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BarNum == 4){
		CreateTextureEX("Circuit_Bar", $���`���å����_BG01, 1124, Middle, "cg/bg/bg038_���`���å����b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else{
		CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}

	if($ma03_BarNum >= 3){
		CreateProcess("���ץ���", 15000, 0, 0, "ma_03_SBProcess2");
		Request("���ץ���", Start);
		SetAlias("���ץ���","���ץ���");
	}else{
		CreateProcess("���ץ���", 15000, 0, 0, "ma_03_SBProcess");
		Request("���ץ���", Start);
		SetAlias("���ץ���","���ץ���");
	}

	$ma03_BarNum=0;

}


..//ma_03_SBProcess
function ma_03_SBProcess(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1074, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
	}

}

..//ma_03_SBProcess2
function ma_03_SBProcess2(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -50, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1124, @0, null, true);
	}

}

..//ma_03_SBDelete
function ma_03_SBDelete(){

	Fade("@Circuit_Bar", 0, 0, null, true);
	Delete("@���ץ���");
	Delete("@Circuit_Bar");
	SCR1stop();
	Delete("@Circuit*");

}



..//���ϥ�ܥƤ���
function fakeCP(){



}

