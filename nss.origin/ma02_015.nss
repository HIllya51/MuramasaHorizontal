//<continuation number="600">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_015.nss_MAIN
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
	#bg001_��a_03=true;
	#bg023_��Դ̫�μ�_01=true;
	#bg202_�����ݳ�����ɽ_02=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	if($ma02_015_routeFlag==true){$ma02_015_routeFlag=false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma02_016.nss";

}

scene ma02_015.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_014a.nss"
//ǰ�ե����롡"ma02_014b.nss"
//ǰ�ե����롡"ma02_014c.nss"

//������

//���Ҥ���
//��ҹ��
//���£ǣͣ�����ȥ�Х�����

	PrintBG("�ϱ���", 30000);
	SetVolume("@mbgm*", 2500, 0, null);
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 2000, true);

	WaitPlay("@mbgm*", null);
	Wait(1000);
	SoundPlay("@mbgm06",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0001]
������ҹ���ˡ�

��һ���극������֦�Ϳ�ʼ��������������������
�������������������ʼ���Ҿ�һֱ���ɻ��Ǹ��Ӳ�
����ľ޴��������ﵽ����ʲô�������и�һ����
�ͺ��������ˡ��Ǿ��ǣ����������١�

����פ��ʿ��Ϊʲô��������ֶ����ء�
������Ӧ�øе�����˼�顣�Ͼ��Է��Ǵ����̴ӵ�
Ů�ԡ�

����������κ������϶������ڲ�ͬ�İɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��������
<voice name="����" class="��������" src="voice/ma02/0150010a01">
����������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150020a00">
������ɫ����


