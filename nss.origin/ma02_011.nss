//<continuation number="90">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_011.nss_MAIN
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
	#bg022_ɽ��a_03=true;
	#bg025_�ӵ�ɽ�}��ɭa_03=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_012.nss";

}

scene ma02_011.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_010.nss"

//��ҹ��ɭ
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg022_ɽ��a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 2000, true);

	Wait(1000);

	CreatePlainSP("�}��д", 2000);
	StR(1000, @0, @0,"cg/st/stС̫��_ͨ��_˽��.png");
	StL(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	FadeStA(0,true);
	FadeDelete("�}��д", 300, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fwС̫��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0110010b35">
������������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0110020b45">
����ô����
��С̫�ɡ�����


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0110030b35">
����������ӡ��
�������Ǳ��˼����ˡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0110040b45">
��Ŷ������


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0110050b35">
������ʲô������
������˭��·�����ֵط�������


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0110060b45">
���еġ�
�������Ǹ��쵰������������
��ô���ˡ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0110070b35">
��������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0110080b45">
������ɽ��ȥ�ɣ�Ȼ���Ƶ����档��


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0110090b35">
���ðɡ�
�����ǵġ�������������˵����̫�����˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

	PrintBG("�ϱ���", 15000);
	OnBG(100,"bg025_�ӵ�ɽ�}��ɭa_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm26",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
��Ϻ��ָ����͵��������塣

���������С��ģ�ļ��ţ���ɢ��ȫ�����أ�
������ԣ����ŵĹ�ģ������Խ�ӽ�����������
Խ���Ӵ�Ȼ������������������Ҳ���о�ס��ұ������
�ܳ����ĵط���������Ũ�Ĺش塢��ǰ�ĳ�����ȣ���

�������������������Ϊ��С��ϸ�������ʺ�ɫ��
��ɫ���˺�ɫ��������ְס����������ɫ��
�����Ƕ������ݣ��ر��������ɣ�������Խ��
����Ҳ��þ��ˡ���

��������ȱ�������������ó�Ӧ�Լ������������ݡ�
��ƽ�����������ʮ�������ң�
���������ܴ����ʮ�����ϡ�

�����⣬���Ǿ�������Ĳ������ʣ�ʮ������˺�
ֱ����������ò�������������ı䡣

����Ϊ����͵��������壬��˵�Ӵ�ͳ�͢��ʷ����
���ּ�¼ʱ�����Ǳ��������Խ��ж���Ϊ�����Ƚ�
��ұ�������ձ���Ϊ��Ͷ�ұ�ĵ���
��ʼ�������ǵĽӴ���

������������������Ͷ�ұ��Ϻ�Ķ�ұ֮�似���ϵĲ��
�������ԣ������巽�����Ӧ�Ի�������ࡣ
һ����ԣ���Ͷ�ұ����Ʒ����Ϻ�Ķ�ұ����Ʒ��

����ˣ�ֱ�����죬Ϻ����Ϊ�������壬
��������Ȼ�ܵ���ƫ�������ӣ�
��ͬʱҲ����������ְ�ܼ��Ŷ��ܵ����ء�

����������һ��˵������Ϊ���Ƕ����벻�ϵ�ԭ����
������Ϊ��ұ����õ����ػ���Ϻ�����������뼼��
���ѳ���֮ʱ�������Լ�����װ�ס�
��������ǵ�����������Ҫ����ĺ���������

����͹���Ҳ�����������������ͬ������塣
��������ѧ���������ܳ�Ϊ�����ˡ���
�������ر������ı���һ������ѩ�׵������ˡ�

�����Ƿֲ�������ŷ�ޣ�ͨ�������Խ���Ϊ���ĸ�������
�������˾޴�Ƹ������Ǳ�������֮���ˡ�����ĺ�Ļ��
�Ĵ����˿־塢��񡪡���ˣ�
�����ϴ������ս�������������������ѡ�

�����Ǳ���Ϊ�����ߵ�ĩ�ᡣ
��������У�Ҳ�а�Ϻ�ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



}

..//������ָ��
//�Υե����롡"ma02_012.nss"