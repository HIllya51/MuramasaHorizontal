//<continuation number="50">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md06_004.nss_MAIN
{

	$TITLE_NOW=" �������������ƪ���������� ";

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
	#bg016_���@b_01=true;
	#bg007_��m��·b_01=true;
	#bg009_�`�}סլ��b_01=true;
	#bg013_�`�}���d_01=true;
	#bg013_�`�}���d_02=true;
	#bg013_�`�}���d_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md06_005.nss";

}

scene md06_004.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();


..//������ָ��
//ǰ�ե����롡"md06_003.nss"


//�������
//�����@��
//��С��������
//������
	PrintBG("�ϱ���", 30000);
	CreateSE("SEL01","se��Ȼ_ˮ_����02_L");
	MusicStart("SEL01",2000,500,0,1000,null,true);
	CreateColorSP("�\", 3000, "BLACK");

	CreateColorSP("�⤦�ҤȤĤ��\", 140, "BLACK");
	OnBG(150, "bg016_���@b_01.jpg");
	FadeBG(0, true);
	Delete("�ϱ���");

	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("�}������", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);

	FadeDelete("�\", 4000, true);

	WaitKey(800);

	SoundPlay("@mbgm31", 0, 1000, true);


	StR(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStR(300, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/md06/0040010a01">
����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md06/0040020a00">
������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md06/0040030a01">
�����ð�ġ���
���Ǹ������ǻ�ȥ�ɡ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md06/0040040a00">
��������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������

	WaitKey(1000);

	SetVolume("SEL*", 2500, 0, null);

//���ե��`�ɥ�����
	CreateColorEX("�}ɫ�\", 20000, "#000000");
	Fade("�}ɫ�\", 2000, 1000, null, true);

	DeleteStA(0,true);
	Delete("@OnBG*");
	Delete("�}������");

	WaitPlay("SEL*", null);

	CreateColorSP("�}ɫ�\����", 10000, "#000000");
	CreateColorSP("�}ɫ�\��", 15010, "#000000");
	Move("�}ɫ�\��", 0, -512, @0, null, true);

	CreateTextureSP("����", 15000, Center, Middle, "cg/sys/Telop/tp_��������.png");
	Zoom("����", 0, 700, 700, null, true);
	Request("����", Smoothing);

	Fade("�}ɫ�\", 2000, 0, null, true);

	WaitKey(2000);

	FadeDelete("�}ɫ�\��", 2000, true);

	WaitKey(4000);

	Fade("�}ɫ�\", 3000, 1000, null, true);
	Delete("����");
	Wait(2000);

/*

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���ⲻ��Ӣ�۵Ĵ�˵��

������װ�׶������Ĵ�˵��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/

//�������ȥ룺װ�א������������
	CreateTextureSP("����", 15000, Center, Middle, "cg/sys/Telop/lg_����.png");
	Fade("�}ɫ�\", 2000, 0, null, true);

	WaitKey(3000);

	Fade("�}ɫ�\", 2000, 10000, null, true);


//�������ξ���bg013��ʹ�����Ϥ�bg013b�ˤ��뤳��
//���`�}�н֡���
	OnBG(130, "bg013_�`�}���d_01.jpg");
	FadeBG(0, true);

	Fade("�}������", 0, 1000, null, true);

	Delete("����");
	Delete("�⤦�ҤȤĤ��\");
	Delete("�}ɫ�\����");
	FadeDelete("�}ɫ�\", 2000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����´��ҡ�

��������ѧ��ȫ���ƿ����ԵĹ����Ѿ���ʧ��
�����Ǳ���֮��������������ս�𣬲�δ��
����һ����ɢ���١������۹��ڹ��⣬
�����ڻص����ź��������С�

����ɱ�ˣ��ٱ���߱ɱ��
����������ʬ�����������ֶ����µĺ��ǡ�

�����ȼ�գ�������ң���ظ��ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg012_�`�}�kǰ���x_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/md06/0040050a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���һ��š�

�����������ֽ��Լ�ɱ����
����Ӧ�����ںڰ��в����ٸ������ʶ��
��֪�ι���ӭ�������ѵ�һ�̣�
������һ�ж����ս�����硣

������˵������ǹ�ľ����������������ҡ�
���޴Ӳ�֤������Ҳ��Ϊû�������Ŀ����ԡ�

��������ˣ���Ϊ��Ҫ���һ�������
��
�������ſ�ʼ˼����Щ�£�����֮ս
���󲻾ã�һֱû�в��������ɻ�

��ֻ���ţ�����Ҳδ�����ɡ�
��������ͬ���Լ�����֮���Լ��
������һ�����֮ʱ���淢�Ҵն���������״��
�����Ҵ��̡�

����������������У�Ҫ�ɷ��ɺ��������о���
����ʧȥ����֮�˵ķ�ŭ��̾Ϣ����������<k>
��
�����������Լ����

��Ȼ����ȴû�����С�
����֪��ȫ�����е��������ˣ�����Ϊ�淢�ߣ�
ȴ�Խ������Ͻ��׼���һְ����֮����

����������ô˵����ֻ���ظ��Ž�����Ϣ֮��Ļ���
�����ɴ��Է�æΪ�ɣ��ܾ����һ��档

�������������಻�ܡ�

������Ҳߵ���˽����µ��ţ��������ɮ��ί���
�ܾ��ˣ������ȥ��Ҳ�޴���ȥ���������ֵ�
�ֵ����塣
����ʹ���˼���š�

��Ϊ�Σ���Ҫ���š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ƅ�

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg009_�`�}סլ��a_01.jpg");
	FadeBG(0, true);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
��������ţ�����Ҳֻʣ���޾��Ļںޡ�

��ɱ���˹⡣

�������ػ��Ķ�����
����������ҽ�Ҳ��Ӧ����֮�
��
��ȴ���������ƻ���

��������ڡ�

���������޲�����

����������һζ������������ѡ���
����Ȼ�ڲ�������

����ȻҪɱ��Ϊ�β�����һЩ��ȡ�ж���

��һ�ٵ��Ƴپ��Ϻ��ж����ֺ��Ĺ�ģ
�ͱ����ߵ�����������޷�����
�����ڣ������Ȼ�ڷ��������硣

���������ǰ�����̽���ɱ���Ļ���
�Ͳ�����������ء�

��������ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ�
	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);


}

..//������ָ��
//�Υե����롡"md06_005.nss"