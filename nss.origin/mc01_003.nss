//<continuation number="910">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc01_003.nss_MAIN
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
	#bg007_��m��·a_03=true;
	#bg007_��m��·b_01=true;
	#bg009_�`�}סլ��b_01=true;
	#bg014_�`�}���A��_01=true;
	#bg020_ɽ�}�ӵ�_01=true;
	#bg038_���`���å�ֱ��_03=true;
	#bg053_�����Ҥ�ͥ_04=true;
	#bg054_�����Ҽ���b_01=true;
	#bg054_�����Ҽ���a_01a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc01_004.nss";

}

scene mc01_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc01_002.nss"

//����ᦌm
//���н֡���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg007_��m��·b_01.jpg");
	CreateSE("SEL01","se��Ȼ_ˮ_����02_L");
	MusicStart("SEL01", 2000, 500, 0, 1000, null, true);

	Wait(2000);

	SoundPlay("@mbgm18",0,1000,true);
	$SYSTEM_effect_rain_dencity = 40;
	$$SYSTEM_effect_rain_speed = 128;
	CreateEffect("�}������", 2000, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Zoom("�}������", 0, 2000, 2000, null, true);

	CreatePlainSP("�}��д", 1990);

	Delete("�ϱ���");
	Fade("�\Ļ��", 1500, 0, null, true);

	StR(1000,@0,@0,"cg/st/st����֦_ͨ��_˽��a.png");
	StL(1010,@0,@ 0,"cg/st/st����_ͨ��_˽��.png");
	FadeStA(0, true);

	Fade("�}��д", 300, 0, null, true);

	SetFwC("cg/fw/fw����֦_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030010a03">
��������ð�������

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030020a04">
������һ�������Ծ�����أ���С�㡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}��д", 300, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������������ӻ�Ϻ󣬴���ظ���
�����ŵ�ʱ�������������죬������ؼ�ȴ�������⣬
�Ҳ��ò�����ᦹ�ȥ���˰�ɡ��

�����¶�׼�����ޱ���ȫ�������̴Ӳ�֪���Ķ��ó���
ɡ����������Ů�ӱ�������Ա���ɡ��
������֦С����ǰ����ذ׵ġ�

������Ǹ���ϲ����������ɡ֮��һֱ��������ת��ת
ȥ��
������ȥ����ܺá�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�}��д", null);
	DeleteStA(0, false);
	Delete("�}��д");

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030030a03">
����ѽ�������ǲ��Ǳ��ȶ��Ĺ����������أ�
���ţ�
������û�˹涨������������ӵĶ����ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030040a04">
��û����ȷ�������ء�
���������Ƕ���֮���˵������

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030050a03">
���Զԡ�
�������ǺǺǺǺǺǺǺǺǺǡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030060a04">
����С����������ô��!?
����ȻͻȻ�������ֿ��ɵġ����˰�Ķ�ħ
Ц���������������̲�ס�����ʯ���ӹ�ȥ����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030070a03">
���Ǻǡ���
����Ķ��󲢲������Ƕ�ũ����ġ�����


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030080a03">
�������Ů֮�����������Ҳ��һ�ֶ��󣡡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����k�����ܥå����Ǥϱ�ʾ�����ܤʤ��
//���åܥå���ʹ�ä���
//�����衿
<voice name="����" class="����" src="voice/mc01/0030090a04">
��( �b�թb)����


</PRE>
//�� inc�h�� �����t�Ǥ�������һ�r�Ĥ˺�����ˤ��ƥץꥻ�å�λ�ä������ޤ�����
	SetTextEXH();
	Move("$SYSTEM_present_text", 0, 448, 134, null, true);
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030100a03">
������������ꡭ��
����ʪ͸�ĳ�������
������͸�������£���


