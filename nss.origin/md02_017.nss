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

scene md02_017.nss_MAIN
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
	#bg053_ܥԽ������ͥ_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_018.nss";

}

scene md02_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_016.nss"


//��ͥ

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg053_ܥԽ������ͥ_01.jpg");
	FadeBG(0, true);
	SoundPlay("@mbgm09", 0, 1000, true);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������ʵ���

���������������߻������̫����
����ͽʿר�õĴ򵶡���̫���ȵ�����Ƚ�ǳ��
����Ҳ�̣�Ӧ�÷��Ҳ���в�ͬ���������ļ�
ʹ���ƺ�û���⡣

��������֣������������������ȽϺðɡ��뵽
��Щ���Ұ���ܥԽ���������˴˵���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/0170010a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ٹ��Ҽ��Ϸ��������϶ε����ơ�
��Ȼ�������˵���Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻš�͸���ȣ������Ǳ�ʾ�Ȥ���

//�����ߣ�������{��
//	CreateTextureEX("Gin", 1000, @-200, @-30, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
//	Fade("Gin", 1000, 300, null, true);

	CreateTextureEX("Gin", 1000, Center, -270, "cg/st/3d�y�Ǻ�_����_���Lb2.png");
	Request("Gin", Smoothing);
	Zoom("Gin", 0, 800, 800, null, true);

	Fade("Gin", 1000, 500, null, true);

	Wait(200);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����Ǻš�

����������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//	CreateTextureEX("Hikaru", 1050, Right, InBottom, "cg/st/st��_ͨ��_˽��.png");
//	FadeDelete("Gin",1000,false);
//	Fade("Hikaru", 1000, 300, null, true);

	CreateTextureEX("Hikaru", 1050, Center, InBottom, "cg/st/st��_ͨ��_˽��.png");
	FadeDelete("Gin",1000,false);
	Fade("Hikaru", 1000, 500, null, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��<RUBY text="��">��</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0170020a00">
��������ô�롭����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������Ǻ����һ��ͨ�ƣ�Ҳ������ʶ��
�ӱܰɡ�
���������������ָ����ȷ�Ļ���

���������ĵ���ʵ������ɱ��Ļ���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md02/0170030a00">
��ն��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ܺý�����������̬�����⡣

�������ӵ���

�����Ӳ��С����ԣ�ն��

�������κ��뷨��
����һ�����

������ʲô�ġ���
��ͳ���˵�Ů��ʲô�ġ���

���ض���������������ʲô�ġ���

���������

��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/md02/0170040a00">
��ն��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��ն����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡣��ͨ�˱�ʾ
	CreateTextureEX("Hikaru2", 1050, Center, InBottom, "cg/st/st��_ͨ��_˽��.png");
	Fade("Hikaru2", 2000, 1000, null, false);
	SetVolume("@mbgm*", 1000, 0, null);

	Wait(1500);

	SetFwR("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���⡿
<voice name="��" class="��" src="voice/md02/0170050a14">
������������

{	FwR("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0170060a00">
������������

{	FwR("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0170070a14">
�����������𣿡�

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0170080a00">
����֪�����𡭡���

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0170090a14">
��ֻ��������ô�롣��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm14", 0, 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��ǳǳ��΢Ц�������㽵����ͥԺ��
��������<RUBY text="����">����</RUBY>��

������ô���ĵط���ʲôʱ�����ģ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/md02/0170100a14">
�������Ķ�������ϰ��Ҳû�������°ɣ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0170110a00">
��������

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md02/0170120a14">
�����ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
��������˫�ȣ��ڳ����ơ�
�����־����һ��֡�

��Ҫ˵�Ƿ������������������Ƽ�ֱ����������
���κ�ʱ���κη����ܹ�����

����ͨ����֮�������еĿֲ���������Ϊ����
ϡ��ƽ����������ʵ�̲���ǧ���򻯵ľ�������
���������Ķ�����Ҳ��ȫû�С�
������ȥ����ֻ��վ�Ŷ��ѡ�

��������ˣ���̤���ǲ��Ļ�����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md02/0170130a00">
�����ĵ׵�ų����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
����

������Ϊ����ӵ����Բ��޷�������

���˿̣������յ��������ĸ����������ĵ��С�
�������������壬����˰㿳�ϡ�

��ɱ����

����Ҫɱ�˹⡣

��������ϰ��Ļ���
���Ǿ�ֻ���Լ�ų�������ġ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/md02/0170140a00">
�����ǡ���Ĩȥ��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����ȥ�Ǵ����ľ���

�����ҡ�

��ֻ��ɱ�⡣

��������������棬��ѭ���˵���Ը��

����ȥһ�����Ȼ����գ�
����õ�ʱ����

�����յ��˵ĺ��������յ��˵���ͼ�����յ��˵�����
�������˵������������

���������ڽ���ץ�����С�
��������Ӧ���ܰ쵽��

�����ﵽ���ҵ��ؾ�����
��û������������Ҳ��ȷʵ������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���m���ʣӣţ�
//��ȫ��˥���ɩ`
	CreateColorSP("�ФҤ�", 1300, "BLACK");
	DrawTransition("�ФҤ�", 150, 0, 1000, 100, null, "cg/data/circle_02_01_1.png", true);
	OnSE("se����_��x_�k��04", 1000);
	Delete("Hikaru2");
	Delete("Hikaru");
	CreateColorEX("������", 1205, "BLACK");
	Fade("������", 0, 400, null, true);
	DrawTransition("�ФҤ�", 150, 0, 1000, 100, null, "cg/data/circle_02_01_0.png", true);

 	CreatePlainSP("�}��д", 2000);
	CreateTextureEX("Hikaru3", 1050, Center, InBottom, "cg/st/st��_ͨ��_˽��.png");


	CreateStencil("�}�ޥ���2",800,Center,InBottom,128,"cg/bg/bg053_ܥԽ������ͥ_01.jpg",false);
	SetAlias("�}�ޥ���2","�}�ޥ���2");
	CreateColor("�}�ޥ���2/ɫ��", 700, 0, 0, 1024, 576, "BLACK");
	Fade("�}�ޥ���2/ɫ��", 0, 600, null, true);
//	DrawTransition("�}�ޥ���2/ɫ��", 150, 0, 1000, 50, null, "cg/data/circle_02_01_0.png", true);
	DrawTransition("�}�ޥ���2/ɫ��", 0, 0, 500, 100, null, "cg/data/slide_02_00_0.png", true);


	CreateStencil("S1",1000,Center,InBottom,128,"cg/st/st��_ͨ��_˽��.png",false);
	SetAlias("S1","S1");
	CreateStencil("S1/S2",1000,Center,InBottom,128,"cg/st/st��_ͨ��_˽��.png",false);
	CreateColorSPadd("S1/S2/C1", 1200, "WHITE");

	Fade("Hikaru3", 0, 1000, null, true);
	Fade("S1/S2/C1", 0, 700, null, false);
	FadeDelete("�}��д", 300, true);

	FadeDelete("�ФҤ�",1000,true);
	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����������������

���о�������仯����
�����Ѿ����ӽ�����ν�ĸй���

����ƾ�ۺͶ���֪�Ľ��ޣ���Ϊ����ģ���Ķ�����
��Ȼ���������ȴ��������

��ͥԺ�Ĺ��쾡��δ���˽�Ҳ����ϸ���ա�
��Ҳ׼ȷ֪���Լ���λ�á�

�����˵�λ��Ҳһ����
���йٵ��������������������֡���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Τߥ���ɩ`���

	Fade("S1/S2/C1", 1000, 0, null, true);

	WaitKey(500);
	Fade("S1/S2/C1", 1000, 800, null, true);
	
//�����������ܤ䤱�ƕ�����
	FadeDelete("Hikaru3", 1000, false);
	FadeDelete("S1/S2/C1",1000,true);

//����ȥ


	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/md02/0170150a00">
������������!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����ʧ�ˡ�

����Ӹйٵ�������ʧ�ˡ�

������Ҳû�С�
����������ֻ��ʶ�𲻵���

�����޴���

����Ϊ�ҵĸйٻ������졢���ȶ���Ե����
�����ԡ��������Ȳ�̸��������ǲ���ԭ��

�������ܸ�֪�������婖�׾���ĵط����и�����
�������������͵���ҵ�š�
����Ȼ��ȷ���Ҫ�Ժ�ȷ��֮���֪����
��������ôԶ�Ķ���Ҳ�����ա���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���⡣������

	CreateTextureEX("Hikaru4", 1050, Center, InBottom, "cg/st/st��_ͨ��_˽��.png");
	Fade("Hikaru4", 300, 1000, null, false);
	Fade("S1/S2/C1", 1000, 800, null, true);
//	CreateColor("S1/S2/C1", 1200, 0, 0, 1024, 576, "White");
	CreateColorEXadd("S1/S2/C1", 1200, "White");

	Fade("S1/S2/C1", 500, 800, null, true);

	WaitKey(1000);

//������

	FadeDelete("Hikaru4", 1000, false);

//�����������ܤ䤱�ƕ�����
	FadeDelete("S1/S2/C1",1000,true);


	WaitKey(500);	



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
�����ڡ������ѵز�׽���ˡ�
�������Ǻ�ģ����

������ǳ����
����־ǳ����

������Ҳ����ǳ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//��������
<voice name="����" class="����" src="voice/md02/0170160a00">
����ô���£�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
������ֻ�ܲ�׽����ë��ǵĸй����磬
�����������ʶ��𽥻��������
�������ķ���Ҳû�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//��������
<voice name="����" class="����" src="voice/md02/0170170a00">
��<RUBY text="������������">��������İ�</RUBY>��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0170180a00">
���⡭��
������������Ǳ߰ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
�����������ʣ��޴��ɴ�

����Ϊ�����װף���������
��˭Ҳ���������֪���ʵ��޴�֮�ˡ�

�����ˣ�Ҳֻ��ó�Ц��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���������ۥ磻�ȥ�����
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 1500, 1000, null, true);
	Delete("�}�ޥ���2/ɫ��");
	SetVolume("@mbgm*", 1000, 0, null);

//�������A������ClearWait�Ȥʤ�����inc�Ѿ�

}

..//������ָ��
//�Υե����롡"md02_018.nss"