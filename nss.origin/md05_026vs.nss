//<continuation number="180">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_026vs.nss_MAIN
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
	#bg110_����a=true;
	#ev252_����늴Œi����_a=true;
	#ev252_����늴Œi����_b=true;
	#bg109_������g=true;
	#bg110_����b=true;
	#ev906_���٥�����_b=true;
	#ev938_ͻ�M���Ƥ����y�Ǻ�=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_027.nss";

}

scene md05_026vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_025end.nss"

//����������ef041

	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm10",0,1000,true);
	CreateSE("������ɣ�","se����_������_���݅���_L");
	SoundPlay("������ɣ�",1000,800,true);
	CreateTextureSP("������", 100, 0, 0, "cg/ef/ef041_�त����b.jpg");

	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����ֵĳ����ڱ�����
��ǰ�˱ƽ���ǰ��

�����������������Ҫ������ࡣ
��������ˣ�һ�������룬�����ж������ܵ��˺���
���һ����Ҳ�޷��赲�����ı�����
�ٶ���Ϊ��²�˰ɡ�

�����ܽ��ܴ����³���

����ô������

����

���������ߡ�

���������̶ֳȵĳ�����<RUBY text="����">��ǽ</RUBY>���Է�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������ɢ��
	CreateColorEXadd("ɫ��", 19999, "#FFFFFF");
	CreateTextureEX("������", 100, 0, 0, "cg/bg/bg110_����a.jpg");
	Zoom("������", 0, 1500, 1500, Dxl2, true);
	CreateTextureEX("�ԙC��", 100, -169, -347, "cg/st/3d������K_����_�i��.png");

	OnSE("se����_������_������ɢ��",1000);
	SetVolume("������ɣ�", 1000, 0, NULL);

	Fade("ɫ��", 0, 1000, null, true);
	Delete("������");
	Fade("������", 0, 1000, null, true);
	Fade("ɫ��", 1000, 0, null, false);

	Move("������", 2000, @0, @50, Dxl1, false);
	Wait(1000);
	Fade("�ԙC��", 1000, 1000, null, false);
	Move("�ԙC��", 2000, @0, @-100, Dxl1, true);


	SetFwR("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���⡿
<voice name="��" class="��" src="voice/md05/026vs0010a14">
����������?!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����Ӧ��֮�½���һ����

�������ӽ�����Ҫ����Ҳά�ֲ��á�
��ʱ�����ޡ����������������Ϊ��

�������������м��ܡ�
�����������ȫ��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����Ů��ρ_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������������
<voice name="��������" class="��������" src="voice/md05/026vs0020a15">
��ŶŶ����?!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣��¤�ؓ�äƴ�������`�륬��ʂ�
	OnSE("se���L_��x_����չ�_",1000);
	CreateSE("SE01","se����_늓�_���01");
	MusicStart("SE01",300,700,0,1000,null,true);

	CreateTextureEX("���٥�ȣ�", 200, 0, 0, "cg/ev/ev252_����늴Œi����_a.jpg");
	Fade("���٥�ȣ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������ڶ�������������ӿ������
�����ǣ������������������ػ�֮����

����ɫ֮�µ�������ɢ��ɫ���е�ǣ������֧���ҡ�

����˶��ݵ�ʱ�䡣
��ֻ�к��ٵ�����ʵ�û��ᡣ

�����価����Ͷ����ֱָ�ɹ���һ���С�

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ͥ륮�`���
	CreateTextureEX("���٥�ȣ�", 200, 0, -172, "cg/ev/ev252_����늴Œi����_b.jpg");
	CreateTextureEX("���٥�ȣ�", 2000, 0, -172, "cg/ev/ev252_����늴Œi����_b.jpg");
	Move("���٥�ȣ�", 500, @0, -172, Dxl2, true);
	CreateSE("SE02","se����_늓�_���02");

	Wait(300);

	CreateTextureEXadd("�}����������", 17500, 0, -172, "cg/ev/ev252_����늴Œi����_b.jpg");
	$�����ʥå��� = @�}����������;
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur2");
	SetAlias("�ץ�����","�ץ�����");


	RailgunFlash();
	Shake_Loop("@���٥�ȣ�","supershake01");
	Request("�ץ�����", Start);


	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("���٥�ȣ�", 1000, 1000, null, true);
	Fade("���٥�ȣ�", 1000, 1000, null, true);
	Delete("���٥�ȣ�");

	Wait(500);

	SetFwR("cg/fw/fw��������_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md05/026vs0030a01">
����Űε�������

//��������
<voice name="����" class="��������" src="voice/md05/026vs0040a01">
����!!��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k�ӡ������`��
//���|�I��դ�I�ϡ�ef037���Ϥǔؓĥ��˥ᤫ��

	OnSE("se���L_����_�z_�����w��02",1000);
	OnSE("se���L_����_�z_���04",1000);
	OnSE("se���L_����_�z��������",1000);

	SetVolume("SE*", 3000, 0, null);

	//��`�ө`��`�ө`�Ϥ���ީ`��
	Zoom("���٥�ȣ�", 1000, 1500, 1500, Axl3, false);
	FadeF4("���٥�ȣ�", 1000, 1000, 3000, 0, 0, Axl3, false);
	Fade("ɫ��", 1000, 1000, null, true);

	RG_FlashDelete();
	Delete("supershake01");
	Delete("���٥��*");
	Delete("�}����������");

	CreateSE("SE01","se����_늓�_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Wait(16);
	OnSE("se���L_�Ɖ�_�z05",1000);
	SetVolume("SE01", 3000, 0, Axl3);

	MovieSESet(20000,"mv��","se����_mv��_��");
	MovieSEStart(0);

	OnSE("se���L_����_�z_�����w��02",1000);


	SetVolume("@mbgm10", 3000, 0, NULL);
	Wait(4000);


//��������������ŵ�
	CreateTextureSP("������", 100, 0, 0, "cg/bg/bg109_������g.jpg");
	Delete("���٥�ȣ�");
	Fade("ɫ��", 2000, 0, null, true);

	Wait(1000);

	OnSE("se����_����_�z�i��03",1000);
	StR(1000, @0, @20,"cg/st/3d������K_����_�i��.png");
	FadeStR(500,false);
	Move("@StR*", 500, @0, @30, Dxl1, true);
	Move("@StR*", 1000, @0, @-50, AxlDxl, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����﹥�������ޡ�
��̽�����棬ѡ����Сɽ������½��

��ȷʵ��ն���ˡ�
��
���ڶ��������޵���ʽ��������֮��ն�£�һ�����ϣ�
�����ṹ������

��������ͬ��һ��ɢ����
��ֻʣ�£����Ǻŵ����塣

���޷��ܿ�����ģ�Ӧ��ֻ���ںˡ�
�����٣����ܵ����൱����˺���

������ʤ���ˡ�

���ڹ��ٵ�һ����ǰ��˭Ҳ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������ä���
	Wait(1000);
	CreateColorEX("ɫ��", 10000, "#000000");
	Fade("ɫ��", 300, 1000, null, true);
	DeleteStA(0,false);
	Wait(200);
	SetNwC("cg/fw/nw��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���⡿
<voice name="��" class="��" src="voice/md05/026vs0050a14">
�����������һᣬ�����𣿡�

//���⡿
<voice name="��" class="��" src="voice/md05/026vs0060a14">
��������ֻ�������ǰ��ˡ�
����ȥ����һ�Σ�
��Խ�����ٶȡ���
  
</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm11",0,1000,true);

	Fade("ɫ��", 300, 0, null, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0081]
//��������
<voice name="����" class="��������" src="voice/md05/026vs0070a01">
������ʲ?!��

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/026vs0080a14">
�����£�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ��w�������ӥ�������
//���ɤ��`���¡��Z����
	CreateTextureEX("������", 100, 0, 0, "cg/bg/bg110_����a.jpg");
	Zoom("������", 0, 10000, 10000, Dxl2, true);
	CreateTextureEX("��������", 100, -4000, -250, "cg/bg/bg204_�����ر���_04.jpg");
//	Rotate("��������", 0, @0, @0, @-30, null,true);
	CreateTextureEX("�����y", 100, 100, 0, "cg/st/3d�y�Ǻ�_�T��_���.png");
	Move("�����y", 0, @100, @-100, null, true);
	Rotate("�����y", 0, @0, @0, @-40, null,true);
	SetBlur("�����y", true, 2, 500, 100, false);

	CreateTextureEX("������", 100, 0, 0, "cg/bg/bg110_����b.jpg");
	Zoom("������", 0, 1200, 1200, Dxl2, true);

	CreateEffect("�}������", 18000, Center, Middle, 512, 288, "Rain");
	Fade("�}������", 0, 0, null, true);
	SetAlias("�}������","�}������");
	Request("�}������", SubRender);
	Move("�}������", 0, 200, 144, null, true);
	Zoom("�}������", 0, 5000, 5000, null, true);
	Rotate("�}������", 0, @0, @0, @75, null,true);

	OnSE("se���L_����_��ͻ�M01",1000);


	Fade("������", 100, 1000, null, false);
	Zoom("������", 1000, 1000, 1000, Dxl2, 700);


	Move("��������", 1000, 0, 0, null, false);
	Move("�����y", 1000, @-100, @20, null, false);
	Fade("�����y", 200, 1000, null, false);
	Fade("��������", 200, 1000, null, false);
	Fade("�}������", 200, 100, null, false);
	Wait(600);

	Fade("ɫ��", 200, 1000, null, true);
	OnSE("se���L_�Ɖ�_���k09",1000);
	Delete("������");
	Delete("������");
	Delete("�ԙC��");
	Delete("��������");
	Delete("�����y");
	Delete("�}������");
	Fade("������", 0, 1000, null, true);



//�����ߣ��زĶ��x
	CreateTextureEX("�}����100", 17500, Center, Middle, "cg/bg/bg110_����b.jpg");
	CreateTextureEX("�}����200", 17500, Center, Middle, "cg/bg/bg110_����b.jpg");
	SetBlur("�}����200", true, 3, 500, 200, false);
	Request("�}����200", Smoothing);

	CreateTextureEX("�}����400", 17000, Center, Middle, "cg/bg/bg110_����b.jpg");
	CreateTextureEX("�}����500", 17000, Center, Middle, "cg/bg/bg110_����b.jpg");
	Request("�}����400", Smoothing);
	Request("�}����500", Smoothing);
	Zoom("�}����400", 0, 2000, 2000, null, true);
	Zoom("�}����500", 0, 1200, 1200, null, true);
	SetBlur("�}����500", true, 3, 200, 70, false);

	CreateSE("SE05","se����_����_���S03");
	CreateSE("SE06","se���L_����_�z������01");
	CreateSE("SE07","se���L_����_�z������01");
	CreateSE("SE08","se���L_����_�z_�g���01");


//�����ߣ����k����
	MusicStart("SE05",200,1000,0,1000,null,false);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("ɫ��", 150, 0, null, false);
	Fade("�}����400", 0, 1000, null, true);
	DrawTransition("�}����400", 100, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	MusicStart("SE06",0,1000,0,1000,null,false);
	Move("�}����400", 0, -312, -100, null, true);
	Wait(50);
	Move("�}����400", 0, -350, -150, null, true);
	Wait(50);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Move("�}����400", 0, -510, -120, null, true);

	Fade("ɫ��", 50, 1000, null, true);
	Delete("�}����200");
	Delete("�}����400");
	CP_AllDelete();

	MusicStart("SE08",0,1000,0,1000,null,false);
	OnSE("se���L_�Ɖ�_���k05",1000);
	Fade("�}����500", 0, 1000, null, true);
	Zoom("�}����500", 500, 1200, 1200, Dxl2, false);
	EffectZoomadd(18000, 3000, 4000, "cg/bg/bg110_����b.jpg", false);
	Fade("ɫ��", 2000, 0, null, true);
	FadeDelete("�}����*", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���������������ɵ�ͬʱ����ɫ��ر����ˡ�
����Ȼ��Ϊһ�ź�����Ȼ���ѣ��������������Ӱһ�ˣ�
�����ҷ�������

����������������<k>������</RUBY>?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ��`��ܤ��`�󡣱��Z

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����⡣
�������Ѿ�����ս����

������������״̬Ҳ�����������š���
��������֮��Ϊ�ϲߣ�������ȡʱ�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������Ӥ�
	OnSE("se���L_����_��ͻ�M02",1000);

	Move("������", 500, @100, @0, Axl1, false);
	DrawDelete("������", 500, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���⡿
<voice name="��" class="��" src="voice/md05/026vs0090a14">
�����������ӣ���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/026vs0100a14">
����������
��սʤԸ����������

//���⡿
<voice name="��" class="��" src="voice/md05/026vs0110a14">
����Ϯ֮����!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥󥸥��å���
	CreateTextureEX("������", 100, 0, 0, "cg/ef/ef023_���٥�_ֱ�M.jpg");
	Zoom("������", 0, 2000, 2000, Dxl2, true);

	CreateTextureEX("�}ef100", 3000, 0, -576, "cg/ef/resize/ef023_���٥�_���`��_l.jpg");
	SetBlur("�}ef100", true, 3, 500, 50, false);

	Fade("�}ef100", 200, 1000, null, false);

	OnSE("se����_�z_���٥�_����01",1000);

	BezierMove("�}ef100", 1000, (@0,@0){-512,-576}{-756,-400}(-1024,-211){-756,-150}{-256,-100}(0,-40), Dxl1, false);

	Wait(900);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);

	Delete("�}ef100");

	Fade("�ե�å����",500,0,null,true);
	Delete("�ե�å����");

	Fade("ɫ��", 100, 1000, null, true);
	Fade("������", 0, 1000, null, true);

	OnSE("se���L_����_��ͻ�M03",1000);
	Zoom("������", 500, 1000, 1000, Dxl2, false);
	Fade("ɫ��", 500, 0, null, true);

	SetFwC("cg/fw/fw��������_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/md05/026vs0120a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����ٶȡ�
��������������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺���٥�
	CreateTextureEX("������", 2100, 0, 0, "cg/ev/ev906_���٥�����_b.jpg");
	SetTone("������", Sepia);

	Fade("ɫ��", 0, 1000, null, true);
	Fade("������", 0, 1000, null, true);
	Fade("ɫ��", 300, 0, null, true);
	Wait(500);
	Fade("ɫ��", 100, 1000, null, true);
	Delete("������");
	Fade("ɫ��", 500, 0, null, true);

//������
	SetFwC("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/md05/026vs0130a14">
�����Ѿ�������¡�
�����ٶȡ������ԡ���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md05/026vs0140a14">
��Ȼ����Ϊ�Լ��Ķ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
�����ǡ��������ֵ�ס�˵�Űε���ֱ�ӹ�����?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���뉲�y�Ǻţ��|�I��ղ���
	CreateTextureEX("������", 100, 0, 0, "cg/ev/ev938_ͻ�M���Ƥ����y�Ǻ�.jpg");
	Zoom("������", 0, 2000, 2000, null, true);
	SetBlur("������", true, 2, 500, 100, false);
	Zoom("������", 1000, 1000, 1000, Dxl2, false);
	Fade("������", 1000, 1000, null, true);

	CreateMask("�}��", 1000, 0, 0, "cg/data/slide_07_00_0.png", false);
	SetAlias("�}��","�}��");
	CreateTextureEX("�}��/�}�ݱ���", 1000, -310, -260, "cg/ev/resize/ev938_ͻ�M���Ƥ����y�Ǻ�l.jpg");
	Move("�}��/�}�ݱ���", 10000, @0, -320, null, false);
	Fade("�}��/�}�ݱ���", 1000, 800, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����Ȼ�����Ǻ������ˡ�
����ǰ���ֵ����Ǻ�֮�ˣ���ֻ�������꣬
��ֱ�Ǳ����߽⡣

������״̬��Ϊ���ܴﵽ�Ƿ��̶ȵĻ������ء�

�����ҡ���<k>��ά���źڶ�����ʽ!!
  
���޷���⡣
���������Ǻ��

�����޷���⡣
��
�������͵��ˣ�ս�����˵ز����Ǻ���?!

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}��/�}�ݱ���", 10000, @0, -380, null, false);
	FadeDelete("�}��/�}�ݱ���", 1000, false);

	SetFwL("cg/fw/fw��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���⡿
<voice name="��" class="��" src="voice/md05/026vs0150a14">
�����ǣ�Ψһ���Ρ���

//���⡿
<voice name="��" class="��" src="voice/md05/026vs0160a14">
���ն���ģ�����Ը������

//���⡿
<voice name="��" class="��" src="voice/md05/026vs0170a14">
�����ܻ������롭����

{	FwL("cg/fw/fw��_ŭ��.png");}
//�룺���������ƣ���090930��
//���⡿
<voice name="��" class="��" src="voice/md05/026vs0180a14">
�������ƻ�!!��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��");

//���|�I���
	SetVolume("@mbgm*", 2000, 0, NULL);
	CreateSE("������ɣ�","se����_������_���݅���_L");
	SoundPlay("������ɣ�",2000,1000,true);

	OnSE("se���L_�y�Ǻ�_�|�I���ħ����_�k��",1000);

	Fade("ɫ��", 500, 1000, null, true);
	CreateTextureSPmul("������", 1000, 0, 0, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Zoom("������", 0, 2000, 2000, Axl1, false);
	Fade("ɫ��", 500, 0, null, true);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�������������С�

���ڰ����ӣ�
�����ţ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Rotate("������", 1000, @0, @0, @360, Axl1, false);
	Zoom("������", 1000, 4000, 4000, Axl1, false);
	Fade("ɫ��", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0181]
���ұ��������ɡ�

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("������ɣ�", 3000, 0, NULL);
	SetVolume("@OnSE*", 3000, 0, NULL);

	ClearFadeAll(3000, true);
	Wait(2000);

}

..//������ָ��
//�Υե����롡"md05_027.nss"