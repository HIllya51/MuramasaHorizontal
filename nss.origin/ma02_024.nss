//<continuation number="1160">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_024.nss_MAIN
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
	#bg023_��Դ̫�μ�_03b=true;
	#bg023_��Դ̫�μ�_03b=true;
	#bg023_��Դ̫�μ�_03a=true;
	#bg020_ɽ�}�ӵ�_01=true;
	#bg020_ɽ�}�ӵ�_02=true;
	#bg022_ɽ��a_03=true;
	#bg004_�ɤӤ���b_03=true;
	#bg002_��b_03=true;



	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;


	//�������I��
	$����������=true;
	judgment_of_count();


//��δ�i���i�ж���
	$BasGameName = $GameName;
	$GameName = $GameName + "_NEXT";
	$AllRead = Conquest($ConGameName,$GameName,null);

//�������O����
	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

//���x�k֫������ץȼ��ӥե饰�O����
	$PreGameName = $GameName;
	$GameName = "ma03_001.nss";

//�룺���Y����
//	$GameCircle=0;

}

scene ma02_024.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma02_023.nss"

	PrintBG("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 5000, "#000000");
	Delete("�ϱ���");

	SoundPlay("@mbgm26",0,1000,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
��ѩ���һ�صó����ۣ���Ϊ�Լ��������˵ġ�
����ʹ������������ֱ���Ӳ���ޱ��ϡ�

��û�ܳɹ������Ǿ��٣����䶸�£��̶����������
�䴨�⾽���������ҡ�
������ǰ���˾��𲢵õ����ƣ�������Լ�����������
˵������ϡ��ľ�����

���ӽ���Ͽ����Լ�����������
�������Ļ�����Ȼ���Ǹ�˵���˰���

��Ҫ˵�е��ǵĻ��������Ǿ����Ѳ�����һ������
�ˡ���
�����Ǹ�ʱ���ܻ��а취�ɣ���åѩ���һ���뵽��

�������������������С�ĺ��ӡ�
���ڱ���ס֮ǰ��������һ����Ϊ���ʵĻ�������
�򿪻�·��

��������ô����ʱ��ѩ��ľ����ϲ�������ʹ�ࡣ
����Ȼû��ʩŰ��ϲ�á�������Ҫ�������Ǿ��ٺ�
�ǣȣѵ���Ů�˴��һ���Ļ���

��ѩ���һ���������������ˡ�
�����ű�΢���˸񣬱��ӵػ��š�
������Ϊ�����ͺá�

�������˺����ˡ��ݺ����ˡ�׬ȡС���˸���Ȥ����
�Դ��뾡�취��
�����塢���塢��Т����Щ���еĶ�����ô���޷���
�⡣�����ú������塣

���Ǿ�û�취�ˡ�ѩ�������롣
���Լ�ֻ���ñ�΢֮�¡����Ա�΢�ػ��š�
�����е��������ö��ø��е���ȥ���ͺá�

��������������ԥ��
��������˼���Ÿ������Լ�����Ů�Ǵ����ֻ�������
��֮����ʵ����������ԥ��
�����ϴ���һ���������Ц��ѩ��������õ���

�����ı����Ѹ���ٹ��ˡ�
����������ʹģ���˵���ʶ�У���������ţ�������
������ʱ���������Աߵ������׼���ж�����һ���
���ӡ�

��Ĩɱ��Ϣ����˲�������Լ������ʶģ����������
��Ϣ��һ�������뷨������ס��������ͷ�������
������ڷ����������ţ���̽�ŷ졣
��Ȼ�������������Ǳߵ����Ρ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��϶�g����Җ�����äݤ���bg23���Ф����

	CreateTextureSP("�}����100", 100, Center, Middle, "cg/bg/bg023_��Դ̫�μ�_03b.jpg");
	DrawTransition("�}����100", 0, 0, 200, 100, null, "cg/data/slide_06_00_1.png", true);

	OnSE("se�ճ�_����_���饤���_��01",1000);
	DrawDelete("�}��ܞ", 1000, 100, "slide_01_04_1", true);


	SetFwC("cg/fw/fwѩ܇�_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240010a12">
��������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240020a12">
������������

{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240030a12">
������ʲô��
������������Ϊ�Լ����ˣ�
��ʵ�Լ�����˯���С����𣿣�

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240040a12">
��Ϊʲô����<RUBY text="��">��</RUBY>�ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);


//��������ж�
//���ԄӵĤ˥��ʥ��`���x�k�����Τ褦�˥ݥ�����O����

	ClearFadeAll(2500, true);

}



scene ma02_024.nss_NEXT
{
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 110, "#000000");

	OnBG(100,"bg023_��Դ̫�μ�_03b.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);
	Wait(2000);
	WaitPlay("@mbgm*", null);

//�������塣�֤���`��
//��Ѫ��
	SL_rightdown(@0, @0,1000);
	SL_rightdownfade2(10);

	Wait(1000);

	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	CreateTextureSP("�}����110", 110, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Delete("�}��ܞ");

	FadeDelete("�}����110", 3000, true);

	StL(1000, @0, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStL(300,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0014]
�����������ǽ�㡣
�����Ƿ������ȱ�Ϣ����˯���е��Դ���
��
������Ϣ��һ�����ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣��Դ̫�ҤΕ��͡����ԥ�����`��

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	CreateColorEXmul("�}ɫ100", 1500, #847000);
	Fade("�}ɫ100",0,400,null,true);

	FadeDelete("�ϱ���", 2000, true);


	SetFwC("cg/fw/fw�դ�_����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0240050b05">
�����������������ǡ���
���������ߡ����ұ������޵���Щ��
������ʿ���˵ķ緶����


{	FwC("cg/fw/fw�դ�_Ц��.png","Sepia");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0240060b05">
����������ʿ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣�ӵ�ǰ�����äβ���

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg020_ɽ�}�ӵ�_01.jpg");
	FadeBG(0,true);

	CreateColorEXmul("�}ɫ100", 1500, #847000);
	Fade("�}ɫ100",0,400,null,true);

	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	StR(1000, @-60, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	StCR(1010, @60, @0,"cg/st/st�դ�_ͨ��_˽��.png");

	FadeStA(0,true);

	FadeDelete("�ϱ���", 2000, true);


	SetFwC("cg/fw/fw�դ�_�n��.png","Sepia");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0240070b05">
��ι���֣�
�������ǣ������á�������˼ֻ�з��š�
�������ǲ衣��


{	FwC("cg/fw/fw����_Ц�a.png","Sepia");}
//��������
<voice name="����" class="����" src="voice/ma02/0240080a00">
�������΢������
��ʀ���Ǹ�������ġ���


{	FwC("cg/fw/fw�դ�_�դ�.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0240090b05">
��������������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0240100b55">
����Ҫ̫���������á�
����Ȼ����������ο���Ҫ��Ȣ����ȥ�ˡ���


{	FwC("cg/fw/fw�դ�_�դ�.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0240110b05">
��ү��үү����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��Ѫ��
	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03b.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	Wait(1000);

	CreateTextureEX("�}�ţ�100", 100, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	Fade("�}�ţ�100", 2000, 1000, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0035]
�����ˡ�
���ǵ��������İɡ�
��Ӧ�ò�����ʹ����������

���������ԣ���ô˵�أ�
�����ڱ����޵���ض�ȥ��Ӧ�õ�δ��������˵��

������������ɱ����ɱ�������ı�Ű���ѡ�

�������������š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�100", 2000, true);

	StR(1000, @0, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0039a]
����������һ�����졣
���Ƚ��СһȦ���������һ�����ȵ���˯�š�

{	OnSE("se���L_����_������01",1000);}
�����ַ���̫����
�����泯�򡪡����ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣�դʤȾ���

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);

	CreateColorEXmul("�}ɫ100", 1500, #847000);
	Fade("�}ɫ100",0,400,null,true);

	StR(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStA(0,true);

	FadeDelete("�ϱ���", 2000, true);


	SetFwC("cg/fw/fw�դ�_��˼�h.png","Sepia");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0240120b06">
�����ָ������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240130a00">
���кܶ��ˡ���


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0240140b06">
���ж��٣���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240150a00">
����������ӵ�һ����ʮ���������ٱ�����������


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0240160b06">
��ѽ��
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Դ̫��
	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03b.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	SetFwC("cg/fw/fw��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma02/0240170a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����������֤��塣������������
//��Ѫ��

	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}��ܞ", 100, "#000000");
	Delete("�ϱ���");

	OnSE("se���L_����_�����01",1000);
	SL_down(@0, @0,1500);
	SL_downfade2(10);

	CreateSE("SE01","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01",0,1000,0,750,null,false);

	CreateTextureSP("�}�ţ�90", 90, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	CreateTextureSP("�}�ţ�100", 100, Center, Middle, "cg/ef/resize/ef006_����Ѫ���֤�tex.jpg");
	Delete("�}��ܞ");

	Wait(1000);

	FadeDelete("�}�ţ�100", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
����һ��Ѫɫ֮����
�����š�

������Ѫ����
����ƽ�͵ģ�����ʮ��ƽ�͵�Ϻ�ļ����š�
������ֻ��������

����Դ̫�����Ѿ����ˡ�
��������Ů����󡪡����ȵġ�
��
�������Լ����ȵ�����֮�֡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����롣�Q��ǰ�λ�Ԓ

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg020_ɽ�}�ӵ�_02.jpg");
	FadeBG(0,true);

	CreateColorEXmul("�}ɫ100", 1500, #847000);
	Fade("�}ɫ100",0,400,null,true);

	StR(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStA(0,true);

	FadeDelete("�ϱ���", 2000, true);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0240180b55">
�����á�
���������аɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240190a00">
��������
�������������ͨ�˲��̶ȵĻ�������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0240200b55">
���ǽ�������ٱ����ðɡ�
������������������������һֱ��æ��������
����Ͼ��δ���й�������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0240210b55">
����������͵�����˵���������˾ٱ����ÿ�
����ҩ��������ô˵���Ҽ�����������Ů��
���һ��Ǻ��ӣ�û�����Һȡ�����ѵ�
�Ļ��ᡣ��֪���ã��Ƿ��ܷ��㣿��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Դ̫��
	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_03b.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	StR(1000, @0, @0,"cg/st/3d�����˜�_����_�i��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma02/0240220a00">
����ҹ��һ������
����ҹ����һ��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240230a01">
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240240a00">
������û�¡�
����û�з衣
��û�з衣��


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240250a00">
������衣
��<RUBY text="��������������">���῿�����ӱ�</RUBY>����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240260a01">
����������
������˵�ģ������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240270a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240280a01">
��������
����û��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240290a00">
����������


{	NwC("cg/fw/nw������.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0240300b06">
�������ȡ�
���ȿȡ��ȡ��ȣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240310a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

	SoundPlay("@mbgm31",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����á����֡������ˡ�
����Ȼ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/ma02/0240320a01">
���жϴ��󰡡�
��Ҫ�Ǹ����һ�������Դ��Ļ��ͺ��ˡ���

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240330a00">
������������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240340a01">
���ǲ���ֱ�ӶԷ������ɡ�
��Ҳ������ˡ����Ǻ������ں�ʹ�ࡣ��

{	FwC("cg/fw/fw�դ�_����.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0240350b06">
���ȡ��ȡ���������
����㡭���Һ�ʹ������㡭��
��үү����������


{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240360a00">
���ޡ����ޡ��ޡ�����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240370a01">
���Ͻ�����

{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240380a00">
���ޡ�������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se���L_����_������01",1000);
	StR(1000, @0, @0,"cg/st/3d�����˜�_����_���L.png");
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����̫���߾ٹ�����
��ȷʵ��׼ʹ�ഭϢ�ŵĺ��ӵ�������
�������Դ�����ξ�һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0240390b06">
���ȡ��ȣ�
����硭������


{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240400a00">
��!!��


{	FwC("cg/fw/fw�դ�_����.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0240410b06">
�����ҡ�����硭��
����硭����


//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0240420b06">
����ʹ������
����硭��������


{	FwC("cg/fw/fw����_�ֲ�.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240430a00">
���������ޡ�����


//��������
<voice name="����" class="����" src="voice/ma02/0240440a00">
���ޡ�����������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
//�����ѩ`��

	PrintGO("�ϱ���", 5000);
	CreateColorSP("�}��ܞ", 100, "#000000");
	Delete("�ϱ���");

	CreateSE("SE01a","se���L_����_���̤���05");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	SL_down(@0, @0,1500);
	SL_downfade2(10);

	CreateSE("SE01","se����_Ѫ_Ѫ���֤�01");
	MusicStart("SE01",0,1000,0,1000,null,false);

	CreateTextureSP("�}�ţ�90", 90, Center, Middle, "cg/ef/ef005_����Ѫ�~.jpg");
	CreateTextureSP("�}�ţ�100", 100, Center, Middle, "cg/ef/ef006_����Ѫ���֤�.jpg");
	Zoom("�}�ţ�100", 0, 2000, 2000, null, true);

	Delete("�}��ܞ");

	Wait(1000);


	FadeDelete("�}�ţ�100", 2000, true);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma02/0240450a00">
������������


{
	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240460a01">
�����������ˡ�
����ȥ�ɣ���������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240470a00">
��������������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240480a01">
�����ڿ���
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnBG(10,"bg023_��Դ̫�μ�_03b.jpg");
	FadeBG(0,true);

	FadeDelete("�}�ţ�*", 1000, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0122]
//��������
<voice name="����" class="����" src="voice/ma02/0240490a00">
�������ޣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240500a00">
������ʲô����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240510a01">
������������

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240520a00">
�����˿������¡���
���Ҳ����Ѳ�������
������ʵ������ô������
���������ᡪ����ʵ�ҵı���Ҳ�������ġ�����


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240530a00">
�����ֱ����ǿ��𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240540a01">
��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240550a00">
����������Ц�ˡ�����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240560a00">
��Ҫ�����������Ļ���һ��ʼ�Ͳ���ȥɱ�ˣ�
��ɱ���˺������ᣬֻ�����������α��
���ѣ���


//��������
<voice name="����" class="����" src="voice/ma02/0240570a00">
��ɱ���Ƕ��У��ж�����Ƕ��
���Ҿ��Ƕ����


{	FwC("cg/fw/fw����_ŭ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240580a00">
���Ҿ��Ƕ��!!��


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240590a01">
����������
��֮ǰ�Ļ�������˵һ�Ρ���


//��������
<voice name="����" class="��������" src="voice/ma02/0240600a01">
�������ʲô������ȥ�롣��


//��������
<voice name="����" class="��������" src="voice/ma02/0240610a01">
����ֻ�����ǲٿ��ߡ�
�����Ҵ������ֽš���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240620a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240630a01">
���ֽ�û��Ҫ�������顣
�������ء�����ʹ�þͺá���


//��������
<voice name="����" class="��������" src="voice/ma02/0240640a01">
��������һ������ʱ������㡣
������֮ǰ����������ġ���


//��������
<voice name="����" class="��������" src="voice/ma02/0240650a01">
�������ǡ�����֪����
���ȴ��Ǹ�ʱ��ĵ�������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240660a00">
�����������ㆪ��������
�����С���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240670a01">
��������


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240680a00">
���������ҵ����˵Ļ����Ǿͻش���һ�����⡣
��Ϊ�Σ���


//��������
<voice name="����" class="����" src="voice/ma02/0240690a00">
��<RUBY text="����">Ϊ��</RUBY>����


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240700a01">
�����������������찡����


//��������
<voice name="����" class="��������" src="voice/ma02/0240710a01">
���ҵĻش�δ���ı䡣
�����Ǳ�����ֻ�ǹ᳹�ҵĹ���������ѡ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240720a00">
���������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240730a01">
������ն�����߱�𡣡�


//��������
<voice name="����" class="��������" src="voice/ma02/0240740a01">
����û������ʲô���ɡ�
���Ҳ������ࡣ��


//��������
<voice name="����" class="��������" src="voice/ma02/0240750a01">
�����ǽ��С���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240760a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240770a01">
������������Ҳ����ʹ��Ļ����ɴ������Ұɡ�
�������������ʸ񡣡�


//��������
<voice name="����" class="��������" src="voice/ma02/0240780a01">
������Ȩ�����ĵ�ȥ���ޡ���
���������������ĵ��С���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240790a00">
���������������¡���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240800a01">
��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240810a00">
����˵����ֻ�����Ǳ��������С�
��Ҳȷʵ��ˡ���


//��������
<voice name="����" class="����" src="voice/ma02/0240820a00">
����ֻ�����Ǳ��������ǵ��ߡ�
�����߲��������
�������޷�������������


//��������
<voice name="����" class="����" src="voice/ma02/0240830a00">
��ʹ�õ��ߵ�����Ȩ�������Ρ������ȫ��
������һ���˵ġ���ʲô����Ҳû�С�
�����ǵ�Ȼ�ġ�
�����ڽ�������ж��ū�������ˡ���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240840a01">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240850a00">
������������ʹ�õ��ߵ������ϡ�
�������Ļ���Ӧ�ñ�Թ�޵ġ���Ҳ��ֻ��ʹ��
�߶��ѡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	CreateColorEX("�}��ܞ", 5000, "#000000");
	Fade("�}��ܞ", 2000, 1000, null, true);

	Wait(2000);
	WaitPlay("@mbgm*", null);

	FadeDelete("�}��ܞ", 2000, true);


//��ѩ܇�����


	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240860a12">
������������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240870a12">
�����Ρ����ɡ�����

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240880a12">
���Ǻǡ����п���ΰ�������

{	FwC("cg/fw/fwѩ܇�_�o.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240890a12">
�����ǡ�����

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240900a12">
�����������εĻ�������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0240910a12">
�����������εĻ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɽ��
	PrintGO("�ϱ���", 15000);
	CreateColorSP("�}��ܞ", 5000, "#000000");

	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	Wait(1000);

	CreateSE("SE01","se����_����_�i��01_L");
	MusicStart("SE01",0,1000,0,500,null,true);

	Wait(1000);

	FadeDelete("�}��ܞ", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0136]
����������ͨ�����ӵ�·���ߡ�
������Ҫȥ��峤���档

��������˵İɡ�
��Ȼ����ӻ������ָ����ط��ٵ���֮ǰ��ƽ�Ͱɡ�

�����ȵء�
�������ء�
�����ӻ�����ʲôҲû�������㣬�ȹ�ƽ�͵����Ӱɡ�

��ֻ�ǡ���
�����У�������������Ϻ��һ�ҡ�

��ƽ�ȵء����Ҹ��ء���
��ֻǷȱ��һСƬ�Ĵ��ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma02/0240920a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240930a01">
������������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240940a00">
������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240950a01">
��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240960a00">
���������졣
��û���¡���


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0240970a01">
�������������ӣ���


{	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0240980a00">
������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se��Ȼ_��_��ĵ���");
	MusicStart("SE01",0,1000,0,1000,null,true);

//������������
	OnBG(100,"bg004_�ɤӤ���b_03.jpg");
	FadeBG(1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0147]
�����ǡ���
�����ǡ�������

����Χ���ݵĺ�Ƶ����¡�
�����������ǡ�

�����ӡ���
��<RUBY text="����">���</RUBY>��<RUBY text="��������������">�������������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="��������" src="voice/ma02/0240990a01">
���ѵ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0241000a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ӵ��µ����ǡ�
����˭������˭�����š���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0241010e160">
������������������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0241020a00">
���峤����


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0241030e160">
����������Ϊʲô�������ӻᡭ��
��Ϊ����ʲô����������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0241040a00">
������ʲô�£�
������ʲô���ˣ���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0241050e160">
���������ǡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0241060a00">
����������!?��


{	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);
	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0241070e160">
����ɫ�ġ������ǡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������


	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="����" src="voice/ma02/0241080a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0241090a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm37",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
����������û�ˡ�

���ط������ˣ�
��Ϻ��һ�����ˣ� 
�����ţ�����Ҳ�����ˡ�

��ʲôҲ��ʣ�ˡ�

��ʲôҲ��
��ʲôҲ��
��һ�С�

��һ�н��ڴ˻�Ϊ�ҽ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/ma02/0241100a01">
������ĸ�ס�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0241110a00">
�������⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);

	CreateSE("SE01","se��Ȼ_��_��ĵ���");
	MusicStart("SE01",2000,1000,0,850,null,true);

//��ҹ�ա���ηۣ�
	OnBG(100,"bg002_��b_03.jpg");
	FadeBG(0,true);

	CreateProcess("�ץ�����", 150, 0, 0, "fire01");
	CreateProcess("�ץ�����", 150, 0, 0, "fire02");
	CreateProcess("�ץ�����", 150, 0, 0, "fire03");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	FadeDelete("�ϱ���", 2000, true);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//��������
<voice name="����" class="����" src="voice/ma02/0241120a00">
���⡪��������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Wait(2000);

	ClearWaitAll(2000, 0);

	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_�ڶ���.png");

	WaitKey(4000);

	FadeDelete("�ϱ���", 2000, true);


	Wait(1000);


	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}�\��", 10, "#000000");
	CreateTextureSP("�}�ƥ�", 100, Center, Middle, "cg/sys/Telop/lg_�ڶ�����.png");

	FadeDelete("�ϱ���", 1000, true);

	WaitKey(3000);

	ClearWaitAll(3000, 3000);




//���ڶ�������


}

..//������ָ��
//�Υե����롡"ma03_001.nss"


//������������������������������������������������



//�˱�

/*==============================================
������Ԓ�åܥ���

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ex/0010050b05">
�������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ex/0010060b05"
��ɱ���ˣ���


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ex/0010070b06">
�������


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ex/0010080b06">
��ɱ���ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//?????????????????????????????

==============================================*/




