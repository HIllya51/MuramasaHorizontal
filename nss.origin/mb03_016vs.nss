//<continuation number="950">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb03_016vs.nss_MAIN
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
	#ev918_���ڟo��ʮ��ʸ=true;

	#bg074_�˲��ε���_01=true;
	#ev918_���ڟo��ʮ��ʸ=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb03_017.nss";

}

scene mb03_016vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb03_015.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#FFFFFF");
	CreateSE("SE01","se���L_�Ɖ�_����01");
	CreateSE("SE01a","se����_��x_�k��03");//���ߩ`ע��
	OnBG(100,"bg074_�˲��ε���_01.jpg");
	StL(1000, @0, @350,"cg/st/3d������ţ��_����.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	StR(1000, @100, @100,"cg/st/3d����֩��_����.png");
	FadeStA(0,true);
	FadeBG(0,true);
	Delete("�ϱ���");

	CreateMovie("���ӻ�", 3000, 256, 278, true, true, "dx/mvk100.ngs");
	SetAlias("���ӻ�","���ӻ�");
	Zoom("���ӻ�", 0, 3000, 6000, null, true);
//	Request("���ӻ�", SubRender);
	Move("���ӻ�", 0, @0, @-400, null, true);

	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 1000, true);

	Fade("���ӻ�", 5000, 0, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��δ���ٻ������������Ѿ����롣
����֩����������촰����ţ�����ڸ��Ǻ��������
�����˲�����

���Ѿ�������̬��׼����ʱ����ս����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE02","se����_����_���S03");
	MusicStart("SE02",0,750,0,1750,null,false);
	CreateColorSP("�}�\Ļ", 25000, "BLACK");
	DrawTransition("�}�\Ļ", 150, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", true);
	DeleteStA(0,true);
	Delete("���ӻ�");

	DrawDelete("�}�\Ļ", 150, 100, "slide_01_03_1", true);
	SoundPlay("@mbgm34",0,1000,true);


	SetFwC("cg/fw/fw�R��_�o��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0010b15">
����Ȼ�����ߡ�
��ɱ��ͯ�ĸ�ɮ�ģ��������ǰɡ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0020a00">
����Ȼ��
������ԭ����ˡ�����������


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0030a02">
��������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0040a00">
���������������������ɡ�
���Ǹ���������ǽ��������������ǵĳ���
�������鱨�������С���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�������ڿ�������֮ǰ��û��ȷ�����Ǿ������ߡ�����
���������Ʋ�ġ�
����Ϊ�����Һ�һ�����н��е��鱨���Ǹ����Ӧ��û
��ʱ��㱨��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0050a00">
����������Ԥ�����Щ�ֹ��ˡ�
��Ӧ�ÿ��ǵ�������̬����


{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0060a02">
����ȫû�����Ҫ�����������ء���


{	FwC("cg/fw/fw�R��_�o��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0070b15">
�������ߡ�
������װ��Ϳ����������ආ��ǡ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0080a00">
��ʲô����


{	FwC("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0090b15">
����Ϳ�͸�������ö���֮����С������˼��
���������𹥡���


//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0100b15">
�������������Ҿ�ע������ʱ���������ӽ�
�ṥ�������������������ɣ�
�����ǵ�������Ч��ս������ǰ�������ǻ���
�����С���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0110a00">
��������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0120a02">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
��ԭ����ˡ�
���Է����������ǵġ�

����ȷ��������Ϊ���Ƕ���ǰ����ȡ�ܴ��׼�������
���뷨���߱���ʵ��ζ��
���������ǹ��߹������ҷ���ս����ģ��������������
�Ƕȿ������ǵ��ж���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�R��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0130b15">
�����ǲŲ����ϵ���
�������ǲ����е��ȵġ����Ǿ������ǽ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������顣
//���o�T������
	CreateTextureEX("�}���z��", 900, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_ͨ��b.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_ͨ��c.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_ͨ��b.png");
	CreateTextureEX("�}���z��", 800, Center, InBottom, "cg/st/3d�ũ�ʽ�o�T��_����_�i��.png");
	CreateTextureEX("�}���z��", 600, Center, InBottom, "cg/st/3d�ũ�ʽ�o�T��_����_ͨ��.png");
	CreateTextureEX("�}���z��", 700, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_�i��.png");
	CreateTextureEX("�}���z��", 500, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_�i��.png");
	CreateTextureEX("�}���z��", 400, Center, InBottom, "cg/st/3d�˰�ʽ�o�T��_����_�i��.png");

	SetVertex("�}���z*", Center, bottom);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 970, 970, null, true);
	Zoom("�}���z��", 0, 840, 900, null, true);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 1100, 1100, null, true);
	Zoom("�}���z��", 0, 1030, 1030, null, true);

	CreateSE("SE01a","se����_����_�z�i��03");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @-20, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01b","se����_����_�z�i��03");
	MusicStart("SE01b",0,1000,0,1100,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @120, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01c","se����_����_�z�i��03");
	MusicStart("SE01c",0,1000,0,900,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @-240, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01d","se����_����_�z�i��03");
	MusicStart("SE01d",0,1000,0,1000,null,false);
	Fade("�}���z��", 300, 1000, null, false);
//��������ݳ����ƄӾ��x�����ꤹ���ʤΤ��{����
	//Move("�}���z��", 300, @360, @0, AxlDxl, false);
	Move("�}���z��", 0, @200, @0, AxlDxl, false);
	Move("�}���z��", 300, @160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01e","se����_����_�z�i��03");
	MusicStart("SE01e",0,1000,0,1200,null,false);
	Fade("�}���z��", 300, 1000, null, false);
//��������ݳ����ƄӾ��x�����ꤹ���ʤΤ��{����
	//Move("�}���z��", 300, @-480, @0, AxlDxl, false);
	Move("�}���z��", 0, @-240, @0, AxlDxl, false);
	Move("�}���z��", 300, @-240, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01f","se����_����_�z�i��03");
	MusicStart("SE01f",0,1000,0,800,null,false);
	Fade("�}���z��", 300, 1000, null, false);
//��������ݳ����ƄӾ��x�����ꤹ���ʤΤ��{����
	//Move("�}���z��", 300, @520, @0, AxlDxl, true);
	Move("�}���z��", 0, @200, @0, AxlDxl, true);
	Move("�}���z��", 300, @320, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01g","se����_����_�z�i��03");
	MusicStart("SE01g",0,1000,0,1000,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 300, @-160, @0, AxlDxl, false);

	Wait(60);

	CreateSE("SE01h","se����_����_�z�i��03");
	MusicStart("SE01h",0,1000,0,700,null,false);
	Fade("�}���z��", 300, 1000, null, false);
	Move("�}���z��", 0, @150, @0, AxlDxl, true);
	Move("�}���z��", 300, @150, @0, AxlDxl, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ӵ���������ϳ��ҵ��װ����ϵ��������
�������������

������һ�ﻳ������
����Ů��Ա���𣿡��Ǿ��Ǿ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nwС��ʮ�ܣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������㣯ʮ�ܣ¡�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0140e112">
���ҵ��ǰ�������ɨ�ߡ���


{	NwC("cg/fw/nwС��ʮ�ܣ�.png");}
//������㣯ʮ�ܣá�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0150e113">
��Ϊ���������׵����ˡ�
��Ϊ��ɨ��ǰ���ĵ�·����


{	NwC("cg/fw/nwС��ʮ�ܣ�.png");}
//������㣯ʮ�ܣġ�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0160e114">
�����ϰ����Ұ������


{	NwC("cg/fw/nwС��ʮ�ܣ�.png");}
//������㣯ʮ�ܣš�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0170e115">
����ȥ������ʯ�顣��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StC(1000, @-60,@0,"cg/st/st�R��_���L_�Ʒ�.png");
	Move("@StC*", 300, @60, @0, Dxl2, false);
	FadeStC(300,true);
	SetFwR("cg/fw/fw�R��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0085]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0180b15">
���˳�С��ʮ�ܡ���
����ˡ�ҵ��������󣡡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);
	SetVolume("@mbgm*", 300, 1, null);

//���Щ`��
//���R������Ĥ����С�
	CreateSE("SE01","se����_냇��_�z�ǈ���02");
	MusicStart("SE01",0,1000,0,850,null,false);
	CreatePlainEXadd("�}����", 3100);
	CreatePlainSP("�}��", 3000);
	SetVertex("�}��", center, middle);
	Fade("�}����", 200, 750, null, false);
	Zoom("�}����", 600, 1200, 1200, AxlDxl, false);
	Wait(200);
	FadeDelete("�}����", 800, true);

	WaitKey(2000);
	Delete("�}��");

	CreatePlainSP("�}��ʮ���\", 2000);
	Wait(1);
	Delete("�}���z*");
	DeleteStA(0,true);

	SetVolume("@mbgm*", 2000, 1000, null);

	SetFwR("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0190a00">
��ʮ�ܡ�����


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0200a02">
�������ǲ���ȱһ��ô����


{	FwR("cg/fw/fw�R��_�o��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0210b15">
�����ڴ˴������ˣ��Ѷ�����������
����ɥ�����ǵ����С���


{	NwR("cg/fw/nwС��ʮ�ܣ�.png");}
//������㣯ʮ�ܣá�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0220e113">
���ߡ�������̫�硣
���Ǽһ��ʵ��������֮�������ġ���


{	NwR("cg/fw/nwС��ʮ�ܣ�.png");}
//������㣯ʮ�ܣš�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0230e115">
�����ǲ���������С��ʮ�ܡ�
�������ǳ��������ʵ����������


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0240a02">
��������Ȼ����ô���ף������ðɡ�
����˵�����ǿ����̵����Ƕ԰ɡ���


{	SetVolume("@mbgm*", 300, 0, null);
	FwR("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0250a02">
�����ڣ���


{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb03/016vs0260b40">
��ŵ����


</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 4500, "BLACK");

	CreateWindow("�}��", 5000, 636, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateColorSP("�}��/�}��ɫ", 5010, "#002080");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, Center, Middle, "cg/ef/ef001_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, InBottom, "cg/st/stһ��_װ��_�Ʒ�a.png");
	Move("�}��/�}�����}װ��", 0, @280, @0, null, true);//���ߩ`ע�⣺��λ��

	Fade("�}ɫ100", 300, 500, null, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);


	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0098a]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0270a02">
�������������𾡶��
�������������Ͼ�а�񡣡�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 5500);
	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, InBottom, "cg/st/stһ��_װ��_�Ʒ�b.png");
	Move("�}��/�}�����}װ��", 0, @280, @0, null, true);//���ߩ`ע�⣺��λ��
	FadeDelete("�}��д", 300, false);

	SetFwC("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0098b]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0280a02">
������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ډ���
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSPadd("�}��/�}�ե�", 10000, "#FFFFFF");
	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, InBottom, "cg/st/3d����_����_ͨ��.png");
	Move("�}��/�}�����}װ��", 0, @280, @0, null, true);//���ߩ`ע�⣺��λ��
	WaitKey(300);
	FadeDelete("�}��/�}�ե�", 600, true);
	CreateSE("SE01a","se����_�z_�l����02");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	WaitKey(500);

	Fade("�}ɫ100", 500, 0, null, false);
	Zoom("�}��", 500, 0, 1000, null, true);
	Delete("�}��*");

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0290a00">
��������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb03/016vs0300a01">
�����ס���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}��", 5000, 48, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 0, 1000, null, true);
	CreateColorSP("�}��/�}��ɫ", 5010, "#CC0000");
	CreateTextureSPmul("�}��/�}�ݱ���", 5020, Center, Middle, "cg/ef/ef002_�����Ƅ�.jpg");

	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, InBottom, "cg/st/st����_װ��_˽��a1.png");
	Move("�}��/�}�����}װ��", 0, @-280, @0, null, true);//���ߩ`ע�⣺��λ��

	Fade("�}ɫ100", 300, 500, null, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101a]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0310a00">
������ն��
�����߱�𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreatePlainSP("�}��д", 5500);
	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, InBottom, "cg/st/st����_װ��_˽��b1.png");
	Move("�}��/�}�����}װ��", 0, @-280, @0, null, true);//���ߩ`ע�⣺��λ��
	FadeDelete("�}��д", 300, false);

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0101b]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0320a00">
������֮�������ڴˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	CreateSE("SE01","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1250,null,false);
	CreateColorSPadd("�}��/�}�ե�", 10000, "#FFFFFF");
	CreateTextureSP("�}��/�}�����}װ��", 5100, Center, InBottom, "cg/st/3d�����˜�_����_ͨ��.png");
	Move("�}��/�}�����}װ��", 0, @-280, @0, null, true);//���ߩ`ע�⣺��λ��
	WaitKey(300);
	FadeDelete("�}��/�}�ե�", 600, true);
	CreateSE("SE01a","se����_�z_�l����01");
	MusicStart("SE01a",0,1000,0,1000,null,false);

	WaitKey(500);

	Fade("�}ɫ100", 500, 0, null, false);
	Zoom("�}��", 500, 0, 1000, null, true);
	Delete("�}��*");
	Delete("�}ɫ100");

	SoundPlay("@mbgm13",0,1000,true);

	SetFwR("cg/fw/fw�R��_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0330b15">
��Ӵ�����������߷緶��
������������������ͷ���ӡ�����


{	FwR("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0340b15">
�������������
�����Ǿ����ܹ�սʤ�����𣿡�


{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0350a02">
�����д��⣬���У���


{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0360a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��һ���ǳ����š�
����Ȼ�Ҳ�û��������ʤ�㡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0370a00">
����Ҳ���ǲ���һ�Ե�ʤ��֮����

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���ϰ����������ڻ��������������ߡ�
�����ң�û�б�Ҫ����ݻ��Ե�ս����ֻҪʹ�����޷�
ս�����ܴ�ܵз�ʿ�����û����ӣ�������ɡ�

��ֻҪ������������Ҳ����ʲô���¡�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwR("cg/fw/nwС��ʮ�ܣ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//������㣯ʮ�ܣ¡�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0380e112">
���ߡ�
��������ı�ļһ�������ֿɰ�������


{	NwR("cg/fw/nwС��ʮ�ܣ�.png");}
//������㣯ʮ�ܣá�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0390e113">
�����������෴��
��ı���㾡����ʤ��֮���ۻ�ʤ���ս���š���


{	NwR("cg/fw/nwС��ʮ�ܣ�.png");}
//������㣯ʮ�ܣġ�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0400e114">
�������С��ʮ�ܵ��ԳưԵ�ԭ�򡣡�


{	FwR("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0410a02">
�����Բ��ѡ���������Ϊ�Ǽһ�ʧ���ˣ��Ż��
�ֽ������־���ô��
����˵���ˣ������������


{	FwR("cg/fw/fw�R��_�o.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0420b15">
��������������
��ʧ�ܣ�����Ȼ˵ʧ�ܡ���


{	FwR("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0430b15">
����û���κ�ʧ���ء�
������ȷʵ����������ܺ�һ�ڲ�ˮ�Ļ�����
��ͺý���ˡ���


{	FwR("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0440a00">
���¶�������


{	FwR("cg/fw/fw�R��_�o.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0450b15">
��ԭ����û��̫��ϣ����
����Ϊı�ԡ����Ÿտ�ʼ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se����_����_�ӥ�01");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,850,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	CreateSE("SE01a","se�ճ�_����_���_��09");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	CreateColorSP("�}�\Ļ", 16000, "BLACK");
	DrawTransition("�}�\Ļ", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);
	CreateTextureSP("�}�ݱ�����", 5100, Center, Middle, "cg/bg/bg074_�˲��ε���_01.jpg");//���ߩ`ע��
	DrawDelete("�}�\Ļ", 300, 100, "slide_01_01_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����һ����Ů�����ᵯָ��
�����źŰɡ�վ�ڱ��ϵ�һ�ｫ�ַ���
���ӳ������ţ�����������

��Ȼ��ק����Щʲô��
����ʲô����

�������������ġ�����������
��
�����ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0460a00">
��������


{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0470a02">
��������Щ�쵰����


{	FwC("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0480b15">
�������ǺǺǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
�����ˡ������ˡ�
��׳��������������µ�Ů�ԣ�����С�к���

����������̿���������������Χ��һ�С�
��û����Ϣ����Ϊ��ͱ���ס�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�R��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0490b15">
����ԭ���ĵ���Ŷ����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0500a00">
��������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0510a02">
�����Ϸſ����ǡ���


{	FwC("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0520b15">
�������Ǻǡ�
��������ı�����ȫһ���ء���


//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0530b15">
�����޸�ϵ֮�ˣ���ȥ���ⲻ�����´����𡭡�
������ȴ�Ų��£��԰ɣ������һ������


{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0540a02">
������������ſ����ǡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0550a00">
��һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���Ұ��ִ������ļ��Ϊ����ֹ����
�������ǿ϶��ġ����ǡ�������������治��ȫƾ��ŭ
�ж���

���������صؿ���ʱ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Zoom("�}�ݱ�����", 2000, 750, 750, null, false);
	FadeDelete("�}�ݱ�����", 500, true);

	SetFwR("cg/fw/fw�R��_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0560b15">
���������е�ͦʶʱ���
���ߡ���


//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0570b15">
��������Ҳ������Լ���������
�������Ļ�����ֻʣ��һ���𡣡�


{	FwR("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0580a02">
��������


{	FwR("cg/fw/fw�R��_�o��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0590b15">
����������ֻ��һ������������Ҳ�᲻�ð졣��
��û�취����
������Ȥ����������������������


{	FwR("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0600b15">
������


{	NwR("cg/fw/nwС��ʮ�ܣ�.png");}
//������㣯ʮ�ܣ¡�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0610e112">
���š�����


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0620a00">
��!!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����Ͼ��ֹ��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ�W
	CreateColorSP("�}ɫ�\", 5000, "#000000");
	CreateSE("SE01","se���L_����_Ұ̫�����02");
	MusicStart("SE01",0,1000,0,1500,null,false);
	SL_right2(5100,@0, @0,2000);
	SL_rightfade2(5);

	Fade("�}��ʮ���\", 0, 0, null, true);

	FadeDelete("�}ɫ�\", 500, true);

	Wait(500);

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0630a02">
�������쵰������


{	FwR("cg/fw/fw�R��_�o.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0640b15">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�����������̫���ῳ��������
�������ŵĺ���˲ʱһ�ж���ͣ�͡�

�����롣
���������̡�

����Ѫ����
�����к��ľ���ӿ����

��һ�ɡ���
�����ɡ���
�����ɡ���

�����ˡ�
��ֻ��ӿ���˼�������һ��ֵ���Ѫ��

���˿ڡ��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}��ʮ���\", 500, 1000, null, true);

	SetFwR("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0650a00">
������������


{	FwR("cg/fw/fw�R��_�o.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0660b15">
��<RUBY text="����������">����������</RUBY>��
��������˼�������˰ɣ���


{	FwR("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0670b15">
������˵һ��������������ʱ����ɱ������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
�������Ѿ��޲�����������Ŵ�ŵ����������¡�
�����������ĸ�������Ů��ʼ������

�����ӱ�����һ�ߣ��������򱻲�ס�˼�����
�����ţ�����ǰһ����ŵ��С�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�R��_΢Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0680b15">
����Ȼ�õ������ǵ���⣬��ô���ǽ���̸��
��������ȡ���ǵ���������


{	FwR("cg/fw/fw�R��_ͨ��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0690b15">
�������ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����Ů�˿�����ᡣ
�������ݲ��ñ��˵���⡣

����Ҫ�Һ�һ�������ڴ���

��������ô����
�����ö��룬���Ҫ�󲻿��ܽ��ܡ�

������ȴ�޷��ܾ���
��һ�������Ļش���ζ�žܾ�����ô˲�䣬���ٻ���һ
�����ʲ���ɱ����

������ע���ǣ��������档
������������Ҳ��Σ�յġ������ҷ�������ͼ�ı�����
����Ԥ�⵽�Է���߸��ʵĻش���Ȼ��һ�����ʵ���
����ʾ�ܾ���

��������ˣ��з����������������ʡ�
����������㹻ά�����ǵ���в��
��
���������ʡ��ε��������ơ�

���ѵ�ֻ�ܽ������ǵ�Ҫ����
�����˵����ܻ������������Ļ�����Ҳ���㡣

�������Ҳ��ܿ���һ��ȥ����
���ң�����Ҫ���������°��и�һ����Ȼ���������
�͸�����Ҳ�޷������ǡ���

����������
����ô�����Ǻš���

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�R��_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0700b15">
����ܿ��հ����ն���������


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0710a00">
�����������ĸ���
��ʵ���Ǹ����⡣��


{	FwR("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0720b15">
�����𣿡��ܼ򵥰ɡ�
��˲������������ˣ���Σ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0730a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
������������������������Ц��
����Ȼ�������ǲ�����ʵ�ֵġ�

�������ֳֵ�Ż�������ȷ������Ĳ�����������ѡ�
����ʹ�ܽ�����������ɱ�˷�Χ����ô����Ҳ�ᱻ����
���С�

�������޴����֡�
���޼ƿ�ʩ��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�R��_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0740b15">
����ô��
����ʱ����������˰ɡ���


//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0750b15">
����Ĭ����ܾ�����������ˡ���


{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0760a00">
��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����Ȼ����֪��λش�
�����ǳ�Ĭ�޷�������

�����������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwR("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0770a02">
�������ˡ���


{	FwR("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0780a00">
��һ��������


{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0790a02">
���Ͱ�����˵��������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
����Ů��ȷ��˵��
���峺����ɫһ�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�R��_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0800b15">
��ŶӴ��
����Ԥ���Ҫ���������


{	FwR("cg/fw/fw�R��_΢Ц.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0810b15">
���ǾͿ�㶯�ְɡ���


{	FwR("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0820a02">
���ð���
�������ն���������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
��һ��̧�ۿ��ҡ�
����Ҳ������˫��ͫ��

�����û��һ˿������
���е�ֻ����ȫ��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0830a02">
������һ˲�䣬��ֹ���ǡ���


{	SoundPlay("@mbgm12",0,1000,true);
	FwR("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/mb03/016vs0840a00">
��������


{	FwR("cg/fw/fw�R��_�o��.png");}
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0850b15">
��ʲô������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
���ҷ���˼��һ�������⡣
��
����Ϊ�Ҿ��õģ�<RUBY text="��������">�����Ѷ�</RUBY>��

��������һ˲֮�䣬��ֹ���ǡ�
��
����ֻץס���Ҫ��

����ʼ���Ǹ�����ʵ���ֶΡ�
��
�������������뽣�л�ͨ���⡣

�������������������ذ塣

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateWindow("�}�ݷ���", 6000, Center, -50, 1024, 388, true);
	SetAlias("�}�ݷ���","�}�ݷ���");
	CreateColorEX("�}ɫ100", 16050, "BLACK");
	CreateTextureEX("�}�ݷ���/�}�ݱ���", 16100, -550, -844, "cg/ev/resize/ev903_�����ŚݥХꥢ�`չ�__al.jpg");
	Rotate("�}�ݷ���/�}�ݱ���", 0, @0, @0, @90, null,true);
//	Zoom("�}�ݷ���/�}�ݱ���", 0, 800, 800, null, true);

//	CreateTextureEX("�}�ݷ���/�}���}", 16200, 60, -60, "cg/st/resize/st�R��_ͨ��_�Ʒ�l.png");
	Move("�}�ݷ���", 0, @0, @128, null, true);

	Request("�}�ݷ���/�}�ݱ���", Smoothing);
	Request("�}�ݷ���/�}�ݱ���", Smoothing);

	Move("�}�ݷ���/�}�ݱ���", 1000, @0, @400, Dxl2, false);
//	Move("�}�ݷ���/�}���}", 1000, @0, @-500, null, false);

	Shake("�}�ݷ���/�}�ݱ���", 500000, 2, 0, 0, 0, 1000, null, false);

	Fade("�}ɫ100", 300, 300, null, false);
	Fade("�}�ݷ���/�}�ݱ���", 500, 1000, null, false);
	Fade("�}�ݷ���/�}���}", 500, 1000, null, true);


	CreateSE("SE01","se����_��x_�k��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureEXadd("�}�ե�", 5000, Center, Middle, "cg/ef/ef021_������x�k��b.jpg");
	Zoom("�}�ե�", 1000, 1300, 1300, null, false);
	Fade("�}�ե�", 200, 600, null, true);
	WaitKey(100);
	FadeDelete("�}�ե�", 600, true);

	SetFwC("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0860a00">
����װ������������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb03/016vs0870a01">
������������ת��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ɢ
	CreateSE("SE01","se����_늓�_���01");

	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}�ݷ���/�}�ݱ���", 500, @0, @-400, Axl2, true);
	CreateColorSPadd("�}�ե�", 17000, "#FFFFFF");

	Delete("�}�ݷ�*");
	Delete("�}ɫ*");
	WaitKey(100);
	CreatePlainSPadd("�}��д", 4999);
	FadeFR2("�}��д",0,750,300,0,0,30,Dxl3, false);
	FadeDelete("�}�ե�", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
��Ȼ������Ҳ�ڳ�ͬһ��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/mb03/016vs0880a00">
��������װ����������


{	FwR("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/mb03/016vs0890a01">
�����������������ء�����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ɢ
//�����Ĥ����줬�֤Ĥ��äƤФ��Ф��ä�
	CreateSE("SE01","se����_늓�_���02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");
	WaitKey(100);
	CreateProcess("�ץ�����", 150, 0, 0, "fire01");
	CreateProcess("�ץ�����", 150, 0, 0, "fire02");
	CreateProcess("�ץ�����", 150, 0, 0, "fire03");
	CreatePlainSPadd("�}��д", 4999);
	FadeFR2("�}��д",0,750,300,0,0,30,Dxl3, false);
	FadeDelete("�}�ե�", 600, false);

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	Fade("�}��д", 5000, 600, null, false);
	Shake("�}��д", 360000, 0, 2, 0, 2, 1000, null, false);

	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�������븺����
�����ɴ�����

����������Ľ�����ɢ��
����˫���������ӡ�

��ֱ������ȫ��
��<RUBY text="����������������">��ֹ�����ǵĶ���</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�R��_�o��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0900b15">
������!?��


{	NwR("cg/fw/nwС��ʮ�ܣ�.png");}
//������㣯ʮ�ܣá�
<voice name="����㣯ʮ�ܣ�" class="����������" src="voice/mb03/016vs0910e113">
����������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
��ʩ���Լ��ڲ��ġ������嶯�����ٻ��Ĵ�װ������
��ʩ���Լ��ⲿ�ġ������ϱڷ��������Ĵ�װ������

��ͬʱ�������ߵ��ˣ�
�������ӭ��<RUBY text="����������">���׵�ƽ��</RUBY>��
��ȫ���ö�����

��������ǵĵж��ж�����Ӧ�������Ͽ��������׼��ĵ�
�С���<k>�˿̣�һ��Ҳ������

�����������״̬���ֻ��ά��һ˲��
������ʵʩ����ֻ���Լ�һ��������ԭ�������޷���ʱ��
���ֵķ��������ڻ�Ҫ��չ����ô��ķ�Χ��

������֮�䣬��ݶ���ͻ��߽⡣
��
��
��������������ģ�������ȫ����

����Ϊ�������㹻�ˡ�
��Ϊ��Ӯ��ʤ����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se���L_����_���nͻ01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreateTextureSPmul("�}�݄���", 6000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateTextureSPadd("�}����", 5100, Center, Middle, "cg/ev/resize/ev918_���ڟo��ʮ��ʸl.jpg");
	CreateTextureSP("�}��", 5000, Center, Middle, "cg/ev/resize/ev918_���ڟo��ʮ��ʸl.jpg");
	Zoom("�}�݄���", 0, 2000, 2000, null, true);
	Zoom("�}����", 0, 1200, 1200, null, false);
	Move("�}��", 0, @-10, @200, null, true);
	SetBlur("�}��", true, 3, 500, 70, false);

	Zoom("�}�݄���", 300, 1000, 1000, AxlDxl, false);
	Fade("�}�݄���", 300, 0, null, false);
	DrawDelete("�}�݄���", 300, 100, "zoom_01_00_0", false);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

	Delete("�ץ���*");
	Delete("�}��ʮ���\");
	Delete("�}��д");

	Wait(500);

	SetFwR("cg/fw/fwһ��_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0920a02">
�������߻��ɡ�����


//���i�ߡ��ल�󡤤��夦��������
{	FwR("cg/fw/fw������ţ��_ͨ��.png");}
//�����ڡ�
<voice name="����" class="����" src="voice/mb03/016vs0930b40">
�����ҡ�ʮ��ʸ����

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ָ⟳h�ʡ�
//���Ф���Ф���Ф���ä�
//��ȫ������
	CreateSE("SE01a","se���L_����_�o��ʮ��ʸ");
	CreateSE("SE02a","se����_�z_װ��06");
	CreateSE("SE03a","se���L_����_�z_�ϵ�������01");
	CreateSE("SE04a","se���L_����_��ͻ�M03");
	CreateTextureEX("�}�ݣ�", 5000, Center, Middle, "cg/ev/ev918_���ڟo��ʮ��ʸ.jpg");
	CreateColorEXadd("�}ɫ100", 15000, "WHITE");

	MusicStart("SE01a",0,1000,0,1000,null,false);
	MusicStart("SE02a",0,1000,0,1000,null,false);

	Fade("�}�ݣ�", 600, 1000, Axl3, false);
	Move("�}��", 600, @10, @-200, Dxl2, false);
	Zoom("�}��", 600, 500, 500, Dxl2, true);

	MusicStart("SE03a",0,1000,0,1000,null,false);
	Shake("�}�ݣ�", 1000, 5, 0, 0, 0, 1000, Dxl2, false);

	CreateTextureSPadd("�}�݄�����", 6000, 254, 142, "cg/ef/ef026_���ñ���.jpg");
	Zoom("�}�݄�����", 0, 1500, 1500, null, true);
	Zoom("�}�݄�����", 300, @100, @100, null, false);
	Fade("�}�݄�����", 300, 0, null, false);
	DrawDelete("�}�݄�����", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se���L_����_�o��ʮ��ʸ",1000);//���ߩ`ע��
	CreateTextureSPadd("�}�݄����r", 6000, -80, -40, "cg/ef/ef026_���ñ���.jpg");
	Zoom("�}�݄����r", 0, 1500, 1500, null, true);
	Rotate("�}�݄����r", 0, @0, @180, @0, null,true);
	Zoom("�}�݄����r", 300, @200, @200, null, false);
	Fade("�}�݄����r", 300, 0, null, false);
	DrawDelete("�}�݄����r", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se���L_����_�o��ʮ��ʸ",1000);//���ߩ`ע��
	CreateTextureSPadd("�}�݄�����", 6000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	Zoom("�}�݄�����", 0, 1500, 1500, null, true);
	Zoom("�}�݄�����", 300, @50, @50, null, false);
	Fade("�}�݄�����", 300, 0, null, false);
	DrawDelete("�}�݄�����", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se���L_����_�o��ʮ��ʸ",1000);//���ߩ`ע��
	CreateTextureSPadd("�}�݄�����", 6000, -254, 140, "cg/ef/ef026_���ñ���.jpg");
	Zoom("�}�݄�����", 0, 1500, 1500, null, true);
	Rotate("�}�݄�����", 0, @180, @0, @0, null,true);
	Zoom("�}�݄�����", 300, @50, @50, null, false);
	Fade("�}�݄�����", 300, 0, null, false);
	DrawDelete("�}�݄�����", 300, 1000, "effect_01_00_0", false);

	Wait(100);

	OnSE("se���L_����_�o��ʮ��ʸ",1000);//���ߩ`ע��
	CreateTextureSPadd("�}�݄�����", 6000, Center, Middle, "cg/ef/ef026_���ñ���.jpg");
	Zoom("�}�݄�����", 0, 1500, 1500, null, true);
	Zoom("�}�݄�����", 300, @500, @500, null, false);
	Fade("�}�݄�����", 300, 0, null, false);
	DrawDelete("�}�݄�����", 300, 1000, "effect_01_00_0", false);

	Fade("�}ɫ100", 100, 800, null, true);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	FadeDelete("�}ɫ100", 1000, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
�������ɳ��ģ�����ָ��
�����ڡ���˫�ֵ���ָ��

</PRE>
	SetTextEXR();
	TypeBeginTimeRIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEXadd("�}ɫ100", 17500, "WHITE");
	SetBlur("�}�ݣ�", true, 3, 300, 50, false);
	CreateSE("SE01","se���L_����_��ͻ�M02");


	MusicStart("SE01",0,1000,0,1000,null,false);

	Fade("�}�ݣ�", 300, 0, Axl3, false);
	Zoom("�}�ݣ�", 300, 2000, 2000, Dxl2, false);
	Fade("�}ɫ100", 300, 1000, null, true);

	CreateTextureSP("�}���z��", 900, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_ͨ��b.png");
	CreateTextureSP("�}���z��", 700, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_ͨ��c.png");
	CreateTextureSP("�}���z��", 600, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_ͨ��b.png");
	CreateTextureSP("�}���z��", 800, Center, InBottom, "cg/st/3d�ũ�ʽ�o�T��_����_�i��.png");
	CreateTextureSP("�}���z��", 600, Center, InBottom, "cg/st/3d�ũ�ʽ�o�T��_����_ͨ��.png");
	CreateTextureSP("�}���z��", 700, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_�i��.png");
	CreateTextureSP("�}���z��", 500, Center, InBottom, "cg/st/3d����ʽ�o�T��_����_�i��.png");
	CreateTextureSP("�}���z��", 400, Center, InBottom, "cg/st/3d�˰�ʽ�o�T��_����_�i��.png");

	SetVertex("�}���z*", Center, bottom);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 840, 840, null, true);
	Zoom("�}���z��", 0, 970, 970, null, true);
	Zoom("�}���z��", 0, 840, 900, null, true);
	Zoom("�}���z��", 0, 900, 900, null, true);
	Zoom("�}���z��", 0, 1100, 1100, null, true);
	Zoom("�}���z��", 0, 1030, 1030, null, true);

	Move("�}���z��", 0, @-20, @0, null, true);
	Move("�}���z��", 0, @120, @0, null, true);
	Move("�}���z��", 0, @-240, @0, null, true);
	Move("�}���z��", 0, @360, @0, null, true);
	Move("�}���z��", 0, @-480, @0, null, true);
	Move("�}���z��", 0, @520, @0, null, true);
	Move("�}���z��", 0, @-160, @0, null, true);
	Move("�}���z��", 0, @300, @0, null, true);


	CreateSE("SE02","se���L_�n��_�zܞ��03");
	CreateSE("SE03","se���L_�Ɖ�_�z03");
	CreateSE("SE04","se���L_�Ɖ�_�z04");
	CreateSE("SE05","se���L_����_Ź���B��02_L");
	CreateSE("SE06","se���L_�n��_�zܞ��02");
	CreateSE("SE07","se���L_�Ɖ�_�z05");

	Delete("�}��");
	Delete("�}�ݣ�");
	Delete("�}��ʮ*");

	SetVolume("@mbgm*", 3000, 0, null);


	Fade("�}ɫ100", 0, 1000, null, true);
	MusicStart("SE05",0,1000,0,1500,null,false);
	Fade("�}ɫ100", 100, 0, null, false);
	Shake("�}���z��", 200, 10, 0, 0, 0, 1000, null, false);
	Move("�}���z��", 200, @0, @100, Dxl2, false);
	Fade("�}���z��", 300, 0, null, false);
	Wait(100);
	Shake("�}���z��", 200, 10, 0, 0, 0, 1000, null, false);
	Move("�}���z��", 200, @0, @100, Dxl2, false);
	Fade("�}���z��", 300, 0, null, false);
	Wait(100);





	Fade("�}ɫ100", 0, 1000, null, true);
	MusicStart("SE02",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 100, 0, null, false);
	Shake("�}���z��", 200, 10, 0, 0, 0, 1000, null, false);
	Move("�}���z��", 200, @0, @100, Dxl2, false);
	Fade("�}���z��", 300, 0, null, false);
	Wait(100);
	Shake("�}���z��", 200, 10, 0, 0, 0, 1000, null, false);
	Move("�}���z��", 200, @0, @100, Dxl2, false);
	Fade("�}���z��", 300, 0, null, false);
	Wait(100);

	Fade("�}ɫ100", 0, 1000, null, true);
	MusicStart("SE03",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 100, 0, null, false);
	Shake("�}���z��", 200, 10, 0, 0, 0, 1000, null, false);
	Move("�}���z��", 200, @0, @100, Dxl2, false);
	Fade("�}���z��", 300, 0, null, false);
	Wait(100);
	Shake("�}���z��", 200, 10, 0, 0, 0, 1000, null, false);
	Move("�}���z��", 200, @0, @100, Dxl2, false);
	Fade("�}���z��", 300, 0, null, false);
	Wait(100);

	Fade("�}ɫ100", 0, 1000, null, true);
	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 100, 0, null, false);
	Shake("�}���z��", 200, 10, 0, 0, 0, 1000, null, false);
	Move("�}���z��", 200, @0, @100, Dxl2, false);
	Fade("�}���z��", 300, 0, null, false);
	Wait(100);
	Shake("�}���z��", 200, 10, 0, 0, 0, 1000, null, false);
	Move("�}���z��", 200, @0, @100, Dxl2, false);
	Fade("�}���z��", 300, 0, null, false);
	Wait(300);

	MusicStart("SE06",0,1000,0,1000,null,false);
	MusicStart("SE07",0,1000,0,1000,null,false);
	Fade("�}ɫ100", 1000, 1000, null, true);
	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0465]
�����ǻ���ǿ���ų��ļ�ʸ���ᴩ�����������
�����о���Ҫ����˲Ϣ֮�䡣

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 1000, 0, null);
	Wait(1000);

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg074_�˲��ε���_01.jpg");
	StC(1000, @0, @0,"cg/st/st�R��_���L_�Ʒ�.png");
	FadeStC(0,true);
	FadeBG(0,true);
	FadeDelete("�ϱ���", 500, true);

	SetFwR("cg/fw/fw�R��_�o.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//���R�
<voice name="�R��" class="������Ů��" src="voice/mb03/016vs0940b15">
��������


{	FwR("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb03/016vs0950a02">
��ֻҪ˲������������˾����ˡ�
����������˵����ȫһ���ɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���R�ﵹ��롣�Фä��ꡣ
	Shake("@StC*", 300, 4, 0, 0, 0, 1000, Dxl2, false);
	Move("@StC*", 300, @-10, @40, null, false);
	DeleteStA(300,true);
	CreateSE("SE01","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);

//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mb03_017.nss"