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

scene md06_022.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md06_022.nss","RandomMeimetsu_md06_022",true);
	Conquest("nss/md06_022.nss","RandomMeimetsuSet_md06_022",true);
	

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
	#bg001_��b_01=true;
	#bg034_���Lլ����ga_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_023.nss";

}

scene md06_022.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md06_021.nss"

//���ۥ磻�ȥ����ȡ�����
//�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 15010, "#000000");
	CreateColorSPadd("��", 15000, "WHITE");

	OnBG(100, "bg001_��b_01.jpg");
	FadeBG(0, true);
	CreateSE("��礦��","se�M��_���ߥ���_������01");

	Delete("�ϱ���");
	Fade("�}ɫ�\", 500, 0, Axl2, true);

	Wait(1000);

	MusicStart("��礦��",0,1000,0,1000,null,false);
	FadeDelete("��",1500,true);

	MusicStart("@mbgm29", 0, 1000, 0, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����ԡ�ų��������������Ѿ�������ߡ�
����Եģ��������������ô����֮����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md06/0220010a00">
�����������緹�𣿡�

{	FwC("cg/fw/fw����_Ц�.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0220020a01">
���ǡ�
���Եȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Lլ
	CreateSE("��礦��","se�M��_���ߥ���_������01");
	MusicStart("��礦��",0,500,0,1000,null,true);

	CreateTextureEX("�}����", 200, @0, @0, "cg/bg/bg034_���Lլ����ga_01.jpg");
	Fade("�}����", 1000, 1000, null, true);
	CreateTextureSP("���褦", 900, @0, @0, "cg/bg/bg034_���Lլ����ga_01.jpg");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���о���ȴ�����ĵĸ��ۡ�
��������ӯ�����Լ����������š�

��ֻ�Ǹо���
  �����š�

��û���κεĸ��Ӽ�ֵ��

��ϸ΢�ġ�
�����ɵġ�
���������ޡ�

��ֻ�ǻ��Ŷ��ѡ�

��������ͷ����
�������Ǵ�ǰ���ҹ����԰���

�����ڣ��������������ҡ�
�����˼���š�

��������ҹ������һ���ʡ�
  ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md06/0220030a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
������˵����������죬�Լ���ӳ��ġ�
��������֮�ǻ����þ�����ô��������
�����ܶϣ��ǲ����ǰ�����ѷ��<k>
��������������

�����¡�������������

�������������Ʋá�
�����ű�Ӧ�ս�������
��
�����������ţ�

�������š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md06/0220040a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���������ɡ�

���ӳ����������ĵ��ӡ�
���Ҷ��Ҹ��Ķ��塪����֮��ͬ�����ܸе�ƽ�ȡ����� 
�ĸо��������ġ�

������������������յĺ�ˮ����ʱ�⻺�����š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����
//����������
	Fade("���褦", 1000, 0, null, false);
	Fade("�}����", 1000, 0, null, true);
	SetVolume("@mbgm*", 1000, 0, null);
	WaitKey(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��Ȼ��
������һ��Сʱ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Lլ

	Fade("�}����", 1000, 1000, null, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md06/0220050a00">
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0220060a00">
��������û�ã���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("��礦��", 1000, 0, null);

//������
	OnSE("se�ճ�_����_���饤���_��01", 1000);
	WaitKey(500);

	StR(1000, @50, @0, "cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 300, @-50, @0, null, false);

	FadeStR(300, true);

	SetFwC("cg/fw/fw����_���C��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md06/0220070a01">
���١��ٵ�һ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0220080a00">
����������
��ѽ������ʵ�����ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	Move("@StR*", 300, @50, @0, null, false);
	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
����������


{	SoundPlay("@mbgm22",0,1000,true);}
��˵�����������ںδ����Ź���

�����ڶ��콣���ŵڣ����϶�Ϊ������
�̳�֮�ˣ�������ʱ�𣬱���������Χ��
��������֮������
����Ͼ��ѧ�������¡�

���ճ����¶��������µ��Ӻ����˴���
��
������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/md06/0220090a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
�����Ͽ���������˼����

��������Ȼ��<RUBY text="��������������">��û���������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ�����
	SetVolume("@mbgm*", 1000, 1, null);
	CreateColorEX("�\", 15000, "BLACK");
	Fade("�\", 700, 1000, null, true);

//���ӣţ��ȥ�ȥ�ȥ󡭡�
	OnSE("se�M��_���ߥ���_������01", 1000);

	WaitKey(1000);

	SetVolume("@OnSE*", 1000, 0, null);
//���ӣţ������ұ����j��
	OnSE("se�M��_���ߥ���_������02", 1000);

	WaitKey(4000);

	SetVolume("@OnSE*", 1000, 0, null);

	WaitKey(1000);

//���ե��`�ɥ���

	Fade("�\", 700, 0, null, true);
	SetVolume("@mbgm*", 2000, 1000, null);
	SetFrequency("@mbgm*", 2000, 1200, null);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/md06/0220100a00">
�������������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateTextureSP("���褦", 900, @0, @0, "cg/bg/bg034_���Lլ����ga_01.jpg");

	OnSE("se�ճ�_����_���饤���_��02", 1000);
	WaitKey(500);
	Shake("���褦", 300, 5, 0, 0, 0, 1000, Dxl3, true);
	WaitKey(500);
	StR(1000, @100, @0, "cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 200, @-100, @0, Dxl1, false);

	FadeStR(200, true);

	SetFwC("cg/fw/fw����_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/md06/0220110a01">
���ٵ�һ�ᣬ��һ�ᰡ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0220120a00">
������ŶŶ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	Move("@StR*", 200, @100, @0, Dxl1, false);
	DeleteStR(200,true);

//���ե��`�ɥ�����
	SetVolume("@mbgm*", 500, 1, null);
	Fade("�\", 500, 1000, null, true);

//���ӣţ��ɤä���Фä���
	OnSE("se�M��_���ߥ���_������02", 1000);

	WaitKey(4000);

	SetVolume("@OnSE*", 1000, 0, null);

	WaitKey(1000);

//���ե��`�ɥ���
	Fade("�\", 500, 0, null, true);
	SetVolume("@mbgm*", 2000, 1000, null);
	SetFrequency("@mbgm*", 2000, 1350, null);

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/md06/0220130a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������ҵĳ���Ӧ��û��׼����ͷ��
����֮��Ķ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	OnSE("se�ճ�_����_���饤���_��02", 1000);
	WaitKey(500);
	Shake("���褦", 300, 20, 0, 0, 0, 1000, Dxl3, true);
	WaitKey(500);
	StR(1000, @100, @0, "cg/st/st����_ͨ��_˽��.png");
	Move("@StR*", 100, @-100, @0, Dxl1, false);

	FadeStR(100, true);

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md06/0220140a01">
���ٵ�һ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	Move("@StR*", 100, @100, @0, Dxl1, false);
	DeleteStR(100,true);

//���ե��`�ɥ�����
	SetVolume("@mbgm*", 300, 1, null);
	Fade("�\", 300, 1000, null, true);

//���ӣţ��ɥ�����顣
	OnSE("se���L_�|��_�C�v�|����01", 1000);

	WaitKey(4000);

	SetVolume("@OnSE*", 1000, 0, null);

	WaitKey(1000);

//���ե��`�ɥ���
	Fade("�\", 300, 0, null, true);
	SetVolume("@mbgm*", 2000, 1000, null);
	SetFrequency("@mbgm*", 2000, 1500, null);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/md06/0220150a00">
�����������ֻ�ǹ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
����������׻�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֩��
	OnSE("se�ճ�_����_���饤���_��02", 1000);
	WaitKey(500);
	Shake("���褦", 300, 30, 0, 0, 0, 1000, Dxl3, true);
	WaitKey(500);
	OnSE("se����_�z_�l����01", 1000);

	StR(1000, @100, @250, "cg/st/3d����֩��_���.png");
	Move("@StR*", 100, @-100, @0, null, false);

	FadeStR(100, true);

	SetFwC("cg/fw/fw����֩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="��������" src="voice/md06/0220160a01">
���ܿ죡���ܿ�ͺ���������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0220170a00">
��Ŷ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	OnSE("se����_�z_�l����01", 1000);
	Move("@StR*", 200, @100, @0, null, false);
	DeleteStR(200,true);

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/md06/0220180a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���ղţ���ǰ��������˰�ֻ�����Ź����˵���
��������������һ�Ѷ�������Ϥ�Ĵ�֩�롣
����������϶��Ǵ����
��������֪��������Ӧ������ֻ�־͹��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("���褦", 1000, 0, null, false);
//����
	Fade("�}����", 1000, 0, null, true);

//���ӣţ��ɥ����
//���ӣţ��Фä���ɤä���
	OnSE("se���L_�|��_�C�v�|����01", 1000);
	OnSE("se�M��_���ߥ���_������02", 1000);

	WaitKey(4000);

//�����ޤ�
	SetVolume("@OnSE*", 5000, 0, null);
	SetFrequency("@mbgm*", 5000, 1000, null);
	SetVolume("@mbgm*", 5000, 0, null);

	WaitKey(2000);

//������
	Fade("�}����", 1000, 1000, null, true);
	Fade("���褦", 0, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
������������������

�����ڽ����˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm12",0,1000,true);

	CreateSE("SE03","se����_늓�_���01");
	CreateSE("SEL03","se����_늓�_���01");
	MusicStart("SE03",0,1000,0,1200,null,false);
	MusicStart("SEL03",0,1000,0,1500,null,true);

	CreateTextureSPadd("�ҤФ�", 10000, Center, Middle, "cg/ef/ef044_��c.png");
	Zoom("�ҤФ�", 0, 500, 500, null, true);
	Rotate("�ҤФ�", 0, @0, @0, 1080, null,true);

	Move("�ҤФ�", 0, @512, @0, null, true);

	MoveFRP1("@�ҤФ�",100,70,35);

	Zoom("�ҤФ�", 100, 1000, 1000, null, false);
	Rotate("�ҤФ�", 300, @0, @0, 0, null,false);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	Fade("�ҤФ�", 0, 1000, null, true);
	Fade("�ҤФ�", 10, 0, null, true);
	RandomMeimetsu_md06_022();

	CreateColorSPadd("�Ф���", 17000, "#3399FF");
	CreateColorSPadd("�Ф���", 16000, "#9933FF");

	Wait(50);

	Fade("���褦", 0, 500, null, false);
	Fade("�Ф�*", 2000, 500, null, false);
	DrawTransition("�Ф���", 100, 1000, 500, 300, null, "cg/data/circle_12_00_0.png", false);
	DrawTransition("�Ф���", 100, 1000, 400, 500, null, "cg/data/circle_12_00_0.png", false);
	Shake("���褦", 300000, 2, 2, 0, 0, 1000, null, false);


	SetFwC("cg/fw/fw����֩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="��������" src="voice/md06/0220190a01">
���������ɿ��١�����ִ�С��������֡�����

{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/md06/0220200a00">
����ô���°�����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//?????????????????????????????

	SetVolume("@mbgm*", 1000, 0, null);
	SetVolume("OnSE*", 1000, 0, null);
	SetVolume("SE*", 1000, 0, null);

	CreateColorSPadd("siroi", 15000, "#FFFFFF");
	DrawTransition("siroi", 500, 0, 1000, 1000, null, "cg/data/circle_12_00_0.png", true);

//������ɩ`��
//����
	WaitKey(500);
	OnSE("se�M��_���ߥ���_���k03", 1000);

	Delete("���褦");
	Delete("�Ф�*");
	Delete("�ҤФ�");
	Delete("�}����");
	FadeDelete("siroi", 1500,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����������������ҵİ����£�����һ������˵���緹��
������˵��������緹��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md06_023.nss"

.//�ץ�����======================================================
..����������
function RandomMeimetsu_md06_022()
{
	CreateProcess("�Х���������", 5000, 0, 0, "RandomMeimetsuSet_md06_022");
	SetAlias("�Х���������","�Х���������");
	Request("�Х���������", Start);
}

function RandomMeimetsuSet_md06_022()
{
	begin:
	while(1)
	{
	$RFadeTimeSet = Random(3) + 2;
	$RFTS = ($RFadeTimeSet * 10);
	Fade("@�ҤФ�", $RFTS, 1000, null, true);


	$RFadeTimeSet2 = Random(3) + 1;
	$RFTS2 = ($RFadeTimeSet2 * 10);
	Fade("@�ҤФ�", $RFTS2, 0, null, true);

	}

}