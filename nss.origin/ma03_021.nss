//<continuation number="660">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_021.nss_MAIN
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

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma03_021.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_020a.nss"
//ǰ�ե����롡"ma03_020b.nss"



//������
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg036_������ͨ·_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");

	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
���������ˣ�����û�о��������ǲ���Ҫ�μӱ����ء�
�������ʣ�µĳ����з��ּ������˵Ļ��������
���˽����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="����" src="voice/ma03/0210010a00">
������ʲô�ط�ûȥ�𡣡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0210020a04">
�����Ե�һ�¡�
������ֻʣ��������ء���

//�����衿
<voice name="����" class="����" src="voice/ma03/0210030a04">
����Ϊ����Զ��������������󡣡�

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210040a03">
��Ҫȥ�𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0210050a00">
���ǵġ�
����Ȼ�����Ժܵͣ������ı������Ǽ�����
�Ŀ����Ի����еġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
����û��˵ʵ����
������Ϊ����ȫ�ǲ����ܵġ�������Ǻ�ע�⵽��
��Ļ���������Σ���һ����ѡ����̨���Ž�����
â����ɫ�������ɡ�

�����Ⲣ���ܳ�Ϊ��ȥȷ�ϵ����ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateVOICE("���裱","ma03/0210161a04");
	CreateVOICE("���裲","ma03/0210162a04");
	CreateVOICE("���裳","ma03/0210163a04");
	CreateVOICE("���裴","ma03/0210164a04");

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//�����衿
<voice name="����" class="����" src="voice/ma03/0210060a04">
����Ҫ��������ء���

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210070a03">
���е㵣��ͷ���ͼ����ء�
����˵��ҹ�����岻�á���

