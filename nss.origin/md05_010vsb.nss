
chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_010vsb.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_010vsb.nss","TimeAction",true);
	Conquest("nss/md05_010vsb.nss","TimeSet1",true);
	

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
	#bg201_�����ݳ������нֵ�_02=true;
	#bg204_�����ر���_02=true;
	#bg202_�����ݳ�����ɽ_02=true;
	#ev104_⏴������_d=true;
	#ev112_һ���򤪊������ä��������=true;
	#ev123_�󄇤�֤ĥ��`���å�����=true;
	#ev165_��K����_c=true;
	#ev207_������g����ŤĴ���_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_011.nss";

}

scene md05_010vsb.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md05_010vs.nss"

//���x��
	SoundPlay("@mbgm08",0,1000,true);
	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����", 100, Center, -700, "cg/bg/bg201_�����ݳ������нֵ�_02.jpg");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�������Ǹ����񡱵������Ѿ�ǿ���������ռ�Ť��
��Ч����ΧҲ�������޵ĲŶԡ�
���������Ʋ����������һ����Ӧ���޷��ӿ���

����ˣ�����ʵ�ĶԲ߹�Ȼ�������롣
��ֻҪ�ٿ�һ�㡪������Զһ�㣡

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ӥ�
//�����Ҋ�¤������ʤ��x�줿��
	CreateSE("SE01","se���L_����_��ͻ�M02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreatePlainSP("�}��д", 1000);
	Zoom("�}��д", 300, 2000, 2000, Dxl2, false);

	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, Axl2, "cg/data/zoom_01_00_0.png", true);

	Delete("�}����");
	Delete("�}��д");

	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",0,500,0,500,null,false);

	CreateTextureSP("�}��", 4000, Center, -260, "cg/ev/resize/ev242_���񼤤����k��_al.jpg");
	SetVertex("�}��", center, 440);
	Zoom("�}��", 0, 500, 500, null, true);
	Request("�}��", Smoothing);

	DrawDelete("�}ɫ�\", 150, 100, "zoom_01_00_1", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/010vs1010a00">
��û��׷�������𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs1020a01">
������������

//��������
<voice name="����" class="��������" src="voice/md05/010vs1030a01">
���ƺ�����Զ�˾��޷�ʹ�á���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1040a00">
�����ܰɡ�
�����ǡ������öԸ�������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1050a00">
������óȻ��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs1060a01">
��������Ч����Χ�Ļ����鷳����
����Ȼ����̽�˹��ܵĻ���
����������նԷ����鱨��
�������ڲ�û��������ԣ����

//��������
<voice name="����" class="��������" src="voice/md05/010vs1070a01">
��Ȼ�󡭡�����һ���¡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1080a00">
����ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs1090a01">
�����Ļ��ܣ�����Ҳ����������ķ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1100a00">
����������
��ƫת���˵Ĺ������������ÿռ�����
������˲�ƣ���

//��������
<voice name="����" class="����" src="voice/md05/010vs1110a00">
������������˵δ�ز����ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������ȡ���ֳ�����ط���ķ�����ʩ��
��Űε�����û��ʤ�㡣
�����ң�Ҳû���㹻����<RUBY text="����">�Ի�</RUBY>��������

��Ұ̫���ĵ�Űε�����ֻ����һ�Ρ�
��Ҫ�õ��ڶ��εĻ���ͺ����˰ɡ����⣬
Ҳ��δ�뵽�ܸ����Ǹ���������һ���Ĺ���������

������˵����
��Ӧ�������Կռ�Ť�����з��������ǵ�
��ʧЧ�Ļ����ϣ���ʹ��ս����

���ͽ��۶�����Ӧ��ˡ�

����ˣ�Ȼ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����楺�`�।��
//���Ω`�磻�פǒ���
	SetVolume("SEL*", 0, 525, null);
	Zoom("�}��", 0, 525, 525, null, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md05/010vs1120a00">
����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs1130a01">
��ʲô����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1140a00">
������������
����ѽ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ղš�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ω`�磻�פǒ���
	SetVolume("SEL*", 0, 650, null);
	Zoom("�}��", 0, 650, 650, null, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/md05/010vs1150a01">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1160a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ω`�磻�פǒ���
//���Ω`�磻�פǒ���
//���Ω`�磻�פǒ���
	SetVolume("SEL*", 0, 750, null);
	Zoom("�}��", 0, 750, 750, null, true);
	Wait(200);
	SetVolume("SEL*", 0, 850, null);
	Zoom("�}��", 0, 850, 850, null, true);
	Wait(200);
	SetVolume("SEL*", 0, 950, null);
	Zoom("�}��", 0, 950, 950, null, true);
	Wait(200);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/md05/010vs1170a00">
������ʲô?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�������Ѿ������˾��롪��
��Ϊʲô��<RUBY text="������">���׵�</RUBY>�Ϳ�����?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md05/010vs1180a01">
���ǿռ�Ť������

//��������
<voice name="����" class="��������" src="voice/md05/010vs1190a01">
���Ǳ������֮��Ŀռ䣬
�ӱ˶˿�ʼ��ѹ���ˣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1200a00">
������̫���������˰�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���Ҳ�������˲���������ǵĿ��顣

����֮�������롪��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ω`�磻�פǒ���
	SetVolume("SEL*", 0, 1000, null);
	Zoom("�}��", 0, 1200, 1200, null, true);

	Wait(32);

//�����������ʂ�
	CreateSE("SEL01","se���L_��_����ӥƥ��֥饹��_�ʂ�_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateTextureSPadd("�}����", 4110, Center, -260, "cg/ev/resize/ev242_���񼤤����k��_bl.jpg");
	CreateTextureSP("�}��", 4100, Center, -260, "cg/ev/resize/ev242_���񼤤����k��_bl.jpg");
	SetVertex("�}��", center, 440);
	Request("�}��", Smoothing);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 2000, false);
	Wait(200);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md05/010vs1210a01">
������!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1220a00">
�������һ��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����ܣ���ܶ�ܶ�ܡ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL*", 100, 0, null);

//���ܤ�
//�����ʤꥮ�ꥮ��ʸФ��ǥ��Щ`�äȡ�
	CreateSE("SE01","se���L_��_����ӥƥ��֥饹��_�k��");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 4110, Center, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_bm.jpg");
	CreateTextureSP("�}��", 4100, Center, Middle, "cg/ev/resize/ev243_�رܙC�Ӥ�Ȥ����_bm.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="��������" src="voice/md05/010vs1230a01">
���ǣ�����֮�������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1240a00">
����������
���Ǹ����񣬸���ûʲô�������ԣ�
ֻ�Ǽ��ܸ߳����ѣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
����ֻ�������ܵ���Ҫ�ӽ�����ı���������
���¾�����ˡ�
��Ȼ���ﵽĿ�ĵ��ֶ���ȫ���ϳ���

���������������ֽŴ��ڣ������ѡ
�ľ�����Щ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/md05/010vs1250a01">
����֮����ֻ�����Ĵ����߶�ܡ�
��������Ҳ�ÿռ�Ť��Ҳ�գ������Խ���������
Ŀ��Ϊǰ����ʹ�ã���һ���Ѿ���ӹ���ɣ�����
Ҫ��֤����λ�ò������ա���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1260a00">
����ͬ�⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���������ڣ���ֻ������һʱ����ȫ����
���֮����
������������ζ��޼ƿ�ʩ��

���о����Է�����Ҫʱ�䡣
����֮�ȶ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���T��
	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫ�\", 20000, "#000000");
	DrawTransition("�}ɫ�\", 150, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 20000, "#000000");

	CreateSE("SEL01a","se���L_����_������01_L");
	CreateSE("SEL01b","se���L_����_������02_L");
	MusicStart("SEL01a",2000,750,0,1000,null,true);
	MusicStart("SEL01b",2000,750,0,1500,null,true);

	CreateTextureSP("�}�ݱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���_02.jpg");
	CreateTextureSP("�}�����}", 1000, Center, Middle, "cg/st/3d������K_�T��_ͨ��b.png");
	Move("�}�����}", 0, @316, @0, null, true);
	Shake("�}�����}", 600000, 2, 0, 0, 0, 1000, null, false);

	CreatePlainEX("�}��д", 999);

	Move("�}�����}", 6000, @-60, @0, DxlAuto, false);
	Move("�}�ݱ���", 600000, -100, @0, null, false);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "slide_01_02_1", true);

//�����g�Τ֤�
	CreateSE("SE02","se����_냇��_�k��04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");
	DrawEffect("�}��д", 200, "LowWave", 0, 200, Axl2);
	Fade("�}��д", 200, 500, Axl2, false);
	Fade("�}ɫ��", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("�}��д", 3000, false);
	FadeDelete("�}ɫ��", 300, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="��������" src="voice/md05/010vs1270a01">
��������Ȼ���У���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1280a00">
���Է��������ƺ������޾���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ϊ�ϼƣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ��", 19000, "#FFFFFF");
	CreateSE("SE01","se����_�z_�l����02");
	CreateSE("SE01b","se���L_����_�z_�ϵ�������01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Move("�}�����}", 2000, @-60, @0, null, false);

	Wait(1000);

	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}ɫ��", 0, 1000, null, true);
	Wait(10);

	Fade("�}ɫ��", 150, 0, Axl1, false);
	DrawTransition("�}ɫ��", 150, 1000, 0, 100, null, "cg/data/slide_05_00_1.png", false);
	Move("�}�����}", 150, @-2000, @0, Axl2, true);

//���T��
//���֤졢���餺
	CreateSE("SE02","se����_냇��_�k��04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 19000, "#FFFFFF");

	Delete("�}�����}*");
	Delete("�}�ݱ���*");
	Delete("�}��д*");

	CreateTextureEX("�}���ñ���", 110, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateTextureSP("�}����", 100, Center, -864, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	Fade("�}���ñ���", 200, 500, null, false);
	DrawEffect("�}���ñ���", 200, "LowWave", 0, 200, Axl2);
	Fade("�}���ñ���", 200, 500, null, false);
	Fade("�}ɫ��", 200, 300, Axl2, true);

	Wait(300);

	FadeDelete("�}ɫ��", 300, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md05/010vs1290a00">
����������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���Ӳ���?!

����Ȼ�������������㷶Χ�Ŀռ�Ť����
������������Ҳ���õ���

�������Ļ�����ֻ�ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/md05/010vs1300a01">
���������ԣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1310a00">
��ʲô��
����ô���������ʲô����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs1320a01">
�����ǡ�����

//��������
<voice name="����" class="��������" src="voice/md05/010vs1330a01">
��һ��������ʱ�䣡��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1340a00">
��ʱ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��ʱ��?!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ؿ��g
	CreateSE("SE02","se����_냇��_�k��04");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorSPadd("�}ɫ��", 19000, "#FFFFFF");

	Delete("�}�����}*");
	Delete("�}�ݱ���*");
	Delete("�}��д*");
	Delete("�}���ñ���");

	CreateMask("��һ", 3000, Center, Middle, "cg/data/zoom_01_00_0.png", false);
	SetAlias("��һ","��һ");
	CreateTextureEXadd("��һ/�}��һ", 3010, Center, Middle, "cg/ev/ev104_⏴������_d.jpg");

	CreateMask("���", 3000, Center, Middle, "cg/data/zoom_01_00_1.png", false);
	SetAlias("���","���");
	CreateTextureEXadd("���/�}�ݶ�", 3010, Center, Middle, "cg/ev/ev112_һ���򤪊������ä��������.jpg");

	CreateMask("����", 3000, Center, Middle, "cg/data/effect_01_00_0.png", false);
	SetAlias("����","����");
	CreateTextureEXadd("����/�}����", 3010, Center, Middle, "cg/ev/ev123_�󄇤�֤ĥ��`���å�����.jpg");

	CreateMask("����", 3000, Center, Middle, "cg/data/circle_06_00_0.png", false);
	SetAlias("����","����");
	CreateTextureEXadd("����/�}����", 3010, Center, Middle, "cg/ev/ev133_����������_c.jpg");

	CreateMask("����", 3000, Center, Middle, "cg/data/circle_07_00_0.png", false);
	SetAlias("����","����");
	CreateTextureEXadd("����/�}����", 3010, Center, Middle, "cg/ev/ev165_��K����_c.jpg");

	CreateMask("����", 3000, Center, Middle, "cg/data/circle_12_00_0.png", false);
	SetAlias("����","����");
	CreateTextureEXadd("����/�}����", 3010, Center, Middle, "cg/ev/ev207_������g����ŤĴ���_a.jpg");

	TimeAction();

	Wait(300);

	FadeDelete("�}ɫ��", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ռ����ص���

���Լ�����Ұ�и��ֳ��Լ�����Ӱ��
����ȥ����δ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="��������" src="voice/md05/010vs1350a01">
��ʱ��Ť��������

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md05/010vs1360a00">
��������?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/010vs1370a01">
����Ǹ�Ҳ�֪������

//��������
<voice name="����" class="��������" src="voice/md05/010vs1380a01">
����Ȼ��֪�������롪����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���r�g����
//���ʤ󤫤����w�Ф���롣�ФҤ�`��
	CreateSE("SE01","se����_냇��_�k��04");
	MusicStart("SE01",0,1000,0,500,null,false);

	CreateColorEX("�}ɫ��", 20000, "#FFFFFF");

	SetFrequency("SE01", 2000, 2000, AxlAuto);
	Fade("�}ɫ��", 2000, 850, null, true);

	Wait(2000);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md05_011.nss"

.//�ץ�����======================================================

..//���ؿ��g
function TimeAction()
{
	CreateProcess("�ץ������ؿ��gһ", 5000, 0, 0, "TimeSet1");
	Request("�ץ������ؿ��gһ", Start);
	Request("�ץ������ؿ��g*", Disused);
}

function TimeSet1()
{
	begin:
	while(1)
	{
	Zoom("@��һ/�}��һ", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@��һ/�}��һ", 3000, 1100, 1100, null, false);
	DrawTransition("@��һ/�}��һ", 2000, 0, 1000, 100, null, "cg/ef/ef022_��������ɢ�A.jpg", false);
	Fade("@��һ/�}��һ", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@��һ/�}��һ", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@��һ/�}��һ", 2000, 1000, 0, 100, null, "cg/ef/ef039_�r�g�Ƅ�.jpg", false);
	Fade("@��һ/�}��һ", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@���/�}�ݶ�", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@���/�}�ݶ�", 3000, 1100, 1100, null, false);
	DrawTransition("@���/�}�ݶ�", 2000, 0, 1000, 100, null, "cg/ef/ef022_��������ɢ�A.jpg", false);
	Fade("@���/�}�ݶ�", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@���/�}�ݶ�", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@���/�}�ݶ�", 2000, 1000, 0, 100, null, "cg/ef/ef039_�r�g�Ƅ�.jpg", false);
	Fade("@���/�}�ݶ�", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@����/�}����", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@����/�}����", 3000, 1100, 1100, null, false);
	DrawTransition("@����/�}����", 2000, 0, 1000, 100, null, "cg/ef/ef022_��������ɢ�A.jpg", false);
	Fade("@����/�}����", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@����/�}����", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@����/�}����", 2000, 1000, 0, 100, null, "cg/ef/ef039_�r�g�Ƅ�.jpg", false);
	Fade("@����/�}����", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@����/�}����", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@����/�}����", 3000, 1100, 1100, null, false);
	DrawTransition("@����/�}����", 2000, 0, 1000, 100, null, "cg/ef/ef022_��������ɢ�A.jpg", false);
	Fade("@����/�}����", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@����/�}����", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@����/�}����", 2000, 1000, 0, 100, null, "cg/ef/ef039_�r�g�Ƅ�.jpg", false);
	Fade("@����/�}����", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@����/�}����", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@����/�}����", 3000, 1100, 1100, null, false);
	DrawTransition("@����/�}����", 2000, 0, 1000, 100, null, "cg/ef/ef022_��������ɢ�A.jpg", false);
	Fade("@����/�}����", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@����/�}����", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@����/�}����", 2000, 1000, 0, 100, null, "cg/ef/ef039_�r�g�Ƅ�.jpg", false);
	Fade("@����/�}����", 3000, 10, Axl1, false);

	Wait(1400);

	Zoom("@����/�}����", 0, 1000, 1000, null, true);

	Wait(32);

	Zoom("@����/�}����", 3000, 1100, 1100, null, false);
	DrawTransition("@����/�}����", 2000, 0, 1000, 100, null, "cg/ef/ef022_��������ɢ�A.jpg", false);
	Fade("@����/�}����", 3000, 650, Axl1, true);

	Wait(300);

	Zoom("@����/�}����", 2000, 1300, 1300, Axl1, false);
	DrawTransition("@����/�}����", 2000, 1000, 0, 100, null, "cg/ef/ef039_�r�g�Ƅ�.jpg", false);
	Fade("@����/�}����", 3000, 10, Axl1, false);

	Wait(1400);

	}
}