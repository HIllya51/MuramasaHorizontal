//<continuation number="210">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_026.nss_MAIN
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
	#bg056_���L�����Tǰ_02=true;
	#bg076_�����¾���_02=true;
	#ev169_���L�Ȥγ��ᤤ=true;
	#ev170_�Х������L���䚢_a=true;
	#ev170_�Х������L���䚢_b=true;
	#ev170_�Х������L���䚢_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_001.nss";

}

scene mc01_026.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_025.nss"

//��������ݳ���δ�ꡣ�ţ�δ�ŤΤ��᡹

//������������
	PrintBG("�ϱ���", 30000);

	CreateColorSP("�\Ļ��", 25000, "BLACK");

	CreateTextureEX("�}����10", 10, Center, Middle, "cg/bg/bg002_��a_02.jpg");
	Zoom("�}����10", 0, 1500, 1500, null, false);
	Move("�}����10", 10000, @100, @-100, Dxl1, false);
	Shake("�}����10", 100000, 1, 1, 0, 0, 1000, Axl2, false);
	Fade("�}����10", 0, 1000, null, true);
	Fade("�}����20", 0, 1000, null, true);

//�������Хӥ�`�󥬥����� inc�Ѿ�

	SoundPlay("@mbgm12",1000,1000,true);
	Delete("�ϱ���");

	DrawDelete("�\Ļ��", 300, 100, "slide_04_00_0", true);

	StR(1000,@300,@-300,"cg/st/3d�����˜�_�T��_ͨ��.png");
	FadeStR(0,true);
	Zoom("@StR*", 0, 500, 500, null, true);
	OnSE("se���L_����_��ͻ�M01", 1000);

	Shake("@StR*", 36000, 2, 0, 0, 0, 1000, Dxl2, false);
	Move("@StR*", 500, @-3200, @2800, Dxl1, true);

	OnSE("se���L_����_������02_L",1000);
	
	Zoom("@StR*", 0, 1000, 1000, null, false);
	Move("@StR*", 1500, @2800, @-2200, Dxl1, false);

	WaitKey(3000);

	Move("@StR*", 5000, @-2800, @2200, Dxl1, false);

	SetVolume("@OnSE*", 1000, 0, null);
	DeleteStR(300,false);

//��������ǰ��Ϧ

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�}����10");

	CreateTextureEX("�}����40", 10, Center, Middle, "cg/bg/bg056_���L�����Tǰ_02.jpg");
	Fade("�}����40", 0, 1000, null, true);



//��������Σ�ʤä��������

	DrawTransition("�\Ļ��", 200, 1000, 0, 100, null, "cg/data/slide_02_01_0.png", true);
	Delete("�\Ļ��");

	CreateSE("�ɤ��`��", "se���L_�n��_�nͻ01");
	MusicStart("�ɤ��`��", 0, 1000, 0, 2000, true);
	CreatePlainEX("�}��д", 10);
	Fade("�}��д", 0, 800, null, true);
	Shake("�}��д", 500, 0, 30, 0, 0, 1000, DxlAuto, true);

	Delete("�}��д");
	WaitKey(500);

	WaitKey(1000);
	SetVolume("�ɤ��`��", 1000, 0, null);


	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="����" src="voice/mc01/0260010a00">
������˻������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������Ŀ�ĵ�֮ʱ������ҰҲ�Ѿ�ҡ�ڲ�����
���������ڵĶ�����ʵ������������������

����������ֹЧ��Ҳ�������˰ɡ�
������ȫ�����ʱ���Ѿ���ʣ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="��������" src="voice/mc01/0260020a01">
��������������ڴ�����ͣЪ��
����ⶾ���ɡ�����


