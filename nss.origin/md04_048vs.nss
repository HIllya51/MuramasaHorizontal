//<continuation number="1100">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;

//������󡸣ãУ��ǥХå��á�
		$GameDebugSelect = 1;

		Reset();
	}

}

scene md04_048vs.nss_MAIN
{

//���å��ԥå��ãӣ��
	//CP_AllSet("����");

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
	#bg105_���T�����ڂ�_02=true;
	#ev220_�衩�������=true;
	#ev908_����늴ŔS��_a=true;
	#ev908_����늴ŔS��_c=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#aw_����=true;

	$PreGameName = $GameName;

	CP_AllDelete();

	$GameName = "md04_049vs.nss";

}

scene md04_048vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md04_047vs.nss"

	if($GameDebugSelect==1){CP_AllSet("���٥�");}

//���ѳ���bg105
	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg105_���T�����ڂ�_02.jpg");
	FadeBG(0,true);
	CreateTextureSP("�}�ӣԣ�100", 1002, Center, InBottom, "cg/st/3d����_����_ͨ��.png");

	MyLife_Count(0,600);
	CP_IHPChange(0,9,null,false);
	CP_PowerChange(0,820,null,false);

	MyTr_Count(0,150);
	CP_HighChange2(0,3,null,false);
	CP_SpeedChange2(0,0,null,false);

	CP_AziChange(0,45,null,false);
	CP_AltChange(0,0,null,false);

	Cockpit_AllFade2();

	SoundPlay("@mbgm12", 0, 1000, true);
	FadeDelete("�ϱ���", 500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ȡ�����ɡ�
������Ϊ���ۣ���ʹ�ٶ��������衣

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_��ʹ.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md04/048vs0010a00">
�������ء�������

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0020a01">
���ȵȣ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ʹ�ä������㤭�`��
	OnSE("se����_�z_װ��03", 1000);
	CreateColorEXadd("�}�ե�", 20000, "#FFFFFF");
	MyTr_Count(300,413);
	Fade("�}�ե�", 300, 1000, null, true);

	Wait(50);

	Fade("�}�ե�", 300, 0, null, false);
	MyTr_Count(300,150);

	CP_PowerChange(600,770,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����������۵�װ�׸�ԭ��ͬʱ��ʼ���Ƽ粿��
�������޷��򵥸�ԭ�����ⳡս�����޷�ʹ������˰ɡ�

������ʹ��ʼ������

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md04/048vs0030a00">
���������°���ʽ����

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0040a01">
���š���

{	FwL("cg/fw/fw�衩�転��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0050a07">
�����ԣ������ͷ������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ع������Ĳ���裬���������������
����ݺݵ����ߴ�����ߡ�

���ƺ��������ҡ�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩�転��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0060a07">
�������㡭��
����ô��Ū�������ߵ�����!?һ����㱻����Ҳ
������ô�ɰɣ���

{	FwL("cg/fw/fw�衩�転��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0070a07">
�����⻹�㽣����!!��

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0080a01">
���ǽ��С���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���Ӵ�������˿������������⡣

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0090a01">
���Ҳ���������<RUBY text="������">�໤��</RUBY>��
����Ϊ��ȡʤ����ɵĴ����

//��������
<voice name="����" class="��������" src="voice/md04/048vs0100a01">
��Ϊ��ȡʤ�ػ�����Ϊ��ȡʤҲ���������ˡ���

{	FwL("cg/fw/fw�衩�転��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0110a07">
������а���ɣ���

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0120a00">
����������������

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,850,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������űߵĶ������ұ߲������
������������λ�����ɡ�

��в�
����������Ψһ����������ȡ�ء�

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md04/048vs0130a00">
���ҵĽ�����ô�����ǶԵġ���

{	FwL("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0140a07">
���������Ҳ���Ǹ��鷳�ˡ�
��ΪʲôҪ��ͬ���ֶ�������

{	FwL("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0150a07">
���˼Һ����İ�����

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0160a00">
����������ô˵��Ҳ���뷴����
�������߼�Ȼ�ͽ��н�Ե���Ǵ�ž������ʵ���
���ɡ���

{	FwL("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0170a07">
������������
��������˵��<RUBY text="��������">û�ܽ�Ե</RUBY>Ҳ�������ɵĿ�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���͵�Ц�š�
�������ں޵�ҧ���촽��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩�転��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0180a07">
����ô��ġ�
�����з��ˣ��������ô��̡���

{	FwL("cg/fw/fw�衩�転��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0190a07">
������һ����ʹ��Ը�⣬Ҳ�ǵö���������ɱ
���ɡ�����

{	FwL("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0200a00">
��������Ը��Ļ����ÿ�����

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��֪�����ã�ȴ���ǰ�������
���ش𣬹�Ȼ��ҡͷ��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩�転��_���.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0210a07">
��û�취��
������<RUBY text="������">��һ�</RUBY>�������°ɡ���

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩�衢���ͥ륮�`�ϕN

	SetVolume("@mbgm*", 1000, 0, null);
	WaitKey(1000);
	CreateSE("SE01","se����_��x_�k��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�", 20000, "#FFFFFF");


	CreateTextureSPadd("�}����x��", 19005, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
	CreateTextureSP("�}����x��", 19000, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");

	CreateTextureSP("�}�ӣԣ�100", 1002, Center, InBottom, "cg/st/3d����_����_���L.png");
	CreateTextureEXadd("�}�������}����", 1003, Center, InBottom, "cg/st/3d����_����_���L.png");

	SetBlur("�}�������}����", true, 1, 100, 100, false);


$��`�ץ�`�֥ʥå��� = "@�}�������}����";
$��`�ץ�`�֥����� = 25000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);

	Zoom("�}����x*", 0, 1300, 1300, null, true);
	SetBlur("�}����x��", true, 2, 500, 30, false);

	Zoom("�}����x*", 100, 1000, 1000, Dxl2, false);
	Fade("�}�ե�", 100, 0, null, false);
	FadeDelete("�}����x��", 300, true);

	WaitKey(1000);

	FadeDelete("�}����x��", 300, true);

	Fade("�}�������}����", 2000, 300, null, false);

	CreateSE("SE01","se����_��x_��������_�ʂ�_L");
	MusicStart("SE01",0,500,0,500,null,true);

	SetFwL("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/md04/048vs0220a00">
��������

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0230a01">
��������������������ڱ䶯��
�����ǡ�����

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0240a00">
��������!?��

{	FwL("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0250a01">
�������ǣ���

</PRE>
	SetTextEXL();
	TypeBeginLIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���÷���ǰ��ֹ�����Ѿ�������
����������ЩԶ��һ���޷����

������һ���ǵõ��Ž��в��ɡ�
������������Ȼ�������

����Ϊ����֮���е��ؼ������峬�ѳ����޷�Ԥ�⣬
��ʹ����ʲô����Ҳ����Ϊ�桪�������۷���ʲô����
������Ը����ɡ�
����ͷ��һ����ͷҲ��һ�����Ҷ���������׼����

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwL("cg/fw/fw�衩�転��_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0260a07">
��������ô����Ҳ���ԡ�
������ʲô����������������

{	FwL("cg/fw/fw�衩�転��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0270a07">
��ֻ�ǹ���֪�����ѡ���

{	FwL("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0280a00">
������֪����������

{	FwL("cg/fw/fw�衩�転��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0290a07">
�����Ӧ�üǵõġ�
���Ѿ������㿴�����ˡ���

{	FwL("cg/fw/fw�衩�転��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0300a07">
������������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ͥ륮�`�ϕN

	CreateColorSPadd("�}�ե�", 20000, "#FFFFFF");
	CreateTextureSP("�}����100", 150, Center, Middle, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Fade("�}����100", 0, 400, null, true);
	Zoom("�}����100", 0, 1200, 1200, null, true);
	DrawEffect("�}����100", 50, "LowWave ", 0, 100, null);


	MusicStart("SE01",1000,800,0,800,null,true);
	Fade("�}�ե�", 1000, 0, null, true);


	SetFwL("cg/fw/fw�衩�転��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0310a07">
�������<RUBY text="������������">������������</RUBY>����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0320a07">
���׸�����������������ȫ������

{	FwL("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0330a00">
������������

{	FwL("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0340a07">
������Ŷ������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ͥ륮�`���


	MusicStart("SE01",0,1000,0,1000,null,true);
	SetBlur("�}�ӣԣ�100", true, 6, 500, 60, false);

	OnSE("se����_������_��ν~��", 1000);
	Zoom("�}�������}����", 500, 1600, 1600, Axl1, false);
	Zoom("�}�ӣԣ�100", 500, 1600, 1600, Axl1, false);
	FadeDelete("�}�ӣԣ�100", 500, true);

	Request("�ץ�����", Stop);
	Delete("�ץ�����");
	Delete("�}�������}����");

	SetFwL("cg/fw/fw�衩�転��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0350a07">
��������������<RUBY text="Castle of Howling">�����Ǳ�</RUBY>����

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����x����������
	#aw_����=true;

	OnSE("se����_냇��_������",1000);

	CreateColorSPadd("�}�ե�", 20000, "#FFFFFF");
	SetVolume("@mbgm*", 2000, 0, null);
	SetVolume("@SE*", 2000, 0, null);

	Delete("�}����100");

//	CreateSE("SE01","se����_��x_�k��03");
//	MusicStart("SE01",0,1000,0,1000,null,false);
//	SetVolume("@SE01*", 100, 0, null);

	SetFont("����", 22, FFFFFF, 000000, MEDIUM, RIGHTDOWN);
	CreateText("�}�Ҥ�", 16000, 50, 20, 700, 500, "���Ҿ���������");
	SetAlias("�}�Ҥ�","�}�Ҥ�");
	Move("�}�Ҥ�", 0, 450, 230, null, true);
	Fade("�}�Ҥ�", 0, 0, null, true);

	Cockpit_AllFade0();
	CreateTextureEX("�}��", 2000, Center, Middle, "cg/ev/ev220_�衩�������.jpg");
	Request("�}��", Smoothing);

	Zoom("�}��", 0, 2000, 2000, Dxl1, false);
	SetBlur("�}��", true, 2, 500, 60, true);

	CreateTextureSP("�衩�������", 15000, @0, @0, "cg/ev/ev220_�衩�������.jpg");
	Fade("�衩�������", 0, 500, null, true);

	Zoom("�衩�������", 0, 1500, 1500, null, true);
	CreateTextureEX("�衩������磲", 15000, @0, @0, "cg/ev/ev220_�衩�������.jpg");
	Zoom("�衩������磲", 0, 1500, 1500, null, true);
	DrawEffect("�衩�������", 50, "LowWave ", 0, 100, null);
	DrawEffect("�衩������磲", 50, "SuperWave", 0, 500, null);

	Wait(2000);

	CreateSE("�ܤ��`", "se����_������_�����01");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���02");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	CreateSE("�Υ�����", "se�ճ�_�Cе_�Υ���03");
	MusicStart("�ܤ��`",2000,1000,0,500,null,false);

	Zoom("�}��", 00, 1500, 1500, Dxl1, false);
	Fade("�}��", 0, 1000, null, false);
	Fade("�}�ե�", 2000, 0, null, false);

	Wait(2000);

	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(100);
	Fade("�}�Ҥ�", 0, 0, null, false);
	Fade("�衩������磲", 0, 0, null, true);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(2000);

	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(100);
	Fade("�}�Ҥ�", 0, 0, null, false);
	Fade("�衩������磲", 0, 0, null, true);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(50);
	Fade("�}�Ҥ�", 300, 1000, null, false);
	MusicStart("�Υ�����",0,1000,0,1000,null,false);
	Wait(100);
	Fade("�衩������磲", 0, 1000, null, true);
	Wait(150);
	Fade("�}�Ҥ�", 0, 0, null, false);
	Fade("�衩������磲", 0, 0, null, true);
	SetVolume("�Υ�����", 0, 0, null);

	Wait(2000);

	Fade("�}�Ҥ�", 300, 1000, null, false);
	MusicStart("�Υ�����",0,1000,0,1000,null,true);
	Wait(100);
	Fade("�衩������磲", 0, 500, null, true);
//	Fade("�衩������磲", 0, 0, null, true);

//�����˺Ϥ碌�ơ����Ҿ������������ãǱ�ʾ��С������
//�����ݳ������С�inc�Ѿ�

	Fade("�}�Ҥ�", 0, 0, null, false);
	SetVolume("�Υ�����", 3000, 100, null);

	WaitKey(1500);

	Delete("�}�Ҥ�");

	CreateSE("SE01","se����_������_�衩�������_L");
	MusicStart("SE01",0,200,0,600,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������������ô�ˣ�

����ʲô����
�������<RUBY text="������">������</RUBY>�ء��ƽ�����£��
�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣţ�����᤭���g�ʤ륬��ǤϤʤ��^ȥ��Ʒ��
//���ܥ���������ϳɤ����������������
//��ev220
//���ӣťܥ��`����졩���Ϥ��롣�ãǱ�ʾ�⤽���
//���Ϥ碌���ݳ��ǡ�


	MusicStart("SE01",1000,600,0,800,null,true);
	Cockpit_AllFade0();
	CreateTextureEXadd("�}����", 19002, Center, Middle, "cg/ev/ev220_�衩�������.jpg");
	Request("�}����", Smoothing);

	Zoom("�}����", 0, 3000, 3000, Dxl1, true);
//	SetBlur("�}����", true, 2, 500, 60, true);


//	Rotate("�}����", 90000, @0, @0, @-1800, null, false);

	Zoom("�}����", 1500, 2000, 2000, Dxl1, false);
	Fade("�}����", 1500, 1000, null, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
�������˵�������
���������������������ü��ء�

��������������Ӱ��
���������ǵ���Ӱ����

������������
�������Ӿ���

����������<RUBY text="����">�ź�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣťܥ��`�ࡢ���Ϥ��٥��
//���ãǱ�ʾ���Ҥ줿�Ф���

//inc�ñ������CG��ɫ���ʥ��ե����Ȥ򤫤����Ȥ���ݥ����F���𤳤�ޤ�����
//�^ʹ���¤��ݤ����������Ȥˤʤ�ޤ����ʤΤǡ��F״�X�����Ƥ���ޤ���

	CreateTextureEXsub("�}����2", 19003, Center, Middle, "cg/ev/ev220_�衩�������.jpg");
	Zoom("�}����2", 0, 3000, 3000, Dxl1, true);
//	SetBlur("�}����2", true, 2, 500, 60, true);
	CreateTextureEX("�}����3", 19000, Center, Middle, "cg/ev/ev220_�衩�������.jpg");
	Fade("�}����3", 1500, 500, null, false);

//	Rotate("�}����2", 50000, @0, @0, @1800, null, false);
	Zoom("�}����2", 1500, 2000, 2000, Dxl1, false);
	Fade("�}����2", 1500, 500, null, true);
	MusicStart("SE01",1000,1000,0,1000,null,true);

	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md04/048vs0360a00">
�����ġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//inc�ñ�����������z��Ǥ��륤��`���ǡ�SE�ƥ�ݤ򥢥åפ����Ƥ��ޤ���

	MusicStart("SE01",1000,1000,0,1400,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
����Ϣ��
������Ϣ��

��<RUBY text="����������">���ĵ���Ϣ</RUBY>��

��ʵ����̫���ˡ�
�������������������Ĺ��ߣ�һ�ж�ӵ����ȷ������
����ӿ����

�����ֶ��������ҵĴ����޷�����!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������Υƥ����Ȥ����٤�����롣�ãǄI��
//���ƥ����Ȥ��^ȥ�����ʥꥪ�����m���˒i����

//	Rotate("�}����2", 50000, @0, @0, @3600, null, false);
//	Rotate("�}����", 80000, @0, @0, @-3600, null, false);
/*
	SetFont("����", 50, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	CreateText("��Ļ01a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ02a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ03a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ04a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ05a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ06a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ07a",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");

	Move("��Ļ01*", 0, @0, @-300, null, true);
	Move("��Ļ02*", 0, @100, @-200, null, true);
	Move("��Ļ03*", 0, @200, @-100, null, true);
	Move("��Ļ04*", 0, @300, @0, null, true);
	Move("��Ļ05*", 0, @400, @100, null, true);
	Move("��Ļ06*", 0, @500, @200, null, true);
	Move("��Ļ07*", 0, @600, @300, null, true);

	Move("��Ļ*", 0, @0, @50, null, false);

	CreateText("��Ļ01b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ02b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ03b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ04b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ05b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ06b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");
	CreateText("��Ļ07b",14000,Center,inherit,auto,auto,"0101010101010101010101010101010111101010111010111101011110101010011011110000011110110110101010101010101110101010101");

	Move("��Ļ01b", 0, @500, @-300, null, false);
	Move("��Ļ02b", 0, @400, @-200, null, false);
	Move("��Ļ03b", 0, @300, @-100, null, false);
	Move("��Ļ04b", 0, @200, @0, null, false);
	Move("��Ļ05b", 0, @100, @100, null, false);
	Move("��Ļ06b", 0, @0, @200, null, false);
	Move("��Ļ07b", 0, @-100, @300, null, false);

	Request("��Ļ*",NoLog);
	Request("��Ļ*",PushText);
*/

	CreateTextureEX("�}��������", 14000, Center, Middle, "cg/ef/ef050_����һ��.png");
	MusicStart("SE01",1000,1000,0,1800,null,true);
	Fade("�}��������", 300, 1000, null, true);


	SetFwC("cg/fw/fw����_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md04/048vs0370a00">
����������������������������������������
����������������������������������������
����������������������������������������
������������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MusicStart("SE01",1000,1000,0,800,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
�������
�������
��
����Ϣ����Ϣ����Ϣ����Ϣ����Ϣ��

�����ǡ������������硪��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MusicStart("SE01",1000,1000,0,1800,null,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0380a01">
���������ǡ�����

//��������
<voice name="����" class="��������" src="voice/md04/048vs0390a01">
���˵�֪�����ͽ��е�֪������
��<RUBY text="����">����</RUBY>��һ�𣿡�

{	FwC("cg/fw/fw�衩�転��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0400a07">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	MusicStart("SE01",1000,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����ֳ���Ⱥ��֮�У��������������ĸ���˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩�転��_�n�y.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0410a07">
�������Ҽ���Ϊ������Ϊ���е�������
�����������֪�����ý��е�֪�������ռ�
�鱨�����������ʹ��ԡ���

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0420a07">
���������������<RUBY text="��������">��Ϣ��ˮ</RUBY>��
��������磿�����Ѿ������˰ɣ���

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0430a00">
������������

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0440a07">
�������ء�
�����뽣�еĸ���֪����������ͽ��ж�����
�����Ķ���Ҳ��ץȡ��������

{	FwC("cg/fw/fw�衩�転��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0450a07">
������¡�����

{	FwC("cg/fw/fw�衩�転��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0460a07">
�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɩ`���n�ġ��������������۳Z
//���ӣţ���ν~��
//������ħ���𡢲��֣��ܤ�������ʾ��

	FadeDelete("�衩��*", 1000, true);
	Delete("�衩��*");

	SetVolume("@SE*", 1000, 0, null);
	Wait(1500);

	CreatePlainSP("�}��д", 20000);
	FadeDelete("�}��*", 1000, true);
	Delete("�}��*");
	Delete("�}��������");
	Delete("��Ļ*");

	CreateTextureSP("����", 2000, @0, @0, "cg/ev/ev237_�դ˕N�ä�����_b.jpg");
	CreateTextureSPadd("���߄���", 2000, @0, @0, "cg/ev/ev237_�դ˕N�ä�����_b.jpg");
	Fade("���߄���", 0, 500, null, true);
	Request("����*", Smoothing);
	SetShade("����*", MEDIUM);
	Zoom("����*", 0, 2000, 2000, null, true);

$��`�ץ�`�֥ʥå��� = "@���߄���";
$��`�ץ�`�֥����� = 25000;

	CreateProcess("�ץ�����", 150, 0, 0, "FlyMoving");
	SetAlias("�ץ�����","�ץ�����");

	Request("�ץ�����", Start);


//��������ݳ���"HardSplit"�ϼ��������룦�ؤ��Τ��{�����ޤ�����
//	Zoom("�}��д", 1000, 2000, 2000, null, false);
//	FadeDelete("�}��д", 1000, false);
	OnSE("se����_냇��_������",1000);
	DrawEffect("�}��д", 1500, "HardSplit ", 0, 1000, Axl1);
	FadeDelete("�}��д", 1000, true);


//	SetVolume("@mbgm*", 300, 0, null);


	Wait(1000);

	CreateSE("SE01","se����_������_��ν~��");
	MusicStart("SE01",0,600,0,600,null,true);

	Wait(1000);

	SoundPlay("@mbgm02", 0, 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0470a01">
����������

//��������
<voice name="����" class="��������" src="voice/md04/048vs0480a01">
������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
������

������
��������������������ļ��᳡����������

��������

������

�����ԡ���������
�����������ԡ��������ԡ���������������
���ԡ��������Բ��Բ��Բ��Բ��Բ���

�����ֶ���������΢��

������

����ͬ���𡡡�������ͬ��Ԫ

//���ӣţ���ν~�С����ː���
{	MusicStart("SE01",1000,1000,0,1000,null,true);}

����
��������������������������������

��
��
����������������������������������������

�������������������������

��
��
��
��������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣš����Ф餯�����ƣ�ӳ��⿗�꽻����
//���ե��`�ɥ�����
//����������
	SetVolume("@mbgm*", 1000, 0, null);
	CreateTextureEX("�}����2", 19003, Center, Middle, "cg/ev/ev220_�衩�������.jpg");
	Zoom("�}����2", 0, 3000, 3000, Dxl1, true);
//	SetBlur("�}����2", true, 2, 500, 60, true);
	Request("�}����", Smoothing);
	Fade("�}����2", 1500, 1000, null, false);
	Rotate("�}����2", 10000, @0, @0, @-18000, null, false);

	Zoom("�}����2", 1500, 2000, 2000, Dxl1, false);
	Fade("�}����2", 1500, 1000, null, true);
	FadeDelete("����*", 1000, true);

	Wait(1000);
	CreateColorSP("�}�ե�", 19000, "BLACK");

	Wait(1000);
	FadeDelete("�}����2", 3000, true);

	Delete("�ץ�����");

	SetVolume("SE01*", 3000, 0, null);
	SetVolume("�ܤ��`", 3000, 0, null);
	SetVolume("�Υ���*", 3000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
�����������ڰ���

���úڡ�
�����䡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��������
<voice name="����" class="����" src="voice/md04/048vs0490a00">
��ʲô��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
���������ʶ��Ƭ���¼��ϡ�
������Լ������֮�ã�����ʶ���Լ����ڵ��ϡ�

�������ֳ������塣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ԫ�ι⾰

	Cockpit_AllFade2(1500);
	MyLife_Count(0,500);
	CP_IHPChange(0,10,null,false);
	CP_PowerChange(0,500,null,false);

	CP_SpeedChange(0,0,null,false);
	MyTr_Count(0,500);

	CP_HighChange(0,1500,null,false);
	CP_AziChange(0,243,null,false);
	CP_AltChange(0,0,null,false);
	CP_AltChangeA();

	CP_RollBarMoveA();
	CP_RollBarMove2(0,0,null,true);

	CreateColorSPmul("�}ɫ100", 18000, "RED");
	OnBG(100,"bg105_���T�����ڂ�_02.jpg");
	FadeBG(1500,true);
	Zoom("OnBG*", 0, 1200, 1200, Dxl1, true);
	FadeDelete("�}�ե�", 1500, false);
	Zoom("OnBG*", 4000, 1000, 1000, Dxl1, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
������ʧȥ��ʶ��ʱ�䣬�ƺ��������ж̵öࡣ
����Χ�Ĺ⾰��δ��δ֪�����滻��
���������ֳǡ�

�������Ҳһ��������վ��ԭ�ء�
�����ȵض����ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩�転��_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0500a07">
����������֮����ܳ��أ���硣
��û�뵽���ڻ�û��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0510a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
����ش�ȴ˵��������
��������ʲô��<RUBY text="����������">û��������</RUBY>�����ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������˥��`
//��Ӌ������å��㥫��å��㥫

	CreateSE("SE01","se����_�z_�����01");
	MusicStart("SE01",0,1000,0,1000,null,true);

	MyLife_Count(800,500);
	CP_IHPChange(6000,150,null,false);
	CP_PowerChange(6000,50,null,false);
	CP_IHPChange(6000,1,null,false);
	CP_SpeedChange(600,0,null,false);

	CP_EHPChange(5000,5,null,false);

	CP_HighChange(5000,2500,null,false);
	CP_AziChange(5000,2800,null,false);
	CP_AltChange(5000,50,null,false);

	CP_SpeedChange(6000,500,null,false);
	MyTr_Count(5000,60);

	Wait(500);

	FadeDelete("�}ɫ100", 3000, false);

	SetVolume("SE*", 2000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
�����������ƺ�Ҳ��һ����

���ƺ�������ʹ<RUBY text="�ϣ�">����ϵͳ</RUBY>��ȫ�����ĳ����
���ҿ�û����ı������Ѿ���ʼ�޸�����

�����ڲ����ڷ����У����ǲ����еĴ��ҡ�
����������ڷ����еĻ������Ի�׹�䡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ä�
	CreateColorSP("�\Ļ��", 30000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_0.png", true);

	Cockpit_AllFade0(0);
	Delete("�}ɫ100");
	SoundPlay("@mbgm10", 0, 1000, true);


	CreateColorEX("����", 100, "BLACK");
	Fade("����", 0, 600, null, true);

	CreateWindow("����", 5500, 0, 0, 276, 576, true);
	SetAlias("����","����");
	Fade("����", 0, 0, null, true);
	Move("����", 0, @658, @0, null, true);
	CreateTextureSP("����/�µ�", 5500, @-400, @0, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Fade("����", 0, 1000, null, true);
	CreateTextureSP("����/�}�ңӣ�", 5510, @-208, -170, "cg/st/3d�����|��_����_ͨ��.png");

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_1.png", false);
	Move("����/�}�ңӣ�", 600, @-320, @0, DxlAuto, false);

	DrawTransition("����", 300, 0, 1000, 100, null, "cg/data/slide_02_00_1.png", true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��������
<voice name="����" class="����" src="voice/md04/048vs0520a00">
������衣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
������˵���ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/md04/048vs0530a00">
���㡭��<RUBY text="����">������</RUBY>����
��Ҫ���Ƕ������������𣿡�

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0540a00">
���Ǹ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
����
��ħ��
�������飿
����Ȼ����

����֪��������ݡ�

��������

�����Ǿ޴�
������ǿ��
���������
������Զ��

�����Ƕ�����
�����ǻ�����
�����Ǳ�����
������������

������ֹ���������������������������������
�������<RUBY text="��������">�޴�����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/md04/048vs0550a00">
�����ֶ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateWindow("����", 5500, 80, 0, 276, 670, true);
	SetAlias("����","����");
	CreateTextureEX("����/�µ�", 4500, @0, @0, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	CreateTextureEX("����/�}��ӣ�", 4510, @-100, @100, "cg/st/3d����_����_���L.png");
	Fade("����*", 0, 1000, null, false);
	Move("����/�}��ӣ�", 600, -350, 44, Dxl3, false);
	DrawTransition("����", 300, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);

	SetFwC("cg/fw/fw�衩�転��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0421]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0560a07">
���š�
��Ҫ���Ǹ�����ק��������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0570a07">
������Ҫ��Ȼ�Ǽһﲻ���Ĭ������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0580a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
�����С�

�����ǣ����еġ�
��
��<RUBY text="����������">��������</RUBY>��

����Ļᱻ����

�����ֶ���Ҫ�ǳ����ڵ��ϣ�����ʼ��Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0590a01">
����������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0600a00">
���ָ����𣿡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0610a01">
���š�
�������ոյģ��Ƕ�������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0620a00">
��������Ķ�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0630a01">
�����Ǳ������Ϲ���ɡ�����

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0640a00">
��Ҫ�Ǳ������Ϲ���ͺ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
���Һʹ�����<RUBY text="����">�о�</RUBY>���ˡ�
����˯�ڵ��µ��Ǹ����ڡ��Ǹ���в��

��֪�����Ǹ�����Ϊʲô���ܸ�֮һЦ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0650a01">
���������Ƕ���������ɡ���

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0660a07">
����˵���ָ�����������Ļ���
���ǲ���<RUBY text="������">���ǵ�</RUBY>���𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0670a01">
������������

//��������
<voice name="����" class="��������" src="voice/md04/048vs0680a01">
���𡢽��񣿡�

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0690a07">
�������ֶ����������ȷ�Ļ���
�����ǽ��е���Դ����

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0700a07">
��������ȡ���ֵ���������˹��
����ȡ̫���Ě�����Ħ�졣
����ս���ȴ���������������ڵص׵���ȡ�
������������ı��ͣ�����ħ���𡣡�

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0710a07">
����Զ�Ŵ�������ģ���ұ�����񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
����ӡ��
������ƪ�����������������۵�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0720a01">
������������ˡ�
����ʹ���������������������������£�
���붼������ɣ���

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0730a07">
����ʹ���������־����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0740a01">
����<RUBY text="����">а��</RUBY>����˼�죬˭���Ҹ��أ�
��Ӧ�����Ϲ����������Ҫ���ҲŶԣ���

{	FwC("cg/fw/fw�衩�転��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0750a07">
������ֻ���Լ����㰡ι��
������������Ҳ�����෢���ģ����Ե�Ȼ��ֻ��
�����Լ��ķ��㡣��

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0760a07">
��Ҫ������<RUBY text="��������">��ʵ����</RUBY>�Ļ��������е�ͨ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0770a01">
������������

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0780a07">
���Ƕ�����û�������õĶ��䣬
Ҳû�гԹ�Ʒ�õ��졣
�������������ң�Ψ��һ������������

{	FwC("cg/fw/fw�衩�転��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0790a07">
��������������˼�졣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0800a00">
������衭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
�����ǲ���ô���Ļ���
������޷���<RUBY text="����">�Ǹ�</RUBY>�����𡭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���٤ӥ��ͥ륮�`�ϕN
	CreateColorEXadd("����/������", 15000, "RED");

	CreateSE("SE01","se����_냇��_����01_L");
	MusicStart("SE01",0,1000,0,1300,null,true);

	Fade("����/������", 1000, 600, null, false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0500]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0810a01">
������������!!��

{	FwC("cg/fw/fw�衩�転��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0820a07">
�����۸���ж���ǿ���Ǹ������ж�ٶۣ�ֻҪ
��������һ���Ǹ��Ļ��ͻᵹ�°ɡ�
�����ԣ��Ҿ���ô������

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0830a07">
����Ų�Ҫ����������Ƚ����Ŷ����硣��

{	FwC("cg/fw/fw����_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0840a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 2000, 0, null);

	CreateColorEXadd("����/������", 15000, "BLUE");

	CreateSE("SE01","se����_늓�_���02");
	MusicStart("SE01",0,1000,0,1400,null,true);

	Fade("����/������", 1000, 1000, null, true);
	CreateTextureEX("����/�}��EV", 6510, @-478, @0, "cg/ev/ev908_����늴ŔS��_a.jpg");
	Fade("����/�}��EV", 1000, 1000, null, false);
	Fade("����/������", 1000, 300, null, true);
	Fade("����/������", 1000, 1000, null, true);
	Fade("����/������", 1000, 300, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
����֮�������������ﵹ�¡�
����Ȼʧȥ�Ķ�����̫��̫�����ˡ�

��˲����ж��£����ն̵����ʡ�
��Ȼ�������ھۼ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0850a01">
������!?��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0860a00">
��<RUBY text="Railgun">�������</RUBY>��
����õ��ɣ�����?!��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs0870a01">
�������������ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���
	Wait(500);

	CreateSE("SE03","se����_�z_װ��05");
	MusicStart("SE03",0,1000,0,1000,null,false);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	Fade("�ե�å����",200,1000,null,true);
	FadeDelete("��*", 1000, false);
	Delete("����");

	FadeDelete("�}����300", 300, true);

	CreateTextureSP("�}����500", 6200, Center, Middle, "cg/ev/resize/ev908_����늴ŔS��_cl.jpg");
	CreateTextureSP("�}����400", 6200, Center, Middle, "cg/ev/resize/ev908_����늴ŔS��_cl.jpg");
	CreateTextureSP("�}����600", 6200, Center, Middle, "cg/ev/resize/ev908_����늴ŔS��_cl.jpg");
	Move("�}����400", 0, -205, -55, null, true);
	Move("�}����500", 0, -205, -55, null, true);
	Move("�}����600", 0, -205, -55, null, true);
	SetVertex("�}����600", 680, 130);

	Shake("�}����400", 1000000, 1, 1, 0, 0, 1000, null, false);
	Zoom("�}����600", 0, 1200, 1200, null, true);

	SetBlur("�}����600", true, 3, 500, 100, false);

	CreateSE("SE02","se����_늓�_���02");
	MusicStart("SE02",0,1000,0,800,null,false);

	FadeDelete("�ե�å����", 1000, false);
	Zoom("�}����600", 500, 1000, 1000, Dxl1, false);
	Fade("�}����600", 500, 0, null, true);

	Delete("�}����600");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
���ڻ�δվ�ȣ��޷�ն�������ڣ�����Ψһ�ķ�����
����ŵ����ĵ����С����ô�����⣬���������ڵĶ̵�
<RUBY text="����">���</RUBY>��

��������ʲô�˶������ܱܿ���
������������һ�Σ���һ���ٶȳ���������ɹ��ر���
�����Ҳ���Ϊ��������õ���ͨ���Ǿ��޿��ܷ�Ӧ�����ġ�

��Ŀ���ǽš�
��ֻҪ��ֱ�����Ͳ�����������ˣ����е��ĳ������ʹ
��װ��Ҳ�޷���ȫ������

���Է�Ӧ�û��ܵ�һ���̶��ϵ����ˡ�
��Ȼ���ҳû��뿪�˵أ��ϸ����ظ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	FadeDelete("�}*", 1500, true);

	SetFwC("cg/fw/fw�衩�転��_ͨ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0880a07">
������Ҫ�������𡭡���

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0890a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��I�T�����ͥ륮�`�ϕN

	CreateColorSPadd("����", 15000, "#FFFFFF");
	Delete("�}*");

	CreateWindow("�}�ף�", 1500, Center, -288, 1024, 288, true);
	SetAlias("�}�ף�","�}�ף�");
	CreateTextureSP("�}�ף�/�}������100", 1500, Center, middle, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Fade("����", 300, 0, null, true);

	CreateTextureSP("�}�ף�/�}�ӣԣ�", 1500, -151, 0, "cg/st/3d����_����_��x.png");
	Request("�}�ף�*", Smoothing);

	Move("�}�ף�/�}������100", 0, @312, @0, null, true);
	Move("�}�ף�/�}�ӣԣ�", 0, -151, 100, null, true);
	Move("�}�ף�", 0, @0, @288, null, true);


	CreateWindow("���ף�", 1500, Center, 576, 1024, 576, true);
	SetAlias("���ף�","���ף�");
	CreateTextureEX("���ף�/���ӣԣ�", 1000, -300, -300, "cg/ev/ev908_����늴ŔS��_c.jpg");
	Request("���ף�*", Smoothing);

	Move("���ף�/���ӣԣ�", 0, @120, @330, null, true);
	Move("���ף�", 0, @0, @-288, null, true);

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01a","se���L_����_��ͻ�M03");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Move("�}�ף�/�}������100", 500, @-380, @0, Dxl1, false);
	Move("�}�ף�/�}�ӣԣ�", 500, -150, @-200, Dxl2, false);

	Zoom("���ף�/���ӣԣ�", 0, 1100, 1100, Dxl1, true);
	Fade("���ף�*", 300, 1000, null, false);
	Move("���ף�/���ӣԣ�", 500, @190, @0, Dxl2, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
�����ڣ�����ʤ������ʩ��������
������ɵ�һ����Ӯ��

����������������������ת��Ϊ���������ҿ��ƴ�����
��������������Щ������������õ���ɡ�
�������¶�Ҳʮ����Ҫ��

������ʽ�ܲ����޴��<RUBY text="Energy">����</RUBY>���������ã�
һ��ʧ�ܿɲ���Ѫ�����Ѿ������µġ�
������ר���ٶ�������������֮һ���ٶ�������������
���

����۲��ܶ�������Ȼ�Ǹ�����
��Ҳ�����޷��ú�֧����Ϊ<RUBY text="����">��Ͳ</RUBY>�ĵ��ʡ���
�ܷ���ɰε���Ͷ���Ķ��������˸е���������

����������ˣ�Ҳ���ò�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�������äȰk�

	CreateColorEXadd("���ף�/��������", 15000, "BLUE");

	CreateSE("SE01","se�ճ�_�Cе_늚ݥ���`�Ȏ��01");
	MusicStart("SE01",0,1000,0,850,null,false);

	Fade("���ף�/��������", 0, 1000, null, true);
	Fade("���ף�/��������", 150, 1000, null, true);
	Fade("���ף�/��������", 0, 1000, null, true);
	Fade("���ף�/��������", 50, 1000, null, true);
	Fade("���ף�/��������", 0, 1000, null, true);
	FadeDelete("���ף�/��������", 1000, true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0900a01">
��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0910a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
��ʡȥ�˵�л�Ĺ���
�����������˷�ʱ�䡣

������һ�������ֵĲ����ͼ�����ʧ�ˡ�
�������뵶���Դ�����ϡ����ֲ����������㡣

��������ֻҪ�������͹��ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ͥ륮�`�ϕN

	CreateColorEXadd("�}�ף�/�}������", 15000, "RED");
	CreateColorEXadd("���ף�/��������", 15000, "BLUE");

	CreateSE("SE02","se����_늓�_���02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	Fade("���ף�/��������", 0, 1000, null, false);
	FadeDelete("���ף�/��������", 1000, true);


	CreateSE("SE02a","se����_냇��_����01_L");
	MusicStart("SE02a",0,1000,0,1000,null,true);

	Fade("�}�ף�/�}������", 0, 1000, null, true);
	FadeDelete("�}�ף�/�}������", 1000, true);
	FadeDelete("���ף�/��������", 1000, true);

	SetVolume("SE02a", 2000, 0, null);

	SetFwC("cg/fw/fw�衩�転��_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0920a07">
������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0930a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����߳�
	CreateColorEXadd("���ף�/��������", 15000, "BLUE");
	Fade("���ף�/��������", 0, 1000, null, true);
	Fade("���ף�/��������", 1000, 0, null, false);
	Move("���ף�/���ӣԣ�", 500, @100, @30, Dxl2, false);
	Zoom("���ף�/���ӣԣ�", 500, 1300, 1300, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
����<k>
��
���ȽϿ졪������������!!

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Move("�}*", 500, @0, @-288, Dxl2, false);
	Move("���ף�", 500, @0, @-288, Dxl2, true);

	OnSE("se����_늓�_���01",1000);
	CreateTextureSP("����", 100, -200, -35, "cg/ev/resize/ev908_����늴ŔS��_cl.jpg");
	Zoom("���ף�/���ӣԣ�", 500, 2000, 2000, Dxl1, false);
	FadeDelete("�}*", 500, false);
	FadeDelete("��*", 500, true);

	SetFwC("cg/fw/fw����_���L.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//��������
<voice name="����" class="����" src="voice/md04/048vs0940a00">
��<RUBY text="Railgun">�������</RUBY>������

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0950a00">
���䣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��늴ŔS�����⡣��`���`�ө`�ࡣ
//���ŏ�������ɩ`��

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("SE02", 500, 0, null);
	OnSE("se����_��x_��`�륬���",1000);

	CreateColorEXadd("�ե�å����", 19000, "WHITE");

	CreateTextureEX("�}ef90", 3000, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureEXadd("�}ef100", 3000, Center, 200, "cg/ef/ef038_�������.jpg");
	Zoom("�}ef90", 0, 2000, 2000, null, true);
	Zoom("�}ef100", 0, 2000, 2000, null, true);
	Rotate("�}ef100", 0, @0, @0, @-5, null,true);
	Request("�}ef*", Smoothing);
	SetBlur("�}ef100", true, 2, 500, 200, false);


	Fade("�}ef90", 200, 1000, null, false);
	Move("�}ef90", 300, -512, 288, Dxl2, true);

	Move("�}ef90", 1000, 512, -288, Axl2, false);
	Wait(700);
	Zoom("�}ef100", 1000, 6000, 6000, Dxl2, false);
	Fade("�}ef100", 300, 1000, null, true);

	Fade("�ե�å����",1000,1000,Axl2,true);

	Wait(1500);
	DrawTransition("�}�\Ļ", 150, 1000, 0, 100, null, "cg/data/slide_03_01_0.png", true);
	CreateSE("SE03","se���L_�n��_�zɢ�A");
	MusicStart("SE03",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 18001, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}��", 18000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetBlur("�}��", true, 3, 300, 30, false);
	Fade("�}����", 0, 500, null, true);


	Zoom("�}��", 3000, 1100, 1100, Dxl1, false);
	Zoom("�}����", 3000, 1200, 1200, Dxl1, false);
	Shake("�}��", 2000, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�ե�å����", 300, true);

	Delete("����");
	Delete("�}ef*");
	Wait(2000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
����������˳����ɡ�
�����������ҲδϮ����

��Ҳ���ǡ���ʵ������ͼ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ۉm������
//���衩�褤�ʤ�
	FadeDelete("�}*", 3000, true);

	Wait(1000);

	SetFwC("cg/fw/fw����_����.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
//��������
<voice name="����" class="����" src="voice/md04/048vs0960a00">
��������?!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0630]
������費���ˡ�

���ѵ��ǣ�ֱ�ӻ����ˡ�����
�������������Ҳ��������һƬ��ƬҲ������

���������վ�ĵص㣬ֻ���������ĵ��ۣ�
���ε��޲�״��Ѩ��
������֮�����һ�

������ȥ���ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥԡ�̽����
	CreateSE("SE01","se����_���å��ԥå�_����`��");
	MusicStart("SE01",0,500,0,1000,null,false);

	Wait(500);
	SetFwC("cg/fw/fw����֩��_ͨ��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��������
<voice name="����" class="��������" src="voice/md04/048vs0970a01">
���Ǳߣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs0980a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_02_1.png", true);

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg105_���T�����ڂ�_02.jpg");
	Rotate("�}����100", 0, @0, @180, @0, null,true);


	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/slide_01_02_0.png", true);

	SoundPlay("@mbgm35", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0650]
���������ָʾ�ķ���ȥ��
�����ڡ����Ǳߡ�����Ƿ���˲��������ˣ�
�����������һ��ξ��롣

�������������к���ͼ��

����������������ڴ�֮ǰ�ܿ���
���������ף���Ȼ���ס�

������ô��������ʲô�ô���

����ȷ����߰ڳ���������ļ��ƣ�����Ǵ��еġ�
��������������Ҳ�Ѿ��ӽ���ɡ���ʹ���������
���壬Ҳ����ȡ���Ѿ����ѵ�������

��Ҳ����˵�˴�������ͬ��
��˿�����ܸı�֮ǰ��ս�����ơ�

���������ж���ʵ�������塭��
��ֻ����ô��Ϊ���𡭡�<k>����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩�転��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs0990a07">
������ʤ�ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs1000a00">
��������

{	FwC("cg/fw/fw�衩�転��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs1010a07">
����С����ȡʤ�����Ҳ��ԣ���Ǹ�ˣ���硣
������ܥԽ������������衣��

{	FwC("cg/fw/fw�衩�転��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md04/048vs1020a07">
��<RUBY text="����">����</RUBY>���ֵ�������
�������ټ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
��������仰��������Ҫ�뿪��
��ת�����ҡ�

��Ҫ�ӡ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//��������
<voice name="����" class="����" src="voice/md04/048vs1030a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs1040a00">
�������С�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
������!!

���м��ˡ�
����ȫ��ƭ�ˡ�

������費�ط�Ҫ���Ҿ�ս��
��ֻҪʱ���ȥ�����ض����׵��Ĵ����������Ͽճ���
���ܻ��ʤ������

����һ����Ҳ֪����
������Ҳ���ǲ�����⣬�������˾�һ������������
��������һ��������������ʱ�䡣��Ȼ�⿴������̫��
�����ˡ�

�������Ҵ��ˡ�

����û��ע�⵽��һ���¡�

���������˴��Һ�����ʱ�����⣬����һ��
<RUBY text="��������">ȡʤ����</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/3d�����|��_����_ͨ��.png");
	FadeStR(500,true);

	SetFwC("cg/fw/fw����_ŭ��a.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��������
<voice name="����" class="����" src="voice/md04/048vs1050a00">
������ɱ�ˡ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs1060a01">
�������ף���ɱ��˭����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md04/048vs1070a00">
���������ϣ�
��Ҫ�������ˣ����޷���ֹ��Ͷ�����׵�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md04/048vs1080a01">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
��������Ŀ�ĵ������ظ�
������û��

����׷���ɣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������
	CreateSE("SE01b","se����_�z_�l����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-50, @20, Axl3, true);
	WaitKey(300);
	Move("@StR*", 300, @-10, @40, Dxl1, true);

	SetFwC("cg/fw/fw����_��ʹ.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//��������
<voice name="����" class="����" src="voice/md04/048vs1090a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0730]
������һ��
���޷�ʹ������

�����������廹���к���֢��
�����ң����ڵ���������������ķ����˾�������!?

����������Ŀ����!!
��һ�ж��ڲ����ļ���֮����!!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0740]
//��������
<voice name="����" class="����" src="voice/md04/048vs1100a00">
���ء�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��ˤ����å���

	CreateSE("SE01b","se����_�z_�l����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Move("@StR*", 300, @50, @-40, Axl3, true);
	WaitKey(300);

	Shake("@StR*", 500, 1, 1, 0, 0, 500, null, false);

	CreateSE("SE01","se���L_����_��ͻ�M01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	DeleteStR(500, false);
	Move("@StR*", 500, @-300, @0, Axl3, false);


	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"md04_049vs.nss"
