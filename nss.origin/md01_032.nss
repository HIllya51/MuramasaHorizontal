//<continuation number="680">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_032.nss_MAIN
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
	#bg022_ɽ��a_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_033vs.nss";

}

scene md01_032.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_031.nss"

//��bg022��
//���o�ϣ��P�У�
//���褿�褿
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm20",0,1000,true);

	CreateSE("SE01","se����_�z_�l����01");
	MusicStart("SE01",0,1000,0,750,Dxl2,false);
	StL(1000, @60, @10,"cg/st/3d����_����_ͨ��.png");
	Shake("@StL*", 300, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-60, @-10, DxlAuto, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320010a05">
�������ޡ�����

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320020a05">
�����ҡ�����Ū��������

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320030a05">
���������ô�����ġ���
���쵰������ܿ���ٻ������ֵ�ʿ������
����߹��򡭡�����

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320040a05">
���ꡭ������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320050a07">
����Ӵ��ү�ӡ���Ҫ��ô����ͷĥĥ����Ŷ��
����΢̧ͷ��һ���Ͽ�������
���ǳ���ɲ����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩��
	StR(1100, @0, @0,"cg/st/st�衩��_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320060a05">
�����������!!��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320070a07">
�������ʹ������۷�֮ս��ʼ��Ӵ����

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320080a07">
���š���Ȼ���ǹ������±Ƚ������ơ���
�����������¿��ǹ�������˵����ء�
�ѵ���ʲô����Ԥ�ϵ����𣿡�

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320090a05">
������һ��
����Ȼ������һ����

{	FwC("cg/fw/fw�衩��_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320100a07">
���ţ���

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320110a05">
���������Ǻŵ������𣡡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320120a07">
��Ҳ��������������
�����˵�ṩ������֮���Ļ���Ҳ���ǰɣ���

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320130a05">
��Ϊʲô!?
��Ϊ����Ҫ�����࣡��

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320140a05">
���кβ�������!?��

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320150a07">
���ţ�Ҳûʲô��
����ͦϲ����ү�Ӻ������޵�Ӵ����

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320160a05">
���ǣ������������ʲô״������

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320170a05">
�����������Ĺ��Ҫȡ����׼�����
����ι��������߱�����ﷸ�˵���˭��
��˵�����ˣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320180a07">
���Ǹ���������������ˡ�
��������������ж�֮���ء���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320190a05">
���������޳ܵ�˵�����ֻ�����
���������꾿���ڲ߻�ʲô��
���е����˳������

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320200a05">
��������ͯ�ĺ��л���ʨ�Ӻ𣬶����ǻ�
��������֮�µ��˰�����

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320210a07">
�����<RUBY text="����">�׵�</RUBY>����Ҳ
������һ��Ŷ��
����������������ү������˵����������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320220a07">
����ү�������������Ļ���������˵
һ��ô�Ҳû�С�
������ֻ�����Ӳ����鷳������

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320230a05">
������ʲô��
������Ϊ��Ҫ�Ӻ��࣡��

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320240a07">
����ʲôҲû����Ŷ��
���������ǹ������¡���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320250a05">
����������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320260a07">
�����Ǻš���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320270a05">
����������
���ǡ����꾿������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320280a05">
���µ�����겻����˵
������û���������ְɣ���

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320290a07">
���������������š�
����Ȼ������˵�в�ͨ�ء���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320300a07">
�����Ѿ������ֵز����ء�
������ʰ�òоֵĻ�����ȫ�������ġ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320310a05">
��������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320320a07">
����Ҳ�ܹ��������µĶ���Ŷ����

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320330a05">
��������ô���¡�
����������������׷����ħ���𣿡�

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320340a07">
�������������á���

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320350a05">
������Ц�ˣ�
������������н���ܥԽ����������

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320360a05">
��ָ��������ӵ��꣬Ϊ�λ�ȥ����
���޴�����!?��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320370a07">
�������޴���
���š�ȷʵ�޴�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320380a07">
��ֻ��<RUBY text="��������">����֮��</RUBY>��������Ϊ��Ҳ�������ġ�
����Ů����Ҳ�������ġ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320390a05">
����������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320400a07">
���ɾ�����˶���������
������ʲôҲ���������ߣ��һ���
��ϲ��������ʲô�ı�������

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320410a07">
�����ҹ����������ɲ��Ǳ�����
��һ�½���֮���߷����ֵȼ��ı�����
����ʷ�Ͽ���ǰ��δ�а�����

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320420a07">
�����ò����˴���ĵ���������
������Ҫ���ǣ�������������������Ŀ��
����ǰ���Ļ����ҵ�Ը��Ҳ��ʵ���ˡ���

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320430a05">
��Ը����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320440a07">
�����񡣡�

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320450a07">
����ϣ�������ܳ��֡���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320460a05">
����������
���꾹���������������Ի󡣡�

{	FwC("cg/fw/fw�衩��_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320470a07">
����˵�����������˵���Ǻ���ʵ������Ŷ��
��<RUBY text="��������">���ǻ쵰</RUBY>��һֱһֱ��
���߳�����ͣ�ء���

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320480a05">
���Ѿ����ˡ�
��������ȫ���������ʧ�ߡ�����

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320490a05">
�������������֮�����Ǵ��󰡡�
������������һ���һ��Ѫͳ��ʣ�µ���һ��
��������Ϻ��֮ѪҺ��Ҳ��ֻ�������ˣ���

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320500a07">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���P�Вi��
	CreateSE("SE01","se�M��_냇��_�i��01");
	MusicStart("SE01",0,1000,0,800,null,false);
	CreatePlainSP("�}��д", 5000);
	StL(1000, @0, @0,"cg/st/3d����_����_���L.png");
	FadeStL(0,true);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320510a05">
���������£�Ҳ���嵶������
�����Ʋ��������˵����𣿡�

{	FwC("cg/fw/fw�o��_��Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320520a05">
�����˼һ
��Ҫ�����һ�˲��طѹ��򣡡�

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320530a07">
��������ѽ������ˡ�
���һ���Ϊ����<RUBY text="������">֪����</RUBY>����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320540a07">
����̫�����������˰ɡ�
����˵�������Ļ���Ҳ����˵��
�ҵ�����ʲôҲ��֪������������

{	FwC("cg/fw/fw�衩��_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320550a07">
�����ǣ���Ȼ֪����ȴû�����ţ���

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320560a05">
������˵ʲô����

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320570a07">
���ҿɲ��ǰ��Ϻ����Ӵ����ү�ӡ���

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320580a05">
��������
���µ���񣬻������Ǳ��ӵĳ������  ��

{	FwC("cg/fw/fw�衩��_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320590a07">
����ѽ��
�������ɲ��С���

{	FwC("cg/fw/fw�o��_��Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320600a05">
��ȥ����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ��
//���ۥ磻�ȥ�����
//�������`��
//���ۥ磻�ȥ���
//���衩�衤���󤬼�⟻�
	CreateColorSP("�}ɫ�\Ļ", 5000, "#000000");
	Wait(1);

	CreateSE("SE01","se���L_����_Ұ̫�����01");
	MusicStart("SE01",0,1000,0,900,null,false);
	SL_rightdown2(5500,@0, @0,2000);
	SL_rightdownfade2(10);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01b","se���L_����_��ꪏ���03");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��Ļ", 6000, "#FFFFFF");
	CreateTextureSP("�}��", 5100, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Rotate("�}��", 0, @0, @180, @0, null,true);
	Shake("�}��", 300, 0, 10, 0, 0, 1000, Dxl2, false);
	Zoom("�}��", 300, 2000, 2000, Axl2, false);
	Fade("�}ɫ��Ļ", 300, 1000, null, true);

	WaitKey(500);

	StC(1000, @0,@0,"cg/st/st�衩��_���L_˽��.png");
	FadeStA(0,true);

	CreateWindow("�}��", 5000, 342, Middle, 340, 580, false);
	SetAlias("�}��","�}��");
	CreateTextureSP("�}��/�}�ݱ���", 5010, Center, Middle, "cg/bg/bg022_ɽ��a_01.jpg");
	SetShade("�}��/�}�ݱ���", HEAVY);
	Zoom("�}��/�}�ݱ���", 0, 2000, 2000, null, true);

	CreateTextureSP("�}��/�}�����}װ��", 5100, 120, -125, "cg/st/resize/st�衩��_���L_˽��l.png");

	Delete("�}��");
	Delete("�}ɫ�\Ļ");
	FadeDelete("�}ɫ��Ļ", 1000, true);

	Wait(1000);

	Move("�}��/�}�ݱ���", 3000, @120, 0, DxlAuto, false);
	Move("�}��/�}�����}װ��", 3000, 360, -223, DxlAuto, true);

	Wait(1000);

	CreatePlainSP("�}��д", 20000);
	Delete("�}��");
	FadeDelete("�}��д", 500, true);

	SetFwL("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320610a05">
����������ʲô!?��

{	FwL("cg/fw/fw�衩��_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320620a07">
���ٻ��ˣ���ͷ�ӡ���

{	FwL("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320630a07">
�������㰡��
�����ҵ�����������ȣ����������Ϊ��
�������ͷ�Ӱ�����

</PRE>
	SetTextEXL();
	TypeBeginTimeLIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ͻ���˥᣿
//�����ä��ꡣѪ��

	SetVolume("SE*", 100, 0, null);
	PrintGO("�ϱ���", 10000);
	CreateColorSP("�}ɫ�\��", 50, "#000000");
	Delete("�ϱ���");
	CreateSE("SE01","se���L_����_���03");
	MusicStart("SE01",0,1000,0,1200,null,false);

	CreateTextureSPadd("�}����", 1100, Center, Middle, "cg/ef/ef043_צ����.jpg");
	CreateTextureEX("�}��", 1010, Center, Middle, "cg/ef/ef043_צ����.jpg");
	CreateTextureSP("�}����", 1000, Center, Middle, "cg/ef/ef043_צ����.jpg");
	Zoom("�}����", 0, 1200, 1200, null, false);
	Fade("�}��", 0, 500, null, true);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);
	FadeDelete("�}��*", 200, true);

	CreateSE("SE01b","se���L_����_���̤���05");
	MusicStart("SE01b",0,1000,0,1200,null,false);
	SL_centerdamN(@0, @0,1000);
	SL_centerdamfadeN2(10);

	SetFwC("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320640a05">
����������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320650a07">
��ʢ�߱�˥�ǳ���
����ͷ����Ҳ��Ϊ�������⡭����

{//��Ц��
	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0320660a05">
����������
����֮���ˡ�����Ȼ�����Լ����Ե�����ô!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	CreateSE("SE01","se���L_�n��_�zܞ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	WaitKey(500);

	PrintGO("�ϱ���", 5000);

	OnBG(100,"bg022_ɽ��a_01.jpg");
	StL(1000, @0, @0,"cg/st/st�衩��_���L_˽��.png");
	FadeBG(0,true);
	FadeStL(0,true);

	FadeDelete("�ϱ���", 1000, true);

	SetFwC("cg/fw/fw�衩��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320670a07">
������������

{	FwC("cg/fw/fw�衩��_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/md01/0320680a07">
������Ŷ��
��<RUBY text="�Ǳ�">�Ͽ�</RUBY>Ҳ�պ���Ϣʱ�䰡����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(1000, 1000);

}

..//������ָ��
//�Υե����롡"md01_033vs.nss"