//<continuation number="290">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md05_015.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/md05_015.nss","TurboBlur3",true);
	

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
	#bg041_Ƭ������_03=true;
	#bg001_��d_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md05_016vs.nss";

}

scene md05_015.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md05_014b.nss"


//��ҹ�κ�����

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��", 5000, "WHITE");

//	SoundPlay("@mbgm30", 0, 1000, true);

	CreateSE("umi", "se��Ȼ_ˮ_��x�β�01_L");
	MusicStart("umi", 0, 1000, 0, 1000, null,true);

	CreateTextureEX("��`���ݳ�", 4500, @0, @0, "cg/bg/bg041_Ƭ������_03.jpg");
	Zoom("��`���ݳ�", 0, 1500, 1500, null, true);
	DrawEffect("��`���ݳ�", 50, "SuperWave", 0, 500, null);
	Fade("��`���ݳ�", 0, 500, null, true);


	OnBG(100, "bg041_Ƭ������_03.jpg");
	FadeBG(0, true);

	Delete("�ϱ���");

	FadeDelete("��",1500,true);

	Fade("��`���ݳ�", 1000, 0, null, true);
	Delete("��`���ݳ�");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��һƬ�ž���
������΢�����ĵ�������û���κ����Ҷ���֮����

��ĳ��ҹ�ĳ�����ߡ�
����������գ����ҵĴ�磬���͵Ļ��棬�������ڡ�
�����ǰ��ȵ����硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md05/0150010a00">
��������û������
�����ǣ���Ҫ��и����

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0150020a01">
���ǰ���
���������Ȳ�̸ʱ�䣬�����ƺ��Ǵ�͡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���ҶԴ������뷨����ʾ��ͬ��
�������Ǵ�͵ĺ���Լ����̫ƽ��һ�ࡣ

��̧ͷ���죬�ǿյ�ģ��Ҳ֤ʵ����һ���衣
���������������������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md05/0150030a00">
��������������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0150040a01">
��������ô�ˣ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0150050a00">
��������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0150060a01">
����������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0150070a00">
�������ѿ��ˡ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0150080a01">
������
�������ȵȣ���Ҫ˵����ô����Ļ�������

//��������
<voice name="����" class="��������" src="voice/md05/0150090a01">
���侲�㡣
��������Ȼӯ��������û���ѿ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����줿��
	CreateColorSP("�\Ļ��", 3100, "#000000");
	DrawTransition("�\Ļ��", 100, 0, 1000, 100, null, "cg/data/slide_02_01_0.png", true);

	CreateTextureSP("�ˤ㤬�`", 3000, @0, @0, "cg/bg/bg001_��d_03.jpg");
	CreateTextureSP("�ˤ㤬�`��", 3000, @0, @0, "cg/bg/bg001_��d_03.jpg");
	Request("�ˤ㤬�`��", Smoothing);
	Zoom("�ˤ㤬�`��", 0, 2000, 2000, null, true);
	Move("�ˤ㤬�`��", 0, @0, 250, null, true);

	SetBlur("�ˤ㤬�`��", true, 2, 500, 100, false);

	DrawTransition("�\Ļ��", 100, 1000, 0, 100, null, "cg/data/slide_02_01_1.png", true);
	Delete("�\Ļ��");

	Wait(500);

	Move("�ˤ㤬�`��", 300, @0, 0, Dxl2, false);
	Zoom("�ˤ㤬�`��", 300, 1000, 1000, Dxl2, true);

	Delete("�ˤ㤬�`��");
	Wait(500);

