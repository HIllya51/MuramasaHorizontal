//<continuation number="240">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md02_042.nss_MAIN
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
	#bg098_ܥԽ����������_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md02_043.nss";

}

scene md02_042.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md02_041.nss"

//������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	Fade("�\Ļ��", 0, 1000, null, true);
	OnBG(100, "bg098_ܥԽ����������_02.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm30", 0, 1000, true);
//	DrawDelete("�ϱ���", 0, 100, "blind_01_00_0", true);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������˵������һ��ɱ��Ļ��ᡣ

��������������ô���£�

��ܥԽ�����ƺ�ȷʵ��ʲô����������
����Ȼ��Ҳӵ�������������ٿص�Ȩ����

������ʹ�þ���һ��ȥ��ս���Ǻţ������޷���������
���������Ϊ��

��Ȼ����

���������ҵ���������˵�ż¶���

�������Ԥ��������Ƥ���

��<RUBY text="����������������������">���������˵�Ĳ��ǻ���</RUBY>��
���Ҷ����ȷ�Ÿе��־塣

��������Ļ����٣��ұ�����Ը��

����ȡ���������

���ڴ���ʱ���Ƚ���

�������������Ըе��־塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md02/0420010a00">
�����¡�
����ǰ����������Ҫ��̡�����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420020a07">
���ţ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md02/0420030a00">
�����㣬��������ɱ�⣿
��������˯ʱϮ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����˵���������ڷ��䣬��Ҳ�ǽ�����¡�
���������˰ɣ�

������������˯Ҳһ����
���Ҳ���Ϊ������˼򵥵ķ�������ɱ����

������Ӧ��ֹͣ����������
��ֹͣ�ȽϺá���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420040a07">
������Ӵ����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md02/0420050a00">
��������

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420060a07">
�������Ļ����޷�ɱ���ġ�
��Ҫ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0420070a00">
������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420080a07">
���š���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0420090a00">
����������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0420100a01">
����ô˵����ȫ�����ס���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420110a07">
���ܿ�ͻ����ס���

{	FwC("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420120a07">
��һ�۾������ס���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0420130a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 100, 1, null);
	CreateColorEX("�}ɫ100", 1500, "BLACK");
	Fade("�}ɫ100", 100, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����֤�
��
��������������������������

//�����֤�
��
���������������������ն�������

//�����֤�
��
������������ǰ��������ľ�ͷ��
���������������޷���ǰ��һ����

</PRE>
	SetTextEXCColor("RED");
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}ɫ100", 1000, true);
	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md02/0420140a00">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md02/0420150a01">
��������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420160a07">
����ô�ˣ�����硣��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md02/0420170a00">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420180a07">
���߰ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md02/0420190a00">
�����������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������á�
	OnSE("se�ճ�_����_���饤���_��04", 1000);

	SetVolume("@mbgm*", 5000, 0, null);
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("@OnBG*");
	CreateColorSP("�·�", 90, "#000000");
	Delete("�\Ļ��");

//���\

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�����������������š�

������һƬ��ڡ�
�����ҹ�еĺ���㣬��������ã�����ޡ�

��Ȼ�������۾�����ϰ�ߺڰ��󣬷����밲�Ÿ��ҵķ���
����û���ٲ�ͬ������������������ߣ�
�ϵȲ�ϯ�̳ɵĵذ塣

������������<RUBY text="��������������">ʲô��ɫ�Ķ���</RUBY>��

�����ӸС�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����֤�
��
�������������Ҽ������⾰��

</PRE>
	SetTextEXCColor("RED");
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md02/0420200a00">
�������⣿��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������������ޤ������������`�͸Ф���Τǥƥ����ȥ�����ɥ���������inc�Ѿ�

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//<PRE @box0>
//[text0100]
//����ä���Ȥ���������
//���ܥ����Τߡ��ƥ����ȳ����ʤ�
//{	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
//<voice name="��" class="��" src="voice/md02/0420210a14">
//��������������������

	Wait(500);

	CreateVOICE("��","md02/0420210a14");
	MusicStart("��",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("��");
	WaitKey($�Еr�g);
	SetVolume("��", 100, 0, null);

	Wait(500);

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md02/0420220a00">
��˯�����𣿡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420230a07">
���������ŵġ�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md02/0420240a07">
��˯���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ӣ�
	OnSE("se�ճ�_�Cе_�����å�ON", 1000);
	CreateColorSPadd("�ۥ磻�ȥ����ȣ�", 5000, "WHITE");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����һ����
��һ�ж���¶�ڵƹ�֮�¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

..//������ָ��
//�Υե����롡"md02_043.nss"