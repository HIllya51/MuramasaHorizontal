//<continuation number="810">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md04_032.nss_MAIN
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
	#bg009_�`�}סլ��a_01=true;
	#bg018_֪�̄���_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md04_033.nss";

}

scene md04_032.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md04_031.nss"

//���`�}
//��˾�
//�������奢���
//�������

	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 5000, "BLACK");
	OnBG(100, "bg013_�`�}���a_01.jpg");
	FadeBG(0, true);

	SoundPlay("@mbgm21", 0, 1000, true);

	Delete("�ϱ���");
	FadeDelete("�\Ļ��",1500,true);

	WaitKey(1500);

	OnBG(101, "bg018_֪�̄���_01.jpg");
	FadeBG(2000, true);

	Wait(500);

	StR(1000, @0, @0, "cg/st/st�����奢���_ͨ��_˽��.png");
	FadeStR(300, true);


	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320010b25">
���ǣȣ��ڲ������Σ���

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å�
	DeleteStR(150,true);

	CreateTextureEX("�����奢���", 1000, -40, -70, "cg/st/resize/st�����奢���_ͨ��_˽��ex.png");
	Request("�����奢���", Smoothing);
	Zoom("�����奢���", 0, 900, 900, null, true);

	SetVertex("�����奢���", 520, 288);
	Zoom("�����奢���", 150, 1000, 1000, Dxl1, false);
	Move("�����奢���", 150, @0, @13, Dxl1, false);
	Fade("�����奢���", 150, 1000, null, true);

	SetFwH("cg/fw/fw�����奢���_�Ф�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320020b25">
������������?!��

{	FwH("cg/fw/fw����֦_����å�b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320030a03">
������������

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������

	Zoom("�����奢���", 150, 900, 900, Axl1, false);
	FadeDelete("�����奢���", 150, true);

	StR(1000, @0, @0, "cg/st/st�����奢���_ͨ��_˽��.png");
	StL(1000, @0, @0, "cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(300, false);
	FadeStR(300, true);

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320040b25">
�������ˣ���

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320050a03">
���ţ�������ǵġ�
������ȷʵ������ɢ����

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320060a04">
����Ϊά���ٽ��Ϳ�ũ����ͻȻʧ�٣�
�������������δ���ָ�ӡ�
�����ҵ�Ȼ���ɱ��⡣��

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320070a03">
��Ҳû���˽�������¡���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320080b25">
������ȷ��û�취���¡�
�����ǣ�<RUBY text="����">����</RUBY>���൱���׹ܡ���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320090b25">
���´�½�������ڣǣȣ�֮�е�����͸������
�̶ȡ����ڵ������֮ǰ������ʵ��̫Σ���ˡ���

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320100a03">
���ǵģ���ȷ��ˡ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320110b25">
������״���ԣ�������Ȼ�ڲ����ͻ����м尾��
ȴҲ�������ڱ�������

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320120a04">
��������ˡ�
����ʱ�����������ڡ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320130b25">
����<RUBY text="����">פ����˾���</RUBY>��ϵ�����𣿡�

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320140a03">
���ǵġ�
���ع��ֶ�Ҳ���ź��ˡ���

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320150a04">
�����������������ܻ�������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320160b25">
����ô���ұ�û�б�Ҫǿ�в������٣ǣȣѡ�
�����ñ����ĸ����˾���ɡ���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320170b25">
���ڴ�֮ǰ��������ά����״����

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320180a03">
����Ҳ��Ϊ���ⷽ���ȽϺá�
���������������޾���ս��������ô��
�أ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320190b25">
��������

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320200a03">
����ν�ؼ���ս������ν���������ߡ���
��ʵ�ڲ���������ϲ���¡���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320210b25">
�����ǵ���ȥ�ɲ�����ν�ģ������ξ��
����������һ�㡣��

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320220a03">
��������

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320230b25">
�����ǡ���û��
������˵���������������Ը����

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320240b25">
��������ֹ�Ļ�����Ȼ����ֹ�ȽϺá���

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320250a03">
���ǵġ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320260b25">
����ʲô������
��ս���ⶫ������Ȼ���Ե��������Կ�ʼ��
����ʱȴ��Ҫ˫�����Э�顣��

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320270a03">
��������򵥵ķ�����
����Э���Ҫ�Ķ�����ȫĨɱ����

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320280b25">
������������

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320290a03">
�������׵�����
����Ҫ���𣿡����ް�����������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320300b25">
�����Ǽ򵥵Ľ��������
���ǳ����ǳ��򵥡���

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320310a03">
���š���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320320b25">
�����Ǳ���ô���ɡ���

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320330a03">
��������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320340b25">
����������������ս����
����������ʲô�������Ҷ��޷��������ɱ����

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320350a03">
����ʹս���Ľ�������������ɱ����ͬ�ģ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320360b25">
���ǵġ���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320370b25">
��ս�����޺û�֮�֡�
�������Ժ�ƽΪǰ���ս������ֻ������һ��
ս��Ϊǰ���ս������������ġ���

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320380b25">
�������Զ����׵�ʵ��ǰ��δ�еĴ���ɱ��
�Ӷ����ⳡս���ս�Ļ�������͵����ǻ�
ãȻ��ʧ����������
��Ȼ�������ʮ�������վ�����ɡ���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320390b25">
�����ڴ˺�ǧ�꣬������������аɡ���

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320400a03">
������������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320410b25">
�������ǹ���ͳһ�������ˡ���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320420b25">
��������ȫ����������������������ӣ�����
�������µ��Ǻ�ƽ�뷱�ٵ����ӡ���

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320430a03">
���ǵġ�
������Ϊ��<RUBY text="��������������">Ů�����µĺ�ƽ</RUBY>��
��<RUBY text="��������������">Ů�����µķ���</RUBY>����

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320440b25">
����ʹ�����δ�����Ĳ�������ң���ʹ����
����������ӵ����֣���Ҳ�������⡣
��������˵������Ϊ��ˡ����Ÿ������ǵ���
��������������������ȷ�ĵ�·����

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320450b25">
���������ǵ�ʹ������

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320460a03">
��������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320470b25">
���ѵ������𣿡�

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320480a03">
���ǵģ�������
�����������ԡ���

{	DeleteStA(300,false);
	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320490a03">
���������Ǽ���Դ�͹������ʾ����Ļ���
�����žų����ϻ�����˭Ҫ�������¡�
�ɣ�

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320500a04">
���²����ء�
���������֪���������������˰ɣ�

{	FwH("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320510a04">
�������Ϲ��ܲ�����õ��ˣ�

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320520a03">
����֪����
�������Ƶ�������Σ�
�����ܹ��Ƕ����������ġ�����

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������奢��ȥ��å�
	DeleteStR(150,true);

	CreateTextureEX("�����奢���", 1000, -40, -70, "cg/st/resize/st�����奢���_ͨ��_˽��ex.png");
	Request("�����奢���", Smoothing);
	Zoom("�����奢���", 0, 900, 900, null, true);

	SetVertex("�����奢���", 520, 288);
	Zoom("�����奢���", 150, 1000, 1000, Dxl1, false);
	Move("�����奢���", 150, @0, @13, Dxl1, false);
	Fade("�����奢���", 150, 1000, null, true);
	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320530b25">
������������

{	FwH("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320540a03">
��ѽ��?!��

</PRE>
	SetTextEXH();
	TypeBeginHIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	Zoom("�����奢���", 150, 900, 900, Axl1, false);
	FadeDelete("�����奢���", 150, true);
	StR(1000, @0, @0, "cg/st/st�����奢���_ͨ��_˽��.png");
	StL(1000, @0, @0, "cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(300, false);
	FadeStR(300, true);

	SetFwH("cg/fw/fw�����奢���_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320550b25">
������ʹ�ö����׵���
����ʹ�����ܹ��򵥵ػ�ȡʤ������

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320560b25">
��������������ˡ�
����Ϊ����ɣǣȣѵ��ڲ�����֮ǰ����ʹս
����ʤҲ˵��׼����Ӯ�һ���˭����

{	FwH("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320570a03">
���ǡ��ǵġ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320580b25">
���п�����״�������𣿡�

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320590a03">
����Ȼ����ֻ�ܳ����˰ɡ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320600b25">
����Ȼ���ҷ���ʼ�����ģ���ô�ҷ������˱�
Ҳ�������
�����ǽ����˱��Ļ��ᱻ�����޾�׷���ɡ���

{	FwH("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320610a04">
��Ҳ��ᱻ׷�����������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320620b25">
�����ֽ��ʵ�ڷ�������Ը����

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320630a03">
����ô���Ӻ����˱���
�����ͬʱ����ͣս̸����Σ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320640b25">
���ܴ����
�����ǵ��������ܾ��˾��Ѱ��ˡ��������ó�
��Ӧ����������չʾ��פ�����ƵĻ����Ͻ���
��͡���

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320650b25">
��������ˣ���������Ů������������

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320660a03">
����Ҫ�����������ˡ�
�����ó�͢��Σ���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320670b25">
��������͢������������ϵľ�����
����ȷ�ǵ�ͣ�������ѡ����

{	FwH("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320680a03">
������Ϊ�����ֵ������£�Ӧ����
Ը����������볯͢��ͨ����

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320690b25">
���ܺá��ͽ������ˡ�
�����ϰ��Űɡ���

{	FwH("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320700a03">
�����ס���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320710b25">
������ĺ���Ϣ����

</PRE>
	SetTextEXH();
	TypeBeginHI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//�����衿
<voice name="����" class="����" src="voice/md04/0320720a04">
���������ް������¡���

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320730b25">
��ʲô�£���

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320740a04">
������ע�ⰲȫ��
����Ҫ�뿪����������

{	FwH("cg/fw/fw�����奢���_���@.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320750b25">
��������֪���ˡ�
��������<RUBY text="��������">�з����</RUBY>�������зִ硣��

//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320760b25">
����ʵ�ұ������һ֧���ӵġ�
�����������޺Ͷ����ɶ�����������
̤���ͣ����Է����ˡ���

{	FwH("cg/fw/fw����_�ϱ�.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320770a04">
����������

{	FwH("cg/fw/fw�����奢���_ͨ��.png");}
//���߹١�
<voice name="�߹�" class="�߹�" src="voice/md04/0320780b25">
�����İɡ�
���Ҳ��������У������������

{	FwH("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320790a04">
��������ص��ġ���

{	FwH("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/md04/0320800a04">
����С�㣬����Ҳ�����������»�ȥ�ɡ���

{	FwH("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/md04/0320810a03">
���ţ�˵���ǡ���

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(1500, 1500);

}

..//������ָ��
//�Υե����롡"md04_033.nss"