{	FwC("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210080a02">
������
�����ǆ���µİ����ǣȣѵĴ�ξС�㡣��

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210090a03">
����������ô˵��ÿ�����Լ�ҲҪ���İɣ�
����ô���ģ�����ģ���������Ľ������

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210100a02">
�������ң�����ʲô����
���ɶ��ҲŲ�ȥ���������ĵ������أ���

{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210110a03">
������������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210120a03">
�����ǰɣ���

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210130a02">
�������Ŷ����

{//�����㥭
	OnSE("se���L_�|��_������01",1000);
	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210140a02">
��Ϊʲô��ǹ�����ң���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0210150a04">
����С�㣬�侲������
����Ȼ�ܲ�����ϣ���ż������������Ҳ�Ǵ�
�ڵģ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("@text0040");
	SetFwC("cg/fw/fw����_ŭ��.png");

//<voice name="����" class="����" src="voice/ma03/0210160a04">

	SetBacklog("����Ȼ������ȫ������ϣ������о����У���û�취��!!��", "voice/ma03/0210160a04", ����);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0059]
//�룺�������ķָ��픤����������ޤ���
//�����衿
{MusicStart("���裱",0,1000,0,1000,null,false);}
����Ȼ��<k>
{	SetVolume("���裱", 0, 0, null);MusicStart("���裲",0,1000,0,1000,null,false);}
����ȫ������ϣ�<k>
{	SetVolume("���裲", 0, 0, null);MusicStart("���裳",0,1000,0,1000,null,false);}
�����о����У�<k>
{	SetVolume("���裳", 0, 0, null);MusicStart("���裴",0,1000,0,1000,null,false);}
��û�취��!!��

</PRE>
	SetTextEXC();
	Request("@text0059", NoLog);
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("���裴", 0, 0, null);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210170a03">
���ء���
�������Ĺ��������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210180a02">
��������Ȼ���ҹ�����
������Ϊ�������ĵ��¡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0210190a04">
�����С��ҲҪע���Դǡ�
����ǽ�ж����������ۡ���֪ʲôʱ��Ϳ���
�������С���

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210200a02">
������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0061]
������˵������
�����ڲ��Ǵ���Ů�Ե����ܵ�ʱ���˰ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma03/0210210a00">
����ξ���¡�
��Ҫ�������Ȼ����ᡣ��

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210220a03">
����ѽ����ѽ��
�������������������ҵ����ݣ�������̫����
���ء���

{	SetComic(@0,@0,1);
	FwC("cg/fw/fwһ��_����.png");}
//�����ߥ���ŭ��
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210230a02">
��������

{	DeleteComic();
	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210240a03">
���������õ��ġ��ղ�ֻ�ǿ�����Ц��
����Ϊ�Ҷ��Լ��ļ�����������Ŷ����

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210250a03">
������������
����������������һ��Ҳ����Ŷ����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0210260a00">
�����ڻ���ִ��������ֻ�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���һ�˵��һ�룬�ֱ۾ͱ����������ؿ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210270a02">
���ɶ񡪡�����

{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0210280a04">
�������Ĺ���������С�㣡
��û���Կ���������������������Ů���ǣ�
���Ըн������곤ϵ�������������ȷ��
����״̬����

{	FwC("cg/fw/fw����_ƣ��.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0210290a04">
������һ������£���Ȼ�곤ϵ��ǰ�ڻ����ȣ�
�����ȴ���⵽��������ս����

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210300a03">
�������²��ö�˵�����������ţ�
���ȶ���ʵŶ����ֻҪ�мȶ���ʵ�ͻ�Ӯ��
Ŷ����

{	FwC("cg/fw/fwһ��_ŭ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210310a02">
����������������˳����
�������ҷſ������ն������ܲ�Ը��İɣ���

{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210320a03">
����ѽ������˵�����ֻ���
���ţ�����������Ҫ��Ҫ����������һ����Ű���
���г�������õ��ɫ�ű���ո�µ�δ���أ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0210330a00">
��������

{	FwC("cg/fw/fw����֦_�@��.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210340a03">
���㿴�ɣ���

{	FwC("cg/fw/fwһ��_ŭ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210350a02">
�������ҵ�̨�ʰ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W�����ꡣ������
	CreatePlainSP("�}��", 1000);
	CreateSE("SE01","se���L_����_Ź��05");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSP("�}�ե�", 5000, "#FFFFFF");
	Wait(10);
	DrawDelete("�}�ե�", 200, 100, "circle_01_00_1", false);
	FadeFR3("�}��",0,1000,200,0,0,10,Dxl2,true);

	OnSE("se����_�n��_ܞ��03",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��һ���߻��Ӽ��������ĽǶȳ����ˡ�
��վ�����ԱߵĴ�ξ��ʧ�ˣ��������󷢳��˹���
��Ħ�������˲�Ը��ع�ͷȥ�ĺ��졣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��");
	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma03/0210360a00">
���������˹���һ�����г���Υ����ͨ����ģ�
��ξ���¡���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0210370a04">
��˵����Ŷ���ն���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
����Ҳ������㡣

�������ξ΢΢�ζ�������վ��������
�������ֱ����ô��ǣ���������Ц�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_��Ц.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210380a03">
��Ư����һ��Ŷ��һ��С�㡣
������Щ��Ҫ����������ˡ���

{	FwC("cg/fw/fwһ��_����a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210390a02">
����Ҫ���ܱ��ѹ����ͺ��ˡ�
�����Ǹ���ʵ�������

{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210400a03">
����ξ�������߿�ʼ�ɡ�
����׼�������𣿡�

{	FwC("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210410a02">
������ȭ����
�����Ц������

{	FwC("cg/fw/fwһ��_���L.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210420a02">
�����ɡ���

{	FwC("cg/fw/fw����֦_��Ц.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210430a03">
�������ǺǺǡ���

{	FwC("cg/fw/fwһ��_��Ц.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210440a02">
���ߡ�����

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0210450a00">
����ô���̴Ӹ��¡�
���Ҿ��Լ�ȥ���ĳ����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0210460a04">
���š������ߺá���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�������ų��ӳ����ĳ��ⷽ����ȥ��
���������ߵĻ��ȽϽ���

{	SetVolume("@mbgm*", 2000, 0, null);}
��������<k>
���һ�û�߼�������ͣ���˲�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma03/0210470a00">
��������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma03/0210480a04">
����ѽ����ʲô�����𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0210490a00">
�����ǡ�
���ղš�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���ڲ�Զ����·�ڣ���һȺ��Ӱ���˹�ȥ��
����Щ�ˣ����û�п���Ļ�������������ס������
������

��������ʱ�ģ��ǳ���ª�����֡�
���ͺ������������ٷ�һ����

����������һ���ڳԷ���ʱ������Ļ��⡣

����������ֵ��Ż��ڸ����ǻ���
�����Ƿǳ�Σ�յģ�ɱ�����ڵļһ��

������Ҫǰ���ĵط�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170a]
//��������
<voice name="����" class="����" src="voice/ma03/0210500a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���l�������������á�
	SoundPlay("@mbgm13",0,1000,true);
	CreateSE("SE01","se����_����_�ߤ�01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	SetVolume("SE*", 3000, 0, null);
	CreateTextureSP("�}�ţ�", 1000, Center, Middle, "cg/ef/ef003_�����Ƅ�.jpg");
	DrawTransition("�}�ţ�", 200, 0, 1000, 100, null, "cg/data/circle_01_00_0.png", false);
	FwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170b]
//�����衿
<voice name="����" class="����" src="voice/ma03/0210510a04">
���ն���������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma03/0210520a02">
��������

{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma03/0210530a03">
����ѽ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
������ֻ���������ĳ��⡣


��û��ʱ������������ˡ�
����һ������Ļ�Ҳ���Խй����������Ҿ��ô��û��
�����Ҫ�ɡ�

�����Ǹ�Ϊ���׵İ�����
����Ȼ�Ⲣ����˵��Ԥ�⵽�����˲���ܴ����л���
���˺�ɱ�˵Ŀ����Դ��ڡ�

�����Բ����Ӷ�������
���������������Ӻ��洫��������
��������Ӧ��˵��������
�����Ų����������š�

�����ԡ�
���Ӳ���������һ�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	FadeDelete("�}�ţ�", 500, false);
	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0210540a07">
��Ӵ����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0210550a00">
������

//��������
<voice name="����" class="����" src="voice/ma03/0210560a00">
�����ǡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0210570a07">
���ҾͲµ��ᷢ�������°���������

//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0210580a07">
������΢������һ�°���
����ѽ����ô˵�ء������������Ȼû��
�����ҵ��ڴ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/0210590a00">
���ҵ���ϣ������һ�±ȽϺð�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���Ҽ����ܡ�
����Ů�������Բ��Ž������š��Ҳ�û�е���
�ٶȡ������Ŵӽ�С��������ȫ���������ٶȡ�
����������ʲô����������

���Ѿ����Կ������ĳ����ˡ�
�����������Ѿ������˾����ǽ��е�����������������
����

{	CreateSE("SE01","se���L_�Ɖ�_����");
	CreateSE("SE02","se�ճ�_��_ľ�䉲���01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE02",0,1000,0,750,null,false);}
�����������������
��Ӳ����ײ��������
�������ҽС�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma03/0210600a00">
��������

{	FwC("cg/fw/fw�衩���װ_ŭ��.png");}
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0210610a07">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���Һ��Աߵ���Ů������һ�����ߣ�Ȼ����˽�ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������`����
	PrintGO("�ϱ���", 25000);

	CreateColorSP("�}��ܞ", 10000, "#000000");

	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);

	DrawDelete("�ϱ���", 150, 100, "circle_01_00_1", true);

	DrawDelete("�}��ܞ", 150, 100, "circle_01_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
��ȷ�������
��������������塢�����߸��ˡ����������������Ϲ���
��Ա��������������ͬһ���ط���

�����Ӻ���֮ǰ����������Ϣ���������á������ԡ�
Ӧ�ò��������ġ�
���ⲻ�����������⣬�ܿ����ǶԷ��ʹ���������϶
����������

��Ա����һ���ⶼ���������������ľ��ء��кܶ���ֻ
�����������۾�������һ�С�
������������׼��Ŀ�ꡪ���ڳ������Ļ�·�٣�����
����Ȼ����Ҫ����

���ƽ����������������Ŷ̶̵�������
����Ұ������Ч��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma03/0210620a00">
��������!!������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���ҴӸ�ǻ����������
��һ˲�䣬�����˶�ͣ���˶�����

���������ǣ�������һ˲������û�ж���ֻ�����Ĺ�
����Ա��
�����漯���ٴ��ж��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//��������
<voice name="����" class="����" src="voice/ma03/0210630a00">
����Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��������ξ���Ҳ���Ǿ��졣
�����������������������ʵĻ�������Ҳ��¶��Щ��
�ӵ����ӡ�

�����ǵ�̬�Ⱦ������Ӷ�������
��Ҳ����˵������ֻ��<RUBY text="����">֤��</RUBY>�������������˵ֻ�ǲ���
�ҳݵĴ��ڡ�

���������������ȵ�Ŀ�������֡�������������ࡣ
����ô˵�Ļ������ǵ�����Ŀ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//������衿
<voice name="�衩��" class="�衩��" src="voice/ma03/0210640a07">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�᤺����01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
���Աߵ���Ů�󲽳��˹�ȥ��
�����������߿���������׼���������·�ٵ���������
ǰ������ˣ�վ����Σ��λ�õ����˵ĺ󱳡�

������һ˲���ֹͣ����������Ů�ܹ�׷��ȥ����ء�
����������ŮҪ�����ֹ���ǡ���һ˲�䣬����ֹ��˼
������������Ҫ���Ļ��϶��а취��

���ұ���Ҫ��ֹ�������ˡ�
���������Ų����������ŭ������һ���𡪡�������
��Ҳ�����ˡ�

{	OnSE("se����_����_���S01",1000);}
�����ȥ��
��������׷��ȥ�����ں󱳵Ĵ�����Ѳ���Ч����Ŀ��
���߲������������������������·�ߡ��б�Ҫȷʵ
�ؽ��������ˡ�

������Ҹ�¡�
����������һ���ص���Ҫ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
	OnSE("se���L_����_Ź��03",1000);
	CreatePlainSP("�}��", 1000);
	Shake("�}��", 300, 0, 10, 0, 0, 1000, Dxl2, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
������û�з����ҽС�
�������°�ĭ�����ŵ�������һ�£��������Ա�ͬ���
���ϡ�

���Ǹ�������Ȼ����һ������һ˲��ͻָ���״̬��
�����ƿ�������ֻ���ϰ����ѵ�ͬ�飬������׼Ŀ��
���������ж����Գ�֮Ϊ���ϡ�

���������ܹ�������
�����˻�δ�������ֵ��������ұ������졣

�����ȵŵء�
�������߳���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����
	OnSE("se���L_����_���å�02",1000);
	Shake("�}��", 300, 20, 0, 0, 0, 1000, Dxl2, false);

	SetNwC("cg/fw/nw�����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
//������㣯�������
<voice name="����㣯�����" class="����������" src="voice/ma03/0210650e239">
���ذ�!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Delete("�}��*");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
����Ϊ������û��ʧȥĿ�ģ����Զ�������ȫû�з�����
�ҽ����Ĳู��һֱ�ߵ��ݵ��˼�׵��һ˲����������
վ�����

��Ȼ�������ǵ���һ�����߿��ˡ��������Ѿ�ʧȥ�˼�
�����׵�������
���ҵ���Ұ�У���Ӳ���ֱ�ӵس������Ҽ�������Ů��
�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//���١�
<voice name="��" class="��" src="voice/ma03/0210660b42">
�������㣬�ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
�����ջ����߳����ȣ�Ȼ������Ϊ��ת����
����ȷ������Χ�������

���ҵ�һ���������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


}

//���x�k��һ��������֦���饤���`

..//������ָ��
//��һ����"ma03_021a.nss"
//������֦��"ma03_021b.nss"
//���饤���`��"ma03_021c.nss"



//���x�k֫���`��
scene ma03_021.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	SoundPlay("@mbgm13",0,1000,true);
	PrintGO("������", 30000);
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	FadeDelete("������", 0, true);

//���x�k֫
	SetChoice03("һ��","����֦","�׻�");
	select
	{
		//���`������
		CursorPosition($CsrX,$CsrY);
		if($CsrY!=288){
			if($SYSTEM_keydown_left){
				$LOCAL_keydown_left=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_right){
				$LOCAL_keydown_right=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_up){
				$LOCAL_keydown_up=true;
				ChoiceCursor();
			}else if($SYSTEM_keydown_down){
				$LOCAL_keydown_down=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_up){
				$LOCAL_mousewheel_up=true;
				ChoiceCursor();
			}else if($SYSTEM_mousewheel_down){
				$LOCAL_mousewheel_down=true;
				ChoiceCursor();
			}
			$SYSTEM_mousewheel_up=false;
			$SYSTEM_mousewheel_down=false;
		}		

		if(!#PreSaveFlag){
			SelectSave();
		}

		if($SYSTEM_skip||$SYSTEM_text_auto){
			$SYSTEM_skip=false;
			$SYSTEM_text_auto=false;
		}
	
		case @�x�k֫��
		{
			ChoiceA03();
//һ����"ma03_021a.nss"
				$GameName = "ma03_021a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB03();
//����֦��"ma03_021b.nss"
				$GameName = "ma03_021b.nss";
		}
		case @�x�k֫��
		{
			ChoiceC03();
//�饤���`��"ma03_021c.nss"
				$GameName = "ma03_021c.nss";
		}
	}
}

