//<continuation number="890">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mc02_020.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mc02_021.nss";

}

scene mc02_020.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mc02_019.nss"

//��ҹ
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�\Ļ��", 15000, "BLACK");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg028_��亣ǣȣѻ���_03.jpg");
	StL(1100,@0,@0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(0,false);
	Delete("�ϱ���");
	FadeDelete("�\Ļ��", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��ҹ��
�����ٶȱ������ξ������ͷ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm16",0,1000,true);

	DrawDelete("�\Ļ��", 1000, 100, "blind_01_00_1", true);
	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200010a03">
��������������
�����Ծ�������˵����Щ��������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200020a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������ξ��������������̴ӣ�
�����Ǳ�����һЩ���룬��һ�߾�����Χ�����
һ�߹۲����ǵĶԻ���
���������������϶�֪����λ���������á�

���ڱ�ѯ��֮ǰ�������ȿ��ڣ�
�ҽ��Ի�����ȫ��˵�˳�����
����ξҲ�����ṩ���鱨��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/mc02/0200030a00">
���������Ϲ���ογ�������������ǵ����ܼࡣ
�����ң�������˾������ũ����������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200040a03">
���š�
��˵��͸���ǣȣѶԴ�͵�ͳ������ʵȨ��
Ҳ��Ϊ������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200050a00">
��Ҳ����˵������˵�����ݲ���
һ�������ļ��⡭�����ǣǣȣ������
˼�룿��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200060a03">
�����Ҳ�����ʵ��
������Ӧ����Ϊ��λ���˵ķ���
�൱���з�������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200070a00">
��������ʵ��
����ξ���£���ũ�������������Ҫ��
һ�£��Ƿ������������������˼�أ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200080a03">
�����������������¡�
���������˾��ȵ��������Ч��ս��ʽ����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200090a03">
����Ϊ<RUBY text="������">����Ҳ</RUBY>׼�������Ƶļƻ���
�����㻹�������ķ�������Ҫ��������
��Э�������²�����ٰɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200100a00">
������ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
 ��Ч���á�����֮����
���ų��˴�͵ļȴ�Ȩ����֮�����ƻ�
������֦С��ӹܡ�����ũ����������
�������İɡ�

���ƻ��ɹ��������Ϊ���ܾ�����
�������������������ǣ��ڸ������̨�ϱ��ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mc02/0200110a00">
����ξ���¡�
�����Ѿ���ͬ���𣿡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200120a03">
������˵�й����Լ��ļƻ��𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200130a00">
���ǵġ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200140a03">
����һ�Ų���񶨡���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200150a00">
������
���Ҳ���Ϊ���᰸���ϴ�ξ
�������顣��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200160a03">
����ǰ�����˵���˰ɡ�
���һص�����Ժ����Ⱦ���Ҫ�������������
���Ρ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200170a03">
���������ˣ����Ǵ�Ӣ���
������ǽ�������ͳ�Σ��Դ����˵
����õĻ������Ҿͻ�������ǣ�ȥ
ʵ�����Ƕ��ҵ�Ҫ�󡣡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200180a03">
�����ɷ��ϡ�
���ⲻ��Ҫ���ǵ��Ҹ���
��ϲ�񡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200190a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
������Щ������λ�߹�֮�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200200a03">
��������������Ϊ�أ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200210a00">
������������˼��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200220a00">
����ũ������չʾ��δ������õ���
������һ�����Ҫ��
��������������п�������õ��𡣡�


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200230a03">
�����Ľ����أ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200240a00">
����������ݵĺ�ƽ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200250a00">
�����ǽ�פ�����������ޣ������˴�͵�ͳ��Ȩ��
���ǿ����ڴ����Ǵ���ȸ������ߡ���
ֻҪ��Ӣ����û�з���ֻ��Դ�͵���ʿ̬�ȡ���

//��������
<voice name="����" class="����" src="voice/mc02/0200260a00">
����ͽ���Ӣ��Ϊ��������������˹������ά�ǡ�
�Ͷ����������ɹ�</RUBY>һ�������Ϊ��������˹�۹�
��һ��ǽ��
���Զ������������ɡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200270a00">
����������ʱ����˹�۹��ͻ�ĬĬ��
����˫��Ͷ���𣿡�


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200280a03">
��������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200290a00">
���������������ǵ������ߡ�
���Ҳ���Ϊ���ǻ�������ߵĽض������޶á���

//��������
<voice name="����" class="����" src="voice/mc02/0200300a00">
����������ʵ��ͻ�Ʒ�����ʱ����
����Ҫ��Ŀ����ǡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200310a03">
�������ձ�ռ��Ĵ�ͣ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200320a00">
����ͳ��������δ�걸֮ǰ���г������
�Ŀ�϶��Ӧ������������Ϊ�ɡ�
����ˣ�����һ���������֮���޷��־á���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200330a00">
����ͽ����ΪŮ�۾�������ս�ĳ�������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200340a03">
����Ȼ����Ӣ���ϣ��������̬������
���ǻ����⽻����һʤ���ɡ����ǻ��Ӧ
����˹�۹��Ĳ���Ҫ����Ҫ�����Ǽ���
����Ϊ���ۣ������˰ɡ�����������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200350a03">
�����ǵļƻ���һ����ɹ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200360a00">
��û��
����������ʷ����֤��������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200370a03">
�����Բžܾ��˿�ũ������ί�С����𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200380a00">
�������ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
��ԭ��ֻ��Щ��
����������ǣȣѾʹ�����Ϊ<RUBY text="������">����ʿ</RUBY>
��ս�ѡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х���һ˲

	EfRecoIn1(18000,400);

	CreateTextureSP("�}����100", 2000, Center, InBottom, "cg/bg/bg077_�����µ���¥ǰ_02.jpg");
	CreateTextureSP("�}����200", 2100, Center, InBottom, "cg/st/3d�Х���_����_ͨ��.png");
	EfRecoIn2(200);


	Wait(150);


	EfRecoOut1(200);

	Delete("�}����*");

	EfRecoOut2(400,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����ֻ�Ǹ��˵�������⡣��Ȼ����С�¡�
���Ҳ������������֦С�㡣
��
����˵�����黹��һ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mc02/0200390a00">
����������
�����Ҳ����˵����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200400a03">
������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200410a00">
����ʵ�һ���һ�����ǡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200420a03">
����ʲô�أ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200430a00">
�������ⲻ���߼��ϵĹ۲죬
ֻ���ҵĲ�����ѡ���


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200440a03">
��û��ϵ��˵˵������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200450a00">
��������ũ��������
��������ǶԴ�Ӣ���������ҳ�
�ľ����𣿡�


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200460a03">
������������


{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200470a00">
�������ǵģ����������
����С�˲Ż���ɵ����⡣
���涪�ˡ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200480a03">
���������ǣ����������ܲ⣬Ҳ��
�и��ݵİɡ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200490a00">
���Ʋ��ϸ��ݡ�
��ֻ�ǡ�����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200500a00">
���Ǹ����Ի�֮���ֵġ���Ȼ��Ҳ������
ʲô���ˣ�������Ϊ�����ĳǸ����Ҹ��
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("@mbgm16*", 400, 500, null);

	EfRecoIn1(18000,600);
	CreateTextureSP("�}����20", 10, Center, Middle, "cg/bg/bg030_�ǣȣѱO������_01.jpg");
	EfRecoIn2(300);

	SetFwC("cg/fw/fw����_����.png","Sepia");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/mc02/0200510a00">
�����ǡ�
�������������ҵĽ�������Ը����Ů������
��ʩ�ᣬ����ѡ��Ҳ�������𣿡�


{	FwC("cg/fw/fw����Υ�_ͨ��b.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0200520b03">
������������


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0200530b03">
������˵�ġ����ţ�������⡣��


//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0200540b03">
�����������ǵ��뷨������
��ͬ�ġ�
������ٰ�尾������
���Ǹ�������Ϊ�����İ��֡���


{	FwC("cg/fw/fw����Υ�_ͨ��a.png");}
//������Υ�
<voice name="����Υ�" class="����Υ�" src="voice/mc02/0200550b03">
������Ϊ��Ҳ����Ҫ�½⡭���������ѡ��
�����ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	EfRecoOut1(300);
	Delete("�}����20");

	StL(1100,@0,@0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(0,true);

	SetVolume("@mbgm16*", 300, 1000, null);
	EfRecoOut2(600,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mc02/0200560a00">
��ֻ����˲�䣬�ҿ����˿�ũ����<RUBY text="��������">���޽���</RUBY>
����С���
��������ô��Ϊ�ġ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200570a03">
���������Ƕ�Ů��֧��ķ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200580a00">
���������
�������ֻ���ҵ��ܲ⡣��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200590a03">
��������������������


//��ۤ��褦��
{	DeleteStL(300,false);
	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200600a03">
���������ǹ�Ȼ���ǵ���
˼���Բ��𡭡���
���������������ж������Ѿ�̫���ˡ���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200610a00">
����ξ���£���


{	StL(1100,@0,@0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(300,false);
	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200620a03">
����Ǹ��ûʲô��
����ô��������������˵��Ʋ�����ȷ�ģ�
��̬����Σ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200630a00">
����һ������뱳��Ů����
�ͻ�������ƶ�ռ���͵ļƻ���
��������������������Ӣ��������򡪡���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200640a00">
��������ջ��ǻ��Ϊս���ɡ�
�����������֮�£����ƻ�ȴ�Ӣ������
����˹�۹���ս�����ӣ�����Ҳ��������
���ٸ��Ͼ��ľ�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200650a00">
�������Ͼ���������ʹ����
����������ͳ�ε�ʱ������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200660a03">
�����������Ĺ�����
���ҿɲ�����������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200670a00">
������ȫͬ�⡣��


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200680a03">
������֮���������˵Ŀ����ǣ����ҷ�����˾
��������ȥ�����۽����Σ�δ�ػ��й�����
δ����
�����ǡ�����


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200690a03">
����ô����������û�и��˵�չ���أ�
������ȷ����ͺ�ƽ��չ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���ⷬ׷��̫�����ˡ�

��ȷ����ͺ�ƽ�ĵ�·��
��û����Ҫ����ô�򵥾����ҵ��𰸵Ļ���
��ҾͲ��������ˡ�������������������

������һ���˸��߿����Ұ����˼����
�����ǣ�����������ǣ��������ܱ���
����������ʧ��������䡣
��Ҫռ�����ҵ�δ�����������֮�ѡ�

�����س��ԣ��ն�����û��������͡�
��
�����ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/mc02/0200700a00">
����û��չ����
�����ǣ�<RUBY text="����">ִ��</RUBY>�Ļ���������һ������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200710a03">
��ִ�ţ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200720a00">
�������ڵ�����������������͵ĺ�ƽ���ѱ�ס��
����һ����;����ϵĽ������Ƴ��Ϲ�ϵ��
������������һ�죬�����޷�����ս��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200730a00">
������Ϊ�����Ǳ�������ִ���Լ�����
�������Ľ����
�������ξ����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200740a03">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200750a00">
��������ˣ������ת���������ֺ����
���˲���������
������Ҫ���ǣ�����������������ս��
��ôս������Ҳ��Ϊ�����з��㡣��


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200760a00">
���������˵���ʧ�󣬴��ȴһ������
���������������ǣ��������������
����������ʷ��
����������ζ��������Խ��ܡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200770a00">
����͵�ʢ˥����Ҫ�ô���Լ�������
������ִ�ŵľ�������¡���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200780a03">
����������
��������ô������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200790a03">
��Ϊ�˾������˵��Ƿ�<RUBY text="����">ִ��</RUBY>����
�����ڻ����ܴݻ������޾�����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200800a03">
�����������˼�ɣ���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200810a00">
�������ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����ȷ��

���Ȳ����ƶ����ڵĴ�ͣ�
��������������б���ֻ��Ļ�������ѡ�
��ֻ��������ǣ������Ľ��룬
�ػ���͹���Ķ�������Ȩ��

��Ҫ��ʧȥ���ǣ���;ͻ��Ϊ����˵ĽǶ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/mc02/0200820a00">
���뿨ũ�����ۼ�ս��ʱ����Ҳ˵�ˡ�
�������п����ڶ����ڱ����ơ�
�������޷����󡣡�


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200830a00">
����˵���ȽϽ�פ����Ļ�����������������ݣ�
�����޾����Ǵ������ơ���
����ξ���£������ս���룬���ʵ�ʴ����𣿡�


{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200840a03">
���ǵġ���


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200850a00">
��������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200860a03">
������Ҳ��������顣
���������Ͼ����鱨���ƣ��ƺ�ֻ���ϲ㼰
ʵ�в���֪�����ѡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200870a03">
����ǧ�����Ŵ��������ǣ���ս���ں�
����Ϊ��ս��׼����һ���������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mc02/0200880a00">
��������������


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/mc02/0200890a03">
�������׵�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"mc02_021.nss"