{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030110a03">
��������Ȼ�����������µ�Ϊ�Լ������Ըжȣ�
һ�ٲ�����λ���˵��ģ�
���������������ı����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ԥ��`�󤴤������Q�ݳ�
	DeleteFwC(100, false);
	Fade("@box*", 150, 0, null, true);

	CreateColorEXadd("�}ɫ��", 1300, "#6699FF");

	CreateTextureEXadd("�}�֥�`��", 1020, Center, Middle, "cg/ef/ef030_����늴Œi��a.jpg");
	Rotate("�}�֥�`��", 0, @0, @0, @300, null, false);
	Zoom("�}�֥�`��", 1000, 2000, 2000, Dxl1, false);
	Request("�}�֥�`��", Smoothing);
	Fade("�}ɫ��", 0, 1000, null, true);
	Fade("�}�֥�`��", 0, 1000, null, false);
	Shake("�}�֥�`��", 1000, 50, 50, 0, 0, 1000, Axl2, false);
	SetBlur("�}�֥�`��", 8, true, 400, 200);
	FadeDelete("�}�֥�`��", 900, false);

	SetVolume("@mbgm16*", 1, 1, null);
	CreateSE("SE01","se��Ȼ_��_�R��02");
	MusicStart("SE01",0,1000,0,1000,null,false);

	FadeDelete("�}ɫ��", 900, true);

	WaitKey(2000);
	SetVolume("@mbgm16*", 1000, 1000, null);
	WaitKey(1200);
	SetVolume("SE01", 500, 0, null);

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0051]
//�����衿
<voice name="����" class="����" src="voice/mc01/0030120a04">
��ŶŶ������ȷ�Ǹ����µĲ��ԣ�
����������ɴ�������ˣ���Ȼ���ڲ�ͬ����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030130a03">
���ǺǺǡ�����


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030140a04">
�����ǣ���С�㡣
����������Ϊ�뵥���ĳ�Ůֻ��һֽ֮��������
����Ϊ֮�Ļ����Ǿ������һ�������ɼ��ĳ�Ů
�ˡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030150a03">
���ǡ��������̶ֳȵķ��ն�����ð�Ļ�����Ҫ
�ɾ�һ�����������������Σ�
��Ҫ�õ����Ĺ�ʵ������Ҫ���ǣ�����ӵ���ܳ�
�������µ���������


{	StR(1000, @0, @0, "cg/st/st����֦_ͨ��_˽��a.png");
	FadeStR(300, false);
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030160a03">
����������Ҳ�����Ϊ�ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0030170a00">
���ǡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030180a03">
����Ȼ��
����ô��������ܡ����������������ɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0030190a00">
���á���


{	FwC("cg/fw/fw����֦_�դ�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030200a03">
���������������������ţ�
���ҵ�˼�������޳������ˡ�������


{	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);
	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030210a04">
����ϲ��С�㣡
����Ȼ������ô�����������������������ˡ���


</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������Ҷ����������Ͽմ����ĶԻ���
���ҵ��Ժ��Ѿ�����������ռ���ˡ�

����֪���ˣ��������𳤵ı��⡣
���������Ǹ���û������ն��������Ʋá�

�����Ƕ��������µ���������޶á�
�����޷����շ��ɣ��õ�Ӧ�еı�Ӧ��

����Ϊ֪��һ�еĵ����ߣ���������ȫû����������־��
���Ҿͱض��õ������Ľ����
��
���������ơ�

����ˡ�������֮�¡�
�����Ա�������

����ô���ܡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/mc01/0030220a00">
��������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030230a03">
��������˵���������û�����أ��������ˡ�
������ʲô�����𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030240a04">
���ף�����������
����������ɫ������һ�������������Ʊ�µ���
��������Ϣ�������ҿ��������ƽʱ�Ĵն�����
ûʲô���𰡡���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030250a03">
����������ƽʱ�ľ������ˣ�������������ջ�
���Ļ�����һ����˵�š��������·������ˣ���
����ĸ�����㲻������Ҫ�ҵĴ�һ���!?����
�������˵����㲻���������𣿡�


{	FwC("cg/fw/fw����_���.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030260a04">
��������ôһ˵������������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030270a03">
���ڰ�ᦹ�����ʲô�������𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030280a04">
������ʲô����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030290a03">
����Ϊ�������������������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030300a04">
��������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030310a03">
�����������ܣ���


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030320a04">
���ȵȡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030330a03">
���ǲ��ǲ������ء�����


{	FwC("cg/fw/fw����_ŭ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030340a04">
����С�㣬��˵�ȵȣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030350a03">
����ô��������顭��
����ô�찡ɴ���������ٵľ���������Ҳ
ϲ���������������������˵���᲻�ᷴ��
�˺������أ���


{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030360a04">
���ص���Ϊʲô�����ڰ�ᦹ����������£���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030370a03">
��������


{	SetComic(@0,@0,13);
	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030380a03">
��������


{	DeleteComic();
	FwC("cg/fw/fw����_��.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030390a04">
����Ϊһ�����࣬��̫ʧ���ˡ�
����С�㡣��


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0030400a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
�����������ңԶ��
����ѥʪ͸��Ĵ���Ҳ��˸�����ʵ�����Ƶ����Ը��ӡ�

������̷��Ŀ���Ҳ�������ҵ��񾭡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Ƅ�
//���Eϴ���츶��
	CreateColorSP("�\Ļ��", 25000, "BLACK");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);
	Delete("�}����10");
	CreateTextureSP("�}����20", 1000, Center, Middle, "cg/bg/bg009_�`�}סլ��b_01.jpg");
	DrawDelete("�\Ļ��", 1000, 1000, "blind_01_00_1", true);

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030410a03">
���������������ˡ�
�����һ�ȡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0030420a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����һ�Ĳ��������������������ͣ���˽Ų���
���ղŻ�һֱ�����ֱߵ��ذ�ɡ����֪��ʱ�Ѳ�����
��Ӱ��

����ᦹ�����լۡ�����м䣬Դ��ɽ�Ÿ�����
��������������ɽ�е�С·�������ξ������վ�������
����֮ң�ĵط���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc01/0030430a00">
����ô����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030440a03">
��ȥǮϴ�Ͳ���Ů������磬����������·�𣿡�


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0030450a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��Ǯϴ���졣
��
�����������ʲô��������ش���һ�¡�

������ȥ�롣
�����ڡ�������ȥ�롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc01/0030460a00">
�������ǡ�
����������·ֱ�ߣ�Լʮ���Ӿ��ܵ�����


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030470a03">
�����ܲ���ȥ�ΰ�һ���أ�
���һ�û��ȥ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030480a04">
����Ϊ��������֮��һֱ���ܴ�æ������û�в�
����������Ͼ�ء���
������ֻȥ����֮���ɣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030490a03">
���Ǵ�Ҳ�Ǻܴ�æ���Ʋ�����ʲô�۹��ء���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0030500a00">
���������ˡ�
��������·�ɡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030510a03">
�������ͷ����ˡ�ֻҪֱ���߾͵��˶԰ɣ�����
��һ����ȥҲ�������⡣
����ȥȥ�ͻأ������������Ե�Ƭ�̡���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030520a03">
��ɴ�����������˾Ͱ������ˡ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030530a04">
���ǡ������Ұɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����ٽ����������֦С��Ѹ�ٵ���·�ˡ�
����������ס��ʱ�䶼û�С�

��Ŀ���ذ׵���ɡ���������̾�˿�����
��˵ʵ����������Щ���˿�����

����������ȥ���κ��¡�
����ȻǮϴ���첻�����ڸ�ʮ���׵�С���ϣ���������
�ڵ�����˵�������ľ���Ҳ̫�����ء�

��������ﾲ���ص�������Ҫ���ɵöࡣ����˵������
�����⡣
�����Բ���ȥ�룬����ȥ�����κ��¡�

�������̴Ӱ�����վ������������˸о�����������
����Ϣ������ǲ�����ҵ����飬�������¶��������ġ�
��Ȼ��Щ���Ĳ��������������������������鶼��Ըȥ
�롣

���������ǣ�Ϊʲô�����ξҪ�������̴������أ�
��������һ��ȥҲ�ܺð���

��˵��������֮ǰȥ��Դ��ɽ��·�ϣ��������ƺ���Ĭ
�ؽ��������񡪡����ǡ���
��
���������˰ɡ�

���������̫�࣬�ͻ�е�����ƣ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����衿
<voice name="����" class="����" src="voice/mc01/0030540a04">
��������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��inc�ñ���ץ�֤����ޤ���

	DeleteFwC(100, false);
	Fade("@boxCT", 150, 0, null, false);

	CreateColorEX("�}�\ܞ", 15000, "BLACK");
	Fade("�}�\ܞ", 1000, 1000, null, true);

	WaitKey(2000);

	FadeDelete("�}�\ܞ", 1000, true);


	StR(1000, @50, @0, "cg/st/st����֦_ͨ��_˽��a.png");
	Move("@StR*", 300, @-20, @0, Dxl1, false);
	FadeStR(300, true);

//��inc�ñ���ץ�֤����ޤ���
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0151]
��Ƭ��֮������֦С�������������̤������;��
���Ϳ�Ҫ���ƻ衪����Ȼ��Ƭ����ԭ���ͺ�����������
�仯Ҳ��̫���ԣ������������ƻ轫�������ס�

������֦С�����ɫ�ȷ��Ÿ�������ˡ�
���������ƺ���������Ϊҹɫ���ٵ�Ե�ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st����_ͨ��_˽��.png");
	FadeStL(300, false);
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����衿
<voice name="����" class="����" src="voice/mc01/0030550a04">
������ʲô������С�㣿��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030560a03">
����������
��ûʲô���˵��¡���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030570a03">
��ֻ�ǣ�������Щ�������¶��ѡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030580a04">
���������������


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030590a03">
���š���Ϊ��˾Ҳ�պ��������У����Ծ�����
ѯ����һ�������������
��Ȼ�󡪡���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030600a04">
�����ǲ���˵������������������������ˣ�
��ʵ��һ����˯�ں��׶���������㣿��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030610a03">
����Ȼ����Ҳ�ܶ��ģ��������������ġ�
������������������Ƕ�Ѩ��״�ģ�������
����Ȥ�����ӣ��϶��кܶ�С������������ˣ
�ɡ��������Թ�˾˵������

//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030620a03">
��֮��˾����ɫͻȻһ����
���漴�����ң�ǰ���û����ĸ��������С
���Ӿ������棬�������Ѿ�û���ˡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030630a04">
������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030640a03">
��������˵���ĸ����Ӷ������˲��ҡ�
��һ���������⸽����������ʧ���ˣ���Ҳû��
��������

{	DeleteStA(300,false);}

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(300);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SEL01", 500, 0, null);

//���ɥ��󡣄ӓe

	SetVolume("@mbgm*", 1000, 0, null);


	OnSE("se����_��_��Ġ����02",1000);
// ���������愿���㤻���m�r����
	WaitKey(400);
	CreateColorEXadd("��������`", 15000, "RED");
	Fade("��������`", 0, 100, null, true);

	CreatePlainEX("�}�֥�`��", 20000);
	SetBlur("�}�֥�`��", 8, true, 400, 200);
	Delete("��������`");

	Fade("�}�֥�`��", 0, 500, Dxl1, true);
	Zoom("�}�֥�`��", 100, 1100, 1100, Dxl1, false);
	Fade("�}�֥�`��", 100, 1000, null, true);

	Zoom("�}�֥�`��", 500, 1000, 1000, Dxl1, false);
	Fade("�}�֥�`��", 500, 0, null, true);

	Delete("�}�֥�`��");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
������!?

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030650a03">
��һ�����ӱ������˲��̵��¹ʵ��У�ʧȥ��
˫�ۡ�
������һ��������ͬһ�¹���ʧȥ���ֽš�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030660a04">
����Ȼ�������¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣄ӓe
	OnSE("se����_��_��Ġ����02",1000);
	WaitKey(400);
	CreateColorEXadd("��������`", 15000, "RED");
	Fade("��������`", 0, 100, null, true);

	CreatePlainEX("�}�֥�`��", 20000);
	SetBlur("�}�֥�`��", 8, true, 400, 200);
	Delete("��������`");

	Fade("�}�֥�`��", 0, 500, Dxl1, true);
	Zoom("�}�֥�`��", 100, 1200, 1200, Dxl1, false);
	Fade("�}�֥�`��", 100, 1000, null, true);

	Zoom("�}�֥�`��", 500, 1000, 1000, Dxl1, false);
	Fade("�}�֥�`��", 500, 0, null, true);

	Delete("�}�֥�`��");

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030670a03">
������һ�����ӡ���
�����Լ����У�����ɱ���ˡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030680a03">
����˵����ͷ����������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣄ӓe
//��ҕ�礬�e��롣�ܤ䤱��
	OnSE("se����_��_��Ġ����02",1000);
	WaitKey(400);
	CreateColorEXadd("��������`", 15000, "RED");
	Fade("��������`", 0, 100, null, true);

	CreatePlainEX("�}�֥�`��", 20000);
	SetBlur("�}�֥�`��", 8, true, 400, 200);
	Delete("��������`");

	Fade("�}�֥�`��", 0, 500, Dxl1, true);
	Zoom("�}�֥�`��", 100, 1300, 1300, Dxl1, false);
	Fade("�}�֥�`��", 100, 1000, null, true);

	Zoom("�}�֥�`��", 500, 1000, 1000, Dxl1, false);
	Fade("�}�֥�`��", 500, 0, null, true);

	Delete("�}�֥�`��");
	FadeDelete("�}�ţ�", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��b.png");
//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//�����衿
<voice name="����" class="����" src="voice/mc01/0030690a04">
�����ǲ��̰�������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030700a03">
�����̫�����ˡ�
�������������Ķ�ħ�������������¡���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030710a03">
�����ĸ�����˵���ǿ����������ĺú��ӡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå���Ѫ��

	CreateColorEXadd("�ե�å����", 15000, "WHITE");
	OnSE("se�M��_�ե�å���Хå�01",1000);
	Fade("�ե�å����",0,1000,null,true);
	OnSE("se���L_����_���̤���05",1000);
	CreateTextureSP("�}����01", 5000, Center, Middle, "cg/ef/ef007_����Ѫ���֤�.jpg");
	Fade("�ե�å����", 300, 0, null,true);

	WaitKey(1500);
	Fade("�ե�å����",0,1000,null,true);
	Delete("�}����01");
	Fade("�ե�å����",300,0,null,true);

	SoundPlay("@mbgm04", 0, 1000, true);


	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030720a03">
����Ȼ����
������������ͷ������


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030730a04">
�����ǡ������˵��о�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå������w����
	EfRecoIn1(18000,600);

	CreateTextureSP("�}����03", 5300, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_b.jpg");
	CreateTextureSP("�}����01", 5000, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_c.jpg");
	CreateTextureSP("�}����02", 4000, Center, Middle, "cg/ev/ev106_���w��Ҋ�¤�����_d.jpg");
	EfRecoIn2(300);

	WaitKey(500);

	CreateTextureEXadd("�}EF100", 6500, Center, 100, "cg/ef/ef014_���ú�܉��.jpg");

	OnSE("se���L_����_�����01",1000);
	Fade("�}EF100", 0, 1000, null, true);
	DrawDelete("�}EF100", 50, 100, "slide_01_00_0", true);
	WaitKey(100);
	Delete("�}����03");
	WaitKey(300);
	OnSE("se����_Ѫ_Ѫ���֤�01",1000);
	Delete("�}����01");
	CreateTextureSPover("�}����Ѫ", 6000, Center, Middle, "cg/anime/Right/blood_B_6.png");
	WaitKey(1000);

	EfRecoOut1(300);

	Delete("�}����*");


	EfRecoOut2(600,true);


	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030740a03">
������ԭ�¡�����


{	FwC("cg/fw/fw����_����.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030750a04">
������ԭ���ء�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030760a03">
�����ƺ����˻�û�б�������
����û���ܵ��ͷ�����

{	FwC("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030770a04">
�����������ڵأ���ĳ���ط����š�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030780a03">
���š�
��ɱ�����޹��ĺ��ӣ��Լ�ȴ�����š���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030790a04">
�����Ǳ��ɣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030800a03">
���϶�����Ҳ��ĳ����װ��һ��������ҵ���
����������Ȼ�Եõ����������ء�
������Ҳ�ܲ�����ĺ�������֮�Ժ󡭡���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030810a04">
������������Ǻ��޵�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030820a03">
������ء�
����������ȥ�ˣ�ɱ�����ӵĶ�ħȴ���š���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030830a03">
��Ϊʲô���ܵ������أ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/mc01/0030840a04">
��������Ϊʲô���ܵ������أ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030850a03">
���԰ɣ��������ˡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030860a03">
��<RUBY text="��������">Ϊʲô��</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå��������Ƥ����ˡ�
//��ҕ��e���
//�����ä���ϥ��Ĥ�

	CreateTextureEX("�}�ţ�", 1900, Center, Middle, "cg/bg/bg009_�`�}סլ��b_01.jpg");
	SetShade("�}�ţ�", HEAVY);
	Zoom("�}�ţ�", 0, 1200, 1200, DxlAuto, false);

//inc�ñ����� �楦��


	EfRecoIn1(18000,600);


	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg014_�`�}���A��_01.jpg");
	CreateTextureSP("�}����200", 2100, 618, InBottom, "cg/st/st���w_ͨ��_�Ʒ�.png");
	CreateTextureSPover("�}����Ѫ", 2500, Center, Middle, "cg/anime/Right/blood_B_6.png");
	EfRecoIn2(300);

	Wait(100);

	EfRecoIn1(18000,600);

//inc�ñ����� �դ��դ�
	Delete("�}����*");

	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	CreateTextureSP("�}����200", 2100, 200, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
	CreateTextureSP("�}����400", 2300, 550, InBottom, "cg/st/st�դ�_ͨ��_˽��.png");
	CreateTextureSPover("�}����Ѫ", 2500, Center, Middle, "cg/anime/Left/blood_C_6.png");
	EfRecoIn2(300);

	Wait(100);

	EfRecoIn1(18000,600);

//inc�ñ����� �ߥ���
	Delete("�}����*");

	if($�ٚ��� == true){
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg038_���`���å�ֱ��_03.jpg");
	CreateTextureSP("�}����200", 2100, 400, InBottom, "cg/st/st��_ͨ��_˽��.png");
	CreateTextureSPover("�}����Ѫ", 2500, Center, Middle, "cg/anime/Center/bloodA_5.png");
	}else{
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg037_����������`��a_01.jpg");
	CreateTextureSP("�}����200", 2100, 400, InBottom, "cg/st/st��·_ͨ��_˽��.png");
	CreateTextureSPover("�}����Ѫ", 2500, Center, Middle, "cg/anime/Center/bloodA_5.png");
	}

	EfRecoIn2(300);


	Wait(100);

	EfRecoIn1(18000,600);

//inc�ñ����� һ��
	Delete("�}����*");


	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg007_��m��·a_03.jpg");
	CreateTextureSP("�}����200", 2100, 400, InBottom, "cg/st/stһ��_ͨ��_�Ʒ�.png");
	CreateTextureSPover("�}����Ѫ", 2500, Center, Middle, "cg/anime/Center/bloodA_5.png");

	EfRecoIn2(300);


	Wait(100);


	EfRecoIn1(18000,600);

//inc�ñ����� ĸ
	Delete("�}����*");




	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg053_�����Ҥ�ͥ_04.jpg");
	CreateTextureSP("�}����300", 2100, 106, InBottom, "cg/st/st�y_ͨ��_˽��.png");
	CreateTextureSPover("�}����Ѫ", 2500, Center, Middle, "cg/anime/Left/blood_C_7.png");

	EfRecoIn2(300);

	Fade("�}�ţ�", 0, 1000, null, true);

	Wait(100);
	
	EfRecoOut1(300);

	Delete("�}����*");
	DrawEffect("�}�ţ�", 3000, "LowWave", 85, 85, Dxl1);

	Request("�}�ţ�", Smoothing);
	Zoom("�}�ţ�", 2500, 1350, 1450, DxlAuto, false);
	Zoom("�}������", 1500, 2500, 2500, DxlAuto, false);
	Fade("�}������", 1500, 100, DxlAuto, false);

	EfRecoOut2(600,true);



	Move("�}�ţ�", 1500, @0, @100, DxlAuto, true);
	SetVolume("@mbgm*", 500, 1000, null);
	WaitKey(100);

	Move("�}�ţ�", 1000, @0100, @0, AxlAuto, false);
	Zoom("�}�ţ�", 1000, 1250, 1350, AxlAuto, false);
	Zoom("�}������", 1000, 2000, 2000, AxlAuto, false);
	Fade("�}������", 1000, 1000, AxlAuto, false);
	Move("�}�ţ�", 1000, @0, @-60, AxlAuto, true);

	WaitKey(1500);
	Move("�}�ţ�", 100, @0, @-400, DxlAuto, false);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 100, 0, 1000, 100, null, "cg/data/slide_02_01_1.png", false);


	OnSE("se����_�n��_ܞ��03",1000);
	WaitKey(1000);
	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//�����衿
<voice name="����" class="����" src="voice/mc01/0030870a04">
�������ն����ˣ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc01/0030880a03">
������ô�ˣ�
����������һ�㣡��


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc01/0030890a00">
��������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/bg/bg009_�`�}סլ��b_01.jpg");

	CreateTextureSP("�}�ţ�a", 6000, Center, Middle, "cg/bg/bg009_�`�}סլ��b_01.jpg");
	CreateTextureSP("�}�ţ�b", 5500, Center, Middle, "cg/bg/bg009_�`�}סլ��b_01.jpg");
	CreateTextureSP("�}�ţ�c", 5000, Center, Middle, "cg/bg/bg009_�`�}סլ��b_01.jpg");

	SetShade("�}�ţ�a", NOMORE);
	SetShade("�}�ţ�b", SEMIHEAVY);
	SetShade("�}�ţ�c", EXTRAHEAVY);

	CreateEffect("�}������", 4100, Center, Middle, 512, 288, "Rain");
	SetAlias("�}������","�}������");
	Move("�}������", 0, 256, 144, null, true);
	Zoom("�}������", 0, 2000, 2000, null, true);

	Fade("�}��ܞ",600,0,null,false);
	Fade("�\Ļ��",600,0,null,true);
	FadeDelete("�}�ţ�a", 1500, true);
	Fade("�\Ļ��",500,200,DxlAuto,true);
	FadeDelete("�}�ţ�b", 500, true);
	Fade("�\Ļ��",1500,0,AxlAuto,true);
	FadeDelete("�}�ţ�c", 1500, true);

	Fade("�\Ļ��",600,0,AxlAuto,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��Ϊʲô��
��Ϊʲô��

��Ϊʲôֻ���һ����ţ�
��ɱ¾ɱ¾ɱ¾���ҽ���ô��������������ζ�û
�е������Ϊʲô�����ֻ���һ������������أ�

����̫����ˡ�
����̫����ƽ�ˡ�
����̫���������ˡ�

������ԭ�¡�
���ұ����ܵ��ͷ���

���������ǣ���ȴ��ԭ���ˡ�

��֪������������ȴ���������ҵ��
������ԭ�����ҡ������������ҵĹ���������˵Ҫ����
ƽ����������

��Ϊʲô��
��
��Ϊʲô�����������˲���֮�£�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	Fade("�\Ļ��",500,1000,AxlAuto,true);
	Delete("�}*");
	CreateTextureEXadd("���ͤ���", 4000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	Fade("���ͤ���", 0, 300, null, true);
	Zoom("���ͤ���", 30000, 1500, 1500, null, false);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg054_�����Ҽ���b_01.jpg");
	CreateTextureSP("�}����200", 2100, 600, InBottom, "cg/st/st�����ǰ_װ��_˽��a.png");
	CreateEffect("Memory_cover", 2400, 0, 0, 1024, 576, "Sepia");
	Fade("�\Ļ��",1000,0,null,true);
	WaitKey(1000);


	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/mc01/0030900a00">
��������������


{
	DeleteFwC(100,false);
	Fade("@box*",150,0,null,true);
	CreateColorEX("�ե�å����", 15000, "WHITE");
	OnSE("se�M��_�ե�å���Хå�01",1000);
	Fade("�ե�å����",0,1000,null,true);
	CreateTextureSP("�}����100", 2000, Center, Middle, "cg/bg/bg054_�����Ҽ���a_01a.jpg");
	CreateTextureSP("�}����200", 2100, 200, InBottom, "cg/st/3d�y�Ǻ�_����_ͨ��.png");
	CreateEffect("Memory_cover", 2400, 0, 0, 1024, 576, "Sepia");
	Fade("�ե�å����",300,0,null,true);
	WaitKey(1000);
	Fade("�\Ļ��",1000,1000,null,true);
	SetFwC("cg/fw/fw����_�ֲ�.png");
	FadeFwC(300,false);
	Fade("@boxCT",150,800,null,true);
}
//��������
<voice name="����" class="����" src="voice/mc01/0030910a00">
��������������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե��`�ɥ����ȡ�����

	ClearWaitAll(1500, 1500);
}

..//������ָ��
//�Υե����롡"mc01_004.nss"