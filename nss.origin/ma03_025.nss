//<continuation number="2880">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
//�룺�ǥХå���
		$GameDebugSelect = 1;
		Reset();
	}

}

scene ma03_025.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/ma03_025.nss","ma03_SB2",true);
	Conquest("nss/ma03_025.nss","ma03_SB3",true);
	Conquest("nss/ma03_025.nss","ma03_SB",true);
	Conquest("nss/ma03_025.nss","ma_03_SBProcess",true);
	Conquest("nss/ma03_025.nss","ma_03_SBProcess2",true);
	Conquest("nss/ma03_025.nss","ma_03_SBDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_runs",true);
	Conquest("nss/ma03_025.nss","ma03_025_runsProcess",true);
	Conquest("nss/ma03_025.nss","ma03_025_runsDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_shakeloop",true);
	Conquest("nss/ma03_025.nss","ma03_025_shakeloopProcess",true);
	Conquest("nss/ma03_025.nss","ma03_025_shakeloopDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_GC",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCP1",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCPC",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCP2",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCPDelete",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCF",true);
	Conquest("nss/ma03_025.nss","ma03_025_GCFP",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto01",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto01Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto02",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto02Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto03",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto03Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAutoDelete",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto04",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto04Process",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto05",true);
	Conquest("nss/ma03_025.nss","ma03_moveAuto05Process",true);

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
	#bg038_���`���åȥ��`��b_01 = true;
	#bg038_���`���åȥ��`��b_03 = true;
	#bg038_���`���å�������_01a = true;
	#bg038_���`���å�������_03a = true;
	#bg038_���`���å�������_01 = true;
	#bg038_���`���å�������_03 = true;
	#bg039_��������ϯa_01 = true;
	#bg039_��������ϯb_01 = true;
	#bg037_����������`��b_01 = true;


	#ev906_���٥�����_a=true;
	#ev906_���٥�����_b=true;
	#ev907_����ƥ�������=true;

	#ev117_��`�����龰_b=true;
	#ev117_��`�����龰_c=true;
	#ev117_��`�����龰_d=true;

//�룺EVָ����ev117_��`�����龰_b

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;
	$GameName = "ma03_026.nss";

	CP_AllDelete();


}

scene ma03_025.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	if($GameDebugSelect==1){CP_AllSet("����");}

..//������ָ��
//ǰ�ե����롡"ma03_024.nss"

//����`���M��


//�����ҕ��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	ma03_SB2(1000,3,700,0);
	ma03_SB3(2000,250);

	CreateTextureEX("�}st100", 2100, 1024, Middle, "cg/st/resize/3d����ƥ���_�T��_ͨ��l.png");
	Fade("�}st100", 0, 1000, null, true);

	OnSE("se����_�z_��`��_����02",1000);

	Move("�}st100", 500, -314, -776, Dxl1, false);
	FadeDelete("�}��ܞ", 1000, true);

	BGMoveAuto("@�}st100",1);

	SoundPlay("@mbgm36",0,1000,true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250010a07">
�������辩����ţ�ͨ�������ߣ�
�������ʮ��Ȧ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	BGMoveDelete();

	SetBlur("�}st100", true, 3, 500, 50, false);

	OnSE("se����_�z_��`��_����02",1000);
	Move("�}st100", 800, -4000, @-50, Dxl1, true);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}st100");
	ma_03_SBDelete();

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0011]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250020a07">
����һ���Ż��Ǳ���ԭ����
��ʮȦǰ����Ӷ�Ϊ�˻������ƽ���������һ
��ά����������վ����������ʤ����������λ
���ǻ���û�б䶯����

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250030a07">
����Ϊ������һ���Һ�ϣ�����ֱ仯��
�����ǣ������Ѱ�!?��

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250040a08">
��û����
������˵�����������Ѿ���ȫ���Ǹ������֧
�����ء���

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250050a08">
����������һ���ٶȡ�
������������ֻ����ѭ�Ǹ��ٶ��ڼ��۶��ѡ�����

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250060a08">
������Ϊ���ء�
����Ȼ����������Ҫ����ʲô�ɡ���������
�ŵ�������Ȼ���Ǹ�ʤһ�ﰡ����

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250070a07">
���ѵ�˵���������辩��ʤ����Ļ����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ҕ��
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 20000, "#000000");

	FadeDelete("�ϱ���", 300, true);
	Wait(200);
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("�}��ܞ", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��������ʮ��Ȧ��
�����а�Ȧ��

����������һ�룬��ʮȦ��ʱ�������ά������
���������ڣ�װ�ڱ���ľ��������õĸ����ƽ���ֻ��
����һ��װ�Ρ�û�л�ά��վ�ı�Ҫ�����ǲ���ȥ�Ļ�
�ͻᱩ¶��ߵ�����Ŀ��

�������������ĵ�������ս�����ҪС�ö࣬��������
�ܶ�ʮȦ���ҵĻ����Һʹ������ط�Ҫȥ��Ϣ��
�����������ھ����ý������ǲ����ܵġ�

�������Ѿ�������ս��
����λ�Ǵ����жκͺ�εĽ��硣

��������ñ�����ʤ���Ļ�����ʱ���������Ӳ��Ҳ
��Ҫ��ǰ���ˡ��������ҵ�Ŀ�Ŀ������������λ����
�ǳ�����ġ�
��û��Ҫ��ǿ����������ղ������ġ�

����ע��۲������ǵ������
��������˭�������龫���ǵ���ȥ���տ�������������
�������ֵ��ж���û��˭�����ر���ֵľٶ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma03/0250080a00">
�����������˶��������ɡ�
�������С���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0250090a01">
�������ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����������϶��Ļ��ò�ͬ�������˵�˳�����
Ҳ���޷�����ȷ�ϡ��ѡ��ļ�����Ĵ�����һ���裬��
���������˻����޷����ܡ��¹����Ӱɡ�

�������֪�����ⷽ������Ǽ��ȵ���̡���ǿ��
���������㲻֪���Ļ�������֮ǰ��һĻҲ�������ˡ�

������������Զ������ͷ���ӡ�
������һȦȷ�ϵ�ʱ�����û��һ��仯����������λ��
����״����

����λ�Ǵ������ʼ�������������š�
��������Ȯ���ң�-һ������Ϯ��������

��������ô��
������һֱ����ʵʵ������ȥ��

������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE02", 600, 0, null);

//���ԥå�
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg037_����������`��b_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 600, true);
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw��·_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0250100b24">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣�o��
	CreateSE("SE01","se�ճ�_�Cе_�o��ͨ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�����٥�
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	CreateTextureEX("�}st100", 2100, 1024, Middle, "cg/st/resize/3d���٥�_�T��_ͨ��_m.png");
	Fade("�}st100", 0, 1000, null, true);

	FadeDelete("�ϱ���", 600, true);

	ma03_SB2(1000,1,700,0);
	ma03_SB3(2000,250);

	OnSE("se����_�z_��`��_����02",1000);
	Move("�}st100", 500, -164, -450, Dxl1, false);
	FadeDelete("�}��ܞ", 600, true);

	BGMoveAuto("@�}st100",1);

	SetFwC("cg/fw/fw��·_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0250110b24">
���Ѿ�Ԥ�Ⱥ��˰ɣ�
���١���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0250120b42">
�������š�
����ʱ�����ԡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ҕ��
	CreateColorEX("�}��ܞ", 15000, "#000000");

	Fade("�}��ܞ", 500, 1000, null, true);

	BGMoveDelete();
	ma_03_SBDelete();

	ma03_SB2(700,1,1000,0);
	ma03_SB3(2000,300);

	CreateTextureEX("�}st100", 2100, 1024, Middle, "cg/st/3d����ƥ���_�T��_ͨ��.png");
	Fade("�}st100", 0, 1000, null, true);

	OnSE("se����_�z_��`��_����02",1000);

//	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
//	FadeBG(0,true);
	CreateTextureSP("�}st001", 1300, 1024, Middle, "cg/st/3d�ӥϥ����_�T��_ͨ��.png");
	Request("�}st001", Smoothing);
	CreateTextureSP("�}st002", 1100, 1024, -50, "cg/st/3d�ңǣ�����_�T��_ͨ��.png");
	Zoom("�}st002", 0, 500, 500, null, true);
	Request("�}st002", Smoothing);


	Move("�}st100", 700, -2014, @0, Dxl1, false);
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250130a07">
��ͨ�������彻��㣡
������ţ�û��ʧ�󣡡�

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250140a08">
�����ȶ�����
�������Ǻ�����ŵ�ѡ����Щ������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_�z_��`��_����01",1000);
	Zoom("�}st001", 500, 500, 500, Dxl1, false);
	Move("�}st001", 500, -300, @0, Dxl2, false);
	Move("�}st002", 500, 0, @0, null, true);

	OnSE("se����_�z_��`��_����02",1000);
	Zoom("�}st001", 500, 1000, 1000, Dxl1, false);
	Move("�}st001", 500,@-100, @-50, Dxl2, false);
	Shake("�}st001", 500, 0, 5, 0, 0, 1000, null, false);
	Shake("�}st002", 300, 5, 10, 0, 0, 1000, null, false);
	Move("�}st002", 500, @+200, @+200, Dxl1, true);

	Move("�}st001", 500,@-2000, @0, Dxl2, false);

	Wait(100);

	Move("�}st002", 500,@-1500, @-100, Dxl2, true);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	ma_03_SBDelete();
	Delete("�}st*");

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);


	DrawDelete("�\Ļ��", 200, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0071]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250150a07">
��ŶŶ!?������أ�
��������Ȯ�ͣң�-һ�����ڼ����Ӵ��ˣ���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250160a07">
�����������ᷢ���˹��ƺ�ͶԴ˽�����
���ء���
��������һ�����Ѿ���ʧ�����ˣ���Σ���ˣ���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250170a08">
�����ѿ�����
����������ܲ��˱��������֧��ı����˰ɡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250180a08">
�����������ˣ������԰��ġ���
��������ȫ��ѹ��ס��������϶��о������
���޿��̰ɡ��ǺǺǺǺǡ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250190a07">
��ԭ����ˣ�
��ֻҪ�Ǳ��˵���������˭�����˽����

{	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250200a08">
����ʲô��˼������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250210a07">
����ô��������յ�ֱ����
�����������״̬�ˡ����ף���

{	FwC("cg/fw/fw�衩���װ_�@��.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250220a07">
����Ϯ���
���ٶȽ������ˣ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250230a08">
��������İ���
������Զ���е�Σ�յ������𣿡�

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250240a08">
����Ȼ���Ǵ�����жϡ���
���������ء���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250250a07">
����������
�����ˣ���š����Ǹ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//�����٥�
//�룺EVָ����ev906_���٥�����_a

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/resize/ev906_���٥�����_am.jpg");
	CreateTextureEX("�}����200", 1000, Center, Middle, "cg/ev/resize/ev906_���٥�����_bm.jpg");

	Zoom("�}����100", 0, 800, 800, null, true);
	Zoom("�}����200", 0, 800, 800, null, true);
	Request("�}����100", Smoothing);
	Request("�}����200", Smoothing);

	Shake("�}����100", 500000, 1, 2, 0, 0, 1000, null, false);


	FadeDelete("�ϱ���", 300, true);

	OnSE("se���L_����_��ͻ�M08",1000);

	FadeDelete("�}��ܞ", 300, true);

	Wait(500);

	CreateColorEX("�}��ܞ", 10000, "#000000");
	Fade("�}��ܞ", 500, 1000, null,true);

	Delete("�}����100");

	SetFwC("cg/fw/fw��_����Ŀ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���١�
<voice name="��" class="��" src="voice/ma03/0250260b42">
������ҳ��
����������շ��衣��

//���١�
<voice name="��" class="��" src="voice/ma03/0250270b42">
������ҳ��
�������΢����Ϸ����

//���١�
<voice name="��" class="��" src="voice/ma03/0250280b42">
������ҳ��
������Ҫ�������񡣡�

//���١�
<voice name="��" class="��" src="voice/ma03/0250290b42">
������ҳ��
������Ҫ�������΢��ͷ��񡣡�

//���١�
<voice name="��" class="��" src="voice/ma03/0250300b42">
���ҵĳ��Ҫ����һ�С�
��ȫ������������ȴ����Ϊ���С���

//���١�
<voice name="��" class="��" src="voice/ma03/0250310b42">
��Ҫ��Ϊʲô����Ϊ�ⲻ�ǰ���
��Ҫ��Ϊʲô����Ϊ������Ϯ����

//���١�
<voice name="��" class="��" src="voice/ma03/0250320b42">
����������΢�������ҷ��񼵶��ҡ�
����������ӽ��������ְɡ���

��
//���١�
<voice name="��" class="��" src="voice/ma03/0250330b42">
����������������������Ϯ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���١�
//<voice name="��" class="��" src="voice/ma03/0250330b42">
//��
//����������������������Ϯ��_����

//�����٥󥸱���
//�룺EVָ����ev906_���٥�����_b

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/ev/ev906_���٥�����_a.jpg");
	CreateTextureEX("�}����200", 1000, Center, Middle, "cg/ev/resize/ev906_���٥�����_bm.jpg");
	CreateTextureEX("�}����300", 1200, Center, Middle, "cg/ev/resize/ev906_���٥�����_bm.jpg");

	FadeDelete("�}��ܞ",300,true);
	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	OnSE("se����_�z_���٥󥸼���01",1000);
	Fade("�}�ե�", 600, 400, null, true);
	WaitKey(100);
	Fade("�}�ե�", 300, 1000, null, true);

	Fade("�}����200", 0, 1000, null, true);
	Fade("�}����300", 0, 1000, null, false);

	SetBlur("�}����300", true, 3, 400, 50, false);
	Fade("�}����300", 0, 500, null, true);

	OnSE("se����_�z_���٥�_����01",1000);
	Shake("�}����200", 10000, 10, 5, 0, 0, 1000, null, false);
	Zoom("�}����300", 1000, 2000, 2000, Dxl1, false);
	Zoom("�}����200", 100, 800, 800, null, false);
	Fade("�}�ե�", 300, 0, null, true);
	Fade("�}����300", 500, 0, null, true);
	Zoom("�}����300", 0, 1000, 1000, Dxl1, true);

	Fade("�}�ե�", 300, 1000, null, true);

	WaitKey(2000);

//������ҕ��
	PrintGO("�ϱ���", 25000);
	CreateColorSPadd("�}��", 10000, "#FFFFFF");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	Delete("�ϱ���");
	DrawDelete("�}��", 200, 100, "circle_01_00_1", false);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/ma03/0250340a01">
��������ʲô!?��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0250350a00">
����ʼ���𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE02", 600, 0, null);

//�����ҕ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 150, 100, "slide_02_01_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_02_01_1", true);

	CreateSE("SE01","se����_����_�Z��02");
	MusicStart("SE01",300,1000,0,1000,null,true);

	SoundPlay("@mbgm03",0,1000,true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250360a07">
�����ˡ�����������
������������������������

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250370a08">
���⡢���ּ��١�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	ma03_SB2(1000,1,400,0);
	ma03_SB3(2000,250);

	CreateTextureEX("�}st100", 2100, 1024, Middle, "cg/st/resize/3d���٥�_�T��_ͨ��_m.png");
	Fade("�}st100", 0, 1000, null, true);
	Request("�}st100", Smoothing);

	SetBlur("�}st100", true, 3, 500, 50, false);

	OnSE("se����_�z_���٥�_����01",1000);
	Move("�}st100", 300, -164, -450, Dxl1, false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_0", true);

	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",500,600,0,1000,null,true);

	BGMoveAuto("@�}st100",1);

	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250380a07">
����塤��Ϯ����Ա�¶�ˣ�
�����ټ��ټ��١�����������
������������������������!!��

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250390a07">
����Ȼ������Ǹ�����żȻ��
����������������������ɵĻþ���
�������������������ʵ!!��

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250400a08">
������������
���͸ով����չʾ����������ħ��һ��
�������ļ�����ȫ��ͬ����

{	FwC("cg/fw/fw�׵�_Ц��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250410a08">
�����������Ļ�е�����µĳ�̰���
��̫���ˣ���̫���˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	BGMoveDelete();

	OnSE("se����_�z_���٥�_����01",1000);
	Zoom("�}st100", 1500, 500, 500, Dxl1, false);
	BezierMove("�}st100", 1500, (@0,@0){@+100,@+50}{@+100,@+100}(@+200,@+50){@+200,@+50}{@+200,@+50}(@-4000,@-300), Dxl1, true);

	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	Delete("�}st*");

	CreateTextureEX("�}st100", 2100, 1024, Middle, "cg/st/3d���٥�_�T��_ͨ��_b.png");
	Fade("�}st100", 0, 1000, null, true);

	CreateTextureEX("�}st200", 2100, Center, Middle, "cg/st/3d�ңǣ�����_�T��_ͨ��.png");
	Fade("�}st200", 0, 1000, null, true);

	BGMoveAuto("@�}st200",1);

	SetBlur("�}st100", true, 3, 500, 50, false);

	DrawDelete("�\Ļ��", 200, 100, "blind_01_00_1", true);

	OnSE("se����_�z_��`��_����02",1000);
	Move("�}st100", 300, -2040, @0, Dxl1, false);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0102]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250420a07">
������ȥ�ˣ��������ңǡ���һ���ˣ�
�����ϻṫ˾����Ľ������壬���۷��ػ���
����������û�����ü���Ӧ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	BGMoveDelete();
	ma03_SB2(1000,3,700,0);
	ma03_SB3(2000,250);

	Delete("�}st*");

	CreateTextureEX("�}st100", 2200, 1024, Middle, "cg/st/3d���٥�_�T��_ͨ��_b.png");
	Fade("�}st100", 0, 1000, null, true);

	CreateTextureEX("�}st200", 2100, 0, 0, "cg/st/3d�ӥϥ����_�T��_ͨ��.png");
	Fade("�}st200", 0, 1000, null, true);
	Zoom("�}st200", 0, 750, 750, null, true);

	BGMoveAuto("@�}st200",1);

	SetBlur("�}st100", true, 3, 500, 50, false);

	DrawDelete("�\Ļ��", 200, 100, "blind_01_00_1", true);

	OnSE("se����_�z_��`��_����02",1000);
	Move("�}st100", 300, -2040, @0, Dxl1, false);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0103]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250430a07">
����͡�������ȮҲ����󳾣�
��գ�۵Ĺ����ֻ�ܿ����䱳Ӱ�ˣ�
�ҷ·𿴼������־�㵵ı��飡��

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250440a07">
����塤��Ϯ���·�٣�һԾ�������˵ڶ�
����������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE01", 500, 0, null);

//���Q��ϯ
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	BGMoveDelete();
	ma_03_SBDelete();
	Delete("�}st*");

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStA(0,true);

	DrawDelete("�\Ļ��", 200, 100, "blind_01_00_1", true);


	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0250450a02">
������������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0250460a03">
������һ�����⡭����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0250470a04">
����ȫ���ԳƵ�������ɫ�����ˡ�
����ѽ����������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);

//������ҕ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	DrawDelete("�ϱ���", 150, 100, "slide_01_03_1", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_1", true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma03/0250480a00">
������������Ҫ���ˡ�
����֪����̬����η�չ�ˡ�������Ҳ�ǡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0250490a01">
�����������š�
��û������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0250500a00">
����ô�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��������������Ϯ��ķ�����΢ʧ����Ƭ�̡�
���Ǹ�ȷʵֵ�þ��ȡ����ǣ�����ҲӦ�ÿ�������ͬ��
�龰�ˡ������ԡ�

������Ӧ�ö�װ�׾���������Ȥ��
��Ҳ��ֻ��ȷ��һ�¼�����������Ȼ��������Ӱɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="��������" src="voice/ma03/0250510a01">
����������΢��������Ŷ��
����Ȼֻ��һ��㡣��

//��������
<voice name="����" class="��������" src="voice/ma03/0250520a01">
����������Ȼ�Ҳ���⣬Ҳ����ȥ��⡣
���������ڵĶ���ʦҲ�����ǵ�����ء���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0250530a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0250540a01">
��ֻ�ǣ���΢����һ�롣
����˶���Ŷ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥󥸣֣ӥ���ƥ���
//��ֱ���ǥ��٥󥸡����`�ʩ`�ǥ���ƥ��ޡ�
//�룺EVָ����ev907_����ƥ�������
//�룺EVָ����ev906_���٥�����_b

	SetVolume("SE02", 1000, 0, null);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 150, 100, "slide_01_01_0", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_01_0", true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250550a07">
��������ǡ���
�����뼤�ҵĽ����ˡ�����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Q��ϯ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateSE("SE01","se����_�z_���٥�_����01");

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureEX("�}����200", 200, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");

	SetBlur("�}����200", true, 3, 500, 100, false);

	FadeDelete("�ϱ���", 300, true);
	Fade("�}����100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����200", 600, 2000, 2000, Dxl1, false);
	Move("�}����200", 600, @+200, @0, Dxl1, false);
	Fade("�}����200", 300, 1000, null, false);
	DrawDelete("�}��ܞ", 200, 100, "slide_01_01_1", true);
	FadeDelete("�}����200", 300, false);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0151]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250560a07">
����塤��Ϯ����ֱ�ߵİ�����
��ƾ�豬���Ե��ٶ�ǿȡ����λ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateSE("SE01","se���L_����_��ͻ�M08");

	CreateTextureEX("�}����100", 100, Center, Middle, "cg/ev/ev907_����ƥ�������.jpg");
	CreateTextureEX("�}����200", 200, Center, Middle, "cg/ev/ev907_����ƥ�������.jpg");

	SetBlur("�}����200", true, 3, 500, 100, false);

	FadeDelete("�ϱ���", 300, true);
	Fade("�}����100", 0, 1000, null, true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Zoom("�}����200", 600, 2000, 2000, Dxl1, false);
	Move("�}����200", 600, @-200, @0, Dxl1, false);
	Fade("�}����200", 300, 1000, null, false);
	DrawDelete("�}��ܞ", 200, 100, "slide_01_01_1", true);
	FadeDelete("�}����200", 300, false);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0152]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250570a07">
�����ǣ�������������辩������ţ�
������ͻ�����ڹ���ʱ�����˦β����Ϯ�ŵ�
�����������˾��룡��

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250580a07">
������Ϯ�ţ���û�б���ȫ˦������ճ��ȥ�ˣ���
������ֱ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Q��ϯ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateMask("�ޥ���", 2000, 0, 0, "cg/mask/ci����å���_01_00.png", false);

	CreateTextureEX("�ޥ���/�}����100", 2100, -289, -238, "cg/ev/resize/ev906_���٥�����_am.jpg");
	CreateTextureEX("�}����100", 100, -343, -71, "cg/ev/resize/ev907_����ƥ�������_m.jpg");

	Move("�ޥ���/�}����100", 0, @-50, @0, null, true);
	Move("�}����100", 0, @+50, @0, null, true);
	Fade("�ޥ���/�}����100", 0, 1000, null, false);
	Fade("�}����100", 0, 1000, null, true);

	FadeDelete("�ϱ���", 300, true);
	Move("�ޥ���/�}����100", 300, @+50, @0, Dxl1, false);
	Move("�}����100", 300, @-50, @0, Dxl1, false);
	FadeDelete("�}��ܞ", 300, true);

	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0153]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250590a07">
����λ���������ã�
����ȫ���۷�Ծ�����
����������������!!��

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250600a08">
��̫����̫�����ˡ�������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250610a07">
���ո��µ�Ȧ�ٳ����ˡ�
������������̫�����ˣ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250620a07">
���辩����ţ�һ�ֶ�ʮ������ߣ�
�������Ϯ�һ�ֶ�ʮ����˰ˣ�
�����������˴�����ֵļ�¼����

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250630a07">
���ٷ�֮һ���������
����һ�߻��ʤ�أ���ȫ����Ԥ�ϣ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250640a08">
����Ϯ�������������ŵļ��ɡ���
��̫���ˣ�����һ�߶�����ǿ�ģ���

{	FwC("cg/fw/fw�׵�_Ц��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250650a08">
���ֿ��Ұ��֮������������ϸ�����ļ���֮
��������һ�������ء��������𰸣���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250660a07">
����ô��������һλ�������������е���һλ
���Ը����췽���أ�
���������Ҹо��������б�Ĵ𰸣���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250670a08">
���ף���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Q��ϯ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	Delete("�ޥ���/*");
	Delete("�ޥ���");

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 600, true);
	FadeDelete("�}��ܞ", 600, true);

	SetNwC("cg/fw/nw�߼�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0250680e284">
�������ߣ�����������
�����Ǳ�����һ����ʧ�ܡ�����

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0250690e284">
����Ȼ�������ˡ�����


//���Ԥá�
{	CreateSE("SE01","se�ճ�_�Cе_�o��ͨ��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0250700e284">
���������ҡ���

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0250710e284">
���������Ͱ��ƻ����С�
���������ǲ�Ը�⣿�������������ס����Ƕ�
���������Ķѳ����ģ��⻰�н�����Ҳ˵���ɡ���

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0250720e284">
�����Զ�����ֱ˵���������ǵ�����������������
������˵������ʤ�������Ľ�������еĳ�ǿ��
������������е�ʤ������

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0250730e284">
���ʽ�Ԯ�����м���֧�֣����������������
�����������������ס�
���������Ļ�Ҳ��ͻ��ж��ɡ���

{	NwC("cg/fw/nw�߼�ʿ��.png");}
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0250740e284">
���������ġ�֮��ᾡ���ܽ������εġ�
����֮��������˵�����ʤ���Ǳ���ġ�
�����𣿡�Ϊ��Ҫʹ��һ����ƭ����Ҳ������
ϧ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



//�����`����
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateTextureSP("�}����100", 100, -800, Middle, "cg/ev/resize/ev117_��`�����龰_al.jpg");

	Move("�}����100", 2000, -550, @0, null, false);
	Shake("�}����100", 100000, 0, 1, 0, 0, 1000, null, false);
	FadeDelete("�ϱ���", 300, true);
	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",500,400,0,1000,null,true);
	FadeDelete("�}��ܞ", 300, true);

	SetNwC("cg/fw/nw�T�֣�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������㣯�T�֣���
<voice name="����㣯�T�֣�" class="����������" src="voice/ma03/0250750e044">
������������

{	NwC("cg/fw/nw�T�֣�.png");}
//������㣯�T�֣¡�
<voice name="����㣯�T�֣�" class="����������" src="voice/ma03/0250760e045">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 500, 0, null);

//������ҕ��
	CreateColorEX("�}��ܞ", 20000, "#000000");

	Fade("�}��ܞ", 300, 1000, null, true);

	PrintGO("�ϱ���", 25000);

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	FadeDelete("�}��ܞ", 0, true);

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("�ϱ���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������������

����Χ��״�����б仯��
���ں󷽲�����������ʧ�ˡ�

���ұ���˹µ�һ���ˡ�
����Χ��ͨ��һ���ӱ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250770a07">
��Ŷѽ�����б䶯��
���м������弸����ͬһʱ����١���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250780a07">
�������ˡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250790a08">
���ѵ�����ײ����
��������ô�����á��Ѿ��ӽ�β����
�����������ӣ�����ҲӮ���˵İɡ�
�����°ɣ������ˡ���

{	FwC("cg/fw/fw�衩���װ_���.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250800a07">
�����ܲ����µ���Ŷ������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250810a08">
��������Ӹղſ�ʼ����˵ɶ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
��������������
���㲥�ҵ��Ǹ��׻�Ůʿ�ڰ�ʾ�ģ�������ǰԤ�ϵ���
�����ԡ�

��Ҳ����˵��Ӧ���Ѿ�<RUBY text="������">��ʼ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ƥ��ޣ֣ӥ��٥�
//�������ظ���z�ॶ����`���`
//����������륢�٥�
	SetVolume("SE02", 1000, 0, null);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	ma03_SB2(1000,1,500,0);
	ma03_SB3(2000,300);

	CreateTextureSP("�}st001", 1500, 1024, Middle, "cg/st/3d����ƥ���_�T��_ͨ��.png");
	CreateTextureSP("�}st002", 1500, 1024, Middle, "cg/st/3d���٥�_�T��_ͨ��_b.png");
	CreateTextureSP("�}st003", 1400, 3, -146, "cg/st/3d�ǥ��å���_�T��_ͨ��.png");
	CreateTextureSP("�}st004", 2000, -373, 25, "cg/st/3d�������`_�T��_ͨ��.png");
	Request("�}st003", Smoothing);
	Request("�}st004", Smoothing);

	SetBlur("�}st001", true, 2, 500, 50, false);
	SetBlur("�}st001", true, 2, 500, 50, false);

	Zoom("�}st001", 0, 750, 750, null, true);
	Zoom("�}st002", 0, 750, 750, null, true);
	Zoom("�}st003", 0, 300, 300, null, true);
	Zoom("�}st004", 0, 750, 750, null, true);

	CreateSE("SE01","se����_�z_��`��_����01");

	DrawDelete("�ϱ���", 150, 100, "slide_01_01_0", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_01_0", true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}st001", 500, -1024, @0, Dxl1, false);

	Move("�}st003", 1000, @+15, @-12, Dxl1, false);
	Move("�}st004", 1000, @+14, @+13, Dxl1, false);

	Wait(400);

	OnSE("se����_�z_���٥�_����01",1000);

	Move("�}st003", 800, -261, -179, Dxl1, false);
	Move("�}st004", 800, -347, 71, Dxl1, false);
	Zoom("�}st003", 800, 500, 500, Dxl1, false);
	Zoom("�}st004", 800, 750, 750, Dxl1, false);
	Shake("�}st002", 1200, 0, 0, 0, 5, 1000, Axl1, false);
	BezierMove("�}st002", 1000, (1024,-212){-100,@0}{-100,@0}(100,-162), Dxl1, true);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("�}st*");

	CreateTextureSP("�}����50", 100, Center, Middle, "cg/ev/ev117_��`�����龰_b.jpg");

	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",300,400,0,1000,null,true);


	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw�׵�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250820a08">
����������
���ȵȣ��ȵȣ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250830a07">
��ŶŶ�������¹��ˣ�
�������εľ���������������Ƿ�����һȦ��
�ӽ������ȵ������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250840a07">
����Ϯ��ĵ�·������ס�ˣ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250850a08">
��û�г�������!?
����Щ������������������������˰ɣ���
��������ǿ���ȥ����

{	FwC("cg/fw/fw�衩���װ_�䵨.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250860a07">
����ѽ��ѽ˳��һ����Щ����������һȦ֮��
ͻȻ�ͻָ�״̬�˰�����
���ָ����������ս���������ʻ���ء���
�ۡ������͡�����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250870a08">
��������Ϊʲô��Ҫ��������ڶ����˵��������

{	FwC("cg/fw/fw�衩���װ_����.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250880a07">
��ûʲô������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250890a08">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ƥ��ޡ����ߤ�
//�����٥󥸡�׷���������ܤ꤬аħ

		SetVolume("SE01", 500, 0, null);

//���ԥå�
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg037_����������`��b_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 600, true);
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw��·_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0250900b24">
�������ɶ�
������һ���𡣡�

//����·��
<voice name="��·" class="��·" src="voice/ma03/0250910b24">
��������ô�졭����

//����·��
<voice name="��·" class="��·" src="voice/ma03/0250920b24">
���Ȳ����ѵĻ�������

{FwC("cg/fw/fw��·_����.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0250930b24">
������<RUBY text="��������">�Ȳ�����</RUBY>�Ļ�������

//����·��
<voice name="��·" class="��·" src="voice/ma03/0250940b24">
���������ǣ�����̫���ˡ�
���ء�����ô�찡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͻ�Ƥ��륢�٥�
//�룺EVָ����ev117_��`�����龰_b

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateTextureSP("�}st003", 1400, 3, -146, "cg/st/3d�ǥ��å���_�T��_ͨ��.png");
	CreateTextureSP("�}st004", 2000, -373, 25, "cg/st/3d�������`_�T��_ͨ��.png");
	Request("�}st003", Smoothing);
	Request("�}st004", Smoothing);

	Move("�}st003", 0, -261, -179, Dxl1, false);
	Move("�}st004", 0, -347, 71, Dxl1, false);
	Zoom("�}st003", 0, 500, 500, Dxl1, false);
	Zoom("�}st004", 0, 750, 750, Dxl1, true);

	ma03_moveAuto01("@�}st003");
	ma03_moveAuto02("@�}st004");

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("�}st002", 1500, 0, Middle, "cg/st/3d���٥�_�T��_ͨ��_b.png");
	Request("�}st002", Smoothing);
	Zoom("�}st002", 0, 750, 750, Dxl1, true);

	ma03_moveAuto03("@�}st002");

	FadeDelete("�ϱ���", 200, true);
	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",300,500,0,1000,null,true);

	FadeDelete("�}��ܞ", 200, true);

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���١�
<voice name="��" class="��" src="voice/ma03/0250950b42">
�������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������롣�X���Ӵ���
//�������Ĥäݤ������ӥ������㡢�������`��ΤҤӸ��

	ma03_moveAutoDelete();


	OnSE("se���L_����_��ͻ�M01",1000);

	Move("@�}st003", 500, -297, -152, null, false);
	Move("@�}st004", 500, -211, 25, null, false);
	Move("@�}st002", 300, -241, -239, null, true);

	CreateColorEXadd("�ե�å����", 15000, "WHITE");

	OnSE("se���L_����_�z������01",500);
	Shake("@�}st002", 500, 0, 15, 0, 0, 1000, null, false);
	Fade("�ե�å����",0,1000,null,true);
	Move("@�}st003", 500, -261, -179, null, false);
	Move("@�}st004", 500, -347, 71, null, false);
	Move("@�}st002", 500, 0, -212, null, false);
	ma03_moveAuto01("@�}st003");
	ma03_moveAuto02("@�}st004");
	ma03_moveAuto03("@�}st002");
	OnSE("se����_�z_���٥�_�ҤӸ��",1000);
	Fade("�ե�å����",300,0,null,true);
	Delete("�ե�å����");


	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���١�
<voice name="��" class="��" src="voice/ma03/0250960b42">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE01", 500, 0, null);


	CreateColorEX("�\Ļ��", 25000, "BLACK");
	Fade("�\Ļ��", 300, 1000, null, true);

	ma03_moveAutoDelete();
	ma_03_SBDelete();
	Delete("�}st*");

//�����ҕ��
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�\Ļ��", 300, true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250970a07">
������ţ���һ�ζ����ɧ��
����Ϯ��û��׷��������������һȦ�ļ��Ű�
Χס�ˣ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0250980a07">
����·��Ϊ��˦�����Ƕ������˿�ս����
�����𣡡���ȫ����ס�ˣ���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0250990a08">
������������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251000a07">
������״��������ô�����������ơ���

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251010a08">
��˭�������ư���
��������Ҳ�Ǳ�����ֻ����ô˵������

{	FwC("cg/fw/fw�衩���װ_�@��.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251020a07">
����ѽ����������Į�Ļش��ء���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251030a08">
��ֻ���ٶȵĻ���Ӯ���˵ġ���������û��
�ɣ���װ�׾������ֶ�����
����������壬���ֵļ�����������Ա����
������ʽ𡭡���������ЩҲ�ǲ����ġ���

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251040a08">
��Ϊ���Լ�ȥ�������˵������������Ǿ���
��Ҫ��Ŷ��
���Ͼ����־�������һ��һ���еģ������𡣡�

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251050a08">
��������û�����������Ļ�Ҳ��û�취���¡�
�����˰ɡ�ֻ������Ŷ����

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251060a07">
������ԭ����ˡ�
��˵�ú��е�����

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251070a07">
����ȷ������û�����������ء�
����˵���������б����������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251080a08">
����ʲô����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251090a07">
��������
����Щ<RUBY text="����">����</RUBY>��ż��������һ��æ�ء���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251100a08">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ҕ��
//�룺EVָ����ev117_��`�����龰_c

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	FadeDelete("�ϱ���", 150, true);
	FadeDelete("�}��ܞ", 150, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
���ӹ㲥�Ҵ������������ڳ���Ż�����������������
����Ҳ���õ���
��������ϸ�����Ĵ��Ҳ��ֻ�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//��������
<voice name="����" class="����" src="voice/ma03/0251110a00">
�������������ڴߴ����ǰ�����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251120a01">
��Ҫ���𣿡�

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251130a00">
�����ò��ɡ�
������������ƶ���Ҳ���Ȳ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�����ڣ�����Χû�в��е����塣
�����ڲ������������ˣ���������Ҳ�������ˡ����ǡ���
�������˵û���κ����塣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//��������
<voice name="����" class="����" src="voice/ma03/0251140a00">
���ҵ������ǽӽ���������壬����Σ����
�����żȻ�أ�����Ϯ�ŵ���������һ���ˡ�
��Ҳ���ȷ�����˵ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251150a01">
���治̹�ʰ���
����������ǰɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251160a00">
�����׻�Ůʿ���Ҳμӵľ���������Ҳ���Ӧ
�����ڴ����ǲ��ϵ���ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251170a01">
��������������ͺ��ˡ�
��������������Ƕ�ĳ���˱�ʾ�˺øС�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251180a00">
���������ض�˵��
�������׵ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251190a01">
�����š�
������������ʹ��ˣ�����Ҳ�᲻�������Ⱑ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
���ҶԴ�����������Ļ��������ţ�����������
����װ�׵Ŀ����ϡ�ֻҪ�������ļ��������ٲ������ѡ�
��Ҳ����˵����������������ļ������ԲŻ�Σ�ա�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm03",0,1000,true);

//���������p��
	CreateSE("SE01a","se����_�z_��`��_�p��01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	SetVolume("SE02", 1000, 0, null);

	$ma03_024_runs01 = 400;
	$ma03_024_runs02 = 500;

	CP_SpeedChange(1200,153,null,false);

	WaitKey(1000);

//���Q��ϯ
	CreateColorEX("�}��ܞ", 25000, "#000000");
	SetVolume("SE01a", 1000, 0, null);
	Fade("�}��ܞ", 500, 1000, null, true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStA(0,true);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0251200a02">
������������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0251210a03">
��������<RUBY text="������">Ҫ�ж�</RUBY>���أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0251220a04">
���ǵġ��п�ͷ����

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0251230a02">
�����ǣ������Ĳ��̫���˰ɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0251240a04">
���ⲻ������Ŷ�����С�㡣
��װ�׾����У����������Ķ��֡�������
ǰ���ǵ������Խ�������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0251250a03">
��Χס��Ϯ�����Щ����ͱ������������һ
������
����ܿ�������ˡ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0251260a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ҕ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 20000, "#000000");
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,184,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("�ϱ���", 150, true);
	FadeDelete("�}��ܞ", 150, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����ά�ֵ�����ʻ��
���Ȳ��ϼ��롣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ƥ��ޡ�������Ф��^����
	CreateTextureEX("�}st1000", 5000, Center, Middle, "cg/st/resize/3d����ƥ���_�T��_ͨ��3l.png");


	Move("�}st1000", 0, @+1000, @+1000, null, true);

	Fade("�}st1000", 0, 1000, null, true);

	OnSE("se����_�z_��`��_����02",1000);

	Zoom("�}st1000", 500, 250, 250, null, false);
	Move("�}st1000", 250, @-1100, @-1100, null, false);
	Rotate("�}st1000", 250, @0, @0, -45, null,true);

	Move("�}st1000", 1000, @+100, @+200, null, false);
	Zoom("�}st1000", 1000, 0, 0, null, false);
	Rotate("�}st1000", 300, @0, @0, 15, Dxl1,true);
	Rotate("�}st1000", 300, @0, @0, 0, Dxl1,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="��������" src="voice/ma03/0251270a01">
����ɫ���������һȺ���˴Ӻ󷽽ӽ���
����ô�죿��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251280a00">
��׼�����١�
������Щ���岢��ǰ�У��ȴ�������ȥ����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251290a01">
���嵽�����

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251300a00">
������ǰ��Ϳ����˰ɡ�
����������Ҫ������ȡ�<RUBY text="����">����</RUBY>�ĳ̶Ⱦ͹��ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251310a01">
�����Ǳ����ɣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251320a00">
�����ǵġ�
��Ҫ����أ��ر�����ظ����������Ǻͺ���
����Ц��������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251330a01">
���������ס�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥󥸤ȥ�������
//����������
//���ᤫ�����^�Υ������X���嵱���ꡣ
//�����ä��ꏎ������᷽������륶������Ƭ���w�֡�

	SetVolume("SE01a", 1000, 0, null);
	SetVolume("SE02", 1000, 0, null);

	CreateColorEXadd("�}��ܞ", 25000, "#FFFFFF");

	OnSE("se����_�z_��`��_�C��Ӵ�",1000);

	Fade("�}��ܞ", 100, 1000, null, true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureEX("�}�ţ�10", 5000, Center, Middle, "cg/ev/ev117_��`�����龰_d.jpg");
	Fade("�}�ţ�10", 0, 1000, null, true);
	CreateTextureEX("�}�ţ�100", 5000, Center, Middle, "cg/ev/ev117_��`�����龰_d.jpg");


	Fade("�}�ţ�100", 0, 1000, null, true);

	CreateSE("SE01","se����_�z_��`��_Ѳ����");
	MusicStart("SE01",500,800,0,1000,null,true);

	Shake("�}�ţ�100", 500000, 1, 1, 0, 0, 1000, null, false);

	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251340a07">
�����ޡ�������!?��������ô���£�
��������͵غ��ˣ��Ӵ�������һȦ��Χ��Ϯ
��ļ��ţ�����ʮ��ű�ײ���ˣ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251350a07">
����ʮ��ź��ˣ��������˰�Χ���ţ�
����Ȼ����æ׷�ϵ��ٶ�������ߣ����ղ�ײ
��̫���ˣ����ﻵ������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE01", 500, 0, null);

	CreateColorEX("�}��ܞ", 25000, "#000000");

	Fade("�}��ܞ", 300, 1000, null, true);

	Delete("�}�ţ�*");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,184,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("�}��ܞ", 300, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0351]
//��������
<voice name="����" class="����" src="voice/ma03/0251360a00">
���á������ԡ�
���������������ƻ�����������������Ϳ�
�ԡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251370a01">
������ʲô��������
���ղ����Ǵ�����𣿡�����Ц�ɣ���

//��������
<voice name="����" class="��������" src="voice/ma03/0251380a01">
����ֻ���ü������<RUBY text="��������">����һ��</RUBY>���Ѱ�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251390a00">
����˵���İɡ�
����Щ�һ���<RUBY text="��">ֽ</RUBY>���ġ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251400a01">
����������
���á�������װ�ס�����

//��������
<voice name="����" class="��������" src="voice/ma03/0251410a01">
���������ٶ���ʻ��!?��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251420a00">
���ԡ�
�����ԣ����ֵ��������ɣ���һ���������¹ʡ���

//��������
<voice name="����" class="����" src="voice/ma03/0251430a00">
���������޷���������ơ�
��ʮ�������о��������ھ�������ʧȥ����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251440a01">
���������ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251450a00">
���š�Ӧ���Ƿ��˰ɡ�
��Ϊ��<RUBY text="��������">����վ��</RUBY>���綥����ζ����ˡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251460a00">
�����Ǿ�������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251470a01">
��������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251480a00">
��Ϊ��Ϯ���ǰ·�ɣ�������
�����Ƿ����˱�����ʤ�ܡ���ʹ��ˣ�Ҳ����
��˵���������������ǰ·�ǶԾ����ĸ��š���

//��������
<voice name="����" class="����" src="voice/ma03/0251490a00">
����Ϯ�����Ѻ�Ҳ����Χ�������׷��ȥ��
����Ҫ��ֹ��һ�㡣��Ϊ����Ҳ�����˱�����
ʤ�ܡ�
�����������Щ�������𣬴�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251500a01">
���������ס�
���úͺ������ֵ����ȡ����԰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������_�������
//�����٥󥸤�ǰ���_��
	CreateColorEXadd("�}��ܞ", 25000, "#FFFFFF");

	SetVolume("SE02", 300, 0, null);

	Fade("�}��ܞ", 100, 1000, null, true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureEX("�}�ţ�10", 5000, Center, Middle, "cg/ev/ev117_��`�����龰_d.jpg");
	Fade("�}�ţ�10", 0, 1000, null, true);
	CreateTextureEX("�}�ţ�100", 5000, Center, Middle, "cg/ev/ev117_��`�����龰_d.jpg");


	Fade("�}�ţ�100", 0, 1000, null, true);

	CreateSE("SEL01","se����_�z_��`��_Ѳ����");
	MusicStart("SEL01",300,400,0,1000,null,true);

	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���١�
<voice name="��" class="��" src="voice/ma03/0251510b42">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥󥸥��å��塣ͻ�ơ�
	CreateSE("SE01","se����_�z_���٥󥸼���01");
	MusicStart("SE01",0,1000,0,1500,null,false);


	SetBlur("�}�ţ�100", true, 3, 500, 100, false);
	Zoom("�}�ţ�100", 600, 3000, 3000, Dxl1, false);
	Move("�}�ţ�100", 600, @0, @-200, Dxl1, false);

	Wait(300);

	CreateColorEXadd("�}�ե�", 10000, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);

	Delete("�}�ţ�*");

	CreateTextureEX("�}�ţ�100", 5000, Center, Middle, "cg/ev/ev117_��`�����龰_c.jpg");

	Fade("�}�ţ�100", 0, 1000, null, true);

	FadeDelete("�}�ե�", 600, true);

	SetVolume("SEL01", 500, 0, null);

//���Q��ϯ
	PrintGO("�ϱ���", 25000);
	CreateColorSPadd("�}�ե�", 10000, "#FFFFFF");
	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}�ե�", 600, true);

	SetNwC("cg/fw/nw�߼�ʿ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//������㣯�׵����¡�
<voice name="����㣯�׵�����" class="����������" src="voice/ma03/0251520e284">
��ʲ����ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ҕ��
	PrintGO("�ϱ���", 25000);
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 600, false);

	CreateSE("SEL01","se����_����_���`���å�01_L");
	MusicStart("SEL01",600,1000,0,1000,null,true);


	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251530a07">
��ͻ���ˣ���ͻ�ư�Χ�ˣ�
����Ϊ�����ͻȻ���֣���Χ��������������
�塤��Ϯ��ץס����һ�㣡��ͻ�ƣ����ɹ�ͻ
����ΧȦ�ˣ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251540a08">
������������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251550a07">
����ʵ����̫�������ϵķ�չ�ˣ���̫�����ˣ�
����������߽��н����ɵÿ��ó�����Ҳ��
���п�ԭ����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251560a07">
������Ҫ������Ƭ֮�󷢱���

//�����`�������㡣�Ť��r�g�Β줫�륫���äݤ���
{	CreateSE("SE01","se�ճ�_�Cе_����饷��å��`01");
	MusicStart("SE01",0,1000,0,1300,null,false);
	FwC("cg/fw/fw�׵�_ŭ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251570a08">
�����ģ�
��Ҫ˵�Ļ���������������˰ɣ����ǲ�������
ǿ�������ļһ��𣡡�

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251580a07">
����ô����Ϯ��׷�ɣ�
��׷������ţ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251590a07">
���������ٴγ�Ϊ����ߵĵ�����!?��

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251600a08">
��������˵������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251610a08">
�������������ˣ��������ɡ�
����Ҳ�Ƚ�ϲ������״������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ҕ��
//���������o����ǰ�س��褦�Ȥ��륶��
//�������X���嵱���ꡣ�����`�󡣥������᷽��
//������϶��Ĥ��Ƥ⤦һ�T���椫�顣
//���Ǥ�Y��ͬ����

	SetVolume("SEL01", 1000, 0, null);


	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	CreateTextureSP("�}st003", 1400, 1024, -146, "cg/st/3d�ǥ��å���_�T��_ͨ��.png");
	CreateTextureSP("�}st004", 1600, 1024, 25, "cg/st/3d�������`_�T��_ͨ��.png");
	Request("�}st003", Smoothing);
	Request("�}st004", Smoothing);
	Zoom("�}st003", 0, 500, 500, Dxl1, false);
	Zoom("�}st004", 0, 750, 750, Dxl1, true);

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("�}st002", 1500, -356, -219, "cg/st/3d��������_�T��_ͨ��.png");
	Request("�}st002", Smoothing);
	Zoom("�}st002", 0, 750, 750, Dxl1, true);

	FadeDelete("�ϱ���", 600, true);
	FadeDelete("�}��ܞ", 600, true);

	OnSE("se����_�z_��`��_����02",1000);
	Move("�}st003", 300, -158, -142, Dxl1, false);
	Zoom("�}st002", 300, 500, 500, null, true);

	OnSE("se����_�z_��`��_�C��Ӵ�",1000);
	Zoom("�}st002", 400, 600, 600, null, false);
	Shake("�}st003", 500, 0, 10, 0, 0, 1000, null, false);
	Move("�}st003", 400, 100, -142, Dxl1, true);

	OnSE("se���L_����_��ͻ�M08",1000);
	Move("�}st003", 1000, 1000, -142, Dxl1, false);
	Move("�}st004", 300, -158, 25, Dxl1, false);
	Zoom("�}st002", 300, 750, 750, null, true);

	OnSE("se����_�z_��`��_�C��Ӵ�",1000);
	Zoom("�}st002", 400, 500, 500, null, false);
	Move("�}st002", 400, @+10, -142, Dxl1, false);
	Shake("�}st004", 500, 0, 10, 0, 0, 1000, null, false);
	Move("�}st004", 400, 100, 100, Dxl1, true);

	Move("�}st004", 400, 1024, 100, Dxl1, true);


	CreateColorEX("�ե�å����\", 20000, "Black");
	Fade("�ե�å����\",300,1000,null,true);

	ma_03_SBDelete();
	Delete("�}st*");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	FadeDelete("�}��ܞ", 0, true);

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	Fade("�ե�å����\",300,0,null,true);
	Delete("�ե�å����\");


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��������
<voice name="����" class="����" src="voice/ma03/0251620a00">
���������ˡ�
�������������������档��

//��������
<voice name="����" class="����" src="voice/ma03/0251630a00">
�������ҵ�Ŀ�ģ����о����Ĺ������ⶼ����
�õ���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251640a01">
����������˵��
�����ƺ�����˳��������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251650a00">
��ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������⡢�p��
//�����x���x���

	SetVolume("SE02", 500, 0, null);


	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureSP("�}st003", 1400, 3, -146, "cg/st/3d�ǥ��å���_�T��_ͨ��.png");
	CreateTextureSP("�}st004", 2000, -373, 25, "cg/st/3d�������`_�T��_ͨ��.png");
	Request("�}st003", Smoothing);
	Request("�}st004", Smoothing);

	Move("�}st003", 0, -261, -179, Dxl1, false);
	Move("�}st004", 0, -347, 71, Dxl1, false);
	Zoom("�}st003", 0, 500, 500, Dxl1, false);
	Zoom("�}st004", 0, 750, 750, Dxl1, true);

	ma03_moveAuto01("@�}st003");
	ma03_moveAuto02("@�}st004");

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);


	ma03_moveAutoDelete();

	CreateSE("SE01a","se����_�z_��`��_�p��01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Move("@�}st003", 1500, 1024, -179, Axl1, false);
	Move("@�}st004", 1500, 1024, 71, Axl1, true);

	CreateColorEX("�ե�å����\", 20000, "Black");
	Fade("�ե�å����\",300,1000,null,true);

	ma_03_SBDelete();
	Delete("�}st*");

	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	FadeDelete("�}��ܞ", 0, true);

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	Fade("�ե�å����\",300,0,null,true);
	Delete("�ե�å����\");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
����Χ������Ⱥ��Զ�롣
�����ǽ��м��١���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//��������
<voice name="����" class="����" src="voice/ma03/0251660a00">
����������һ���𣡡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0251670a01">
������һȦ�������ء�
����ô�죿��

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0251680a00">
���������ǵóѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������p��
//����������˽Ӵ�
//��һ�����T�����w�Ф�

	SetVolume("SE*", 500, 0, null);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	CreateTextureSP("�}st002", 1500, -356, -219, "cg/st/3d��������_�T��_ͨ��.png");
	Request("�}st002", Smoothing);
	Zoom("�}st002", 0, 750, 750, Dxl1, true);

	ma03_moveAuto02("@�}st002");

	ma03_SB2(1000,1,500,0);
	ma03_SB3(2000,100);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	ma03_moveAutoDelete();

	CreateSE("SE01a","se����_�z_��`��_�p��01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	Move("@�}st002", 300, -400, -219, Axl1, true);
	Move("@�}st002", 1500, 1024, -179, Axl1, true);

	CreateColorEX("�ե�å����\", 20000, "Black");
	Fade("�ե�å����\",300,1000,null,true);

	ma_03_SBDelete();
	Delete("�}st*");

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ե�å����\", 300, true);

	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251690a07">
��������ȹ��������������ܣ�
������ȥҪ�ͺ󷽼��ų��׵���һ���ˣ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251700a07">
��������װ�׵�ײ�����������������š�
���������ǰ�ͻ��⵽���������󷽼����޷���
��������롣
���������Ի��Ϊ���������ó���Ⱥ�ܣ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251710a08">
���ᵹ�Ǿ�������Щ̫ǿ�ˡ�
�����ۻ����װ���ж�ô������ֻ�Ǿ�����
���аɣ���

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251720a08">
���ܳ������ֲ����𣿡�

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251730a07">
���ţ�����Ȳ��ܣ������߻ص��ھ���������
�ɡ�
����Ϯ����Ҫ�ٴλص�����ŵĸ�������

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251740a07">
����ʮ��Ȧ�ķ��յ�ֱ����
����Ϯ��ܸ����������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	SoundPlay("@mbgm25",0,1000,true);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	CreateSE("SE01","se����_�z_���٥�_����01");

	CreateTextureSP("�}����10", 999, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureEX("�}����200", 2000, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);

	Fade("�}����100", 0, 1000, null, true);
	Zoom("�}����200", 600, 2000, 2000, Dxl1, false);
	Move("�}����200", 600, @+200, @0, Dxl1, false);
	Fade("�}����200", 300, 1000, null, false);
	Shake("�}����100", 500000, 0, 1, 0, 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);
	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);
	Fade("�}����200", 500, 0, null, true);


	OnSE("se����_�z_���٥�_�ҤӸ��",1000);


//�����٥󥸥��å���
//�������Ĥ������ӥ���
	SetFwC("cg/fw/fw��_��ʹ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//���١�
<voice name="��" class="��" src="voice/ma03/0251750b42">
��������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ƥ��ޤ�׷���Ĥ������뤬�줫�������x���_��

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}*");

	ma03_SB2(1000,4,500,-4000);
	ma03_SB3(2000,100);

	CreateTextureSP("�}st003", 1400, -1124, -400, "cg/st/3d����ƥ���_�T��_ͨ��b.png");
	CreateTextureSP("�}st004", 1600, -1124, -105, "cg/st/3d���٥�_�T��_ͨ��_b2.png");
	SetBlur("�}st003", true, 3, 200, 100, false);
	SetBlur("�}st004", true, 3, 200, 50, false);

	CreateSE("SE01","se����_�z_���٥�_����01");
	CreateSE("SE02","se����_�z_��`��_����01");
	CreateSE("SE03","se����_�z_���٥�_����01");
	CreateSE("SE04","se����_�z_��`��_����01");

	CreateSE("SEL01","se����_����_���`���å�01_L");
	MusicStart("SEL01",500,800,0,1000,null,true);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Move("�}st003", 1000, 50, @0, Dxl1, false);
	Move("�}st004", 1000, -336, -96, Dxl1, true);

	ma03_moveAuto05("@�}st003");
	ma03_moveAuto04("@�}st004");

	WaitKey(3000);

	ma03_moveAutoDelete();

	MusicStart("SE03",0,1000,0,1000,null,false);
	Wait(100);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Move("�}st003", 700, 2700, @0, Dxl1, false);
	Move("�}st004", 700, 1800, @0, Dxl1, true);

	SetVolume("SEL01", 500, 0, null);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("�}st*");

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251760a07">
����������׷���ϣ�
����Ϯ���ֱ����û��׷������ţ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251770a07">
���������˦���ˣ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251780a08">
���������ٲ����ء�
���������������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ԥå�
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg037_����������`��b_01.jpg");
	FadeBG(0,true);
	DrawDelete("�ϱ���", 150, 100, "slide_01_03_0", true);
	DrawDelete("�}��ܞ", 150, 100, "slide_01_03_0", true);

	SetFwC("cg/fw/fw��·_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0251790b24">
�����ã�
��ǰ���ұ۱��ƻ��ˣ���

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0251800e010">
�����ڸղ���ս��ʱ����!?��

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0251810b24">
���ء�������

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0251820e010">
����ô�죿
����һ��վ������������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0251830b24">
��ûʱ���ˣ�
��ֻʣ����Ȧ�˰�����

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0251840e010">
����ô��������

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0251850b24">
�������ء�����

//����·��
<voice name="��·" class="��·" src="voice/ma03/0251860b24">
��������

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0251870e010">
���ʡ�����

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0251880b24">
����������ͨ��������

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/0251890e010">
��������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0251900b24">
����㣡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����ҕ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 600, true);
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251910a07">
������ţ���ʮ��Ȧ��
��������Ϯ��Ҳͨ���������ߣ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251920a07">
������������Ų�����ԣ���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251930a08">
�����Լ�ս����ֱ����Ӯ��������Ҳ��
������Ȼ�İɡ�
������˵�ġ����ˡ������񻹲���ôһ��
��ɣ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251940a07">
�������ǰ���
�����ˣ�Ҳû�취�ɡ��������������İ�����

{	FwC("cg/fw/fw�衩���װ_�䵨.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251950a07">
��������������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251960a08">
�����ﰡ����̾ʲô����
�������ôƫ̻��尡����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0251970a07">
���ǰɡ���ȥ�ʹ�ñ���˵һ�°ɡ�
������Ӯ�ˣ�������ϲ����׬Ǯ�ɡ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0251980a08">
������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ҕ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 21000, "#000000");
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("�ϱ���", 300, true);
	FadeDelete("�}��ܞ", 300, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//��������
<voice name="����" class="����" src="voice/ma03/0251990a00">
����������
��׷���ϣ��𡣡�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0252000a01">
����ô�죿��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0252010a00">
���Ұﲻ��ʲô�ġ�
��ֻ�������������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0252020a01">
���������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0252030a00">
����������������ԵĽ����
����Ȼ���˵Ĺ����з����˺ܶ��£������һ
ֱû�з����������������������е�һ��ʤ����
��Ҳ����ʵ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0252040a00">
����ô�ͱ�������ؽ�������������������
�壬����������������˶�ע���ˡ�
��������Ȼ��û�зֳ�ʤ�������׻�Ůʿ�Ѿ�
�����˽��ܽ����׼���ɡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0252050a01">
����������
����ϧ�ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0252060a00">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE02", 500, 0, null);


//������ƥ��ޣ֣ӥ��٥�
//�����ȥ�`�ȡ�׷������ʤ����٥󥸡�
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}*");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	ma03_SB2(1000,1,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("�}st001", 2100, -100, -450, "cg/st/resize/3d���٥�_�T��_ͨ��_m.png");

	ma03_moveAuto01("@�}st001");

	CreateSE("SEL01","se����_�z_���٥�_����02_L");
	MusicStart("SEL01",300,500,0,1000,null,true);


	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
//���١�
<voice name="��" class="��" src="voice/ma03/0252070b42">
������׷���ϡ�����

//���١�
<voice name="��" class="��" src="voice/ma03/0252080b42">
��׷���ϣ�׷���ϡ�������

//���١�
<voice name="��" class="��" src="voice/ma03/0252090b42">
��Ϊʲô��������

{	FwC("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0252100b42">
��������ȥ���䡭����
������ģ�

//���١�
<voice name="��" class="��" src="voice/ma03/0252110b42">
�����׻���ģ�
����Ϊ�ҵ�Ե�ʣ������������

//���١�
<voice name="��" class="��" src="voice/ma03/0252120b42">
���������С���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ץá����`��ͨ������
	CreateSE("SE01","se�ճ�_�Cе_�o��ͨ��03");
	MusicStart("SE01",0,1000,0,750,null,false);

	Wait(1000);

	SetFwC("cg/fw/fw��·_ͨ��b.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0501]
//����·��
<voice name="��·" class="��·" src="voice/ma03/0252130b24">
�������١���

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0252140b42">
�����ס�������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0252150b24">
�����ڸ�ʲô��
�����ϡ���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0252160b24">
��<RUBY text="����������������">Ϊ��ʤ����ϧһ��</RUBY>����

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0252170b42">
������!!��

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0252180b24">
����һ�����ǰ�档
�������ﶯ�ְɡ�ֻ���������<RUBY text="����">Ч��</RUBY>����

{	FwC("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0252190b42">
���������������ǡ�
�����ס�������������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0252200b24">
������ֻ�Ǻ���������<RUBY text="��������">һ������</RUBY>��
�������𣿡�

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0252210b42">
��������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0252220b24">
���١�����Ӧ��֪���ġ�
���ҵ�δ���������˶��ߡ���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0252230b24">
����Ϊ���ֵ�����ʱ�Ѿ������ˡ�
�����ǣ��ҵõ��������Ů�����ٴλص�����
���

//����·��
<voice name="��·" class="��·" src="voice/ma03/0252240b24">
��û�е����εĻ����ˡ�
���������������˵Ļ���װ�׾����ͻᱻ��
�������ز�ū��֧�䡣��

{	FwC("cg/fw/fw��·_ŭ��.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0252250b24">
���Ҳ�����ģ�
���٣���

{	FwC("cg/fw/fw��_��ʹ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0252260b42">
�������ء�������

{	FwC("cg/fw/fw��·_ͨ��b.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0252270b24">
���١���
����ʤ�����ң�������ȥ���磡��

//����·��
<voice name="��·" class="��·" src="voice/ma03/0252280b24">
����������縴��
���ҵĲٰ������㣬������������!?��

{	FwC("cg/fw/fw��_����Ŀ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0252290b42">
��������������
�������ס������׵ģ����ס�����

//���١�
<voice name="��" class="��" src="voice/ma03/0252300b42">
���ҵ����Ǹ��׸��ġ�
����������һ�ж���Ϊ�˸��׶����ڵġ���

//���١�
<voice name="��" class="��" src="voice/ma03/0252310b42">
��Ѫ�����Լ�������һ�У�����Ϊ��ʵ�ָ��׵�
Ը����������

{	FwC("cg/fw/fw��·_ͨ��a.png");}
//����·��
<voice name="��·" class="��·" src="voice/ma03/0252320b24">
���١�����

{	FwC("cg/fw/fw��_����Ŀ.png");}
//���١�
<voice name="��" class="��" src="voice/ma03/0252330b42">
���Һ���Ϯ����Ϊ�˴��ڵġ���
��ֻ��Ϊ������������ڡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL01", 500, 0, null);

//���Q��ϯ
	CreateColorEX("��ܞ", 15000, "#000000");
	Fade("��ܞ", 300, 1000, null, true);

	ma03_moveAutoDelete();
	ma_03_SBDelete();
	Delete("�}st*");

	Delete("�}*");

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStA(0,true);
	FadeDelete("��ܞ", 300, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0510]
//��ɴ����
<voice name="����" class="����" src="voice/ma03/0252340a04">
������Ҫ�ֳ�ʤ�����ء�����

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0252350a02">
������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0252360a03">
�����š���
����ô�ˣ�һ��С�㣿��

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0252370a02">
���ţ�����ûʲô����
��ֻ����΢�е㡭����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0252380a02">
��θ�ĸ�����̫�����
���в��õĸо�����

//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0252390a02">
���������õġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ƥ��ޣ֣ӥ��٥�
//�����٥󥸡����ꤸ���Ȥ뤬���`�ʩ`������롣
	CreateColorEX("�}��ܞ", 10000, "#000000");

	Fade("�}��ܞ", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("�}st100", 1000, 0, 0, "cg/st/3d����ƥ���_�T��_ͨ��3.png");
	Rotate("�}st100", 0, @0, @0, @-35, null,true);
	Move("�}st100", 0, 1024, 200, null, true);
	Request("�}st100", Smoothing);
	SetBlur("�}st100", true, 3, 300, 30, false);

	CreateTextureSP("�}st200", 1000, 0, 0, "cg/st/3d���٥�_�T��_ͨ��_b3.png");
	Rotate("�}st200", 0, @0, @0, @-35, null,true);
	Move("�}st200", 0, 1024, 200, null, true);
	Request("�}st200", Smoothing);
	SetBlur("�}st200", true, 3, 300, 30, false);

	CreateTextureEXadd("�}����200", 1300, -643, -552, "cg/ef/ef044_��c.png");
	Zoom("�}����200", 0, 100, 100, null, true);

	CreateTextureEXadd("�}����100", 1300, -503, -552, "cg/ef/ef044_��c.png");
	Zoom("�}����100", 0, 100, 100, null, true);
	CreateTextureSP("Rollbg001", 300, -727, -400, "cg/bg/bg038_���`���åȥ��`��_01.jpg");
	CreateTextureSP("Rollbg002", 400, -727, -400, "cg/bg/bg038_���`���åȥ��`��_01 ���`��01.png");
	CreateTextureEX("Rollbg003", 2000, -727, -400, "cg/bg/bg038_���`���åȥ��`��_01 ���`��01.png");
	Zoom("Rollbg00*", 0, 750, 750, null, true);

	Move("Rollbg00*",0, @-2000, @-400, null, true);

	MusicStart("SE03",1000,1000,0,1000,null,true);

	Move("Rollbg00*",2000, -727, -400, Dxl1, false);
	DrawDelete("�}��ܞ", 125, 100, "slide_02_01_1", true);

	WaitAction("Rollbg00*",null);

	OnSE("se����_�z_��`��_����01",1000);

	Rotate("�}st100", 400, @0, @0, -45, DxlAuto,false);
	Zoom("�}st100", 400, 800, 800, DxlAuto, false);
	Move("�}st100", 400, -500, -100, DxlAuto, false);

	Wait(350);

	Fade("Rollbg003", 0, 1000, null, true);

	Fade("�}����100", 25, 800, Dxl1, false);
	Move("�}st100",300, @-30, @0, DxlAuto, false);
	Zoom("�}����100", 250, 2000, 2000, Dxl1, false);
	Rotate("�}st100", 250, @0, @0, 45, Dxl1,false);
	Wait(100);

	OnSE("se����_�z_���٥�_����01",1000);
	Rotate("�}st200", 450, @0, @0, -45, DxlAuto,false);
	Zoom("�}st200", 450, 800, 800, DxlAuto, false);
	Move("�}st200", 450, -700, -100, DxlAuto, false);

	Fade("�}����100", 500, 0, Dxl1, false);
	Zoom("�}st100", 400, 350, 350, Dxl1, false);
	Move("�}st100", 500, 1024, -350, Dxl1, true);
	Fade("�}����100", 200, 0, Dxl1, false);

	Fade("�}����200", 25, 800, Dxl1, false);
	Move("�}st200",300, @-30, @0, DxlAuto, false);
	Zoom("�}����200", 250, 2000, 2000, Dxl1, false);
	Rotate("�}st200", 250, @0, @0, 45, Dxl1,false);
	Wait(100);
	Fade("�}����200", 500, 0, Dxl1, false);
	Zoom("�}st200", 450, 350, 350, Dxl1, false);
	Move("�}st200", 550, 1024, -350, Dxl1, true);
	Fade("�}����200", 200, 0, Dxl1, false);

	SetVolume("SE03", 1000, 0, null);

	Wait(300);

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}*");
	Delete("Roll*");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg035_�`�}���`���åȸ��a_01.jpg");

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);


	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252400a07">
����Ϯ�ճ�����ˣ���ճ�����ˣ�
�����ǻ������ˣ���

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252410a08">
������󶼲�����������Ӻ�ΰ��
������ִ���ܴ����漣�𡭡���

{	FwC("cg/fw/fw�衩���װ_�դ�.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252420a07">
����Ϊ���ᷢ���Ž���<RUBY text="�漣">��ħ��</RUBY>������

{	FwC("cg/fw/fw�׵�_����.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252430a08">
���㵽����˵ʲô������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252440a07">
����������ѽ����
����������漣�Ͳ�һ���ˡ�<RUBY text="����">�漣</RUBY>����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252450a07">
��<RUBY text="����">�ܹ�</RUBY>����������
���漣������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252460a08">
��������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252470a07">
������ֱ��������
������������ǵ�ʮ��Ȧ���������Ȧ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥󥸱���
//������äȟo��äݤ��������˥���������Ф��ǡ�

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}*");

	ma03_SB2(1000,3,300,0);
	ma03_SB3(2000,100);

	CreateTextureSP("�}st001", 2100, 1024, -100, "cg/st/3d���٥�_�T��_ͨ��.png");

	SetBlur("�}st001", true, 3, 500, 50, false);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	OnSE("se����_�z_���٥�_����01",1000);

	Move("�}st001", 1000, -3000, @0, Dxl1, true);

	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0530]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252480a07">
��Ŷ��������

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252490a08">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	Delete("�}st*");

	CreateSE("SE01","se����_�z_���٥�_����01");

	CreateTextureSP("�}����10", 999, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureEX("�}����200", 2000, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);

	Fade("�}����100", 0, 1000, null, true);
	Zoom("�}����200", 600, 2000, 2000, Dxl1, false);
	Move("�}����200", 600, @+200, @0, Dxl1, false);
	Fade("�}����200", 300, 1000, null, false);
	Shake("�}����100", 5000000, 2, 3, 0, 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);
	Fade("�}����200", 500, 0, null, true);


//���o�豬��
	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0540]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252500a07">
����Ϯ��������!?
���ÿ죡����Ȼ�ܿ졪����

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252510a07">
��������΢��Щ��ǿ�ɣ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252520a08">
������ǿ�������ѿ��ˡ�
��������ֲ�ס���롣��

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252530a07">
����ô֮��ͻ᳢���������ưܲ����ɡ�
�����Ա������ˣ���

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252540a08">
��Ҳ������Ϊ��������������ȥ���Ҫ�ðɡ�
�������ܿ�ϧ�������һ���ġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}*");

	ma03_SB2(1000,3,300,0);
	ma03_SB3(1100,100);

	CreateTextureSP("�}st001", 2000, 1024, -200, "cg/st/3d���٥�_�T��_ͨ��.png");

	Zoom("�}st001", 0, 750, 750, null, true);

	CreateTextureSP("�}st003", 2100, -100, -346, "cg/st/3d����ƥ���_�T��_ͨ��.png");

	ma03_moveAuto02("@�}st003");

	SetBlur("�}st001", true, 3, 500, 100, false);

	CreateSE("SEL01","se����_�z_��`��_Ѳ����");
	MusicStart("SEL01",200,500,0,1000,null,true);


	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	OnSE("se����_�z_���٥�_����01",1000);
	Move("�}st001", 1000, -2500, @0, Dxl1, true);

	SetVolume("SEL01", 500, 0, null);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma_03_SBDelete();
	ma03_moveAutoDelete();

	Delete("�}st*");

	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

//�����٥󥸱���
//������ƥ��ޤ�i��
	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0550]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252550a07">
����Ϯ�����������ţ�
����Ȼ�����ˡ������������ˣ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252560a08">
�������۶ϰ�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252570a07">
����Ϯ����ٶȽ������ˣ�
���Ѿ��������ˣ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252580a07">
������ţ�����������Ϯ�ﱳ��
����������Ϯ�ｵ�Ϳ���Ħ������

{	FwC("cg/fw/fw�׵�_���d.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252590a08">
��������Ȼ����û�õİ�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252600a07">
�����棬�ӽ���һ����ˣ�
������ţ�Ҫ����ǰ�泬��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����٥�
	SetVolume("@mbgm*", 2000, 0, null);

	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}*");

	CreateSE("SE01","se����_�z_���٥�_����01");

	CreateTextureSP("�}����10", 999, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureEX("�}����100", 1000, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	CreateTextureEX("�}����200", 2000, Center, Middle, "cg/ev/ev906_���٥�����_b.jpg");
	SetBlur("�}����200", true, 3, 500, 100, false);

	Fade("�}����100", 0, 1000, null, true);
	Zoom("�}����200", 600, 2000, 2000, Dxl1, false);
	Move("�}����200", 600, @+200, @0, Dxl1, false);
	Fade("�}����200", 300, 1000, null, false);
	Shake("�}����100", 5000000, 2, 3, 0, 0, 1000, null, false);
	MusicStart("SE01",0,1000,0,1000,null,false);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);
	Fade("�}����200", 500, 0, null, true);

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0560]
//���١�
<voice name="��" class="��" src="voice/ma03/0252610b42">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���������
	CreateSE("SE01","se�ճ�_�Cе_�����å�ON");

//�����`����
//������á�һ˲�������ե�å���

	CreateColorEX("�ե�å����", 20000, "Black");
	Fade("�ե�å����",300,1000,null,true);

	CreateTextureEXadd("�}����100", 21000, Center, Middle, "cg/ef/ef036_�o�Ҥξ���.jpg");
	Fade("�}����100", 0, 1000, null, true);
	Zoom("�}����100", 0, 0, 0, DxlAxl, true);
	SetBlur("�}����100", true, 3, 500, 10, false);

	MusicStart("SE01",0,1000,0,1000,null,false);
	Rotate("�}����100", 300, @0, @0, @270, DxlAxl,false);
	Zoom("�}����100", 25, 1200, 1200, DxlAxl, true);
	Zoom("�}����100", 25, 0, 0, DxlAxl, true);

//������ҕ��
	Cockpit_AllFade2();

	CP_HighChange(0,11,null,false);
	CP_SpeedChange(0,234,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	Delete("�}*");

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	FadeDelete("�}��ܞ", 0, true);

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);


	FadeDelete("�ե�å����",300,true);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0570]
//��������
<voice name="����" class="��������" src="voice/ma03/0252620a01">
������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0252630a00">
����������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 500, 0, null);

//���Q��ϯ
	CreateColorSP("�\Ļ��", 18000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	Delete("�}*");

	Cockpit_AllFade0();
	ma03_025_runsDelete();

	OnBG(100,"bg039_��������ϯa_01.jpg");
	FadeBG(0,true);
	StL(1000, @0, @0,"cg/st/stһ��_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_˽��a.png");
	FadeStA(0,true);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);;

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0252640a03">
����!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ҕ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg035_�`�}���`���åȸ��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 600, true);
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw�衩���װ_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0590]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252650a07">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ƥ��ޡ����`��������
//����ͻ
//�����k

//���k�ޤȤ�
	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 200, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	ma03_SB2(1000,3,300,0);
	ma03_SB3(1100,100);

	CreateTextureSP("�}st003", 2100, -100, -346, "cg/st/3d����ƥ���_�T��_ͨ��.png");
	Zoom("�}st003", 0, 750, 750, null, true);

	DrawDelete("�\Ļ��", 200, 100, "slide_01_01_1", true);

	OnSE("se���L_����_��ͻ�M08",1000);
	Move("�}st003", 3000, 0, -100, Dxl1, false);
	Shake("�}st003", 2000, 3, 5, 0, 0, 500, null, false);
	Rotate("�}st003", 100, @0, @0, -5, null,true);
	Rotate("�}st003", 100, @0, @0, 5, null,true);

	OnSE("se����_�z_��`��_����02",1000);
	Move("�}st003", 300, -2000, -700, Dxl1, false);
	Rotate("�}st003", 700, @0, @0, -50, null,true);


	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	OnSE("se����_�z_��`��_����å���",1000);
	Fade("�ե�å����",300,1000,null,true);
	ma_03_SBDelete();
	Delete("�}st*");

	CreateTextureSP("�}ef10", 2000, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}ef100", 2100, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	CreateTextureSP("�}ef200", 2200, Center, Middle, "cg/ef/ef022_��������ɢ�A.jpg");
	SetBlur("�}ef200", true, 3, 500, 50, false);

	Fade("�}ef200", 0, 700, null, true);

	Zoom("�}ef200", 1500, 2000, 2000, Dxl1, false);
	Shake("�}ef100", 50000, 2, 3, 0, 0, 1000, Dxl1, false);

	OnSE("se���L_�Ɖ�_���k05",1000);
	Fade("�ե�å����",1000,0,null,true);
	Fade("�}ef200", 500, 0, null, false);

	Fade("�ե�å����",1000,1000,null,true);

	Delete("�}ef*");

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg039_��������ϯb_01.jpg");

	Fade("�ե�å����",1000,0,null,true);
	Delete("�ե�å����");


//�����ҕ��
	SetFwC("cg/fw/fw�׵�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0600]
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252660a08">
������ײ����!?
������š����������ײ����ɳ���ϰ���!!��

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252670a08">
����ֹ��������
��ײ���˹���ϯ�ϣ���ը�ˡ�����

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252680a08">
�����������Ҫ���ٳ���ȥ��ʱ�򣬷�������
�ʡ�����
����ô������������

{	FwC("cg/fw/fw�衩���װ_ŭ��.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252690a07">
������������

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252700a08">
��ι�㣬��ɵ��ſ�����˵���������Ǿ����о�
���������°�!?
����Ϯ���û���أ������ڼ��ۡ�����

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252710a08">
����Ȼ�ᷢ�������¡���
������Գ�Ϊ�漣�𡭡���

//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252720a08">
����֮��Ϯ���Ϊ����λ��
����ѡ�����Ǹ���ɫ�����塭������

{	FwC("cg/fw/fw�衩���װ_���.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252730a07">
������������

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252740a07">
����������<RUBY text="��������">���ְ취</RUBY>��
���޴�������������ȫ��Ȥ�ˡ���

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252750a07">
�������Ǹ����֡���
��������������Ϯ�����ֹ����
��Ϊʲô��Ҫ���Ǹ��ټ���<RUBY text="����">֮��</RUBY>���°�����

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252760a07">
������Ҳ��ᴴ���񻰵ġ�
�������������ȴ�����Ϊ�����۵ı��ݡ�����

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252770a07">
�������ء�����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252780a07">
��ι��
���׵�����

{	FwC("cg/fw/fw�׵�_ͨ��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252790a08">
���ţ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252800a07">
���һ�ȥ�ˡ�
��֮��������ˡ���

{	FwC("cg/fw/fw�׵�_�@��.png");}
//���׵���
<voice name="�׵�" class="�׵�" src="voice/ma03/0252810a08">
�������������������ȵȣ�
����ô�˰���ôͻȻ����

{	FwC("cg/fw/fw�衩���װ_����.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252820a07">
����û��Ȥ�ˡ�
  ���ˣ���ô�����á���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0252830a07">
�������������ɶ�
�������İ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������ҕ��
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 20000, "#000000");

	Cockpit_AllFade2();

	CP_HighChange2(0,0,null,false);
	CP_SpeedChange2(0,0,null,true);
	MyLife_Count(0,719);
	MyTr_Count(0,249);

	CreateTextureSP("�}����10", 100, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	CreateTextureSP("�}����50", 1000, Center, Middle, "cg/bg/bg038_���`���å�������_01a.jpg");
	ma03_025_runs("@�}����50",2000,"cg/bg/bg038_���`���å�������_01a.jpg");
	FrameShake();

	CreateSE("SE02","se���L_����_������02_L");
	MusicStart("SE02",500,1000,0,1000,null,true);

	FadeDelete("�ϱ���", 600, true);
	FadeDelete("�}��ܞ", 600, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��������
<voice name="����" class="����" src="voice/ma03/0252840a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0252850a01">
������������

//��������
<voice name="����" class="��������" src="voice/ma03/0252860a01">
������������
������������������������лᱻ��ͬ�𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0252870a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma03/0252880a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0620]
�������������������������ˡ�

���������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE02", 2000, 0, null);

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_026.nss"

..//��1.ma03_SB2
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
//��`�������`��ֱ��
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_04.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_04.jpg");

	}else if($ma03_BGNum==4){
//��`�������`��ֱ��
		CreateTextureSP("Circuit01", $���`���å����_BG, InLeft, Middle, "cg/bg/bg038_���`���å����a_01.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InLeft, Middle, "cg/bg/bg038_���`���å����a_01.jpg");

	}else{
		CreateTextureSP("Circuit01", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
		CreateTextureSP("Circuit02", $���`���å����_BG, InRight, Middle, "cg/bg/bg038_���`���å����a_03.jpg");
	}

	CreateSCR1("@Circuit01","@Circuit02",$ma03_BGTime,$ma03_BGpoint, @0);

}

..//��2.ma03_SB3
function ma03_SB3($���`���å����_BG01,$ma03_SBtime){

	if($ma03_BGNum==1){
		CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BGNum==2){
		CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BGNum==3){
		CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_03.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}else if($ma03_BGNum==4){
		CreateTextureEX("Circuit_Bar", $���`���å����_BG01, 1124, Middle, "cg/bg/bg038_���`���å����b_01.png");
		SetBlur("Circuit_Bar", true, 3, 300, 8, false);
	}

if($ma03_BGNum==4){
	CreateProcess("���ץ���", 15000, 0, 0, "ma_03_SBProcess2");
	Request("���ץ���", Start);
	SetAlias("���ץ���","���ץ���");
}else{
	CreateProcess("���ץ���", 15000, 0, 0, "ma_03_SBProcess");
	Request("���ץ���", Start);
	SetAlias("���ץ���","���ץ���");
}

}

..//��3.ma03_SB
function ma03_SB($���`���å����_BG01,$ma03_SBtime){


	CreateTextureEX("Circuit_Bar", $���`���å����_BG01, -100, Middle, "cg/bg/bg038_���`���å����b_03.png");
	SetBlur("Circuit_Bar", true, 3, 300, 2, false);

	CreateProcess("���ץ���", 15000, 0, 0, "ma_03_SBProcess");
	Request("���ץ���", Start);
	SetAlias("���ץ���","���ץ���");

}

..//?4.ma_03_SBProcess
function ma_03_SBProcess(){

	begin:

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1074, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
	}

}

..//?4.5.ma_03_SBProcess2
function ma_03_SBProcess2(){

	while(1){
		Fade("@Circuit_Bar", 0, 1000, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, -100, @0, null, true);
		Fade("@Circuit_Bar", 0, 0, null, true);
		Move("@Circuit_Bar", $ma03_SBtime, 1124, @0, null, true);
	}

}

..//��5.ma_03_SBDelete
function ma_03_SBDelete(){

	Fade("@Circuit_Bar", 0, 0, null, true);
	Delete("@���ץ���");
	Delete("@Circuit_Bar");
	SCR1stop();
	Delete("@Circuit*");

}

..//��6.ma03_025_runs
function ma03_025_runs($md03_025_�ȴ�ե�����,���ȶ�,$md03_025_�ե�������){

	CreateTextureEX("�}runs01", ���ȶ�, Center, Middle, $md03_025_�ե�������);
	CreateTextureEX("�}runs02", ���ȶ�, Center, Middle, $md03_025_�ե�������);
	SetBlur("�}runs01", true, 3, 400, 20, false);
	SetBlur("�}runs02", true, 3, 400, 20, false);

	SetVertex("�}runs01", 518, 389);
	SetVertex("�}runs02", 518, 389);
	SetVertex($md03_025_�ȴ�ե�����, 518, 389);

	CreateProcess("����", 1500, 0, 0, "ma03_025_runsProcess");
	SetAlias("����","����");
	Request("����", Start);

	$ma03_025_runs01 = 125;
	$ma03_025_runs02 = 250;

}

..//��7.ma03_025_runsProcess
function ma03_025_runsProcess(){

	begin:

		Zoom($md03_025_�ȴ�ե�����, 50000, 2000, 2000, AxlAuto, false);
		Shake($md03_025_�ȴ�ե�����, 50000, 1, 1, 0, 0, 500, null, false);
		Fade($md03_025_�ȴ�ե�����, 500, 0, null, false);

		Fade("@�}runs01", $ma03_025_runs01, 500, null, false);
		Zoom("@�}runs01", $ma03_025_runs02, 3000, 3000, AxlAuto, false);

		Wait($ma03_025_runs01);

	while(1){

		Shake($md03_025_�ȴ�ե�����, 50000, 1, 1, 0, 0, 500, null, false);

		Zoom("@�}runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs01", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@�}runs02", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs02", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);
		Zoom("@�}runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs02", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@�}runs01", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs01", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);
		Zoom("@�}runs02", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs01", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@�}runs02", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs02", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);
		Zoom("@�}runs01", 0, 1000, 1000, AxlAuto, false);
		Fade("@�}runs02", $ma03_025_runs01, 0, Axl1, false);
		Zoom("@�}runs01", $ma03_025_runs02, 3500, 3500, AxlAuto, false);
		Fade("@�}runs01", $ma03_025_runs01, 700, Dxl1, false);
		Wait($ma03_025_runs01);

	}


}

..//��8.ma03_025_runsDelete
function ma03_025_runsDelete(){

	Request("@����", Stop);
	Delete("@����");
	Delete("@�}runs*");

}

..//��9.ma03_025_shakeloop
function ma03_025_shakeloop($024SLP,$024�e���x,$024�e���y){

	CreateProcess("�e��e��", 15000, 0, 0, "ma03_025_shakeloopProcess");
	SetAlias("�e��e��","�e��e��");
	Request("�e��e��", Start);

}

..//��10.ma03_025_shakeloopProcess
function ma03_025_shakeloopProcess(){

	begin:

	while(1){Shake($024SLP, 500000, $024�e���x,$024�e���y, 0, 0, 1000, null, true);}

}

..//��11.ma03_025_shakeloopDelete
function ma03_025_shakeloopDelete(){

	Request($024SLP, Stop);
	Shake($024SLP, 0, 0, 0, 0, 0, 1000, null, true);
	Delete($024SLP);
	Delete("@�e��e��");

}

..//��12.ma03_025_GC
function ma03_025_GC(){

	$GCPC_time = 300;
	$GCPC_time2 = 1000;
	$GCPC_time3 = 5000;

	CreateTextureEXmul("�}GC001", 2000, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_d.jpg");
	CreateTextureEXover("�}GC002", 1999, Center, Middle, "cg/ev/ev904_�����ޥ��ͥåȥ��`�ƥ���_d.jpg");

	CreateProcess("����1", 15000, 0, 0, "ma03_025_GCP1");
	SetAlias("����1","����1");

	CreateProcess("����2", 15000, 0, 0, "ma03_025_GCP2");
	SetAlias("����2","����2");


	Request("����1", Start);
	Request("����2", Start);

}

..//��13.ma03_025_GCP1
function ma03_025_GCP1(){

	begin:

	while(1){
		Zoom("@�}GC001", $GCPC_time3, 1300, 1300, AxlDxl, false);
		Fade("@�}GC001",$GCPC_time2, $GCPC_time, null, true);
		Fade("@�}GC001",$GCPC_time2, 0, null, true);
		Zoom("@�}GC001", 0, 1000, 1000, AxlDxl, true);
	}

}

..//��14.ma03_025_GCPC
function ma03_025_GCPC($GCPC_time,$GCPC_time2,$GCPC_time3){}

..//��15.ma03_025_GCP2
function ma03_025_GCP2(){

	begin:

	while(1){
		Fade("@�}GC002",5000, 300, null, true);
		Fade("@�}GC002",5000, 0, null, true);
	}

}

..//��16.ma03_025_GCPDelete
function ma03_025_GCPDelete(){

	Request("@����1",Stop);
	Request("@����2",Stop);

	Delete("@����*");

	SetBlur("@�}GC001", true, 3, 400, 100, false);
	Fade("@�}GC002",500, 0, null, false);
	Zoom("@�}GC001", 1000, 2000, 2000, AxlDxl, false);
	Fade("@�}GC001",500, 700, null, true);
	FadeDelete("@�}GC001",500, true);

	Delete("@�}GC*");

}


..//��17.ma03_025_GCF
function ma03_025_GCF(){

	CreateColorEXmul("�}25co", 2500, "#330033");

	CreateTextureEXover("�}24ef", 2000, Center, Middle, "cg/ef/ef037_�|�I���ħ����a.jpg");
	Zoom("�}24ef", 0, 4000, 4000, null, true);
	Request("�}24ef", Smoothing);

	CreateProcess("����ɫ", 15000, 0, 0, "ma03_025_GCFP");
	SetAlias("����ɫ","����ɫ");

	Request("����ɫ", Start);

}

..//��18.ma03_025_GCFP
function ma03_025_GCFP(){

	begin:

	Fade("@�}25ef",0, 800, null, false);
	DrawTransition("@�}25ef", 0, 0, 200, 200, DxlAxl, "cg/data/circle_02_00_1.png", true);
	Shake("@�}25ef", 500000, 20, 10, 0, 0, 1000, null, false);
//	Rotate("@�}25ef", 500000, @0, @0, 18000, null,false);
	Fade("@�}25co",0, 300, null, false);

while(1){

	Shake("@�}25ef", 500000, 20, 10, 0, 0, 1000, null, true);

}

/*
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 100, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 300, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 100, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 300, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	Fade("@�}24co", 2000, 100, null, false);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 250, 150, 200, AxlDxl, "cg/data/circle_01_00_1.png", true);
	DrawTransition("@�}24ef", 500, 150, 250, 200, DxlAxl, "cg/data/circle_01_00_1.png", true);
*/

}

..//��19.ma03_moveAuto01(�ʥå���ָ��)
function ma03_moveAuto01($ma03STnat01){

	CreateProcess("�}�Ԅ�01", 150, 0, 0, "ma03_moveAuto01Process");
	SetAlias("�}�Ԅ�01","�}�Ԅ�01");
	Request("�}�Ԅ�01", Start);


}

..//��20.ma03_moveAuto01Process
function ma03_moveAuto01Process(){


	begin:
	WaitAction($ma03STnat01, null);

	while(1){

	$ma03_MA01PPRoll = Random(5)+1;//1��6
	$ma03_MA01PPTime = Random(5)+1;//1��6
	$ma0301PPT = $ma03_MA01PPTime*1000;//1000��6000
	$ma0301PPT = $ma0301PPT+2000;

	if($ma03_MA01PPRoll>=3){
		BezierMove($ma03STnat01, $ma0301PPT, (@0,@0){@-10,@-10}{@-20,@-20}(@-30,@-30){@-40,@-20}{@-50,@-10}(@-60,@0){@-50,@+10}{@-40,@+20}(@-30,@+30){@-20,@+20}{@-10,@+10}(@0,@0), DxlAxl, true);
	}else if($ma03_MA01PPRoll==2){
		BezierMove($ma03STnat01, $ma0301PPT, (@0,@0){@-5,@-5}{@-15,@-15}(@-25,@+10){@-30,@+6}{@-40,@+2}(@-50,@+0){@-40,@+10}{@-30,@+20}(@-20,@+30){@-30,@+20}{@-40,@+10}(@-50,@0){@-20,@+10}{@-40,@+10}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat01, $ma0301PPT, (@0,@0){@+10,@+10}{@+20,@+20}(@+30,@+30){@+40,@+20}{@+50,@+10}(@+60,@0){@+50,@-10}{@+40,@-20}(@+30,@-30){@+20,@-20}{@+10,@-10}(@0,@0), DxlAxl, true);
	}

	}



}

..//��21.ma03_moveAuto02(�ʥå���ָ��)
function ma03_moveAuto02($ma03STnat02){

	CreateProcess("�}�Ԅ�02", 150, 0, 0, "ma03_moveAuto02Process");
	SetAlias("�}�Ԅ�02","�}�Ԅ�02");
	Request("�}�Ԅ�02", Start);


}

..//��22.ma03_moveAuto02Process
function ma03_moveAuto02Process(){


	begin:
	WaitAction($ma03STnat02, null);

	while(1){

	$ma03_MA02PPRoll = Random(5)+1;//1��6
	$ma03_MA02PPTime = Random(5)+1;//1��6
	$ma0302PPT = $ma03_MA02PPTime*1000;//1000��6000
	$ma0302PPT = $ma0302PPT+2000;

	if($ma03_MA02PPRoll>=3){
		BezierMove($ma03STnat02, $ma0302PPT, (@0,@0){@-10,@-10}{@-20,@-20}(@-30,@-30){@-40,@-20}{@-50,@-10}(@-60,@0){@-50,@+10}{@-40,@+20}(@-30,@+30){@-20,@+20}{@-10,@+10}(@0,@0), DxlAxl, true);
	}else if($ma03_MA02PPRoll==2){
		BezierMove($ma03STnat02, $ma0302PPT, (@0,@0){@-5,@-5}{@-15,@-15}(@-25,@+10){@-30,@+6}{@-40,@+2}(@-50,@+0){@-40,@+10}{@-30,@+20}(@-20,@+30){@-30,@+20}{@-40,@+10}(@-50,@0){@-20,@+10}{@-40,@+10}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat02, $ma0302PPT, (@0,@0){@+10,@+10}{@+20,@+20}(@+30,@+30){@+40,@+20}{@+50,@+10}(@+60,@0){@+50,@-10}{@+40,@-20}(@+30,@-30){@+20,@-20}{@+10,@-10}(@0,@0), DxlAxl, true);
	}

	}

}


..//��23.ma03_moveAuto03(�ʥå���ָ��)
function ma03_moveAuto03($ma03STnat03){

	CreateProcess("�}�Ԅ�03", 150, 0, 0, "ma03_moveAuto03Process");
	SetAlias("�}�Ԅ�03","�}�Ԅ�03");
	Request("�}�Ԅ�03", Start);


}

..//��24.ma03_moveAuto03Process
function ma03_moveAuto03Process(){


	begin:
	WaitAction($ma03STnat03, null);

	while(1){

	$ma03_MA03PPRoll = Random(5)+1;//1��6
	$ma03_MA03PPTime = Random(5)+1;//1��6
	$ma0303PPT = $ma03_MA03PPTime*1000;//1000��6000
	$ma0303PPT = $ma0303PPT+5000;

		if($ma03_MA03PPRoll>=3){
			BezierMove($ma03STnat03, $ma0303PPT, (@0,@0){@-50,@0}{@-60,@0}(@-100,@0){@-50,@+10}{@-40,@+15}(@0,@+20){@-30,@+10}{@-60,@+20}(@-80,@+30){@-80,@-10}{@-75,@-15}(@0,@0), DxlAxl, true);
		}else if($ma03_MA03PPRoll==2){
			BezierMove($ma03STnat03, $ma0303PPT, (@0,@0){@-50,@0}{@-60,@0}(@-100,@0){@-50,@+10}{@-40,@+15}(@0,@+20){@-30,@+10}{@-60,@+20}(@-80,@+30){@-80,@-10}{@-75,@-15}(@0,@0), DxlAxl, true);
		}else{
			BezierMove($ma03STnat03, $ma0303PPT, (@0,@0){@-50,@0}{@-60,@0}(@-100,@0){@-50,@+10}{@-40,@+15}(@0,@+20){@-30,@+10}{@-60,@+20}(@-80,@+30){@-80,@-10}{@-40,@-15}(@0,@0), DxlAxl, true);
		}

	}

}


..//��25.ma03_moveAutoDelete
function ma03_moveAutoDelete(){

	Delete("@�}�Ԅ�01");
	Delete("@�}�Ԅ�02");
	Delete("@�}�Ԅ�03");
	Delete("@�}�Ԅ�04");
	Delete("@�}�Ԅ�05");


}

..//��26.ma03_moveAuto04(�ʥå���ָ��)
function ma03_moveAuto04($ma03STnat04){

	CreateProcess("�}�Ԅ�04", 150, 0, 0, "ma03_moveAuto04Process");
	SetAlias("�}�Ԅ�04","�}�Ԅ�04");
	Request("�}�Ԅ�04", Start);


}

..//��27.ma03_moveAuto04Process
function ma03_moveAuto04Process(){


	begin:
	WaitAction($ma03STnat04, null);

	while(1){

	$ma03_MA04PPRoll = Random(5)+1;//1��6
	$ma03_MA04PPTime = Random(5)+1;//1��6
	$ma0304PPT = $ma03_MA04PPTime*1000;//1000��6000
	$ma0304PPT = $ma0304PPT+500;

	if($ma03_MA04PPRoll>=3){
		BezierMove($ma03STnat04, $ma0304PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}else if($ma03_MA04PPRoll==2){
		BezierMove($ma03STnat04, $ma0304PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat04, $ma0304PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}

	}



}

..//��29.ma03_moveAuto05(�ʥå���ָ��)
function ma03_moveAuto05($ma03STnat05){

	CreateProcess("�}�Ԅ�05", 150, 0, 0, "ma03_moveAuto05Process");
	SetAlias("�}�Ԅ�05","�}�Ԅ�05");
	Request("�}�Ԅ�05", Start);


}

..//��30.ma03_moveAuto05Process
function ma03_moveAuto05Process(){


	begin:
	WaitAction($ma03STnat05, null);

	while(1){

	$ma03_MA05PPRoll = Random(5)+1;//1��6
	$ma03_MA05PPTime = Random(5)+1;//1��6
	$ma0305PPT = $ma03_MA05PPTime*1000;//1000��6000
	$ma0305PPT = $ma0305PPT+2000;

	if($ma03_MA05PPRoll>=3){
		BezierMove($ma03STnat05, $ma0305PPT, (@0,@0){@+5,@-5}{@+8,@-8}(@+10,@-10){@+5,@-5}{@+0,@0}(@-5,@+5){@+5,@+3}{@+15,@+2}(@+20,@0){@+10,@0}{@+5,@0}(@0,@0), DxlAxl, true);
	}else if($ma03_MA05PPRoll==2){
		BezierMove($ma03STnat05, $ma0305PPT, (@0,@0){@+3,@+2}{@+6,@+4}(@+10,@+8){@+8,@+5}{@+6,@+2}(@+5,@0){@+8,@-2}{@+10,@-5}(@+15,@-8){@+10,@-6}{@+5,@-3}(@0,@0), DxlAxl, true);
	}else{
		BezierMove($ma03STnat05, $ma0305PPT, (@0,@0){@+5,@+2}{@+8,@+4}(@+10,@+8){@+3,@-5}{@-4,@0}(@-11,@+5){@-12,@+3}{@-13,@+2}(@-14,@0){@-7,@0}{@-4,@0}(@0,@0), DxlAxl, true);
	}

	}



}


