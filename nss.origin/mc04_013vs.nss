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

scene mc04_013vs.nss_MAIN
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
	#ev185_����֦�֣ӘS���_a=true;
	#ev185_����֦�֣ӘS���_b=true;
	#ev185_����֦�֣ӘS���_c=true;
	#ev185_����֦�֣ӘS���_d=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc04_014vs.nss";

}

scene mc04_013vs.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc04_012.nss"

//������֦������
//������֦������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");

	OnBG(100, "bg090_���Bۡͨ·a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm12", 0, 1000, true);

	CreateSE("�ߤ�", "se����_����_�ߤ�07");
	MusicStart("�ߤ�", 0, 1000, 0, 1000, null,true);

	Delete("�ϱ���");
	DrawDelete("�\Ļ��", 150, 100, "circle_01_00_1", true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0010a03">
���ߡ���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0020a03">
���ߺߡ���


//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0030a03">
���ߺߺߡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���۩`�룿
//�����ֹ���

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);
	SetVolume("�ߤ�", 1000, 0, null);

	OnBG(100, "bg088_���Bۡ�۩`��_01a.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 300, 1000, 0, 100, null, "cg/data/circle_01_00_1.png", true);
	Delete("�\Ļ��");

	OnSE("se����_����_һ�i", 1000);

	StR(1000, @-60, @0, "cg/st/st����֦_ͨ��_˽��d.png");
	Move("@StR*", 300, @60, @0, null, false);
	FadeStR(300, true);


	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0040a03">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Q�줹��褦���g
	CreatePlainSP("�}��д", 10000);
	CreateSE("SE01a","se���L_����_��ͻ�M02");
	CreateTextureSP("�}�݉�", 4100, -79, -473, "cg/ev/resize/ev185_����֦�֣ӘS���_al.jpg");
	SetBlur("�}�݉�", true, 3, 500, 30, false);

	CreateSE("SE01b","se���L_����_��ͻ�M02");
	CreateTextureSP("�}�ݏr", 4090, -744, -570, "cg/ev/resize/ev185_����֦�֣ӘS���_al.jpg");
	SetBlur("�}�ݏr", true, 3, 500, 30, false);

	CreateSE("SE01c","se���L_����_��ͻ�M02");
	CreateTextureSP("�}�ݲ�", 4080, -335, -270, "cg/ev/resize/ev185_����֦�֣ӘS���_al.jpg");
	SetBlur("�}�ݲ�", true, 3, 500, 30, false);

	CreateSE("SE01d","se���L_����_��ͻ�M02");
	CreateTextureSP("�}����", 4070, -970, -260, "cg/ev/resize/ev185_����֦�֣ӘS���_al.jpg");
	SetBlur("�}����", true, 3, 500, 30, false);

	CreateTextureSP("�}����", 4060, -540, -510, "cg/ev/resize/ev185_����֦�֣ӘS���_al.jpg");
	Request("�}����", Smoothing);
	SetBlur("�}����", true, 3, 500, 30, false);

	WaitKey(1500);

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0050a03">
����������������������𡭡���
���������һ��������


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/013vs0060e036">
������û����أ�Ҳû����㡣
���������ǵ�ս�Ρ�����


//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/013vs0070e036">
������Ϊ���ַ�����֦���˵����͡�
���������Ѿ��������ǵ�����֮���ˡ�
��ʤ���Ѷ�����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0080a03">
���������ֻ�������ս��֮ǰ˵����
�����������ҵ�Ŷ����


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/013vs0090e036">
��������ǻ����������˰ɡ�
������ʣ�µ�����ȡ�������׼�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0100a03">
�����Ǻ������š�������˵�Ǻ����ҳ��İɡ�
����Ȼ��ʨ�Ӻ�������ҡ���


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0110a03">
���ƻ���ٽ��ھ�Ȫ֮��Ҳ����˰ɡ�
��Ϊ�����˶��Ӱ���֧�������ĸ�Ĵ���֮־
���׶��ӵ�����ȥ���أ���



{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/013vs0120e036">
�����Ǻ����ص���⡭��
���������ǾͲ�����־�򡣡�


//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/013vs0130e036">
���������˷��ˡ�����Ϊ���ߵĴ��ڡ�
���������������֮������������ӡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0140a03">
������������


{	NwC("cg/fw/nw�S���.png");}
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/013vs0150e036">
�����ǲ���Ҫ־��Ҳû�ж������ĺö�
�������������ÿ������ǵ�������ȡ�ã�
��ʹ�á�����


//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/013vs0160e036">
����ô�ϰ�!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣��ķ��˷�����ͬ�r���u��������֦
	Delete("�}��д");
	MusicStart("SE01a",0,1000,0,1250,null,false);
	Move("�}�݉�", 200, @0, -550, Dxl2, false);

	Wait(200);

	Delete("�}�݉�");
	MusicStart("SE01b",0,1000,0,850,null,false);
	Move("�}�ݏr", 200, -1024, @0, Dxl2, false);

	Wait(200);

	Delete("�}�ݏr");
	MusicStart("SE01c",0,1000,0,1100,null,false);
	Move("�}�ݲ�", 200, 0, -130, Dxl2, false);

	Wait(200);

	Delete("�}�ݲ�");
	MusicStart("SE01d",0,1000,0,900,null,false);
	Move("�}����", 200, @0, 0, Dxl2, false);

	Wait(200);

	Delete("�}����");
	MusicStart("SE01e",0,1000,0,750,null,false);
	CreateSE("SE01e","se���L_����_��ͻ�M02");
	Move("�}����", 300, -512, -288, Dxl2, false);
	Zoom("�}����", 300, 500, 500, Dxl2, true);

	SetFwR("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0170a03">
���������𡣡�


{	FwR("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0180a03">
����ô������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
//���£ǣ�һ�rֹͣ
	SetVolume("@mbgm*", 100, 1, null);
	CreateWindow("�}��", 19000, 0, 144, 1024, 288, false);
	SetAlias("�}��","�}��");
	Zoom("�}��", 0, 1000, 0, null, true);

	CreateColorSPadd("�}��/�}ɫ��", 12000, "#FFFFFF");
	CreateTextureSP("�}��/�}������", 11000, Center, Middle, "cg/ev/ev004_����֦������_b.jpg");
	SetBlur("�}��/�}������", true, 3, 500, 80, false);
	Zoom("�}��/�}������", 0, 2000, 2000, null, true);
	Request("�}��/�}������", Smoothing);

	OnSE("se����_��x_�k��04", 1000);
	Zoom("�}��", 150, 1000, 1000, Dxl2, true);

	Wait(100);

	Zoom("�}��/�}������", 300, 1000, 1000, Dxl2, false);
	FadeFR2("�}��/�}������",0,1000,1000,@0,@0,20,null, false);
	FadeDelete("�}��/�}ɫ��", 300, true);

//����֣���`��ɥե�`�����S���\��ֹ�����Ф��ߤ�
//�����Τޤ޹̶�
	CreateColorSP("��", 25000, "WHITE");
	DrawTransition("��", 150, 0, 1000, 100, null, "cg/data/circle_03_00_0.png", true);

	SetVolume("�ߤ�", 1000, 0, null);

	Delete("�}��");

	CreateSE("SE01","se����_������_���������k");
	CreateEffect("�}����", 10000, 0, 0, 1024, 576, "NegaPosi");
	Fade("�}����", 200, 1000, Dxl2, false);

	CreateTextureSP("�r��ֹ�ޤ�02", 5000, @0, @0, "cg/ev/ev185_����֦�֣ӘS���_b.jpg");
	Delete("�r��ֹ�ޤ�EX");

	Delete("�}����");
	FadeDelete("��", 2000, true);

	Wait(500);

	FadeDelete("�}����", 1000, true);

//����֣��Х������Ҥ��|��֤ä���Ӥ롣��ȫ�T��
//����å�����
	CreateSE("SE01","se����_����_֩������¤�01");//���ߩ`ע���Q�����I�ޤ�
	MusicStart("SE01",0,1000,0,2000,null,false);

	CreateTextureEX("�}�݄���", 8000, Center, -130, "cg/ev/ev184_�^��̤���z������֦_b.jpg");
	Move("�}�݄���", 400, @0, -510, Dxl3, false);
	Fade("�}�݄���", 200, 1000, null, true);

	Wait(100);

	CreateTextureSP("�r��ֹ�ޤ�03", 5500, -540, -510, "cg/ev/resize/ev185_����֦�֣ӘS���_cl.jpg");
	Delete("�r��ֹ�ޤ�02");

	WaitAction("�}�݄���", null);

	CreateSE("SE02","se����_�z_װ��04");
	MusicStart("SE02",0,1000,0,1000,null,false);
	FadeDelete("�}�݄���", 600, true);

	CreateSE("SE01a","se���L_�|��_������01");
	CreateTextureSP("�}��Ŀ��", 8100, Center, Middle, "cg/ev/resize/ev185_����֦�֣ӘS���_cl.jpg");
	CreateTextureSP("�}��Ŀ��ȫ", 8090, Center, Middle, "cg/ev/resize/ev185_����֦�֣ӘS���_cl.jpg");
	SetBlur("�}��Ŀ��", true, 3, 500, 50, false);
	Request("�}��Ŀ��*", Smoothing);

	MusicStart("SE01a",0,1000,0,1600,null,false);
	Move("�}��Ŀ��", 200, -30, -640, Dxl2, false);
	Zoom("�}��Ŀ��", 200, 2500, 2500, Dxl2, false);

	Wait(200);

	CreateSE("SE01b","se���L_�|��_������01");
	MusicStart("SE01b",0,1000,0,1600,null,false);
	Move("�}��Ŀ��", 200, -1015, 455, Dxl2, false);

	Wait(200);

	CreateSE("SE01c","se���L_�|��_������01");
	MusicStart("SE01c",0,1000,0,1600,null,false);
	Move("�}��Ŀ��", 200, -1417, -907, Dxl2, false);

	Wait(200);

	CreateSE("SE01d","se���L_�|��_������01");
	MusicStart("SE01d",0,1000,0,1600,null,false);
	Move("�}��Ŀ��", 200, 1100, -1020, Dxl2, false);

	Wait(200);

	CreateSE("SE01e","se���L_�|��_������01");
	MusicStart("SE01e",0,1000,0,1600,null,false);
	Move("�}��Ŀ��", 200, -1900, 560, Dxl2, false);

	Wait(200);

	CreateSE("SE01f","se���L_�|��_������01");
	MusicStart("SE01f",0,1000,0,1600,null,false);
	Zoom("�}��Ŀ��", 200, 1500, 1500, Dxl2, false);
	Move("�}��Ŀ��", 200, 150, 10, Dxl2, false);

	Wait(200);

//���£ǣ͡����_
	SoundPlay("@mbgm12", 0, 1000, true);
	Delete("�}��Ŀ��");
	Zoom("�}��Ŀ��ȫ", 200, 500, 500, null, false);

	SetFwR("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0190a03">
��������һ������!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���k�h���������`��
	OnSE("se���L_����_�饤�ե�Ĥ�4��", 1000);

	CreateSE("����", "se����_����_����֦����ѥ�`��_L");
	MusicStart("����", 0, 1000, 0, 1000, null,true);

	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);

	CreateColorSP("�ե�å����", 15000, "WHITE");

	Delete("�r��ֹ�ޤ�*");
	Delete("�}����");
	Delete("�}��Ŀ��*");
	CreateTextureSP("�r��ֹ�ޤ�04", 6000, @0, @0, "cg/ev/ev185_����֦�֣ӘS���_d.jpg");

	Fade("�ե�å����",300,0,null,true);

	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorSP("�ե�å����", 15000, "WHITE");
	Wait(10);
	Fade("�ե�å����",300,0,null,true);

	OnSE("se���L_�|��_ȭ�|�k�h01", 1000);
	CreateColorSP("�ե�å����", 15000, "WHITE");
	Wait(10);
	Fade("�ե�å����",300,0,null,true);

	CreateColorSPadd("��", 15000, "WHITE");
	Fade("��", 300, 1000, null, true);
	Fade("��", 10, 0, null, true);
	Fade("��", 100, 1000, null, true);
	Fade("��", 10, 0, null, true);
	Fade("��", 100, 1000, null, true);
	Fade("��", 300, 0, null, true);
	Fade("��", 300, 1000, null, true);
	Fade("��", 1000, 0, null, true);

	SetVolume("����", 1000, 0, null);

	SetNwR("cg/fw/nw�S���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/013vs0200e036">
������ʲ������


//������㣯�S��ꇡ�
<voice name="����㣯�S���" class="����������" src="voice/mc04/013vs0210e036">
������ʲô������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��Ф��Ф���ȫ��
	FadeDelete("�r��ֹ�ޤ�04", 1500, true);
	OnSE("se����_�n��_ܞ��_�}��", 1000);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0220a03">
������������


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0230a03">
���ǣ��ǺǺǡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc04/013vs0240a03">
���Ǻǡ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���۩`�뤫��ȥ��
	CreateSE("SE01", "se����_����_�ߤ�07");
	MusicStart("SE01", 0, 1000, 0, 1000, null,true);

	Move("@StR*", 300, @60, @0, null, false);
	DeleteStR(300, true);

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"mc04_014vs.nss"