{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0260030a00">
��ûʱ���ˡ�
���쿴��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/0260040a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateColorEXadd("�ե�å���", 15000, "RED");
	Fade("�ե�å���",0,1000,null,true);
	FadeDelete("�}����40",0,true);
	CreateTextureSP("�}�ţ�15", 8, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	FadeDelete("�ե�å���", 500, false);


	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ɵ����ſڵ���
������������ʿ������ʬ��

�����ˡ���Ȼʱ���ϵ�̫���ˡ�
����̬�Ѿ����̲��ݻ��ľ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg056_���L�����Tǰ_02.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);
	FadeDelete("�}��ܞ", 500, true);

	OnSE("se����_�z_�l����02",1000);
	StR(1000, @0, @50, "cg/st/3d�����˜�_����_ͨ��.png");
	Move("@StR*", 300, @0, @-50, Dxl1, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/mc01/0260050a00">
���������������Ժ�ɡ�
���죩


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/0260060a01">
���������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	Delete(@OnBG*);
	DeleteStR(0, false);
	CreateTextureSP("�}����50", 10, Center, Middle, "cg/bg/bg076_�����¾���_02.jpg");
	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
�����Ӵ�������ԥ��������������
�������Ǧһ�������޷���Ը�ӿ��ٶȣ�������һ��һ��
��ƴ�����ܡ�

��������ָ����·һ�㣬ʿ����ʬ�嵽��ɢ�䡣
�����������м�������һ��ͯ���⾰����ɢ��һ�ص�
ȴ��ʬ��Ũ�����顣ֻ������һĻ���͵ĵ����⾰��

�����ܱ߱������Ԥ����ĥ�š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�􁖵��
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_01_1.png", true);
	Delete("�\Ļ��");

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/mc01/0260070a01">
�������ߣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0260080a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����ʬ��������ǰ�У���ǰ�����ָ����Ĳк���

�����������������������
�����ǡ�����һ������

���������ʣ��Ǽ����������߸ɵġ�

��Ҳ����˵��
��Ϯ�������Ժ���ǣ�������ǿ�ľ����������������
�ȵ�Σ�գ�

���Ѿ���
��ͻ����ȫ���ķ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����á��l����

	CreateSE("�l����", "se���L_����_��ͻ�M01");
	MusicStart("�l����", 0, 1000, 0, 1000, null,false);

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);

	WaitKey(1000);

	SetVolume("�l����", 1000, 0, null);
	SetVolume("@mbgm*", 1000, 0, null);

//������¥
	PrintBG("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");

	CreateTextureSP("�}����50", 10, Center, Middle, "cg/bg/bg077_�����µ���¥ǰ_02.jpg");
	Delete("�\Ļ");
	Delete("�ϱ���");
	DrawDelete("��ܞ", 300, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mc01/0260090a00">
������������������������������������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mc01/0260100a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm31",1000,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���ҿ������ⷬ�⾰��
�������ض��谵����Ұ�У��ҿ���һ�������

���ܾ���

����ɢ��

��������ҡ��ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ţ֣���������


//���񤭤Ƥʤ��Τǁ��} inc�Ѿ�

	EfRecoIn1(18000,600);

	CreateTextureSP("���ٽ}10", 13, Center, Middle, "cg/ev/ev169_���L�Ȥγ��ᤤ.jpg");
	EfRecoIn2(300);
	WaitKey(1000);



	SetFwC("cg/fw/fw���L_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0260110a11">
�����ɾ���
���������㵱�ҵĶ��ӡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);

	Delete("���ٽ}*");

//���ţ֣��Х������䚢���������
//������ȫ����ϳ����ʤ��ݳ���
	CreateTextureSP("���ٽ}10", 12, -20, -20, "cg/ev/resize/ev170_�Х������L���䚢_am.jpg");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc01/0260120a00">
��ƭ�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�������ܡ�

�������£������ܷ�����

��������Ҫ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ãǣ���������

	EfRecoIn1(18000,600);


	CreateTextureSP("���ٽ}10", 13, Center, Middle, "cg/ev/ev169_���L�Ȥγ��ᤤ.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw���L_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0260130a11">
����Ϊ�ҵĶ��ӣ����������֡���

//�����L��
<voice name="���L" class="���L" src="voice/mc01/0260140a11">
��������������֮ǰ�����֡�
������һ���µġ���ͬ�����֡�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);


	Delete("���ٽ}*");

//���ãǣ��Х������䚢���������
//�����Ρ��ܥ�Ȥ�ͻ�����ä�������ؤ򥢥åפ�
	CreateTextureSPmul("���ٽ}10��", 12, -952, -525, "cg/ev/resize/ev170_�Х������L���䚢_cl.jpg");
	CreateColorSP("�}ɫѪ", 11, "#990000");

	EfRecoOut2(600,true);

	Wait(100);

	CreatePlainSP("�}��д", 5000);
	Delete("�}ɫѪ");
	Delete("���ٽ}10��");
	CreateTextureSP("���ٽ}10", 12, -952, -525, "cg/ev/resize/ev170_�Х������L���䚢_cl.jpg");
	FadeDelete("�}��д", 1000, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc01/0260150a00">
����Ң���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���񶨡�

���񶨡�

���񶨡�

��������������<k>���ˣ�

��Ϊʲô�ⷬ�⾰û����ʧ!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ãǣ���������

	EfRecoIn1(18000,600);

	CreateTextureSP("���ٽ}10", 13, Center, Middle, "cg/ev/ev169_���L�Ȥγ��ᤤ.jpg");

	EfRecoIn2(300);

	WaitKey(1000);

	SetFwC("cg/fw/fw���L_Ц�.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����L��
<voice name="���L" class="���L" src="voice/mc01/0260160a11">
���ն�������
������ϲ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);

	Delete("���ٽ}*");

//���ţ֣��Х������䚢���������
	CreateTextureSP("���ٽ}10", 12, Center, Middle, "cg/ev/ev170_�Х������L���䚢_a.jpg");


	EfRecoOut2(600,true);

	WaitKey(1000);

//���ţֲ�֣����򵹤��
	CreateTextureSP("���ٽ}20", 11, Center, Middle, "cg/ev/ev170_�Х������L���䚢_b.jpg");
	FadeDelete("���ٽ}10", 1500,false);

//��Ҫ�����ߥ��{�� inc�Ѿ�
	WaitKey(300);
	OnSE("se����_�n��_ܞ��01",1000);

//SetFwC("cg/fw/fw����_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//<PRE @box0>
//[text0180]
//���ƥ����ȱ�ʾ�������ܥ����Τ�
//�����ब��w���ƄӤ��ʤ��Τ����������������Ȥ����Ф���
//{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0260170a00">
//����������������������������������!!��

//</PRE>
//	SetTextEXC();
//	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ݳ��������ΤߤΥ��ޥ�ɤ����Ƥ����ޤ�����
	CreateVOICE("����","mc01/0260170a00");
	MusicStart("����",0,1000,0,1000,null,false);

	WaitKey(3000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����ͷ���񾭶��������ҡ���
����������޷���������֮����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}����50", 10, Center, Middle, "cg/bg/bg077_�����µ���¥ǰ_02.jpg");
	FadeDelete("���ٽ}20", 1000, true);

	SetVolume("����", 300, 0, null);

//���Х���
	StL(1000, @0, @0, "cg/st/3d�Х���_����_ͨ��.png");
	FadeStL(300, true);

	SetVolume("����", 100, 0, null);
	SetFwC("cg/fw/fw�Х���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0260180a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_�z_�l����02",1000);
	DeleteStL(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�������ߡ�������������������֮��Ľ��а���������
����ʿ��Ƴ����һ�ۡ�
���ڳ�һ�����������ģ������ת����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);
	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/mc01/0260190a00">
������վס��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm04", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�������ӡ���

�����������ӵ���

������������̤��һ����

��������������һ������

����������������һ�롣

��������Ҫɱ���㡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ãǣ������Κ���
//���ץХå��˳����֤�һ�֤��ġ������Ƥ�롹�ȱ�ʾ��
//�������K�٤������j�ˡ�
//�������壿�������å���η��������äƲ�������

//�������Κ���Ȥ���CG��Ҋ������ʤ��ä����ᡢ�����CG��ʹ�ä��Ƥ��ޤ��� inc�Ѿ�
	CreateColorSPadd("�ե�å����", 15000, "WHITE");
	CreateColorSP("�}ɫ�׵�", 10, "WHITE");
	Fade("�ե�å����", 10, 0, null, true);

	CreateTextureSP("�}���֚���", 1000, Center, Middle, "cg/sys/Telop/tp�����Κ���_01��.png");
	CreateTextureEX("�}���֚���", 1010, Center, Middle, "cg/sys/Telop/tp�����Κ���_01��.png");
	FadeFR2("�}���֚���",0,500,150,@0,@0,80,Dxl2, true);

	CreateTextureSP("�}���֚���", 1000, Center, Middle, "cg/sys/Telop/tp�����Κ���_02��.png");
	CreateTextureEX("�}���֚���", 1010, Center, Middle, "cg/sys/Telop/tp�����Κ���_02��.png");
	FadeFR2("�}���֚���",0,500,150,@0,@0,40,Dxl2, true);

	Wait(50);

	CreateTextureSP("�}���֚���", 1000, Center, Middle, "cg/sys/Telop/tp�����Κ���_03��.png");
	CreateTextureEX("�}���֚���", 1010, Center, Middle, "cg/sys/Telop/tp�����Κ���_03��.png");
	FadeFR2("�}���֚���",0,500,150,@0,@0,60,Dxl2, true);

	CreateTextureSP("�}���֚���", 1000, Center, Middle, "cg/sys/Telop/tp�����Κ���_04��.png");
	CreateTextureEX("�}���֚���", 1010, Center, Middle, "cg/sys/Telop/tp�����Κ���_04��.png");
	FadeFR2("�}���֚���",0,500,150,@0,@0,50,Dxl2, true);

	Wait(150);

	CreateTextureSP("�}���֚���", 1000, Center, Middle, "cg/sys/Telop/tp�����Κ���_05��.png");
	CreateTextureEX("�}���֚���", 1010, Center, Middle, "cg/sys/Telop/tp�����Κ���_05��.png");
	FadeFR2("�}���֚���",0,500,150,@0,@0,70,Dxl2, true);

	WaitKey(1000);

	Fade("�ե�å����",0,1000,null,true);

	Wait(10);
	Delete("�}����*");
	Delete("�}ɫ�׵�");

	CreatePlainEXadd("�}��д", 14900);
	Zoom("�}��д", 0, 1100, 1100, null, true);
	SetShade("�}��д", MEDIUM);
	MoveFFP1("@�}��д",10000);
	Fade("�ե�å����",1000,0,null,true);

//������
//���ۤ������
	CreateSE("SE02","se����_��_��Ġ����02");
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}��д", 300, 800, null, false);
	Zoom("�}��д", 300, 1200, 1200, null, false);
	Fade("�ե�å����", 300, 10, null, true);

	WaitKey(1000);

	FadeDelete("�}��д", 500, false);
	FadeDelete("�ե�å����", 500, true);
	MoveFFP1stop();

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/mc01/0260200a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�����屳�����ҵ���־��
����Ȼ�߾�ȫ����ȴ��˿������

���ɶ�

���⸱����δ��Ҳ̫�������˰ɡ�

��Ϊ���޷����Ǹ��쵰ק���������Ǽһ����ϰ�
���������ϡ��!?

�����ְɣ�

�����ְ�!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ҕ�礬�य�������ư���

	CreateColorSP("�}��ܞ", 15000, "RED");
	Delete("�}����50");
	Delete("�}����60");
	CreateColorSP("�}ɫ�\", 100, "#000000");
	FadeDelete("�}��ܞ", 1000, true);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/mc01/0260210a00">
��Ŷ����ŶŶŶŶŶŶ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����еĳ�ǿֻ��ͽȻ����ʶ��ģ����
�����޵���֮����

���þ������������ɴ�˫�ۡ�
��������֮����ӡ������Ĥ�С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х���
	StC(1000, @0, @0, "cg/st/3d�Х���_����_ͨ��.png");
	FadeStC(300, false);

	WaitKey(1000);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
�������Բʼ����Ĺ���ʿ��

���ҷ��ġ�
�����밮ͬ�ȵ����飬�������ġ�

������

����������ʿ�����࣬����Ϊɱ������֮�����


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ѩ`����
//�����åȥ���ݤ���
	ClearWaitAll(3000, 1000);

	PrintBG("�ϱ���", 10000);
	cut_in_logo(10010,2);

	ClearWaitAll(3000, 2000);


/*
//��������ݳ�����ע�����˱ܡ�
	SetVolume("@mbgm*", 1000, 0, null);
	PrintBG("�ϱ���");

	CreateColorSP("�}ɫ�\", 1, "#000000");

	FadeDelete("�ϱ���",1500,true);

	WaitKey(1000);

	CreateColorEX("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("����80", 30, Center, Middle, "cg/sys/title/�����ȥ뱳��.png");
	Move("����80", 0, 20, 0, null, false);
	Move("����80", 200, -20, 0, null, false);

	OnSE("se���L_����_��ꪏ���01", 1000);
	CreateTextureEX("����81", 32, Center, Middle, "cg/sys/title/���񥿥��ȥ�logo.png");
	Fade("����81", 300, 1000, null, false);
	
	CreateTextureSPadd("�}����500", 31, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	Rotate("�}����500", 0, 180, 0, 180, null, true);
	Move("����81", 0, 600, 40, null, false);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");

	WaitKey(2000);
	ClearWaitAll(3000, 3000);
*/

//������������������������������������������������

}

..//������ָ��
//�Υե����롡"mc02_001.nss"