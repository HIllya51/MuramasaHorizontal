//<continuation number="920">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md03_008.nss_MAIN
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
	#bg001_��c_03=true;
	#bg088_�߼��ۥƥ�Υ۩`��_01b=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md03_009.nss";

}

scene md03_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"md03_007.nss"


//��ҹ


	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\", 5000, "BLACK");


	OnBG(100, "bg001_��c_03.jpg");
	FadeBG(0, true);


	SoundPlay("@mbgm30", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\",2000,true);

	Wait(500);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������֮�󣬲��������������⡣
�����Լ����ų�������������������ʻȥ��

��������ͣ�����`�ֽ����൱������
�߼����ݵ�ͣ�����С�
����Ȼ���ڵ��ҺͲ���趼��˽�����У������ֵط���
�����ž�װ������û��Υ�͸С�

����Ȼ�����⴩��һ�۾��ܿ�����λ�����ľ�װ����
�����ǲ���衪���������ɵġ�

��������ʹ�õĺ��Ž��룬���ϵ��ݡ�

��������������ȥ����߲㡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`���󤭤��餬�ء������_���Ф�
//�������A�۩`��
//���������

	CreateColorSP("�\Ļ��", 25000, "#000000");
	DrawTransition("�\Ļ��", 1000, 0, 1000, 100, null, "cg/data/blind_01_00_0.png", true);

	OnBG(100, "bg088_�߼��ۥƥ�Υ۩`��_01b.jpg");
	FadeBG(1000, true);
	OnSE("se�ճ�_����_���_��09", 1000);

	DrawTransition("�\Ļ��", 1000, 1000, 0, 100, null, "cg/data/blind_01_00_1.png", true);
	Delete("�\Ļ��");

	StR(1000, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	FadeStR(300, true);

//	OnSE("se�M��_���ߥ���_���k01", 1000);

/*
	CreateVOICE("�������","md03/0080010a13");
	SetFont("@����", 40, #FFFFFF, #000000, HEAVY, RIGHTDOWN);

	MusicStart("�������",0,1000,0,1000,null,false);
	CreateText("voice01",30411,Center,inherit,auto,auto,"���ѥ��!!��");
	Request("voice01",NoLog);
	Request("voice01",PushText);
	Rotate("voice01", 0, @0, @0, 90, null, false);
	Move("voice01", 0, @0, @10, null, false);

	SetBacklog("���ѥ��!!��", "voice/md03/0080010a13", �������);
	CreateTextureEX("�01", 30400, 451, 4, "cg/fw/fw�������_�~��.png");

	CreateTextureSP("�}����100", 200, Center, Middle, "cg/bg/bg088_�߼��ۥƥ�Υ۩`��_01b.jpg");

	Move("�}st200", 0, @0, @0, AxlDxl, false);

	Shake("�}st200", 500, 10, 5, 0, 0, 750, Dxl1, false);
	Shake("�}����100", 500, 10, 5, 0, 0, 750, Dxl1, false);

	Fade("�01", 0, 1000, null, false);
	Fade("@boxCT", 0, 1000, null, true);

	WaitKey();

	Delete("voice01");
	FadeDelete("�01", 150, false);
	Fade("@boxCT", 150, 0, null, true);
*/

	SetFwC("cg/fw/fw�������_�~��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//����ե���Ȥ�
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080010a13">
<FONT size=40>���ڿ�!!��</FONT>

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ꡣ�ɤ������������ȥ

	OnSE("se���L_����_���å�04", 1000);
	CreateTextureSP("���", 15000, @0, @0, "cg/ef/ef042_���ô��.jpg");
	DeleteStR(300,false);
	FadeDelete("���",300,true);

	CreatePlainEX("�}��д", 16000);
	Fade("�}��д", 0, 800, null, true);
	Shake("�}��д", 300, 0, 30, 0, 0, 1000, DxlAuto, false);

	FadeDelete("�}��д", 500, false);

	StCR(1000, @0, @0,"cg/st/st�����AȾ_ͨ��_˽��.png");


	SetFwC("cg/fw/fw�������_�~��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080020a13">
������!?��

{	StL(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300, false);
	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080030a07">
��������һ��ǡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080040a00">
������衣��

{	FadeStCR(300,false);
	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080050a00">
���������Ҽ����˸ò�����<RUBY text="������">��һ�</RUBY>�ɡ���

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080060a07">
�������������Ǹ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080070a00">
������Ҫ������������̫�ɱ��ˡ�����

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080080a00">
�������ң����Ƕ�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ָ�ݤ��ݤ�
	Move("@StMR*", 6000, 220, @0, null, false);
	DeleteStCR(2000,false);

	OnSE("se����_��_ָ���Q�餹", 1000);

	SetFwC("cg/fw/fw�衩��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080090a07">
���ȵȵȵȵȵȡ�����!!
���Σ������Ʋ�!!
���Σ�����˽��!!��

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080100a07">
��������������һ���Ȼ�Ǹ��׳գ�
��ȴ�����Ǹ��׳�!!��

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080110a00">
��Ŷ��������

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080120a07">
����һӡ������������󵽵ķ�Χ��
�����ˣ���������������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080130a00">
���ðɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080140a00">
�������������ǰ׳�����ʲô��
�����ֱ˵�ɡ���

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080150a07">
����̬����

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080160a00">
�����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_����01", 1000);

	DeleteStL(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ҴӲ���豳�����˫���������Ĳ��ӣ�
��ס������򦡣
�����Ǵ��ǵ����ơ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080170a07">
��ѽ��������������!!
����˵��ֱ̫���ˡ�����!!��

{	StR(1000, @0, @0, "cg/st/st�������_ͨ��_˽��.png");
	FadeStR(300, false);
	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080180a13">
��������ʲô�ء�
����һ��������������Σ���ˡ���

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080190a07">
������Ϊ��˭����!?��

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080200a13">
���������Ϊ�޴����������޴����°ɣ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080210a00">
��������ˡ���

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080220a13">
���ǣ���Ȼ����
������Ȼ���ҵ����ѣ������и�ȱ�㣬���Ǿ�
��û���������ɾ�������ˡ���

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080230a13">
��Ҳ�����ڿ㡭����

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080240a00">
��ȱ�㻹�Ǹ����ĺá�
���ڿ�����ˡ���

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080250a13">
���Ҿ���������Ϊ���ѵ�����
�������ȳ����������������϶����Ҹ档��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080260a00">
���š���ȷ��Ӧ�Է�������

{	FwC("cg/fw/fw�����AȾ_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080270a00">
���������չ���ð�������衣��

{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080280a13">
�����ǰ�������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080290a07">
���ء������ء����������ء�����

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080300a13">
������ô����ˣ���

{	FwC("cg/fw/fw�衩��_�䵨.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080310a07">
����Ϊ�Ҵ��ĵ����!!
���ɶ�����ܾ���ȫ���綼����
����ȥ������!!��

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080320a13">
����ѽ��ѽ����
�����Ǹ����˵��ĵĲ����ڿ���Ů����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080330a00">
����ͬ�⡣
����˵�������ڿ��̬�С���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080340a13">
��ʲô�£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080350a00">
�������������ʲô�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
���ҰѲ���趪��һ�ߣ���������ѯ�ʡ�
���������ʳ�����֮ǰ�͵��������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/md03/0080360a00">
��������Ӧ�ò��������۴�����
�ڿ��뽡���Ĺ�ϵ�ļ���ɡ�����

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080370a13">
���š�
���䲻���಻Զ�ӡ����ɡ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080380a00">
������������

{	FwC("cg/fw/fw�衩��_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080390a07">
���Ų��ǣ����Ȳ���Ҳ���ӽ���
�����԰������벻Ҫ������ɱ��������
���������ѽ���!!��

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080400a13">
�������һȺ�����������ڿ�ʱ�������Ȼ���
���ȵĻ��������û����𣿡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080410a00">
���ᡣ��

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080420a13">
������л�����ͽ���ҵ����ۻ�ʮ��ʱ����ʲô
˳�򻭵Ļ����㻹�ǻ���û����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080430a00">
��������

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080440a13">
���ܻ���Ŷ����

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080450a13">
�����������ڵļ�ֵ����
����Ϊ����֮�����磬����������������
��������������

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080460a13">
���ܻ�������

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080470a13">
���������ǰ���
���������ѧ���ԻŶ����

{	FwC("cg/fw/fw�������_����.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080480a13">
�������ǻ�֮�⻹��ʲô��������ˡ�������

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080490a13">
��������˭����׷����ʵ���������Ǻ����ǻ�
��Ұ�ޡ�
�����Ǹ����鹹��ͬ����ʵ�ļ�ֵ�����丩��
ߵ�ݣ�Ұ�����õ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/md03/0080500a00">
�������ڽ����𣿡�

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080510a13">
��û����

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080520a13">
��Ҳ����˵�ڽ������ⶼ����⡣
���ڽ̲�����ߵ��ǻۻ�Ĳ����

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080530a13">
���ڽ̿���˵������ʷ��
����������ķ�������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080540a00">
��ԭ����ˡ�
���ڽ����ǻ���Ϸ�����𣿡�

{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080550a00">
���滬������

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080560a13">
��ȷʵ��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080570a00">
�����ǣ���������Ҳ������

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080580a13">
���ǰɣ���

//��΢Ц
{	FwC("cg/fw/fw�����AȾ_��Ц.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080590a00">
���ǡ�����

{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080600a13">
������������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080610a07">
������Ϊʲô������̸��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080620a00">
����ô���������ڽ����ڽ����ۻ���
���ʲô����

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080630a13">
����������������ۡ�
���Ѿ��ó������ˡ�����

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080640a13">
������������ڻ��ڸý��۶��ж�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080650a00">
��ʲô���ۣ���

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080660a13">
�������񡣡�

//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080670a13">
������Ϊ������鹹�������ַ���ϣ��������
���񡭡��������ϡ�
���õk<RUBY text="����������">�����һ��</RUBY>ʵ�ʴ��ڡ���

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080680a13">
���ն�����ͬ־��
���к������ˡ����һὫ����������
��Ϊһ�������¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080690a00">
����������
����û�������������

{	FwC("cg/fw/fw�������_ͨ��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080700a13">
���ֶ��򡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080710a00">
���ֶ��򡭡�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��<RUBY text="�ףϣ̣�">�ֶ���</RUBY>��
��������������Ŀ�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080720a13">
����Ҳ���Խ��ҽ��ڡ�
������Ŷ���ⲻ�ǰͶ�������ŷ�𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
	StCL(1000, @0, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	FadeStCL(1000, true);

	SetFwC("cg/fw/fw��霔�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0080730b37">
������������������
���ֶ�����ڡ���

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0080740b37">
����ӭ�ն����˹��ٴ˵ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md03/0080750a00">
�������Ͷ�������ŷ����

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0080760b37">
���ǽ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
��<RUBY text="�ã���������Σ���">����</RUBY>��
����������Ӧ�ѽ���������Ϊ�����˰�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�������_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080770a13">
�������˾�˵�����ÿ�ʼ�˰ɡ���

{	FwC("cg/fw/fw��霔�_ͨ��b.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0080780b37">
���ǡ�
����λ�����ἴ����ʼ����

{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080790a13">
����������
����ô�����Ǳߵ�Ůʿ�ǣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
���ոռ�����ֶ�����ڿ��Ž�������Ÿ���ʶ������
����ի�����ı��������ʵ���
����Ҳ����ͬ�������⡣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���@��

	StL(1000, @100, @0, "cg/st/st�@��_ͨ��_˽��a.png");
	FadeStL(300, true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������λ�����Ƕ�ʮ�����ҵ�Ů�ԡ�
����ò���㡭��ȴ����������ӡ��

��ͫ����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�@��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md03/0080800b28">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
��һ���Ĳ����ɵ�ģ����
�����۶��һ��ǶԽ��ڣ���û�а���ע��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��霔�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0080810b37">
�����Ǳ����²μӵĳ�Ա��
���ʹն�����һ������

{	FwC("cg/fw/fw�������_˼��.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080820a13">
��Ŷ��
����ô������ӭ����������ͬ���𣿡�

{	FwC("cg/fw/fw�������_Ц�.png");}
//��������ա�
<voice name="�������" class="�������" src="voice/md03/0080830a13">
����Ի͵����Ӱ�����

{	FwC("cg/fw/fw�@��_ͨ��a.png");}
//���@�ӡ�
<voice name="�@��" class="�@��" src="voice/md03/0080840b28">
��������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080850a07">
�����������������ˡ�
��̫���ˡ����л�Ҫ˵����

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0080860b37">
��ʲô�£���ܥԽ�н����ˡ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080870a07">
���������֮��
�����Ͼʹ�ܥԽ������Ϣ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������ߵ�����ի��ߣ������˼��仰��

������ĬĬ�����ꡣ
��Ƭ��֮�������ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0, "cg/st/st��霔�_ͨ��_˽��.png");
	StR(1000, @0, @0, "cg/st/st�衩��_ͨ��_˽��.png");
	FadeStL(300, false);
	FadeStR(300, false);

	SetFwC("cg/fw/fw��霔�_˼��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0080880b37">
��������������
�����β��ܵ�ȷΣ�ա���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080890a07">
�����������ȥ�S����
�����Ծ�������㡭����

{	FwC("cg/fw/fw��霔�_����.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0080900b37">
������Ľ����ҡ�
���һ�ѡ������֮�ˣ���ȥ����ġ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md03/0080910a07">
�����æ�ˡ���

{	FwC("cg/fw/fw��霔�_ͨ��a.png");}
//����霔ȡ�
<voice name="��霔�" class="��霔�" src="voice/md03/0080920b37">
������С�º���ҳݡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����ڳ���ի΢Ц֮ʱ����
���ƹ�Ϩ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se�ճ�_�Cе_�����å�ON", 1000);
	SetVolume("@mbgm*", 1000, 0, null);


//���������¡�������

	DeleteStA(1000,false);
	CreateColorEX("�\", 5000, "BLACK");
	Fade("�\", 1000, 700, null, true);

}

..//������ָ��
//�Υե����롡"md03_009.nss"