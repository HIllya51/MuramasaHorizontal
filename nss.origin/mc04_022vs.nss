//<continuation number="320">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc04_022vs.nss_MAIN
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
	#bg087_���Bۡ���vǰa_02=true;
	#bg204_�����ر���c_02=true;
	#bg204_�����ر���b_02=true;
	#bg204_�����ر���_02=true;
	#bg066_���ӘS���ڤΤɤ�_01=true;

//��������ݳ��������ǤϤޤ����h�������ʤ��Τ��˱ܡ�
	//#ev004_����֦������_a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	//���ե饰��᪣��ǥХå��Τ����x�k֫�ˤ��Ƥ���ޤ�
	//������ե饰���������Ƥ�����ϡ�"mc04_023.nss"
	//���������⡡"mc04_026.nss"
	//$GameName = "mc00_001.nss";

//$Sayo_Flag = 2;

	if($Sayo_Flag == 2){$GameName = "mc04_023.nss";}
	else{$GameName = "mc04_026.nss";}

//	$SelectGameName="@->"+$GameName+"_SELECT";
//	call_scene $SelectGameName;

}

scene mc04_022vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"mc04_021vs.nss"

	//$Sayo_Flag = 2;

//��ҕ�������
//������֦������
	PrintBG("�ϱ���", 30000);

	SoundPlay("@mbgm10", 0, 1000, true);

	CreateColorSP("�}ɫ�\", 20000, "#000000");

	OnBG(100, "bg064_���ӘS���ڵ�_02.jpg");
	FadeBG(0, true);

	StR(1200, @0, @0,"cg/st/st�{�Ӻ�_ͨ��_�Ʒ�.png");
	FadeStR(0,true);

	Delete("�ϱ���");
	DrawDelete("�}ɫ�\", 150, 100, "slide_02_01_0", true);

	CreateMask("�}��", 6000, 0, 0, "cg/data/slide_08_00_0.png", false);
	SetAlias("�}��","�}��");

	CreateTextureEX("�}��/�}��", 4100, -587, -400, "cg/ev/resize/ev190_�����򤱤�Х���l.jpg");
	Fade("�}��/�}��", 1000, 1000, null, false);
	Move("�}��/�}��", 2000, @0, -120, DxlAuto, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������֦������������ˡ�
��������ŭ�����������ˡ�

������֦֪����
����û�л��ɡ���

�����Լ�����ȷ��ȷʵû��һ˿���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}��/�}��", 2000, @0, @100, DxlAuto, false);
	FadeDelete("�}��/�}��", 400, false);

	SetFwC("cg/fw/fw�{�Ӻ�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0010a06">
����Ҳ��һ����
���Ǹ���ͽ�벻֪������ĸè�����������㡣
����Ǹ������ʳ�֮ͽû���κβ�𣡡�


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0020a06">
���Ǽһ�Ҳ����ˡ���
������һζ�ر���ǰС������
�������ֶ��޷���͸����

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0030a06">
���Բ�������������Ϊ�ƴ��ӱ�ս����
�����ǣ��Ǹ�����ȴ������δ�����ںڰ�֮�У�
���������Ǵ���ʮ����ս����ʹ�࣬��Ϊ�ξ�
�ǲ�����?!��

//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0040a06">
����Ϊһ��ƽ��ɳ�֮Ϊ��������ʣ��ڳ�Ϊ
����֮��ʱ����ֻ�ᱻ����Ϊų������
 �㸸����������Ҳ��������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0050a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�\Ļ", 5000, "BLACK");
	Fade("�\Ļ", 1000, 1000, null, true);
	Delete("������ɥ�*/�}ev*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����ǡ��������ġ�

�����״���ʱ��������һ�㣬
����ʱ��Ϊ֮���ա�

���Լ��ľ��ϣ��᲻���Ǵ���ġ�
�������᲻�ᷴ�������ش������ǿ���ڳ������ϡ�

�������Լ���ƴ����ѡ��ĵ�·�ϱ��۵�ͬʱ����
������Ҳ���ڻ������Լ��Ƿ���ȷ����Ϊ֮���ա�

������������˲����˽���Щ��
����������Լ���ȷ��������ˣ�
�����Ͳ��˽⸸�׵Ŀ��ա�

��Ϊ�Σ�

������֦��֪���ġ�
������Զ�ں��⣬�Լ���Ȼ������ָ�Ƶ�����
���׵Ŀ��ԡ�

������ȴ�����ס�
���������ڸ�����ߣ�

������������ܾ��츸�׵ķ��գ������ؽ��ṩ����Ļ���
����������ܸ����˰ɡ�
����ֻҪ����ԵĲ��ܣ�����Ҳ������ԵĶ�����

������û��������
�������踸�׵ģ�ֻ�о���ĵ��С�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Fade("�\Ļ", 1000, 0,null,true);


	SetFwC("cg/fw/fw�{�Ӻ�_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0060a06">
���޿ɾ�ҩ�����
��������Ц�����ܣ���


{	FwC("cg/fw/fw�{�Ӻ�_����.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0070a06">
����ͷ���������������ķ蹷�����䣡
���㸸������ʹ�ҵ������������������ס�����


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0080a06">
��������ĸ���������������͵����ˣ�
���Ǹ����˾Ͳ��ñ�����������ϡ���


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0090a06">
�������Ҫ��������
��Ϊһֻ���Ͻ���ҲҪ�õö�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�\Ļ", 1000, 1000,null,true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���������ڣ������š���
�����״��ڵ�һ�С�

�������Լ���ȷ������
����ƾ�������Ͷ϶����������ҡ�

�����ס��������θ����ء�
��������п��յ����̶ֳȵĸ��ף������������
������ڲ���������֮��ʱ����

�������θ����أ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0100a03">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�Ąӡ���åɥ����ȥ�åɥ��󸶤�
	OnSE("se����_��_��Ġ����02", 1000);

	CreateColorEX("��åɥ�����", 15000, "#990000");
	Fade("��åɥ�����", 300, 1000, null, true);
	Fade("��åɥ�����", 1000, 0, null, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��
��������������������������ˡ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0110a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��
����������������ʱ��
����������������ԭ�� ����ʨ�Ӻ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ�����Ġ�Ąӡ���åɥ����ȥ�åɥ��󸶤�

	OnSE("se����_��_��Ġ����02", 1000);

	CreateColorEX("��åɥ�����", 15000, "#990000");
	Fade("��åɥ�����", 300, 1000, null, true);
	Delete("�\Ļ");
	Fade("��åɥ�����", 1000, 0, null, true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0120a03">
������ʨ�Ӻ𡭡���


{	FwC("cg/fw/fw�{�Ӻ�_��Ц.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0130a06">
��������ȷʵû�취����
��Թ������Ҳ�޼����¡���


{	FwC("cg/fw/fw�{�Ӻ�_Ӱ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0140a06">
��ֻҪ��������ʰ���ͺá���
����Ů���������������ú���ʰ�ɡ���


{	FwC("cg/fw/fw�{�Ӻ�_Ц��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0150a06">
����ĸ�������˯������Ϯ��������
��ʲô����֪����ʲôҲû��ʶ�������Ǹ�������
 ������һ�㣬��ø�������ĵĿɱ���������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0160a03">
����������������


{	FwC("cg/fw/fw�{�Ӻ�_ŭ��.png");}
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0170a06">
����Ҳ����������ʭһ����ȥ�ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��㑷����F���{�Ӻ�װ��
	OnSE("se����_�z_㑷����F01", 1000);

	CreateStencil("�}����",1000,center,middle,128,"cg/st/3d㑷��߹�_����.png",false);
	SetAlias("�}����","�}����");
	Move("�}����", 0, -710, -555, null, true);

	CreatePlainEX("�}����/�}��д", 990);
	SetShade("�}����/�}��д", HEAVY);
	Fade("�}����/�}��д", 800, 1000, null, true);

	Wait(300);

	CreatePlainSP("�}��д", 5000);
	Delete("�}����");
	CreateTextureSP("�}�߹�", 1000, Center, Middle, "cg/st/3d㑷��߹�_����.png");
	Move("�}�߹�", 0, -710, -555, null, true);

	FadeDelete("�}��д", 500, true);

	CreateSE("SE01","se����_�z_װ��02");
	CreateSE("SE02","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,700,null,false);
	MusicStart("SE02",0,1000,0,1250,null,false);

	CreateColorEXadd("�}�ե�", 5000, "#FFFFFF");
	Fade("�}�ե�", 300, 1000, null, true);

	Delete("�}�߹�");
	DeleteStA(0,true);

	CreateTextureSP("�}�ݪ{�Ӻ�װ��", 4100, Center, Middle, "cg/ev/ev954_�{�Ӻ�װ��_b.jpg");

	FadeDelete("�}�ե�", 1000,true);

	Wait(1000);

//���i��
	CreateSE("SE02","se�M��_냇��_�i��01");
	MusicStart("SE02",0,1000,0,1000,null,false);

	StC(1000, @0,@0,"cg/st/3d㑷�_����_�i��.png");
	FadeStC(0,true);

	FadeDelete("�}�ݪ{�Ӻ�װ��", 1000, true);

	Wait(500);

	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);
	CreateTextureSP("�}��/�}������֦װ��", 19100, -465, -180, "cg/ev/resize/ev190_�����򤱤�Х���l.jpg");
	SetBlur("�}��/�}������֦װ��", true, 3, 500, 60, false);

	CreateSE("SE03","se���L_�Х���_�ܩ`���󘋤�01");
	MusicStart("SE03",0,1000,0,1000,null,false);
	Move("�}��/�}������֦װ��", 400, @0, -97, Dxl2, false);
	Zoom("�}��", 200, 1000, 1000, Dxl2, false);

	SetFwL("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0180a03">
��ʨ�Ӻ�!!��

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х����ܥ��
	WaitAction("@�}��/�}������֦װ��", null);

	CreateSE("SE01","se���L_�Х���_�ܩ`�������01");
	MusicStart("SE01",0,1000,0,1200,null,false);

	CreateColorEXadd("�}ɫ��ȫ", 19990, "#FFFFFF");
	CreateColorEXadd("�}��/�}ɫ��", 19900, "#FFFFFF");

	DrawTransition("�}��/�}ɫ��", 400, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", false);
	Fade("�}��/�}ɫ��", 200, 1000, null, true);

	Fade("�}ɫ��ȫ", 200, 1000, null, true);

	Delete("�}��");
	DeleteStA(0,true);

	CreateTextureSP("�}�݄���", 100, Center, Middle, "cg/ef/ef038_�������.jpg");
	Rotate("�}�݄���", 0, @0, @180, @0, null,true);

	SetBlur("�}�݄���", true, 3, 500, 200, false);
	Request("�}�݄���", Smoothing);

	Zoom("�}�݄���", 0, 10000, 10000, null, true);

	CreateSE("SE01a","se���L_�Х���_�ܩ`�������01");

	MusicStart("SE01a",0,1000,0,800,null,false);
	Zoom("�}�݄���", 300, 1100, 1100, Dxl2, false);
	FadeDelete("�}ɫ��ȫ", 200, true);

	WaitAction("�}�݄���", null);

	Wait(10);

	CreatePlainSP("�}��д", 20000);

	CreateWindow("�}��", 5000, 636, 0, 340, 576, false);
	SetAlias("�}��","�}��");
	CreateTextureSP("�}��/�}�ݱ���", 5000, 310, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Zoom("�}��/�}�ݱ���", 0, 1100, 1100, null, true);
	CreateTextureSP("�}��/�}�����}װ��", 5100, -412, -730, "cg/st/resize/3d㑷�_����_�i��l.png");
	SetBlur("�}��/�}�����}װ��", true, 3, 500, 80, false);

	Move("�}��/�}�����}װ��", 450, -180, @0, Dxl2, false);
	DrawDelete("�}��д", 300, 100, "slide_01_03_1", true);

	WaitAction("�}��/�}�����}װ��", null);

	SetFwC("cg/fw/fw�{�Ӻ�_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0190a06">
�����С������
�����������ѿ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�����S
	PrintGO("�ϱ���", 20000);
	CreateColorSPadd("�}ɫ��", 20000, "#FFFFFF");

	CreateTextureSP("�}����100", 100, InRight, Middle, "cg/bg/bg204_�����ر���c_02.jpg");
	Move("�}����100", 20000, -100, @0, null, false);

	CreateSE("SE01","se���L_����_�z_�ϵ�������01");
	CreateSE("SE01a","se���L_����_���ϕN01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01a",0,1000,0,1000,null,false);
	FadeDelete("�ϱ���", 300, true);

	Wait(300);

	CreateSE("SE01b","se���L_����_�ռ�����01");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateTextureEX("�}�ݺϵ���", 990, -1450, -222, "cg/st/resize/3d�����˜�_�T��_ͨ��3_ex2.png");
	Zoom("�}�ݺϵ���", 0, 100, 100, null, true);

	CloudZoomSet(5000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@1500,@0,null,false);

	CreateTextureSP("�}��㑷�", 1000, Center, Middle, "cg/st/resize/3d㑷�_�T��_�i��lmex.png");
	Shake("�}��㑷�", 21600, 0, 1, 0, 0, 1000, null, false);
	Request("�}��㑷�", Smoothing);
	SetVertex("�}��㑷�", 1800, 1940);
	Rotate("�}��㑷�", 0, @0, @0, @15, null,true);
	Move("�}��㑷�", 0, @730, @500, null, true);
	Zoom("�}��㑷�", 0, 1500, 1500, null, true);

	CreateTextureEX("�}�����Ƅӱ���", 100, InRight, Middle, "cg/bg/bg204_�����ر���b_02.jpg");
	SetBlur("�}�����Ƅӱ���", true, 2, 500, 100, false);
	CreateSurfaceEX("�}��������", 10000,2500,"@�}�����Ƅӱ���");

	Zoom("�}��㑷�", 20000, 1000, 1000, null, false);

	SetVolume("SE01b", 2000, 0, null);

	Move("�}��㑷�", 2000, @-30, @-100, Dxl2, false);
	DrawTransition("�}ɫ��", 3000, 1000, 0, 100, Axl2, "cg/data/slide_01_01_1.png", false);
	FadeDelete("�}ɫ��", 2000, true);

	Wait(1000);

	CreateSE("SE02","se���L_�Х���_�ܩ`�������02");
	CreateSE("SE02a","se���L_����_��ͻ�M02");
	CreateSE("SE04","se���L_����_��ͻ�M01");
	CreateColorEXadd("�}ɫʸ", 2000, "#FFFFFF");
	DrawTransition("�}ɫʸ", 0, 0, 100, 200, null, "cg/data/slide_07_00_1.png", true);

	MusicStart("SE02a",0,1000,0,1000,null,false);
	Rotate("�}��㑷�", 300, @0, @0, 0, Axl2,false);
	Move("�}��㑷�", 300, -1138, -1662, null, false);
	Zoom("�}��㑷�", 300, 40, 40, Axl1, false);
	CloudZoomFade(1000,false);

	Wait(160);

	MusicStart("SE02",0,1000,0,1500,null,false);
	Fade("�}ɫʸ", 0, 1000, null, true);

	Wait(80);

	DrawTransition("�}ɫʸ", 1000, 100, 0, 400, null, "cg/data/slide_07_00_1.png", false);
	FadeDelete("�}ɫʸ", 100, false);

	Wait(240);

	Move("�}��㑷�", 1500, @50, @0, Dxl2, false);
	Wait(200);
	Move("�}��㑷�", 3000, @50, @0, null, false);

	Wait(1000);

	Fade("�}�ݺϵ���", 0, 1000, null, true);

	MusicStart("SE04",0,1000,0,1000,null,false);
	Fade("�}�ݺϵ���", 300, 0, null, false);

	Move("�}��㑷�", 800, @-1500, @-200, Dxl3, false);
	Move("�}�ݺϵ���", 800, @-1500, @-200, Dxl3, false);
	Zoom("�}�ݺϵ���", 300, 3000, 0, null, false);

	Wait(800);

	Delete("�}��㑷�");

	CreateSE("SE05b","se���L_����_�ռ�����01");
	MusicStart("SE05b",0,1000,0,1000,null,false);

	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@-1500,@1000,null,false);

	Move("�}�����Ƅӱ���", 5000, -300, @0, DxlAuto, false);
	Fade("�}�����Ƅӱ���", 0, 1000, null, true);

	Rotate("�}��������", 3000, @0, @0, @90, null,false);
	Fade("�}��������", 3000, 1000, null, true);

	WaitAction("�}�����Ƅӱ���", null);

	Wait(1000);

	CreatePlainSP("�}��д", 20000);

	Delete("�}��������*");
	Delete("�}�����Ƅӱ���*");
	Delete("�}�ݺϵ���*");
	CloudZoomDelete(0,false);

	CreateTextureSP("�}�����Ƅӱ���", 100, Center, -100, "cg/bg/resize/bg204_�����ر���b_02rex.jpg");
	SetBlur("�}�����Ƅӱ���", true, 2, 500, 100, false);
	CreateSurfaceEX("�}��������", 10000,2500,"@�}�����Ƅӱ���");
	Fade("�}��������", 0, 1000, null, true);

	CreateTextureEX("�}������", 5100, 0, Middle, "cg/bg/bg204_�����ر���_02.jpg");
	CreateTextureEX("�}������", 5100, 0, Middle, "cg/bg/bg204_�����ر���_02.jpg");

	CloudZoomSet(10000);
	CloudZoomStartB(400,800,800,300,400);
	CloudZoomVertex(0,@0,@-1000,null,false);

	CreateSE("SE06b","se���L_����_�ռ�����01");
	CreateSE("SE06c","se���L_����_�ռ�����01");

	CloudZoomVertex(2000,@-1000,@1000,null,false);
	Rotate("�}��������", 2000, @0, @0, @-90, null,false);
	Move("�}�����Ƅӱ���", 2000, @0, -4000, null, false);

	MusicStart("SE06b",0,1000,0,500,null,false);
	MusicStart("SE06c",0,1000,0,1000,null,false);
	FadeDelete("�}��д", 1000, true);

	Wait(500);

	$������A=ImageHorizon("�}������")-1024;
	$����M�z=$������A*(-1);

	CreateSCR1("@�}������","@�}������",400,$����M�z,@-100);

	$SYSTEM_effect_rain_dencity = 16;
	$SYSTEM_effect_rain_speed = 128;
	CreateEffect("�}������", 10010, Center, Middle, 288, 512, "Rain");
	SetAlias("�}������","�}������");
	Rotate("�}������", 0, @0, @0, @-90, null,true);
	Zoom("�}������", 0, 2000, 4000, null, true);
	Move("�}������", 0, @512, @0, null, true);
	DrawTransition("�}������", 0, 0, 300, 100, null, "cg/data/slide_01_03_0.png", true);

	MoveFFP1("@�}������",5000);

	Fade("�}�����Ƅӱ���", 500, 0, null, false);
	Fade("�}��������", 500, 0, null, true);

	Wait(1000);

	CreateSE("SE07a","se���L_����_�z_�ϵ�������01");
	MusicStart("SE07a",0,1000,0,1250,null,false);
	CreateTextureSP("�}��װ��㑷�", 6100, OutLeft, Middle, "cg/st/3d㑷�_�T��_�i��.png");
	Shake("�}��װ��㑷�", 2160000, 0, 2, 0, 0, 1000, null, false);
	Move("�}��װ��㑷�", 300, -609, -403, Dxl2, false);

	Wait(260);
	Move("�}��װ��㑷�", 10000, -509, @0, null, false);
	Wait(40);

	SetFwC("cg/fw/fw�{�Ӻ�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0200a06">
��а���Ѫ���ڴ˶Ͼ���
��׷����ĸ���ȥ�ɣ�����֦������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���£ǣͥ��ȥåף�
//�����۰k��
	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	CreateTextureEX("�}��/�}������", 11100, Center, Middle, "cg/ev/ev004_����֦������_a.jpg");
	Request("�}��/�}������", Smoothing);
	Zoom("�}��/�}������", 0, 5000, 5000, null, true);
	MoveFFP1("@�}��/�}������",1000);

	CreateTextureSP("�}��/�}��", 11000, -404, InBottom, "cg/ev/resize/ev190_�����򤱤�Х���l.jpg");
	SetBlur("�}��/�}��", true, 2, 500, 80, false);

	CreateSE("SE01","se���L_�Х���_�ܩ`���󘋤�02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("�}��/�}��", 500, @0, -65, Dxl2, false);
	Zoom("�}��", 300, 1000, 1000, Dxl2, true);

	WaitAction("�}��/�}��", null);

	CreateSE("SE01a","se����_��x_�k��04");
	MusicStart("SE01a",0,1000,0,1000,null,false);
	Fade("�}��/�}������", 200, 750, null, false);
	Zoom("�}��/�}������", 400, 1100, 1100, Dxl2, false);

	Wait(700);

	Zoom("�}��/�}������", 3000, 1050, 1050, null, false);


	CreateColorEX("�}ɫ�\", 19900, "#000000");
	Fade("�}ɫ�\", 1800, 1000, null, true);

	Move("�}��װ��㑷�", 0, -509, -403, null, false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���ƥ����Ⱥ������ʾ
��
��������<RUBY text="��ʥһʸ������ƻ��">The paradox of "Tell and apple"����ʷ���˶���ƻ������ۣ�</RUBY>��

</PRE>
	SetTextEXCH();
	TypeBeginNOHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���е����ۡ�ʸ��܉����䤨��
	SetVolume("@mbgm*", 100, 0, null);
	SetVolume("SE*", 1000, 0, null);
	CreateSE("SE01","se����_��x_�k��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 19920, "#FFFFFF");

	CreateTextureSPmul("�}������", 12000, Center, Middle, "cg/ev/resize/ev004_����֦������_bm.jpg");
	Fade("�}������", 1, 750, null, true);
	Zoom("�}������", 0, 1100, 1100, null, true);
	Zoom("�}������", 10000, 1000, 1000, null, false);
	MoveFFP1("@�}������",1000);

	Delete("�}ɫ�\");
	Delete("�}��");
	FadeDelete("�}ɫ��", 1000, true);

	Wait(1000);

	CreateSE("SE02","se����_��_��Ġ����02");
	MusicStart("SE02",0,1000,0,1000,null,false);

	CreateColorEX("�}ɫѪ", 12100, "#990000");
	Fade("�}ɫѪ", 100, 1000, null, true);

	FadeDelete("�}ɫѪ", 600, true);
	WaitPlay("SE02", null);

	CreateTextureSPadd("�}�ݹ��}�Ҹ�", 20010, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureSP("�}�ݹ��}��", 20000, Center, Middle, "cg/ef/ef038_�������.jpg");
	Rotate("�}�ݹ��}��*", 0, @0, @0, @180, null,true);
	Request("�}�ݹ��}*", Smoothing);

	Zoom("�}�ݹ��}��*", 0, 1300, 1300, null, true);

	CreateSE("SE030","se���L_�Х���_�ܩ`�������01");
	CreateSE("SE030a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE030",0,1000,0,1000,null,false);
	MusicStart("SE030a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}�Ҹ�", 200, 0, null, false);
	Zoom("�}�ݹ��}��*", 200, 1100, 1100, Dxl2, true);

	Wait(1200);

	CreateTextureSPadd("�}�ݹ��}�r��", 20110, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	CreateTextureSP("�}�ݹ��}�r", 20100, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	Rotate("�}�ݹ��}�r*", 0, @0, @180, @0, null,true);
	Request("�}�ݹ��}*", Smoothing);

	Delete("�}�ݹ��}��*");
	Zoom("�}�ݹ��}�r*", 0, 1300, 1300, null, true);

	CreateSE("SE03","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE03a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE03",0,1000,0,1000,null,false);
	MusicStart("SE03a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}�r��", 200, 0, null, false);
	Zoom("�}�ݹ��}�r*", 200, 1100, 1100, Dxl2, true);

	Wait(1000);

	CreateTextureSPadd("�}�ݹ��}�θ�", 20210, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���b.jpg");
	CreateTextureSP("�}�ݹ��}��", 20200, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���b.jpg");
	Request("�}�ݹ��}*", Smoothing);

	Delete("�}�ݹ��}�r*");
	Zoom("�}�ݹ��}��*", 0, 1300, 1300, null, true);

	CreateSE("SE04","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE04a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE04",0,1000,0,1000,null,false);
	MusicStart("SE04a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}�θ�", 200, 0, null, false);
	Zoom("�}�ݹ��}��*", 200, 1100, 1100, Dxl2, true);

	Wait(800);

	CreateTextureSPadd("�}�ݹ��}�ĸ�", 20310, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	CreateTextureSP("�}�ݹ��}��", 20300, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	Request("�}�ݹ��}*", Smoothing);

	Delete("�}�ݹ��}��*");
	Zoom("�}�ݹ��}��*", 0, 1300, 1300, null, true);

	CreateSE("SE05","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE05a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE05",0,1000,0,1000,null,false);
	MusicStart("SE05a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}�ĸ�", 200, 0, null, false);
	Zoom("�}�ݹ��}��*", 200, 1100, 1100, Dxl2, true);

	Wait(600);

	CreateTextureSPadd("�}�ݹ��}�帲", 20410, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���c.jpg");
	CreateTextureSP("�}�ݹ��}��", 20400, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���c.jpg");
	Request("�}�ݹ��}*", Smoothing);
	Rotate("�}�ݹ��}��*", 0, @0, @180, @0, null,true);

	Delete("�}�ݹ��}��*");
	Zoom("�}�ݹ��}��*", 0, 1300, 1300, null, true);

	CreateSE("SE06","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE06a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE06",0,1000,0,1000,null,false);
	MusicStart("SE06a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}�帲", 200, 0, null, false);
	Zoom("�}�ݹ��}��*", 200, 1100, 1100, Dxl2, true);

	Wait(300);

	CreateTextureSPadd("�}�ݹ��}����", 20510, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���.jpg");
	CreateTextureSP("�}�ݹ��}��", 20500, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���.jpg");
	Request("�}�ݹ��}*", Smoothing);
	Rotate("�}�ݹ��}��*", 0, @0, @180, @180, null,true);

	Delete("�}�ݹ��}��*");
	Zoom("�}�ݹ��}��*", 0, 1300, 1300, null, true);

	CreateSE("SE07","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE07a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE07",0,1000,0,1000,null,false);
	MusicStart("SE07a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}����", 200, 0, null, false);
	Zoom("�}�ݹ��}��*", 200, 1100, 1100, Dxl2, true);

	Wait(150);

	CreateTextureSPadd("�}�ݹ��}�߸�", 20610, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	CreateTextureSP("�}�ݹ��}��", 20600, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	Request("�}�ݹ��}*", Smoothing);
	Rotate("�}�ݹ��}��*", 0, @0, @0, @180, null,true);

	Delete("�}�ݹ��}��*");
	Zoom("�}�ݹ��}��*", 0, 1300, 1300, null, true);

	CreateSE("SE08","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE08a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE08",0,1000,0,1000,null,false);
	MusicStart("SE08a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}�߸�", 200, 0, null, false);
	Zoom("�}�ݹ��}��*", 200, 1100, 1100, Dxl2, true);

	Wait(75);

	CreateTextureSPadd("�}�ݹ��}�˸�", 20710, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	CreateTextureSP("�}�ݹ��}��", 20700, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	Request("�}�ݹ��}*", Smoothing);

	Delete("�}�ݹ��}��*");
	Zoom("�}�ݹ��}��*", 0, 1300, 1300, null, true);

	CreateSE("SE090","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE090a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE090",0,1000,0,1000,null,false);
	MusicStart("SE090a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}�˸�", 200, 0, null, false);
	Zoom("�}�ݹ��}��*", 200, 1100, 1100, Dxl2, true);

	Wait(30);

	CreateTextureSPadd("�}�ݹ��}�Ÿ�", 20910, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���c.jpg");
	CreateTextureSP("�}�ݹ��}��", 20900, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���c.jpg");
	Request("�}�ݹ��}*", Smoothing);
	Rotate("�}�ݹ��}��*", 0, @0, @180, @0, null,true);

	Delete("�}�ݹ��}��*");
	Zoom("�}�ݹ��}��*", 0, 1300, 1300, null, true);

	CreateSE("SE09","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE09a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE09",0,1000,0,1000,null,false);
	MusicStart("SE09a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}�Ÿ�", 200, 0, null, false);
	Zoom("�}�ݹ��}��*", 200, 1100, 1100, Dxl2, true);

	Wait(15);

	CreateTextureSPadd("�}�ݹ��}ʮ��", 21010, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	CreateTextureSP("�}�ݹ��}ʮ", 21000, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	Request("�}�ݹ��}*", Smoothing);
	Rotate("�}�ݹ��}ʮ*", 0, @0, @0, @180, null,true);

	Wait(10);
	Delete("�}�ݹ��}��*");
	Zoom("�}�ݹ��}ʮ*", 0, 1300, 1300, null, true);

	CreateSE("SE10","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE10a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE10",0,1000,0,1000,null,false);
	MusicStart("SE10a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}ʮ��", 200, 0, null, false);
	Zoom("�}�ݹ��}ʮ*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("�}�ݹ��}ʮһ��", 21110, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���b.jpg");
	CreateTextureSP("�}�ݹ��}ʮһ", 21100, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���b.jpg");
	Request("�}�ݹ��}*", Smoothing);

	Delete("�}�ݹ��}ʮ");
	Delete("�}�ݹ��}ʮ��");
	Zoom("�}�ݹ��}ʮһ*", 0, 1300, 1300, null, true);

	CreateSE("SE11","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE11a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE11",0,1000,0,1000,null,false);
	MusicStart("SE11a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}ʮһ��", 200, 0, null, false);
	Zoom("�}�ݹ��}ʮһ*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("�}�ݹ��}ʮ����", 21210, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	CreateTextureSP("�}�ݹ��}ʮ��", 21200, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���a.jpg");
	Request("�}�ݹ��}*", Smoothing);

	Delete("�}�ݹ��}ʮһ");
	Delete("�}�ݹ��}ʮһ��");
	Zoom("�}�ݹ��}ʮ��*", 0, 1300, 1300, null, true);

	CreateSE("SE12","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE12a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE12",0,1000,0,1000,null,false);
	MusicStart("SE12a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}ʮ����", 200, 0, null, false);
	Zoom("�}�ݹ��}ʮ��*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("�}�ݹ��}ʮ����", 21310, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���.jpg");
	CreateTextureSP("�}�ݹ��}ʮ��", 21300, Center, Middle, "cg/ef/ef025_�ѥ�ɥå�������`�ƥ���.jpg");
	Request("�}�ݹ��}*", Smoothing);

	Delete("�}�ݹ��}ʮ��");
	Delete("�}�ݹ��}ʮ����");
	Zoom("�}�ݹ��}ʮ��*", 0, 1300, 1300, null, true);

	CreateSE("SE13","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE13a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE13",0,1000,0,1000,null,false);
	MusicStart("SE13a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}ʮ����", 200, 0, null, false);
	Zoom("�}�ݹ��}ʮ��*", 200, 1100, 1100, Dxl2, true);

	Wait(10);

	CreateTextureSPadd("�}�ݹ��}�K��", 29010, Center, Middle, "cg/ef/ef038_�������.jpg");
	CreateTextureSP("�}�ݹ��}�K", 29000, Center, Middle, "cg/ef/ef038_�������.jpg");
	Rotate("�}�ݹ��}�K*", 0, @0, @180, @0, null,true);
	Request("�}�ݹ��}*", Smoothing);

	Delete("�}�ݹ��}ʮ��");
	Delete("�}�ݹ��}ʮ�ĸ�");
	Zoom("�}�ݹ��}�K*", 0, 1300, 1300, null, true);

	CreateSE("SE99","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE99a","se���L_�Х���_�ܩ`�������02");
	MusicStart("SE99",0,1000,0,1000,null,false);
	MusicStart("SE99a",0,1000,0,1000,null,false);

	Fade("�}�ݹ��}�K��", 200, 0, null, false);
	Zoom("�}�ݹ��}�K*", 200, 1100, 1100, Dxl2, true);

//�����ä�����Ѫ��
	CreateTextureSPover("�}��Ѫ����", 11100, Center, Middle, "cg/anime/center/bloodA_3.png");
	CreateColorSPadd("�}ɫ��", 11000, "#FFFFFF");
	DrawTransition("�}ɫ��", 1, 0, 30, 100, null, "cg/data/slide_08_00_1.png", true);

	Wait(10);
	Delete("�}������");

	Move("�}��װ��㑷�", 1, -250, -403, Dxl2, true);

	CreatePlainSP("�}��д", 12000);
	CreatePlainSPadd("�}��д��", 12100);
	Request("�}��д*", Smoothing);
	Zoom("�}��д*", 0, 1300, 1300, null, true);

	SetTone("�}��д", Monochrome);

	CreateSE("SE100","se����_��x_�Х���_�ѥ�ɥå���01");
	CreateSE("SE100a","se���L_�Х���_�ܩ`�������02");

	Delete("�}��Ѫ����");
	Delete("�}ɫ��");
	Delete("�}�ݹ��}*");
	MusicStart("SE100",0,1000,0,1000,null,false);
	MusicStart("SE100a",0,1000,0,1000,null,false);

	Fade("�}��д��", 200, 0, null, false);
	Zoom("�}��д*", 200, 1100, 1100, Dxl2, true);

	SetFwC("cg/fw/fw�{�Ӻ�_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���{�Ӻ�
<voice name="�{�Ӻ�" class="�{�Ӻ�" src="voice/mc04/022vs0210a06">
��������������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0220a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ�\", 19000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������<k>
��������<k>
��������һ��<k>
����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㡣��������
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}ɫ�\", 19000, "#000000");

	OnBG(100,"bg064_���ӘS���ڵ�_02.jpg");
	FadeBG(0,true);

	CloudZoomDelete(0,false);
	Delete("@ProSCR*");
	MoveFFP1stop();

	CreateSE("SE01","se���L_����_������01");
	MusicStart("SE01",0,1000,0,750,null,false);
	WaitPlay("SE01", null);

	Delete("�ϱ���");
	FadeDelete("�}ɫ�\", 1000, true);

//���Х���
	StL(1000, @-60, @0,"cg/st/3d�Х���_����_ͨ��.png");
	CreateSE("SE01","se����_����_�z�i��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StL*", 600, @60, @0, Dxl2, false);
	FadeStL(600,true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0230a03">
��������������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0240a03">
��������������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0250a03">
������ʨ���ӡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//������{�Ӻ����Ů����֦���������ֶɤ��Ƥ���

	EfRecoIn1(18000,600);

	CreateTextureSP("�}���뱳��", 15000, Center, Middle, "cg/bg/bg066_���ӘS���ڤΤɤ�_01.jpg");
	SetTone("�}���뱳��", Monochrome);

	SoundPlay("@mbgm15", 0, 1000, true);

	EfRecoIn2(300);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
������֦С��ϲ�����𣿡�

�����ϲ���Ļ������������������

�����Ǻ��������ͺ��ˡ�
���ᡪ��������ȫ���˽⻨�����ӡ���

�������ǵġ�
����ҹ����˵�ˡ���

���Ѿ���ʽ����Ҫ�̳а׺ӷּ�
��������Ҫ��������������ָ�Ϊ����ʨ�Ӻ�
�����С�����Լ������Ҳ������

����˵����������
�����˵ġ�����

���������׽�ε���������������Ϊ����
ʱ�����������ͻ������ʱ�δ����Լ�����
֦С��ĸ���ʱ�̴����޺ù�ϵ��
��һ�ִٳɵġ���

������Ҳ֪����Щ�����Ӷ�����ڰ�Ū�Ƿǣ�
��һЩ��������֦С�㲻�õ�ҥ�ԡ���

�����ǡ���û�й�ϵ����

�����˴Ӻܾ���ǰ����
�����Ѿ�ϲ����������֦С�㡣��

��������������Ψ��������������

����������֦С�㡭����

�����ǡ���
���������������������ª��������ʿ
�ܹ���Ϊ���İ��µĻ�������

���£�����ʨ�Ӻ𡪡������Ϊ
����ϴ�����һ���ϵ���ʿ����
��������������֦С�㰧̾�뱾��
�Ļ�Լ�Ǹ����󣡡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	EfRecoOut1(300);

	Delete("�}���뱳��");

	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0260a03">
��������������


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0270a03">
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Ϥ����^
//����bg002a_ҹ
//������˺Ϥ碌�ơ����ƥ����ȟo�����ܥ����Τ�

	CreatePlainSP("�}��д", 20000);
	CreateTextureEXadd("�}����21", 15010, Center, Middle, "cg/bg/bg087_���Bۡ���vǰb_02.jpg");
	Zoom("�}����21", 0, 1030, 1030, null, true);
	Fade("�}����21", 0, 1000, null, true);
	DrawTransition("�}����21", 0, 0, 100, 1000, null, "cg/data/circle_13_00_1.png", true);
	DrawEffect("�}����21", 0, "HighWave", 20, 20, null);

	CreateTextureSP("�}����", 15000, @0, @0, "cg/bg/bg087_���Bۡ���vǰb_02.jpg");
	DeleteStA(0,true);
	CreateSE("SE�����", "se����_����_�Ż�");
	MusicStart("SE�����", 1000, 1000, 0, 1000, null,true);
	FadeDelete("�}��д", 1000, true);

//�ݳ���Key�ʤ� inc�Ѿ�
	Wait(1000);

	OnBG(100, "bg002_��b_03.jpg");
	FadeBG(0, true);
	CreateProcess("�ץ�����", 150, 0, 0, "fire01");
	CreateProcess("�ץ�����", 150, 0, 0, "fire02");
	CreateProcess("�ץ�����", 150, 0, 0, "fire03");

	Request("�ץ�����", Start);
	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	FadeDelete("�}����*",1500,true);

	SetVolume("�����*", 2000, 300, null);

	CreateVOICE("����֦","mc04/022vs0280a03");
	MusicStart("����֦",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����֦");
	WaitKey($�Еr�g);
	SetVolume("����֦", 100, 0, null);


	CreateVOICE("����֦","mc04/022vs0290a03");
	MusicStart("����֦",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����֦");
	WaitKey($�Еr�g);
	SetVolume("����֦", 100, 0, null);


	CreateVOICE("����֦","mc04/022vs0300a03");
	MusicStart("����֦",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����֦");
	WaitKey($�Еr�g);
	SetVolume("����֦", 100, 0, null);

	CreateVOICE("����֦","mc04/022vs0310a03");
	MusicStart("����֦",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("����֦");
	WaitKey($�Еr�g);
	SetVolume("����֦", 100, 0, null);

	CreateVOICE("����֦","mc04/022vs0320a03");
	MusicStart("����֦",0,1000,0,1000,null,false);

	Wait(3000);
	SetVolume("����֦*", 3000, 0, null);
	WaitPlay("����֦*", null);

/*
//	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
//<PRE @box0>
//[text0200]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0280a03">
//���������������������ء�����


//{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0290a03">
//���������ء�����������������������


//{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0300a03">
//����������������������������������������
//��������������������������������������!!��


//{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0310a03">
//����ѽ��������������������������������
//������������������������������������!!��


//{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/022vs0320a03">
//������������������������������������!!��

//</PRE>
//	SetTextEXC();
//	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//������������ˤ�Ц������Ц�äƤ����Ƥ��äơ�
//����ǥ�����ץȤǥե��`�ɥ����Ȓ줱�����������

//���ե��`�ɥ�����
//���L��������
	ClearWaitAll(3000, 3000);


}

..//������ָ��
//���ե饰���
//������ե饰���������Ƥ�����ϡ�"mc04_023.nss"
//���������⡡"mc04_026.nss"

//���x�k֫���`��
scene mc04_022vs.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg006_���w�β���_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);


//���x�k֫
	SetChoice02("��ɴ������","û��ɴ������");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA02();
//������ե饰���������Ƥ�����ϡ�"mc04_023.nss"
				$GameName = "mc04_023.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���������⡡"mc04_026.nss"
				$GameName = "mc04_026.nss";
		}
	}
}

