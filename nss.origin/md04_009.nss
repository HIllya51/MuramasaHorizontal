//<continuation number="40">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_009.nss_MAIN
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
	#bg015_�`�}·���Y_01=true;
	#bg104_���ӘS������󴬷���_01=true;
	#ev802_�����}����`�����Σ�=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_010.nss";

}

scene md04_009.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md04_008.nss"

//����·
//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg014_�`�}���A��_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm15", 0, 1000, true);


	Delete("�ϱ���");
	FadeDelete("�\Ļ��",2000,true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ԥ���󣬻��Ǿ����������ж���

��֩���ģ�����ó���������
�����ǲ����������߶�ƭ�ù���֩��ģ����������Ƿ�
���ˣ��ڵ��������Ҳ������̱����䡣

������֩����������Լ�����ͨ���գ�Ҳ������������
�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/md04/0090010a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��Ӧ�ûص������ֳ��ˡ�

���ƺ��������֡��������ض�����������ͣ�
�����������˷��ƾޱ��С�
����Χ�����µ�Ļ�������糱ˮ����ȥ����ץ������
�����Ա��ʱ�䶼û�С�

���þȵ��ǵþ��ˡ�
��
��������������˵û�н���κ����⡣

������׷�Ͼ�����
��׷�������������Ϊ���Ľ��е�ְ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg015_�`�}·���Y_01.jpg");
	FadeBG(0, true);


	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���ܿ���·���Ӻ�ͬ������һ����ͬ��

����������ֵľ��ӡ�����ʲô��פ�����ȷ�
�����Ҳ��Ϻ���˵�������ӡ����ƺ��뽫����
���ڼ��С����ϲ��ŵĹ㲥�����������ѶϢ��

�������ֵĻ��϶�û�ù��ӳԡ�
�����Լ�Ϻ���˵�ģ����Ȼ����ͻȻ�ܹ�����������Ҳ
����Ź��ҡ�

���϶��ᱻ�в�������������鷳�ˡ�
��������ʱ�����ߣ��Է��Ͼ���ս���ḻ�ľ��ˣ�����
̫���ˡ�

�����־���С�Ľ����ٺò�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg009_�`�}סլ��a_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");
	Wait(500);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md04/0090020a01">
�����ǡ���С���ȴ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������·�߲���ô���СϪ����֮���Ժ��еĵ�ͼ��
���ա�
���Լ�Ҳ�������ת�������ˣ������м�����Ϥ�ġ�

�����Ǹ��������ֳ������ܵİ�β����֧����
���������������Ϫ��˵�������Ѿ��ܽ��ˡ�

����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅӡ�bg104

	CreateColorSP("�\Ļ��", 3000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg104_���ӘS������󴬷���_01.jpg");
	OnBG(100, "bg104_���ӘS������󴬷���_01.jpg");
	FadeBG(0, true);

	Wait(1000);

	Shake("�}����100", 1500, 0, 5, 0, 0, 1000, Dxl2, false);
	CreateSE("SE01","se����_����_���L_�ձ�_L");
	MusicStart("SE01",2000,500,0,1000,null,true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");
	Wait(500);

//���ܩ`�󡣳h��
	OnSE("se����_����_���L_Ş�h���_L", 1000);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md04/0090030a01">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����ţ���ͣ���˽Ų���

�������ֳǡ���
���Ѿ�������ǰ���·������ߡ�

�������ϵľ���ֻ��Щ��

��Ȼ����
��<RUBY text="����">��ʵ</RUBY>�ϵľ���ȴԶ��ֹ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���|�����h��
//��ev802
	CreateSE("�|�đ�", "se���L_�|��_ȭ�|�|�đ�01_L");
	MusicStart("�|�đ�", 500, 700, 0, 1000, null,true);

	CreateTextureEX("ev802", 15000, @0, @0, "cg/ev/ev802_�����}����`�����Σ�.jpg");
	Fade("ev802", 1000, 1000, null, true);

	Wait(1000);

	SetVolume("�|�đ�", 2000, 300, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
����ǹ�Ĳ����ӡ�
����ͬһ����������Ĵ���Ⱥ��
���Ż�������װ�׳���

��������ԡ���ɳ�ǽ�������ǹ�ֵ����С�
�����������ܲ�����գ�˫�����������ڵط��裬����
�ཻ��ֿ����������ٶ�ƴɱ��һ��

������֮���뵶�⽣Ӱ��õ���������ȥ��һ����һ��
��������û���������ۻ����ҵ������С�
����β���������Ѿ�����Ⱦ�Ϻ�ɫ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md04/0090040a01">
������ս��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����ʼ�ˡ�

������Ĵ����
���뾰�����ڵ�������Ļ����������ս������

���Ѿ���ʼ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("�|�đ�", 2000, 0, null);
	SetVolume("SE*", 2000, 0, null);

	ClearWaitAll(2000, 1500);
}

..//������ָ��
//�Υե����롡"md04_010.nss"