//<continuation number="200">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_020.nss_MAIN
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
	#bg007_��m��·a_01=true;
	#bg033_���Lլ����˽��_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_021.nss";

}

scene md01_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_019.nss"

//�����Lլ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg007_��m��·a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm23",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������Ůʿ�����к������������𳤼ҵ��š�
����ƽ��һ�������ر�������Ͷ�����ļ���
���ִ�ɨ��һ����Ⱦ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100,"bg033_���Lլ����˽��_01.jpg");
	FadeBG(0,true);

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����߽�������Լ���һ�䷿���������£�
���̽��Ӱ�ᦹ�������ֽչ����
��Ȼ��ʼĬĬ˼����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/md01/0200010a00">
����������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0200020a01">
������������߰��Ұɡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0200030a00">
����������
���ţ��������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��֩�����
	CreateSE("SE01","se����_�z_�l����01");
	StR(1000, @30, -300,"cg/st/3d����֩��_���.png");
	Zoom("@StR*", 0, 800, 800, null, true);
	Rotate("@StR*", 0, @180, @0, @0, null,true);
	Request("@StR*", Smoothing);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-30, @30, DxlAuto, false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md01/0200040a01">
�������˰�������ʲô�ˣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md01/0200050a00">
��Ҳ����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0200060a01">
���ߡ���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0200070a00">
����������
�������˵���ء���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0200080a01">
������������ǿ˵������
������֪�������Ҫ����
������ı䡣��

//��������
<voice name="����" class="��������" src="voice/md01/0200090a01">
����������Ҫ������ȫ��׼���á�
���������Ψһ��ʹ������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0200100a00">
�����𡭡�
����Ȼ�����Ǹ�����ɡ���

//��������
<voice name="����" class="����" src="voice/md01/0200110a00">
����Ҳ��Ҫ��������ǻۡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0200120a01">
���ǻ����˷��յ����飿��

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/md01/0200130a00">
���е��ء���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0200140a01">
����������Ҫ����ʲô����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0200150a00">
���š�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0200160a00">
���Ƶ�Ȧ����˵�Ļ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0200170a01">
�������İɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0200180a00">
����˵��Ϊ��Ҷ����ĺ׸԰�ᦹ��ǹ���֮�ء�
������Ҫ��<RUBY text="����">����</RUBY>�Ļ�������Ҳ�᳤�治��ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0200190a01">
��������������������

//��������
<voice name="����" class="��������" src="voice/md01/0200200a01">
��������ô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 1000);

}

..//������ָ��
//�Υե����롡"md01_021.nss"