//�������`��Ȥ��ӣŤĤ���٤�����inc�Ѿ�

	OnSE("se�M��_���ߥ���_���`��02",1000);

	SetFwR("cg/fw/fw����֩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="��������" src="voice/md05/0150100a01">
���۰�������������?!��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���ѿ��ˡ�
�������ζ�һ�����϶��Ǵ�����ٴ�ȷ��������ˡ�

�������������������������ȫ�����ˡ�

���ǡ�����������������ˡ�
���Ǳ��ǣ�����һ��������̰�Ĳ�״��

������������һ���������������˵����
���ڵ�����ΧƯ�����������������ۼ��������γ���
��������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����֩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/md05/0150110a01">
���ȡ�ʲ��ʲô������������������

{	FwR("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0150120a00">
���侲�㡣��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���Ҵ�ϴ��Ҳ���˵��������ԵĴ�����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//Ԓ�򤷤ʤ���Ԫ�ˑ���Ȥ����褦���ݳ��Ǥ�����true�ˤ����ۤ��������Τʤ�1000,true�� inc�Ѿ�

	FadeDelete("�ˤ㤬�`",2000,false);
	Wait(500);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md05/0150130a00">
���ⲻ���������ꡭ���ĵط��ɡ���
����������������ǰ����ȥ�ĵ����𣿡�

{	FwC("cg/fw/fw����֩��_�亹.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0150140a01">
������
���ǡ���������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0150150a01">
��������Ӧֻ����������ķ�Χ�ڻ��
�Ҿ��ò�����������
����Χ������Ҳ���񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ͬ�⡣
�������������ĵ�����Ӧ���ǡ���<k>�͵��򼸺�ͬһʱ�ڡ�
���һ�����㲻��������ǰ��������ʮ����ǰ��

���޷��������ţ����������Զ�ŵĵ���

����ô������������ô���¡�

��������ﲻ�������γɹ����е�ʱ����

������δ����
���ǽ�������������ĳ��ԭ���������

��������������濪�������˴�δ�й��ľ޴�ʧ����
�������Ǻ������˵ľ�ս��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="��������" src="voice/md05/0150160a01">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0150170a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0150180a01">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0150190a00">
�������ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���������ݻ����У�������תͷ��ӣƷ���ǰ
����������Ϊ��ЩԵ�ʣ��������ˡ�
��
�����ˡ�

�����µ���㼣�������е���Ӱ��
�����ҵĽǶȿ�ȥ�Ǳ�Ӱ����Ȼ��谵���޷������ж�
�������ƺ���λŮ�ԡ�

������׼���뿪��
��Ȼ�����Ǹ��ܵ���ʲô��

��������أ���ͷ���ҿ�����
����⡪������ô���ţ�ȴ�����޴롣

������Щ����룬��������档

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ���������ᣩ

	StC(1000, @0, @0, "cg/st/stһ��������_ͨ��_˽��.png");
	FadeStC(500, true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����������ʶ��Ů�ԡ�

����û�м�������
�������ӹ���ɡ���������ʲô���ڴ̼��ҵļ��䡣

������������ȫòû�м��䣬ȴ�е��ε�ǣ��������
�����磬��˫������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fwһ��������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��һ����
<voice name="һ��" class="һ��" src="voice/md05/0150200a02">
������������

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
  ����ͻȻ��������ߡ���������˵����ȴû��
һ˿��ҡ��
������⾰�㣬����������
������΢΢�Ĳ�����

�����ǿ���ңԶ��ȥ������
���ֻ��ǣ������������ġ�

��������һ�ԣ���Ҳһ�ﲻ����

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ������

	DeleteStC(500,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
��ֻͣ������ĽŲ����ٶ���ǰ���ߡ�
��̧����ȥ��
��
����ֱ�ء�

��������ֹ������ͷҲ���ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md05/0150210a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����g�֤�

	CreatePlainEX("�}��д", 100);

	OnSE("se����_������_���g����",1000);

	DrawEffect("�}��д", 36000, "MiddleWave", 30, 30, null);

	Fade("�}��д", 500, 900, null, false);
	Zoom("�}��д", 1000, 1300, 1300, AxlDxl, false);

	Wait(500);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//��������
<voice name="����" class="��������" src="voice/md05/0150220a01">
����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/md05/0150230a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
��ʱ�ռ������Ť����
���������ƺ�Ҳ�ܰ�Ȼ���ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//��������
<voice name="����" class="��������" src="voice/md05/0150240a01">
���ղŵģ���˭����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md05/0150250a00">
����֪������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0150260a01">
��������ģ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md05/0150270a00">
��Ϊ�����ɣ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md05/0150280a01">
���������ˡ�
�����������С�ĵ㡣��

//��������
<voice name="����" class="��������" src="voice/md05/0150290a01">
����ţ��������ܻ�ȥ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ�
	SetVolume("umi", 1000, 0, null);

	CreateSEEX("SE01","se���L_����_���ͥ륮�`�]���Ϥ�01_L");
	OnSE("se���L_����_⟱ڴ����w�Ф�", 1000);

	MusicStart("SE01",0,1000,0,1000,null,true);

	CreateColorSP("�\Ļ��", 25000, "WHITE");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", true);


	CreateColorSPadd("��", 2500, "WHITE");


	CreateTextureSP("˲�g�Ƅ�", 1000, @0, @0, "cg/ef/ef039_�r�g�Ƅ�.jpg");

	CreateColorEXadd("�}ɫ100", 2000, "WHITE");
	Fade("�}ɫ100", 0, 500, null, true);

	$Warp�ȥ�� = @�}ɫ100;
	$Warp�ȥ���ٶ� = 500;
	$Warp�ȥ�󥸤ʤ�餫�� = 500;



	CreateTextureEXadd("�}����������", 1500, Center, Middle, "cg/ef/resize/ef039_�r�g�Ƅ�l.jpg");
	SetVertex("�}����������", 800, 420);
	$�����ʥå��� = @�}����������;


	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur");
	SetAlias("�ץ�����","�ץ�����");
	CreateProcess("�ץ�����", 150, 0, 0, "TurboBlur3");
	SetAlias("�ץ�����","�ץ�����");


	Request("�ץ�����", Start);
	Request("�ץ�����", Start);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1000,true);
	Fade("��", 1000, 0, null, true);


	Wait(3500);

	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	Fade("��", 1500, 1000, null, true);

	Wait(1000);

}

..//������ָ��
//�Υե����롡"md05_016vs.nss"


function TurboBlur3()
{

	while(1){

	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 0, 1000, $Warp�ȥ�󥸤ʤ�餫��, Axl2, "cg/data/circle_01_00_0.png", true);
	DrawTransition($Warp�ȥ��, $Warp�ȥ���ٶ�, 1000, 0, $Warp�ȥ�󥸤ʤ�餫��, Dxl2, "cg/data/circle_01_00_1.png", true);

	}

}