{	FwC("cg/fw/fw�դ�_�դ�.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0150030b05">
��ȷʵ������


{	FwC("cg/fw/fw�դ�_��˼�h.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0150040b06">
���۰�������


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0150050b55">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
�����м��ֵĵ��ˣ�
�������ص��ˡ�

�����ǣ�������ůƽ�͵�һ�̡�
������������䣬�Ҽ���Ҫ�����𲻸û���
�����ˡ�

�����û����𡪡�ңԶ�Ĺ⾰��
��������ȴ��������ս����ʵ��

��������Ϣ��

�����ǣ��Ҳ�Ӧ�ó����ڰ���֮�С�
��Ϊ�������ս����

�����ڣ�
��˯�ɡ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����ä���ե��`�ɥ�����
//�����ʥ��`�øжȣ�
//$Another_Flag = $Another++;
	$ma02_015_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();

	SetVolume("@mbgm*", 4500, 0, null);

	CreateColorEX("�}��ܞ", 15000, "#000000");
	Fade("�}��ܞ", 4000, 1000, null, true);

	WaitPlay("@mbgm*", null);

	Wait(3000);

//����Դ̫��

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg023_��Դ̫�μ�_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 2000, true);

	SoundPlay("@mbgm23",0,1000,true);

	Wait(1000);

	OnBG(100,"bg020_ɽ�}_01.jpg");
	FadeBG(1000,true);


	StR(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0150060b06">
�����٣���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150070a00">
���ȣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��н��ꡣ�����`��
	OnSE("se����_����_н���",1000);
	Wait(600);

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0032]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0150080b06">
�����٣���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150090a00">
���ȣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	OnSE("se����_����_н���",1000);
	Wait(600);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����񵶳��صĵ��棬�����ַ���̨���ϵ�ľ��
��ȥ��
�����Ž����õĲ��ѵ�һ�ԣ����ٶȰں�ľ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0150100b06">
�����٣���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150110a00">
���ȣ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	OnSE("se����_����_н���",1000);
	Wait(600);

	StL(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0052]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0150120b05">
���Բ�����ʿ���ˡ���
���ͷ��������������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150130a00">
���������Լ�Ҫ��ģ����������⡣
����������΢�����˶������念���кô�����


{	FwC("cg/fw/fw�դ�_ͨ��.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0150140b05">
���Ǿͺá���
������������̫�����𣿡���ֻҪһ����
�ڶ���һ���ἡ��ʹ��Ŷ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150150a00">
��������Ϊ�����ñ����Ӷ���
��Ե�ʰɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	OnSE("se����_����_н���",1000);
	Wait(600);

	SetFwC("cg/fw/fw�դ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0056]
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0150160b05">
����ʿ���˲����𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150170a00">
���ǵġ�
���������������ֱ۵���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	OnSE("se����_����_н���",1000);
	Wait(600);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0058]
//��������
<voice name="����" class="����" src="voice/ma02/0150180a00">
���������ò���������<RUBY text="������">������</RUBY>����ȥ��
���������㹻��������ˡ���


{	FwC("cg/fw/fw�դ�_����.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0150190b05">
��Ŷ������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150200a00">
���Ⲣ���ѡ�
�����ñ����Ӷ����صĲ񵶣��ᵼ�¼����ۡ�
�����������ȽϺðɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150210a00">
��������пյĻ����Ҵ�������㡣��


{	FwC("cg/fw/fw�դ�_�դ�.png");}
//���դ���
<voice name="�դ�" class="�դ�" src="voice/ma02/0150220b05">
���⡢������
���ǾͰ������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ں����е��Ĳ����ɵؼ���ϴ���·���ʀ���Աߣ�
�Ҽ�������
����Ȼ����������⼸����Ҫ�����������ǣ��ٶ���
��һЩ���Ҳ����ɡ�

����Դ̫�����ڼ��й������峿���ɼ��еĸ�������
ÿ��������¡�
���������Ͳ��ڡ�����ҹ�����Ǿͷ��ش����ˡ�

�������ܾ��ã����ܲ����ǶԲ��ء�

������֦����ǰ���µĻ�ͻȻ�ӹ��ҵ��Ժ���
���ǰ����������ˣ��ط�����Ӧ�û�ʹ��һ�߶ԣǣȣ�
��ȡ�ж�һ������ʱ���ս����

�������������ж����;Ȳ��˴����ˡ�
������һ���������ҵ�Ŀ��Ҳ���޷���ɡ�������
������ȥ�Ļ���û��<RUBY text="����">ʱ��</RUBY>�ˡ�

����������Ҫ�Ʋ�������Ǳ���������еĵ��ˡ�
����һ�����ŶԲߣ�һ�����Ų�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	OnSE("se����_����_н���",1000);
	Wait(600);

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/ma02/0150230a01">
������״�������ء�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150240a00">
���ǰ����˿��Ѿ������ˡ���ЩѪ������
���������ܻ��а취�ɣ�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150250a00">
��֮��ֻʣ�ָ������ˡ�
�����أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150260a01">
��װ�������ѻָ���ϡ�
����Ҳֻʣ�����ڲ������ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150270a00">
��֪���ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150280a01">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150290a00">
������������ô�ˣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��һ���Ĭ����������Ȼ��ô˵Ҳ����֡�
����ͨ���жϲ�ͬ����Ĭ��������գ����ﵽ��
�����Һͽ��е������ĳ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="��������" src="voice/ma02/0150300a01">
��������ϣ�����������ҡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150310a00">
���𱸡�������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150320a01">
���㲻�������ǵİɡ�
�������յĹ�ʧ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ե�å���Хå����������u
//��������ݳ�������졢���m����

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	OnSE("se�M��_�ե�å���Хå�01",1000);
	CreateColorEXadd("�}�ե�", 10000, "#FFFFFF");
	Fade("�}�ե�", 100, 1000, null, true);

	CreateTextureSP("�}�ݻ��뱳��", 4000, Center, -576, "cg/bg/bg202_�����ݳ�����ɽ_02.jpg");
	CreateTextureSP("�}�ݻ������}", 4010, Center, Middle, "cg/st/3d�ũ�ʽ�o�T��_�Tͻ_���Lb.png");
	Zoom("�}�ݻ������}", 0, 750, 750, null, true);
	Request("�}�ݻ������}", Smoothing);

	Wait(500);

	Fade("�}�ե�", 400, 400, null, true);



	Wait(1000);

	Fade("�}�ե�", 100, 1000, null, true);

	Delete("�}�ݻ���*");

	FadeDelete("�}�ե�", 1000, true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma02/0150330a00">
����Ȼ��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150340a01">
������̽�飬������ʱ�����������ǰ����
����ȥ�����й���˳���Ľ��аɡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150350a00">
������Ԥ�⵽�¶�����Ϯ�Ļ����ұ��������
̽���ܱߵ������������û���ˡ�
�����ǣ���ȴû��Ԥ�⵽��һ�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150360a00">
������Ĳ������㣬�����ң�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150370a01">
�����ԡ��ٿ��ߵ�ְ���Ǵ����ǰ�ĵ��ˡ���
�е�ְ���Ǹ���������������ߵ�ְ��ֵ��ɡ�
����Ϊ���У������ܱ������������Ȼ�����񡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150380a00">
������������

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150390a01">
����и�����Ƿ�������Ȼ�����񡭡�Ҫ��<RUBY text="ĸ��">����</RUBY>
��<RUBY text="�⹫">ʼ��</RUBY>֪���˵Ļ���֪���ʧ����
����Ҳ��֪����������������źá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������Ľ��д����������𶯡�
����������ͷ�ŭ������һ�ж������Լ����ϡ�

������ԭ����ˡ�
���������������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma02/0150400a00">
������Ҫ���
������ᣬ���У�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150410a01">
��������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150420a00">
�����һ��ʼ��û��ְ��
����������Ҳ�����Ρ���ֻ��һ�ѵ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150430a00">
��<RUBY text="����������">ֻ�Ǹ�����</RUBY>��

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150440a01">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150450a00">
������Ϊ�ٿ�������������زٿؽ��е�
���񡣽���ֻҪ��ʹ�þͺ��ˡ�
������������ʹ����ķ������ˡ�û�о���
��������ʧ�ܵ����������ң�

//��������
<voice name="����" class="����" src="voice/ma02/0150460a00">
�����������𣿡�����Ҳ��Ȩ��Ҳ������Ҳ�գ�
ȫ��������һ���˵��¡�<RUBY text="��������������">�������κι�ϵ</RUBY>��
����Ȼ�ˡ���ū���е����ε������ǲ����ڵģ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150470a01">
������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150480a00">
�������Ǹ��޴��������뷨��
����ֻҪ����ĵ���ĥ�������ˣ�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0150490a01">
����������
��������˵�Ļ������Ǿ�������ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�����ڻ����ŵ�Ӳ�ʵ�������ֹ�ˡ�
����ʶ���ص���Ұ����ͻȻ�����ѻ������Ĳ��
�ﵽ���൱��ķ�����

���������˵��ճ��������ô�����ʱ��������
�����Ͳ��ó��˰ɡ�
���Ҷ�������������ʽ�����Ҫ��Ҫ�Ѳ���������
�������ߣ����˵�ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st�դ�_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma02/0150500a00">
�����ȵ���Ϊֹ�ɡ���


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0150510b06">
������ۣ���


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150520a00">
���ǵġ�
��лл���æ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SE01","se�ճ�_����_���饤���_��01");
	MusicStart("SE01",0,1000,0,500,null,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����������ô˵��ʩ��һ���ʱ��
�����Ƶ�Ħ�������𣬴��Ŵ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st��Դ̫_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0150530b55">
�����á�
�������⻹���ǣ��൱����������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150540a00">
�������������Ů��æ��
���ܿ���������ˡ���


{	FwC("cg/fw/fw�դ�_Ц��.png");}
//���դʡ�
<voice name="�դ�" class="�դ�" src="voice/ma02/0150550b06">
����ϡ�æ���ˣ���


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0150560b55">
���������úܺá�
��������ô���á��ٰ�������һ�¼ҿ���
�𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150570a00">
����Ҫ�����𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0150580b55">
���š���Ҫȥɽ��һ�����
����ŵ��������ͻ�����ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0150590a00">
��֪���ˡ�
���������ҡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0150600b55">
����Ǹ����
���������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,true);
	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
�����ż�ʵ�ĽŲ�������ɽ�������ˡ�
��Ҹ�±��Ÿ�СС���������СС�İ�����

����һ��¶���˰�ɫ�����塣
����ɫ�ġ�������

����ҪȥɨĹ��
����ɨĹʱ���Ѿ���ȥ��Щʱ���ˡ���


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"ma02_016.nss"

