//<continuation number="590">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene mb02_002.nss_MAIN
{
	//��e�ޥ����ٌ���
	Conquest("nss/mb02_002.nss","IchijyouMonzetsu",true);
	Conquest("nss/mb02_002.nss","IchijyouMonzetsuSet",true);
	

	if(($SYSTEM_skip && #SYSTEM_skip_express && $AllRead) || ($SYSTEM_skip && #SYSTEM_skip_express && #SYSTEM_skip_absolute)){
		SkipOut();
	}else{
		$MainGameName="@->"+$GameName;
		GameMainSet();
		call_scene $MainGameName;
		GameMainSet2();
	}

	//�����٥�ȣã�
	#bg050_���ӘS�����hǰ_01=true;
	#bg063_���ӘS��������_01=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "mb02_003.nss";

}

scene mb02_002.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"mb02_001.nss"


//�����h
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureEX("�}����", 500, Center, Middle, "cg/bg/bg050_���ӘS�����hǰ_01.jpg");
	OnBG(100,"bg050_���ӘS�����hǰ_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	DrawDelete("�}��ܞ", 1000, 100, "blind_01_00_1", true);
	SoundPlay("@mbgm23",0,1000,true);

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020010b20">
����λ������һ������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020020a02">
������
����һ���������𣿡�


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020030b20">
������֮ǰ���������������ҡ�
��������ס������խ����������Ǵ���Щ��
���㡣��


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020040a00">
���Ѿ������ˡ�
��ֻҪ���������ݱ��־���͹��ˡ���


{	FwC("cg/fw/fw����_΢Ц.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020050b20">
���ԡ������ǿ��ǵ���һ�㣬��׼�������׷�
�ӡ�
����������˵�Ļ����ᱻ������ȥ����


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020060b20">
�������ǲ�Ҫ����Ϊ�á���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020070a00">
�������ס�
�����⡭����


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020080b20">
���뽲����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020090a00">
�����������������������������


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020100b20">
��ֻҪ������˵�Ҽ�������ͺá�
����Ϊ���Ƕ�λ����Ϊ�ҵĲ��£��������
���˶�Ŀ����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020110a00">
�����ס���


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020120b20">
�����������𣿡�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020130a02">
���ǡ��Ǹ�������


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020140b20">
��ʲô�£���


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020150a02">
���Һʹն�����һ��ס������Ǹ���û����
��
�����˿����������úܿ��ɡ�����


{	FwC("cg/fw/fw����_΢Ц.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020160b20">
������û����ġ�
���Ѷ����������Ƕ�λ�Ƿ��޹�ϵ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���
	CreateSE("SE01","se�M��_���ߥ���_�^�֤Ĥ���");
	CreateSE("SE02","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,1200,null,false);
	MusicStart("SE02",0,1000,0,1200,null,false);
	Fade("�}����", 0, 750, null, true);
	Shake("�}����", 600, 6, 0, 0, 0, 1000, DxlAuto, false);

	Wait(500);

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020170b20">
�������������Ტ�������ǽ��t��¥���
�̣������벻Ҫʩ���������ҵ�ͷ��ײ����
��������


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020180a00">
������ô˵�ģ�һ������


{	SetComic(@0,@0,17);
	FwC("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020190a02">
�������������ǣ�
������!?��


{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020200a00">
���㲻֪���𣿡�


{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020210a02">
������û��˵������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020220a00">
�����ǻ������ն�һ���İɣ���


{	FwC("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020230a02">
���ǡ��Ǹ������һ���Ϊ�������ء���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020240a00">
�������αװ�ɷ��޵Ļ����Ͳ���ס��һ����
�ɡ�
�������ܲ����㡣��


{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020250a02">
������û����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020260a00">
���������𣿡�


{	SetComic(@0,@0,17);
	FwC("cg/fw/fwһ��_�Ť�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020270a02">
��������������


{	DeleteComic();
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020280a00">
��������Ҽٰ�����𣿡�


{	SetComic(@0,@0,13);
	FwC("cg/fw/fwһ��_�դ�.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020290a02">
���ǡ��Ǹ�����
���⡭����


{	DeleteComic();
	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020300a00">
�������ᡣ��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������`��
	CreateSE("SE01","se���L_����_�z��������");
	MusicStart("SE01",0,1000,0,750,null,false);
	Fade("�}����", 0, 750, null, true);
	Shake("�}����", 600, 0, 10, 0, 0, 1000, DxlAuto, false);

	Wait(500);

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020310b20">
��Ҳ�벻Ҫ�շ��ߡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020320a00">
������ô˵�ģ�һ������


{	FwC("cg/fw/fwһ��_��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020330a02">
���أ����ء������ǡ�����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020340a00">
��������Ӧ����ǰ���ĵġ�
��Ϊ���·����ð�����Ҿ��ò�������


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020350a02">
������������


{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020360a00">
�����ǣ�Ʋ����㲻̸��
����Ϊһ��������˵���ܺ���������������Ů
����һ�ң��Һܿ��ġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ɩ`��
//����������
//���ɤ���`��
//���Ҥҩ`��
//���Ѥ���äѤ����
	IchijyouMonzetsu();

	Wait(500);

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020370b20">
�����ǹ���İɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020380a00">
����ָʲô����


{	FwC("cg/fw/fwһ��_�@��.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020390a02">
���������ۡ���!!
  ������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�������¡�ȫ�ƣӣŒQ��
//������������λ�Ԓ�ΥХå��������Ƥ���


//���ӣţ��Ҥҩ`���R���^��
	CreateSE("SE02","se�M��_���ߥ���_�R�Q����");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateVOICE("һ��","mb02/0020400a02");
	MusicStart("һ��",0,800,0,1000,null,false);

/*
	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020400a02">
�����ۣ�ס�֣�ͣ��������ѽ�� ���� ��ҧ��
�𡢱����ֵĶ����������ϡ�����  �ն�����������
ι������Ϯ���ҡ����桪������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

*/
//�������ޤ�

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/mb02/0020410a00">
����֮���������ж��ɡ���


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020420b20">
�����ȴ�����ô������


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020430a00">
���ռ��鱨��
�����Լ����۾��Ͷ���ȷ�ϳ��ڵ��������


//��������
<voice name="����" class="����" src="voice/mb02/0020440a00">
��Ȼ�����ƶ��ƻ�����


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020450b20">
���ǰ�������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020460a00">
���������˽�Ŀ�����ʵ�����
���ܰ��Ұ����𣿡�


{	FwC("cg/fw/fw����_ͨ��.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020470b20">
�����Ͼ���Ϊ�㰲�š���ڰ���ҵ�����ư���
���Ǽ���ɡ�
���ڴ��ڼ䣬����ϴ���衣��


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020480a00">
��ԭ����ˡ���
���Ǹ������ݺ����޵����𣿡�


{	FwC("cg/fw/fw����_΢Ц.png");}
//�����
<voice name="����" class="������Ů��" src="voice/mb02/0020490b20">
��û��
���Ҿ���������͹��ĵ��Ǹ�������������
��Ů�����������ġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ҥҩ`��
	CreateSE("SE02","se�M��_���ߥ���_�R�Q����");
	MusicStart("SE02",0,1000,0,1000,null,false);
	CreateVOICE("һ��","mb02/0020500a02");
	MusicStart("һ��",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("һ��");
	WaitKey($�Еr�g);

	ClearWaitAll(2000, 2000);

/*
//���ܥ����Τߡ��ƥ����ȳ�����
	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020500a02">
��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
*/

//����������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg063_���ӘS��������_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����������������Ů��ԡ�󣬴�����Ůʿ����������
��������������������
���ļ�ֻ�����Ƕ��ڱ�����ˡ�����Ҫ�ύ����Ȩ�˲�
������¡�

���ٺò����Ĳ��ϡ��Ǹ���̽�Ĺ��������൱��������
�塣
���������ܼ�����Ȼ�ػ�һ�����ڵ�Ļ����Ȩ�ˡ���Ψ
һ���ڳ��ڵĹ���������ͯ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/stһ��_ͨ��_��װ.png");
	FadeStR(300,false);

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020510a02">
������ͯ���Ǹ����������أ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020520a00">
����������Ϊ�˶����˽�һ���ȥ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��ȷ�����ܡ�
�����˵��ǣ����������Ӱ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/mb02/0020530a00">
��ע���ǡ������᲻һ������֪���ᱻ˭��
ȥ��
�����о�ֹҪ����һ��������������С�٣�


{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020540a02">
�������ǡ�
���Բ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��С������ע������Ǽ�����̸��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/mb02/0020550a00">
������Ωʢ���ͯ�ġ����ǹض��Ĺ���������
���ߣ�Ҳ��ǰ���커�ϵ��µ��ĸ���
������������ǰ;��������


//��������
<voice name="����" class="����" src="voice/mb02/0020560a00">
�����ң������˻��ǳ�ϲ���Ļ�����������
ά�����������ң��Լ�Ҳ�������С�
������չ�ֳ���ī�س¹棬ϲ�����������
����ǰ����ս����̬���Լ�������


//��������
<voice name="����" class="����" src="voice/mb02/0020570a00">
��������Ҳ���Ŵ��Ƴ������Ϊ�����˳ƣ���
��޹�����
������֪���ľ���Щ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��һ�㳣ʶ���롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��һ����
<voice name="һ��" class="һ��" src="voice/mb02/0020580a02">
����Ҳֻ֪����Щ��
����Ϊ�����޵���Ⱥ�һ����λ���˵�˽��
�����ʵ���󣬼�������ô�����ڱ�ֽ����־
�ϡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/mb02/0020590a00">
��û����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
�������������������������˵Ҳ�ǱȽ��ٵġ�
���������Ϊ�������ľ��á���������ͳ�δ��
��һ<RUBY text="��������">�����ж�</RUBY>�Ĺؼ�ʱ�̡�

����Ϊ��ƽʱ�������ײ������Ϊ�����ṩ���෹���
̸�ʣ�������Ϊ��Ҫ�ȵ�һ�ж������󡭡�
���ǳɹ���Ϊ���Ψһ�ġ����Ե�ͳ����֮������ˡ�

���ڶ���Ѫ���������Ľ����������Ѫ<RUBY text="��������">���ڼ���</RUBY>��
������Ϊ����ֹ�����֣��Һ�һ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��ܞ�Q
	SetVolume("@mbgm*", 2000, 0, null);

	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);

	WaitPlay("@mbgm*", null);
	ClearWaitAll(1000, 0);

}

..//������ָ��
//�Υե����롡"mb02_003.nss"



.//�ץ�����======================================================

function IchijyouMonzetsu()
{
	CreateProcess("��һ�����~", 5000, 0, 0, "IchijyouMonzetsuSet");
	SetAlias("��һ�����~","��һ�����~");
	Request("��һ�����~", Start);
	Request("��һ�����~", Disused);

}

function IchijyouMonzetsuSet()
{
//�����ɩ`��
	CreateSound("PSE01a", SE, "sound/se/se����_�n��_�ߵ[�֤Ĥ���01");
	SetVolume("PSE01a", 0, 0, NULL);
	SetAlias("PSE01a", "PSE01a");
	Request("PSE01a", "Play");
	SetVolume("PSE01a", 0, 1000, null);
	Request("PSE01a", Disused);
	Shake("@�}����", 600, 20, 0, 0, 0, 1000, DxlAuto, false);
	Wait(600);

//����������
	CreateSound("PSE01b", SE, "sound/se/se���L_����_��Ͷ���z��");
	SetVolume("PSE01b", 0, 0, NULL);
	SetAlias("PSE01b", "PSE01b");
	Request("PSE01b", "Play");
	SetVolume("PSE01b", 0, 1000, null);
	Request("PSE01b", Disused);
	Shake("@�}����", 600, 0, 20, 0, 0, 1000, DxlAuto, false);
	Wait(600);

//���ɤ���`��
	CreateSound("PSE01c", SE, "sound/se/se�M��_���ߥ���_���k01");
	SetVolume("PSE01c", 0, 0, NULL);
	SetAlias("PSE01c", "PSE01c");
	Request("PSE01c", "Play");
	SetVolume("PSE01c", 0, 1000, null);
	Request("PSE01c", Disused);
	Shake("@�}����", 600, 40, 40, 0, 0, 1000, DxlAuto, false);
	Wait(600);

//���Ҥҩ`��
	CreateSound("PSE01d", SE, "sound/se/se�M��_���ߥ���_�R�Q����");
	SetVolume("PSE01d", 0, 0, NULL);
	SetAlias("PSE01d", "PSE01d");
	Request("PSE01d", "Play");
	SetVolume("PSE01d", 0, 1000, null);
	Request("PSE01d", Disused);
	Wait(1000);

//���Ѥ���äѤ����
	CreateSound("PSE01e", SE, "sound/se/se�M��_���ߥ���_�R��");
	SetVolume("PSE01e", 0, 0, NULL);
	SetAlias("PSE01e", "PSE01e");
	Request("PSE01e", "Play");
	SetVolume("PSE01e", 0, 1000, null);
	Request("PSE01e", Disused);

	WaitPlay("PSE01*", null);

}