//<continuation number="1110">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_030.nss_MAIN
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
	#bg031_��ᦌm����_01=true;
	#ev216_�⽵�R_a=true;
	#ev216_�⽵�R_b=true;
	#ev216_�⽵�R_c=true;
	#ev216_�⽵�R_d=true;
	#ev216_�⽵�R_e=true;
	#ev932_�y�Ǻ���ȭͻ��_a=true;
	#ev932_�y�Ǻ���ȭͻ��_b=true;
	#ev959_���ДؓĚ���=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_031.nss";

}

scene md01_030.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_029vs.nss"


//���Y�ε���
	PrintBG("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	CreateTextureEXover("�}�ݱ�����", 4100, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	Fade("�}�ݱ���*", 0, 750, null, true);
	Shake("�}�ݱ�����", 3600000, 8, 0, 0, 0, 1000, null, false);
	CreateTextureSPmul("�}����", 4000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	CreateColorSP("�}ɫ��", 1000, "#990000");
	CreateSE("SE01","se���L_����_���ϕN01");
	CreateSE("SEL01","se���L_����_��ͻ�M05");
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SEL01",2000,800,0,1000,null,true);
	FadeDelete("�}��ܞ", 1000, true);

	SoundPlay("@mbgm12",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������Ծ����ε���
����ֻ����һ�㣬����ȷ�ǳ��ˣ��Ҽ����ߡ�

����·�ѱ��⡪���������ʱ��
��ѹ�Ƶ��˵ķ���ս�������㱻�Ƶ���Ͷ��·ʱ��
Ψһ�ĳ����ҲӦ�������

�����ǡ�����ʲôʱ��

�����������ǻ�������ʱ����ʱ����!?

�������Ǵο���ȥȷʵ����ͼ�����ģ�
��ʵ���ϣ���Ϊ��ȷ����·���ж���!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/md01/0300010a00">
��ս�֡�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������ˡ�
������ս������ȴ�����������

������Ѹ�ٽ����˼���ģ�ֻ���ҡ�
���з�ֻ�������¿ռ����룬���ܴﵽ
ʤ����������

�������������ˡ�

��������������˵��û�������ǵĴ�����ʵ���¡�
����������ʶ����Ϯ������Σ������������£�
���ܱ�������侲��

�����������ǳ���������ϵ��Ĳ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��׷��
	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="��������" src="voice/md01/0300020a01">
��������������ȥ�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�������Ľ��д�������ҧ���гݰ㡣

��û�ܸ��ϡ�
�������������ӵ����档

���ڵ����ϣ�һ�ھ�����ʿ��ӭ�����ǵ�������
��Ҫͻ�����������俳ɱ�����ǲ����ܵġ�

����ˣ�������Ǻá�

���ҵ����á�
����������!?

������������!?

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/md01/0300030a00">
���������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("SEL*", 1000, 0, null);
	CreateSE("SE01","se���L_����_��ͻ�M03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ��", 5000, "#FFFFFF");
	FadeDelete("�}�ݱ�����", 300, false);
	Fade("�}ɫ��", 600, 1000, Dxl2, false);
	Zoom("�}����", 600, 3000, 3000, Axl2, true);

	WaitKey(2000);

//����ᦌm����
//��ͨ����ʾ��˥�åɥޥ���
	PrintGO("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#FFFFFF");
	CreateTextureSP("�}����", 100, Center, Middle, "cg/bg/bg031_��ᦌm����_01.jpg");
	Delete("�ϱ���");
	SetVolume("SE*", 1000, 0, null);
	FadeDelete("�}��ܞ", 1000, true);

	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}ɫѪ", 5000, "#CC0000");
	CreateTextureSPmul("�}����", 100, Center, Middle, "cg/bg/bg031_��ᦌm����_01.jpg");
	CreateColorSP("�}ɫѪ��", 50, "#CC0000");
	FadeFR2("�}����",0,1000,300,0,0,20,DxlAuto, false);
	FadeDelete("�}ɫѪ", 1000, true);

	SetFwC("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300040a05">
��������

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300050a05">
����ô�ˡ������ǡ�����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/md01/0300060a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��ʬ���Ұ��

��ʿ����
�����ߡ�
���̳���
����١�

���ڵ����ϵ�Ļ�����ˡ���ᦹ��������ˡ�
���޲��أ�����ƽ�ȵأ���������ν
����ͬһ���ˡ�

�������Ѳ������ڡ�
��������ƽ�ȵأ����ֳ�һƬƽ�������硣

�������Ǳ�ԭ��
�������Ļ�Ұ��

��ʼĩ���档
����������ľ�ֹ���硣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="��������" src="voice/md01/0300070a01">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����з����ɺԵ���������ʹ��ע�⡣

��ԼĪ����Ұ�����롣
���������ع���Ĵ���ţ���������ڴˡ�

������ʱ�˵����������Ķ�����
��������Ҫ�����⾰������ʾ��һ�У��������еض���

�������⸱�⾰��ɲ�Ǽ�������ס�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/md01/0300080a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��������Ρ�

���������ǽ�׵�ָ�⡪��
�������ǽ��޵����ݡ�

����������֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300090a05">
�����ǡ��������֣���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300100a05">
���������ʲô������ʲô���ˣ�
���������������ô��!?��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţ֣�ʮ���g���ι�
//���ݳ�
	CreateTextureEX("�}�ţ���", 4020, -650, -540, "cg/ev/resize/ev216_�⽵�R_al.jpg");
	Move("�}�ţ���", 3000, -1010, -330, DxlAuto, false);
	Fade("�}�ţ���", 1000, 1000, null, true);

	WaitKey(1000);

	SetNwL("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//���⡿
<voice name="��" class="��" src="voice/md01/0300110a14">
���������������衣
������������Ŵء���

//���⡿
<voice name="��" class="��" src="voice/md01/0300120a14">
��ֱ����˺�ʱ�顣
��������

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ݳ�
	CreateTextureSP("�}�ţָ�", 4010, -480, -340, "cg/ev/resize/ev216_�⽵�R_al.jpg");
	Move("�}�ţָ�", 2000, -555, @0, DxlAuto, false);
	FadeDelete("�}�ţ���", 1000, true);

	WaitKey(1000);

	SetNwR("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���⡿
<voice name="��" class="��" src="voice/md01/0300130a14">
��ս����ӭ���սᣬ
��Щ��������ָ������������⡣
�������ҿ������������塣��

//���⡿
<voice name="��" class="��" src="voice/md01/0300140a14">
���ѵ����Ϻ���Ķ������ҹ��衣
����������ԭ�����վ���һ֦����ע��������
����������������ɢ��ɡ���

//���⡿
<voice name="��" class="��" src="voice/md01/0300150a14">
������ȥ��ϧ���䣬�����ٴ����žͺá�
��������㵱���֣�
����һ����֮ǰ��Ϊ�������赸�ɡ���

//���⡿
<voice name="��" class="��" src="voice/md01/0300160a14">
����Ҫ�ܾ�Ŷ������������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ǡ������ǣţ�ȫ���񤫡�
	CreateTextureSP("�}�ţ�", 4000, Center, Middle, "cg/ev/ev216_�⽵�R_a.jpg");
	Move("�}�ţָ�", 3000, -512, -288, Dxl2, false);
	Zoom("�}�ţָ�", 3000, 500, 500, DxlAuto, true);
	FadeDelete("�}�ţָ�", 5000, false);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
������ȫ�����˴��졣
�������ձ�ֱ�س����ҡ�

���⡣

�������Ѿ����겻����
������������̬��˿����������

���������������е�������û�иı䣬
˼������ȥ��ʱ�������䣬�������⡣
���������Ҹе�һ��ʧ����Υ�͸С�

��Ϊ��û��һ˿�ı䣿
��Ϊ�λ������յ�����

��������ˣ�����Ӧ���ܸı�����ò�����ҵĳ̶ȣ�

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/md01/0300170a00">
���⡪����

{	FwR("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300180a05">
�����ش����𣡡�

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���ҵĵ������һ�����ŭ�����ڸǡ�
���ţ���һ���ɻ�ؽ�����Ͷ���Ǳߡ�

���Ǳ���֮����Ĵ��졣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���⡿
<voice name="��" class="��" src="voice/md01/0300190a14">
��ʲô�¡�
��������ʲôҪ���£��벻Ҫ��������
����Ի�����

{	FwR("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300200a05">
�������ꡢ
����δ���������ڵ�״����!?��

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����ҵķ��Ա���϶��е������Ĺ⣬
�Լ���������ƶ�������ֵ�������Ԫ˧��
�����ߵ��������������������

�������ͱڵ��Ϸ����·���

��ֻ�ǡ������Ϸ����ӵĹ��ܿ��廤�ϼ��������һ�У�
���·��Ļ��ϣ�ֻ������һƬ��Į����ա�

�����컹δ���<RUBY text="��������������������">��Ŀǰ��˵��Ҫ�Ķ���</RUBY>��

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw�o��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300210a05">
���ǳ����Ļ���
�����������У�������ʲô��û��������

{	FwR("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300220a05">
���ش�������⣡
���⵽����������״��!?��

{	FwR("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300230a14">
����ν����������������֮����
����Ϊ�ƻ�֮�ǳ������Ǳ���������
�����㿴�����ۡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�������ȿ����ң����ǿ��еؽ�˵�� 
��Ȼ��ת����졣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_�Ñ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���⡿
<voice name="��" class="��" src="voice/md01/0300240a14">
���Ҹɵ��ˡ���

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300250a05">
��ʲô!?��

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300260a14">
����
����������̸����ȥ�ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
����֪�ιʣ���ת������������˵����

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���⡿
<voice name="��" class="��" src="voice/md01/0300270a14">
���㲻���ʿ�����Щ�˵���˭��
������˵���Ǿ����ҡ���

{	FwR("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300280a05">
�������껹�����𣿡�

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300290a14">
��ͻȻ��ô˵����ʧ��ɡ���

{	FwR("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0300300a00">
����������ô˵�ǵ�Ȼ�İɡ���

</PRE>
	SetTextEXR();
	TypeBeginRIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����Ϊ�����������
����Ϊ����û�������

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���⡿
<voice name="��" class="��" src="voice/md01/0300310a14">
��������ô˵�һ����˵ġ�����

{	FwR("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300320a05">
������������Ū����!?��

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300330a14">
���淳���鷳�����ˡ���

{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0300340a15">
��Ҫ����Ļ����е����öԷ�ûʲô���ԡ���

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300350a14">
��Ϊʲô����

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300360a05">
��������Ϊ��
��˵�λ�Ҳ�ò���˰ɡ�����һ�
������������������������

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300370a14">
��������Ȼ������

{	FwR("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300380a14">
����������
���Ӹղ��𣬾���һ����˵����ͣ����

{	FwR("cg/fw/fw����Ů��ρ_ͨ��.png");}
//������������
<voice name="��������" class="��������" src="voice/md01/0300390a15">
����Ϊ��ѶԷ���һ<RUBY text="����">����</RUBY>�Դ���
��ϸ�ڷ�����ʵ�������ȥ�ɡ���

{	FwR("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300400a14">
������������Ҳ�ϲ����
���������Լ����Ǳ��ˡ���

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300410a05">
���꣬����������

{	FwR("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300420a14">
������û�취�ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ţֲ�֣�����������Ů��ρ�����F
	CreateSE("SE01","se���L_����_��ͻ�M02");
	CreateTextureEX("�}�ţ֣�", 4100, Center, Middle, "cg/ev/ev216_�⽵�R_b.jpg");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}�ţ֣�", 1000, 1000, null, true);

	SetFwR("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���⡿
<voice name="��" class="��" src="voice/md01/0300430a14">
���ʹ�<RUBY text="����">�Ǳ�</RUBY>��ʼ����ɡ�
���������죬���������䡣��

{	FwR("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300440a05">
��ʲô��������

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300450a14">
����������Ҳ�������⡣
�����¹⣬Ҫ���ʰ�������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣�ρ���ѩ`�ķֽ⡣װ�ץ��������
	PrintGO("�ϱ���", 30000);
	CreateColorSPadd("�}��ܞ", 15000, "#FFFFFF");
	CreateTextureSP("�}�ţ֣�", 4000, Center, Middle, "cg/ev/ev216_�⽵�R_c.jpg");
	CreateSE("SE01","se����_�z_װ��03");
	Delete("�ϱ���");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
�������ſ����ֱۡ�
��΢Ц����ǡ�

���ӿ��б�֯�����ľ䡣

</PRE>
	SetTextEXR();
	TypeBeginRI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwR("cg/fw/fw��_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//���⡿
<voice name="��" class="��" src="voice/md01/0300460a14">
������ն����

//���⡿
<voice name="��" class="��" src="voice/md01/0300470a14">
�����߱�𡣡�

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����֣�װ�ץ��������
	CreateTextureSP("�}�ţ֣��", 3990, Center, Middle, "cg/ev/ev216_�⽵�R_d.jpg");
	FadeDelete("�}�ţ֣�", 1000, true);

	SetFwR("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300480a05">
����������ɫ�Ľ��С�������

{	FwR("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300490a05">
���ꡪ���ѵ��ǡ�����

{	FwR("cg/fw/fw��_��˼.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300500a14">
������֮����

{	FwR("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300510a14">
�������ڴ�!!��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
//���y�Ǻ�
	CreateSE("SE01","se����_�z_װ��02");
	MusicStart("SE01",0,1000,0,700,null,false);
	PrintGO("�ϱ���", 5000);
	CreateColorSPadd("�}�ե�", 5000, "#FFFFFF");

	CreateTextureSP("�}�ţ֣�", 3980, Center, Middle, "cg/ev/ev216_�⽵�R_e.jpg");
	FadeDelete("�}�ţ֣�", 600, true);

	StR(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��b.png");
	FadeStR(0,true);
	OnBG(100,"bg031_��ᦌm����_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 600, true);
	WaitKey(2000);
	FadeDelete("�}�ե�", 2000, true);

//���£ǣͣ��y�Ǻ�
	SoundPlay("@mbgm01",0,1000,true);

	SetFwR("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300520a05">
���������Ǻ�!?��

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300530a05">
���꼴����ɱ¾��ħ������
��ô����

{	FwR("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300540a05">
��������ô��
��ͳ����֮���ǡ�����

{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300550a14">
�����죡
����Щ΢���������֮����˵�ɣ���

//���⡿
<voice name="��" class="��" src="voice/md01/0300560a14">
�����ڣ���Ҫ������ĸ�������

{	FwR("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300570a05">
��ʲô��������

{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300580a14">
���������ϡ�
����������������֮�ˡ�
�͹�׷Ѱͬһ��·֮�ˡ���

//���⡿
<voice name="��" class="��" src="voice/md01/0300590a14">
��������ڳư�֮����ǰ�����ұ�ʾ���⡣
��հ������Ӱ������ָ�̡���

//���⡿
<voice name="��" class="��" src="voice/md01/0300600a14">
��������Ϊ�ưԣ���

{	FwR("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300610a05">
������������

{	FwR("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300620a14">
��û�е���ش��ϰɡ���

{	FwR("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300630a05">
����������
����ÿ��Ҫ���α�����ѯ�ʳư�֮��������

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ֣�", 1000, true);

//���y�ǺŤ��P�С�����
	CreateSE("SE01","se����_����_�z�i��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	StL(1000, @-30, @0,"cg/st/3d����_����_�i��.png");
	Move("@StL*", 300, @30, @0, null, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�o��_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300640a05">
����֪����Ϊ��ô����ɫ�Ĺ����

{	FwC("cg/fw/fw�y�Ǻ�_ͨ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300650a14">
������

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300660a05">
���Ǿ͸�֮����!!
�����������Ӷ�!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ؓġ��ʤ󤫱ؚ����äݤ�
//�������ɩ`��
	CreateColorSP("�}ɫ�\", 6000, "#000000");

	CreateSE("SE010","se����_늓�_���01");
	CreateTextureSPadd("�}������̫����", 3110, Center, InBottom, "cg/ev/ev959_���ДؓĚ���.jpg");
	CreateTextureSP("�}������̫��", 3100, Center, InBottom, "cg/ev/ev959_���ДؓĚ���.jpg");
	SetVertex("�}������̫��*", center, bottom);
	Zoom("�}������̫��*", 0, 2000, 3000, null, true);
	SetBlur("�}������̫��*", true, 2, 500, 60, false);

	MusicStart("SE010",0,1000,0,600,null,false);
	Zoom("�}������̫��*", 400, 1000, 1000, Dxl2, false);
	Move("�}������̫��*", 400, @0, -160, Dxl2, false);
	Fade("�}ɫ�\", 300, 0, null, true);
	FadeDelete("�}������̫����", 200, true);

	CreateSE("SE01b","se���L_����_���������ؓ�");
	CreateSE("SE01c","se���L_�Ɖ�_���k08");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	MusicStart("SE01c",0,1000,0,1000,null,false);

	DeleteStA(0,true);

	CreateColorSPadd("�}ɫ��", 4990, "#FFFFFF");
	Fade("�}ɫ�\", 300, 0, Axl2, true);

	Delete("�}ɫ�\");
	Delete("�}����*");

	CreateTextureEXsub("�}������", 100, Center, Middle, "cg/bg/bg031_��ᦌm����_01.jpg");
	SetVertex("�}������", center, bottom);
	Fade("�}������", 0, 700, null, true);
	Zoom("�}������", 0, 1000, 2000, Axl2, true);
	SetBlur("�}������", true, 3, 300, 100, false);

	Shake("�}������", 1500, 0, 10, 0, 0, 500, null, false);
	FadeDelete("�}ɫ��", 1000, false);
	Zoom("�}������", 1500, 1000, 1000, Axl2, false);
	FadeDelete("�}������", 2000, false);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//��������
<voice name="����" class="����" src="voice/md01/0300670a00">
����!?��

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300680a05">
�������õ����¡�
����ˣ��Ӷᡣ��

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300690a05">
��������㣡
����֮�����������ã�ֻҪ���谭��֮��·��
Ψ�н����������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0300700a01">
������������

{	FwC("cg/fw/fw�o��_��Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300710a05">
�����е���̫���ܽ���������ò�����������

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300720a05">
�����Ļ��Ǳ�ڰ�ҹ��Ѫ֮�£�����
����һ����
����������ǰ��˺����޳ܡ������Ը�
Ҳ���и��̶ȣ���������˶���!!��

{	NwC("cg/fw/nw��.png");}
//�����ʤ�
//���⡿
��
<voice name="��" class="��" src="voice/md01/0300730a14">
��������������ԭ����ˡ�������������

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300740a05">
��������!?��

{	NwC("cg/fw/nw��.png");}
//�����ʤ�
//���⡿
��
<voice name="��" class="��" src="voice/md01/0300750a14">
������ν�ԣ������ᡣ
������ȫû�����顣����ȷ�����ˡ���

//�����ʤ�
//���⡿
��
<voice name="��" class="��" src="voice/md01/0300760a14">
���������������¹�Ҳ��ȫ��ͬ����

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300770a05">
������������

{	NwC("cg/fw/nw��.png");}
//�����ʤ�
//���⡿
��
<voice name="��" class="��" src="voice/md01/0300780a14">
������һ��һ����õ���͡�
����Ҳ�����Լ��Ĵ���ȥ׷���𣡡�


//�����ʤ�
//���⡿
��
<voice name="��" class="��" src="voice/md01/0300790a14">
����������ô��õ���������𣿡�

{	FwC("cg/fw/fw�o��_΢Ц.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300800a05">
�������ߡ�
�����㲻�Ǵ��Ҳû��ϵ����

{	NwC("cg/fw/nw��.png");}
//�����ʤ�
//���⡿
��
<voice name="��" class="��" src="voice/md01/0300810a14">
������������������������

{	FwC("cg/fw/fw�o��_ͨ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300820a05">
��ֻ�Ǵ������ڴ�ͣ���˾��ưԴ�Ͷ��ѡ�
���ڱ�Ĺ���Ҳ����ν����

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300830a05">
��ֻҪ���ܽ������ҵ�ĵط�������

{	NwC("cg/fw/nw��.png");}
//�����ʤ�
//���⡿
��
<voice name="��" class="��" src="voice/md01/0300840a14">
������������������������

{	FwC("cg/fw/fw�o��_ŭ��.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300850a05">
�������㵽����ȥ�ˡ�����
��������ɣ�����!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ʤ�
//����ե����
	SetNwC("cg/fw/nw��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���⡿
��
<voice name="��" class="��" src="voice/md01/0300860a14">
<FONT size="24">����ô˵�������ް��İ�!!��</FONT>

</PRE>
	SetTextEXC();
	Move("$SYSTEM_present_text", 0, 566, 134, null, true);
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�Ǻ��w��
	CreateSE("SE00","se����_��x_�k��01");
	MusicStart("SE00",0,1000,0,1000,null,false);
	CreateTextureSPadd("�}����", 3100, Center, Middle, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_am.jpg");
	CreateTextureSP("�}��", 3000, Center, Middle, "cg/ev/resize/ev901_�y�Ǻ�����ʧ��С����_am.jpg");
	Rotate("�}��*", 0, @0, @180, @0, null,true);
	Request("�}��*", Smoothing);
	Zoom("�}����", 0, 1200, 1200, null, false);

	Zoom("�}����", 200, 1000, 1000, Dxl2, false);
	Shake("�}��", 500, 0, 10, 0, 0, 1000, Dxl3, false);
	FadeDelete("�}����", 200, true);

//���ɤ��`�󡣱���
//���ʤ󤫤�`�櫓�狼��ͩ`�Ф�
	SetVolume("SE*", 300, 0, null);
	CreateSE("SE01","se���L_�Ɖ�_���k09");
	MusicStart("SE01",0,1000,0,1000,null,false);

	Delete("�}��*");

	CreatePlainEX("�}����", 5000);
	Fade("�}����", 0, 500, null, true);
	SetBlur("�}����", true, 3, 500, 100, false);

	Shake("�}����", 300, 0, 300, 0, 0, 1000, Dxl2, true);
	Zoom("�}����", 300, 1500, 1500, Dxl2, false);
	Shake("�}����", 300, 0, 300, 0, 0, 1000, Dxl2, true);

	CreateSE("SE01b","se���L_�Ɖ�_���k07");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 300, 1000, null, false);
	Shake("�}����", 300, 1200, 0, 0, 0, 1000, Dxl2, true);
	Delete("�}����");

	SetFwC("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300870a05">
��Ŷ!?��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/md01/0300880a00">
��ʲ������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����`��
//���y�ǺŤ�ŭ��
	StR(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	FadeStR(0,true);
	Fade("�}ɫ��", 1400, 0, null, false);
	DrawDelete("�}ɫ��", 6000, 100, "effect_01_00_0", true);

	SetFwC("cg/fw/fw��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//���⡿
<voice name="��" class="��" src="voice/md01/0300890a14">
�������ҡ���̫ʧ���˰���
����ô��������˵���Ҿ����Ǹ���������

//���⡿
<voice name="��" class="��" src="voice/md01/0300900a14">
��������ٵİ�ҵ�����������İ�ҵ����

{	FwC("cg/fw/fw�o��_����.png");}
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300910a05">
���ء�����Ȼ����!?
�������ܣ���

//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300920a05">
�����˺��ˡ�����

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300930a14">
���ú�����˵��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɩ`��
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se���L_�n��_�nͻ01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateTextureSP("�}���n��", 4000, Center, Middle, "cg/ef/ef044_��c.png");
	Shake("�}���n��", 300, 4, 0, 0, 0, 1000, null, false);
	Rotate("�}���n��", 200, @0, @0, @360, null,false);
	Zoom("�}���n��", 300, 2000, 2000, Dxl2, true);

	CreateSE("SE02","se���L_����_⟱ڴ����w�Ф�");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateColorEXadd("�}ɫ��", 5000, "#FFFFFF");
	Fade("�}ɫ��", 300, 500, Dxl2, false);
	Zoom("�}���n��", 300, 2000, 4000, null, true);

	Fade("�}ɫ��", 300, 1000, Axl2, true);
	Delete("�}���n��");

	StR(1000, 30, -280,"cg/st/3d�y�Ǻ�_����_���Lb.png");
	FadeStR(0,true);
	WaitKey(200);

	StL(1000, @0, @0,"cg/st/3d����_����_�i��.png");
	FadeStL(0,true);
	Shake("@StL*", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-30, @20, DxlAuto, false);

	FadeDelete("�}ɫ��", 2000, false);

	SetFwC("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0300940a05">
������!?��

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300950a14">
���ưԾ����Ӷᡣ
�����������ȷ����

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300960a14">
������Ϊ��Ҫ�Ӷ᣿
����������Ϊ���������󣡡�

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300970a14">
��Ϊ��Ҫ����
��������Ϊ�������Կ��󣡡�

//���⡿
<voice name="��" class="��" src="voice/md01/0300980a14">
�������������Ӷᣡ
������ǳư�֮��!!��

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0300990a14">
���������ϣ�
��������һ�����Ѿ�����!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܩ`��
	SetVolume("SE*", 100, 0, null);
	CreateSE("SE01","se���L_����_�z��������03");
	CreateSE("SE01b","se���L_�Ɖ�_���k02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	CreateTextureSP("�}��", 4100, Center, Middle, "cg/ev/ev932_�y�Ǻ���ȭͻ��_b.jpg");
	SetBlur("�}��", true, 3, 500, 100, false);
	Shake("�}��", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Fade("�}ɫ��", 300, 0, null, true);

	Fade("�}ɫ��", 300, 1000, null, false);
	Zoom("�}��", 300, 1500, 1500, null, true);

	Delete("�}��");

	StR(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_���L.png");
	Request("@StR*", Smoothing);
	Rotate("@StR*", 0, @0, @180, @0, null,true);
	FadeStR(0,true);
	Shake("@StL*", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 600, @-30, @20, DxlAuto, false);

	FadeDelete("�}ɫ��", 1000, false);

	SetFwC("cg/fw/fw�o��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//���o�ϡ�
<voice name="�o��" class="�o��" src="voice/md01/0301000a05">
����������!?��

{	FwC("cg/fw/fw��_����.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0301010a14">
��������û�а���
�Ǿ�û��������
��̸���ϳưԣ�
�����������٣���

{	FwC("cg/fw/fw��_ŭ��.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0301020a14">
���㰡��
��ֻ����������
���������£�����Զ�������Ѱ�!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ǥ�����һ�k
//�������w���P��
//���ɤä�������������ɩ`��
	CreateSE("SE01","se���L_����_�z��������02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}ɫ�\", 5000, "#000000");
	CreateTextureSP("�}��", 4000, -30, -990, "cg/ef/resize/ef042_���ô��tl.jpg");
	Zoom("�}��", 0, 1000, 5000, null, true);
	SetBlur("�}��", true, 3, 500, 100, false);
	Fade("�}��", 0, 1000, null, true);

	CreateTextureEX("�}�ݴ�ĵ�", 4010, Center, Middle, "cg/ef/ef040_�����nͻ.jpg");
	Fade("�}�ݴ�ĵ�", 0, 500, null, true);
	FadeDelete("�}�ݴ�ĵ�", 400, false);
	Shake("�}�ݴ�ĵ�", 200, 10, 40, 0, 0, 1000, Dxl3, false);
	Zoom("�}�ݴ�ĵ�", 200, 3000, 3000, AxlDxl, false);
	FadeFR2("�}��",0,1000,300,0,0,120,Dxl2, true);

	CreateSE("SE01b","se���L_����_�z_�����w��02");
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}ɫ�\", 600, 1000, null, false);
	Move("�}��", 300, 0, 4032, AxlDxl, true);

	Wait(300);

	CreateTextureEX("�}����", 18000, Center, Middle, "cg/bg/bg001_��a_01.jpg");
	Fade("�}����", 1000, 1000, null, true);

	WaitKey(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
�����С���
�������������ϣ�������<RUBY text="��������">����ĳ��</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg031_��ᦌm����_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��.png");
	Rotate("@StL*", 0, @0, @180, @0, null,true);
	Request("@StL*", Smoothing);

	FadeDelete("�ϱ���", 500, true);
	Wait(500);
	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//��������
<voice name="����" class="����" src="voice/md01/0301030a00">
����������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0301040a01">
����������������

{	FadeStL(300,false);
	FwC("cg/fw/fw��_ͨ��b.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0301050a14">
������
���޶��˷ѹ��򡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
�����Ǻ������³������֡�
������˫�ۣ�һ�������ģ����

��һ�κ���������ʴ𡪡�ֻ�ܿ������˵����ϡ�
������û��¶��<RUBY text="����">ս��</RUBY>��ĺۼ���

��ʵ��״����ǰ����֪�������С����Ŵ����
��������֮�����ɡ��򵹸�ǿ���߶���Ϣ˿�������ҡ�

�����Ǻš�

��ħ�
������Ҳ��ܴ������Ǻš�

�����������˰���Դ����ж����������״���� 

�����ǣ���Ӯ��
�������ʵ��������Ĺ���ս������Ӯ��

��ƾ�ҵ���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//��������
<voice name="����" class="��������" src="voice/md01/0301060a01">
��������������

{	FwC("cg/fw/fw����_���L.png");}
//��������
<voice name="����" class="����" src="voice/md01/0301070a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
����Ȼ��������Ϥ�¶ȡ�
������˼��Ŀɿ��С�

���Ҳ����¶���
�������ԡ�û��

�����ԡ�
���ҡ������ǿ���ս����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������ݳ��������Ǥδ�������ǰ���ݳ�����Τ�Bu�Ĥʻ������ǜʂ䡹
	CreateSE("SE01","se����_����_�z�i��03");
	StR(1000, 100, -440,"cg/st/resize/3d�����˜�_����_ͨ��m.png");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Move("@StR*", 300, @-60, @0, DxlAuto, false);
	FadeStR(300,false);

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/md01/0301080a00">
���⣡��

{	FwC("cg/fw/fw��_ͨ��a.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0301090a14">
������Щ���ĵ��£�����õ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���y�ǺŤȴ���
	SetFwC("cg/fw/fw��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//���⡿
<voice name="��" class="��" src="voice/md01/0301100a14">
������������˴˽��е�״�������
�����ʲô���á���

{	FwC("cg/fw/fw��_�Ñ�.png");}
//���⡿
<voice name="��" class="��" src="voice/md01/0301110a14">
�������������ܰɾ�����
���໥���ᡢ�໥���󡢳����Է���һ�аɣ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
�����ŵĿ����ƺ�������ȴ�������õ�˵����
���Ǹ���˵ϣ����ս������Ϊ��ƽ��������
����Զȥ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



}

..//������ָ��
//�Υե����롡"md01_031.nss"