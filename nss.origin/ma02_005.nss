//<continuation number="1350">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_005.nss_MAIN
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
	#voice_on_С̫��=true;

	$PreGameName = $GameName;

	$GameName = "ma02_006.nss";

}

scene ma02_005.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_004.nss"

//��ɽ�С��o��
//���L��

	PrintBG("�ϱ���", 30000);

	OnBG(100,"bg022_ɽ��a_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm35",0,1000,true);

	StR(1000, @0, @0,"cg/st/st�L��_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw�L��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050010b45">
������������


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050020b45">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��á�ϥ��ͻ��
//�������}����

	OnSE("se����_����_�᤺����01",1000);
	DeleteStR(300,true);

	SetFwC("cg/fw/fw�L��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050030b45">
������������

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050040b45">
���ҡ�����Ҳ�����������ô��
�������������ˡ�����

//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050050b45">
����������������

{	#voice_on_С̫��=true;
	NwC("cg/fw/nw������.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050060b35">
���ǣ��ǣ��ǡ�
��̫�������ˡ�һ�㶼�����㰡����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��С̫��
	StR(1000, @0, @0,"cg/st/stС̫��_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw�L��_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050070b45">
��С̫�ɣ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050080b35">
������û��ʲô���˰���
��Ҳ�͵������˵ĳ̶�ô�����Ұ����Ұ���
�㻹�����˵ġ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050090b45">
������������


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050100b35">
���Եȣ��Ҹ�����ҩ��
��Ҳ��ǿ׳������ô����Ҫ��ô����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050110b45">
������
����������Ҫ����˵�������ԭί�ˣ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050120b35">
����Ϊ�����ˡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050130b45">
��ȴʲô��û���𣡡�


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050140b35">
����ѽ��
����ʲô���������𣿡�


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050150b45">
����װ��Ϳ��
�������ʱ���ڵĻ���Ҫ�������Ҳ��
����Щ����


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050160b35">
���Ҳ����ϡ�
����������Σ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050170b45">
��ʲô������


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050180b35">
����Ҫ���ư�Ѳ���ʲô��Ҳ���ˣ���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050190b45">
��������


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050200b35">
�����ǲ����ܵġ�û��ɣ�
��ɱ���Ǹ�Ů�����Ǿ�û·�����ˡ�
����ȥ�ǣȣѹ���Ҳ�״��ˡ�
��Щ�һ�Ϊ������ֻ�ܴ����㡣��


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050210b45">
���š�����


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050220b35">
�����һ�룬���ʧ�������ǲ����е����ҡ�
��Ȼ�������ɱ���Ļ����Ǳ���ȫ���ˡ�
��������һ����������ͳ���������������
�㲻�ǿ��Լ��������ú�������ô����


//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050230b35">
������˵���Ϸ�İ�æ�����õġ�
������˵����̫����Ŷ����Ҳ��Щ�ȽŲ���
�ˣ���Ϊ������㻹��һȦ�ء�û�취����


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050240b45">
��������ֻ��װ��Ϳ�ɡ�
�����ˣ����ȷʵ���ҵ�ʧ�ߡ�
�����ҷ�Ƣ��Ҳ���á���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050250b45">
����������֮��Ҫ���Һúøɡ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050260b35">
����Ȼ��������Ĺ�Ӷ֮�����κ�Ҫ�󶼻�
Ӧ�ʡ�
��Ҫ��ʲô�ء���ʫ��������������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050270b45">
���Ҹ����Ǯ�������Ͻ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС̫��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050280b35">
������Ц�ġ��������
�����ź����Ҽҵļ�ѵ��û�й�Է����ɻ�
��һ�����뾡�ܱ޴�����Ϲ�ͷ������ʹ������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050290b45">
�����ǵ�Ȼ�ġ���һ��ʩ����ģ����
��������˵�����������ڴ˶�׬�㣬����
û�취�˰ɡ���


{	FwC("cg/fw/fwС̫��_Ц��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050300b35">
���ǡ����Ǵ�����ʹ���ء�
��������˰���ʧȥ�˹����빤������������
Ҳһ�ȱ���ȥ����֮һ�塣���������ЩĪ��
�����Ļ����ﱲ���޷�ά�����ơ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050310b45">
������˵����
���ߡ�������Ȼ��������뷨���Ǿ������Ǻ���λ
��ɫ���߶Կ��ɣ���


{	FwC("cg/fw/fwС̫��_�侲.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050320b35">
��Ŷ��������Ҫ���Ǵ����ø�����
�������⡣����Ϊ������ô�����ŵ����ˣ�
��Ƿ֮���Ҫ���Լ���˫�ֳ����ء���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050330b45">
������Ҫɿ���ң�
��������˵�������ܼ�֮���ҵ�Ȼ������
�������ҵ���ᶼ���ˣ��Ѿ��޼ƿ�ʩ����


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050340b35">
�����ܷ��ˣ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050350b45">
�������Ҷ���ʦ�޸���
�����찡�����ҡ���<RUBY text="����">�һ�</RUBY>Ӧ�ò���
���ҵ�Ҫ������Ӧ���ھٱ���ף�ɣ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050360b35">
����Ϣһ�������޸��İɡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050370b45">
��������ǵ�����Ϊһ̸������û��
��ô���㡣
�����Ҫ����Ȼ�޸�����Ҫ�ȵ����Ҷ�
������Ȫ֮���ˡ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050380b35">
����ѽ��������û�취�ˡ�
�������ˡ���Ȼ�о仰��������ȴ����������
������أ�����������Ϊ�ϵ���׳ô����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050390b45">
���Ǽһ��ƺ���ȡ���׼������ݵ����ӡ�
���Ͼ�Ҫ׷���İɡ�
���������ˡ����������Ȿ���������������
����һ����Ƨ����ɭ���ﳤ�ߡ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050400b35">
����Ҳ����ݷ��ء���Ҫ��˵�Ļ���һ������
���ݣ���Ҳ��������ͬ����������Ĺ������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050410b45">
�������Ͼͺá�
����������Ҳ�̸���㡭���ղţ�˵��Щ
ʲô�����޷����ӵ�����ɣ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050420b35">
��ʲô����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050430b45">
����������ո��ᵽ�˰ɣ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050440b35">
���Ǹ���ɫ���а�����

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050450b45">
��ȷ���𣿡�


{	FwC("cg/fw/fwС̫��_�侲.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050460b35">
����ô����
�����еļ���ɲ����ҵĹ�����
Ҳ���ܻ��жϴ��󡣡�


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050470b45">
����������ȴֻ����һ�۾Ͷ϶�Ϊ��˵�е�
���������𣿡�


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050480b35">
��������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050490b45">
��˵�������Ǹ�����������һ����ֵ��¡�
���������Ƿ�֪�����Ǻŵ����顭����


{	FwC("cg/fw/fwС̫��_�侲.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050500b35">
��Ŷ������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050510b45">
��������װɵ�ļ���̫�����˰ɣ�
���ƺ�֪��һЩ�Ҳ�֪�������顣��


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050520b35">
����ѽѽ����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050530b45">
������ҵĽ���ʩչ����������<RUBY text="����">�ַ�</RUBY>
Ҳ������й��𣿡�


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050540b35">
��������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050550b45">
�����������������ˡ�
������������������鷳�������ǵ����ǲ���
�������Ե����ݴ�������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�L��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050560b45">
����ʤ��ô����


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050570b35">
���ǡ���Ը��ĵ������ðɡ�
�����������״��������������ڣ�����
С̫����ǰ��һ�����Ǻ�Ӥ��һ��������
����֮���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050580b45">
�����ù�����
�����Ȼ�ز����ǰ㼼��������
����֪������


{	FwC("cg/fw/fwС̫��_�Գ�.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050590b35">
���ֲ��������Ը���������ЩѪ�����յ�������
��������
�����������������������ʿ��Ҳ����
���ܳ����С����Ǻǣ��뿴�𣿡�


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050600b45">
��������


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050610b35">
������˵����
���Ǳߵ�����Ҫ���ҵĶ��֣���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//��������
	OnSE("se��Ȼ_��ľ_̽��01",1000);

	WaitPlay("OnSE*", null);

	StL(1000, @0, @0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050620a12">
����ѽѽ�����ǵġ���
���������Ź��ҿ����𡣡�


{	FwC("cg/fw/fw�L��_�@��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050630b45">
�����㡭����


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050640b35">
���ǡ�
���þò�������ѩ����¡���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050650a12">
���١��١�
����Υ�˾�Υ�ˡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050660b45">
�������պá�
�������еط�Ҫ���㡣��


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050670a12">
���ǣ�����������°ɡ�
����ξ������Ҫ˵�����飬���Ѿ��ǳ�����ˡ���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050680b45">
��������˵������һ���ӵĻ���
���㲻��˵���������ֵ�<RUBY text="����">��ϵ</RUBY>����һʧ��!?
����˵���²������κη����ˣ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050690a12">
���ţ��ǵġ�С��ȷʵ��ô˵����
���ǵ�ȷʵ���������Ʋ���������ʱ�򡭡�
˵�ǵ���̸���Ļ���Ҳ���б�Ҫ��ͨ����ѩ���
����������


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050700b45">
����ʵ����������ء���Ȼ����Ѳ���!?
��������Ϊ�˲������ֶ�����������Ļ��
�����𡭡���������û���κ������ˡ�
�ǿƲ����������ܣ���������������!?��


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050710a12">
���������öԡ��޿ɱ粵��
�������أ���ξ���¡��Ʋ�����������ʵ
Ҳ����<RUBY text="��������">��װ��֪</RUBY>�����������塭����


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050720b45">
������˵����������Լ����
�������Ҿ�������<RUBY text="����">��̬</RUBY>����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050730a12">
��Ӧ�ô���Ļ�ȷʵ�����ﵽλ�ˡ���һ��
ȷʵû�����⡣
��ֻ����һ�㣬��û��Ԥ�뵽���������
����Ѳ����ƶȡ��������˽š���


{	FwC("cg/fw/fw�L��_����.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050740b45">
��������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050750a12">
�����������ֵ��˱��������ǰ��ռ��أ�
Ϊ�˰��յ��������չ��Ѳ������񡭡�
�����Ǳ��湦�򡣡�


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050760a12">
������Ϊһ����̬�������Լ������������ߡ�
ʵ�ʾ����ƴ�н�ݼٻ���������֮�ࡣѲ���
֮�䶼�γ���Ĭ������ʲô����������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050770a12">
���������Ҳû�з������ϡ�������ˣ�
һ��˵��͵���ξҪ��������Ѳ�飬�ͱ�
���ŸϽ�����ȥ��һ������ʽ�Ŀ��š�
������������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050780b45">
�����㣿��


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050790a12">
�����ǡ�
������û���ϡ����ҵ���ʱ����������Ѳ���
<RUBY text="������">������</RUBY>֮���ˡ�����


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050800a12">
��֮���Ҿͷ���������������Ҳ���𾪰ɡ�
ԭ��������Ϊ����Ѳ��ٵı��֣�û�뵽
��Ȼ������ӵ���������¶��������ˡ���ѽѽ����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050810b45">
������
��˵�������ţ��Ǵ����Ǹ�Ů�ģ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050820a12">
�����ǣ�����������֮ǰ��
����Ϊ�޷�˵���ʹ�ξ����֮���Լ����
ԭ��Ҫ���������ֻ�ǵ�����ϣ������Ҫ
��ȡʲô�ж�������


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050830a12">
������Է�ȴ��װ��֪�顣
˵�Լ�ֻ�����Ѳ��ٵ�ְ����ѡ�
��Ȼ��˵���޿ɺ�ǡ�����һ��������Ҳ��
�޿ɷ����ˡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050840b45">
��������Ů����ʲô�ˡ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050850a12">
����ϸ����������������ŷ���ĸ��ط���
�����������˾��ġ�
�������Ҳ�����ر��ټ�������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050860b45">
���Ǵ���˰ɣ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050870a12">
�����ǡ�
�����д�������֦���Ǵ���ˣ���Ȼ��ͨ
������ԣ���ЩӦ��û�д���Ϊ��
����ŷ���ء���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050880b45">
������˾�������ǿ���𣿡�


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050890a12">
��������ȫ������˵��������������ϵ��
ֻ���Ǵ���ˣ����ܷ��ӵ����ã�������
��������һϯ֮�ء���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050900b45">
�������ߡ�
����ô����ε�����������ĵ����ж�����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050910a12">
��������ˡ�����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050920b45">
����ô�ƺ��أ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050930a12">
����Ʋ�������ȡ����ϵ���鷳��
�����ٻ�����ɡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050940b45">
��ʲôʱ����ϵ����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050950a12">
������ߵ��������������ܵ����
�е绰�����׸㶨�ˡ�������С������Ӧ��
Ҳû�е��ߡ����ӵ���Ϣ��������������
�ͻ������ж��ˡ���


//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0050960a12">
��������Ѳ��ٵ�����Ӧ����ͨ�����ߵġ�
����Ѳ����Ǳ߼�װ���ڼ��ղ������ߡ���
Ҳ�޷��ɻ�һ����԰ɡ�֮�����Ǵ�ξ����
�������ˡ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050970b35">
������˵��ʤ��Ҳ�����⼸���ˡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0050980b45">
�����������ˡ��������ˡ�
����ôһ�룬�ƺ������鷳���ء����ǣǣȣ�
�����������������н顣����С̫���ɸ���
��ΪĻ����ʿ�����������Ҫ����


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0050990b35">
���ǰ���ѩ����¶�����˵�������ǰ���ȡ��
���еĶ��ˣ����չ��ҵ�׬Ǯ���ơ�
�ǳ���л����


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051000a12">
���ٺ١����������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051010b45">
���ȵ��ɹ�֮ʱ�����Һú�л��ɡ���


{	FwC("cg/fw/fwѩ܇�_����.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051020a12">
�������ˣ��ٺ١���
���������⣬�����ˡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051030b45">
��Ŷ�����ǵ�������֮�ˡ�
�����ߡ�����


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051040a12">
���١���


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051050b45">
�������ҳɹ����<RUBY text="����������">��������˵</RUBY>
<RUBY text="��������">������ν</RUBY>��������ô��
���ǣȣѵ������ˡ���ѩ���һ�ء���


{	FwC("cg/fw/fwѩ܇�_ͨ��b.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051060a12">
���١��١��١�����


{	FwC("cg/fw/fwС̫��_�侲.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0051070b35">
��������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051080a12">
����˵����ôֱ�ף�Ҳ̫¶���ˡ���
������������Ҳ���������ɡ���


{	FwC("cg/fw/fw�L��_��Ц.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051090b45">
�������޳�֮ͽ����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051100a12">
���ϻ̳Ͽ֡���


{	FwC("cg/fw/fwС̫��_Ц��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0051110b35">
���ǡ��ǡ��ǡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051120b45">
���ߡ���
������һ����̡���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051130a12">
�������޷�����


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051140b45">
��������ɫ�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051150a12">
��û����������˵�ˡ�
�����ƺ���һ�����ѡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051160b45">
����֪�Ǻ�����
����������Կ��ŵĻ����ƺ��Ȳ�����������Ҳ
�����ڽ�פ������


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051170a12">
��˭֪����
��ͷ��������Ҳ̸���ϣ�����������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051180b45">
��ʲô����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051190a12">
�����ţ���ȥ��Ѳ��ٸ��µ�ʱ��
��żȻ�����������й�һ��֮Ե��
��λ���١���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051200b45">
���������٣���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051210a12">
���Ǹ����÷ǳ��������������ˡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051220b45">
�����������ˡ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051230a12">
����ô˵�ء���Ҳ���Ǻܶࡣ
��ֻ�ǡ����ƺ��Ǹ����ǴӸ����Ͼ�
�޷����ĵ�С�ӡ���


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0051240b35">
���ǡ�Ҳ����˵����


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051250a12">
����<RUBY text="����">����</RUBY>��
�����������˼ҽ��ܹ����ý����İɡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051260b45">
����������
����ȷʵ�ϲ����ɡ���


{	FwC("cg/fw/fwС̫��_Ц��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0051270b35">
���Ǻǡ��Ȳ�������Σ�������Ŷ��
���������˴˲�������ɡ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051280a12">
��Ҫ˵��ϲ���������ᣬ��ʵҲ̸�������ᡣ
����ѽ��ϲ������<RUBY text="����">����</RUBY>���ŵ��ˡ�
���ܺ��˻��Ƕ��ˡ�����


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0051290b35">
����������ÿ���˶������档����������
������Ϸ��������
����ô��ѩ����¡�����˵���Ǹ��е�������
�𣿡�


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051300a12">
��������û��֤�ݿ��Զ��������ǡ�
��ֻ�ǣ������������ʱ�Ҿ����롣�����ˣ�
�൱�ó���������


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051310b45">
���ó�������������Ҳ����ֵĳ̶ȣ���


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051320a12">
�����ǡ���


{	FwC("cg/fw/fw�L��_ͨ��.png");}
//���L�ࡿ
<voice name="�L��" class="�L��" src="voice/ma02/0051330b45">
���ߡ���
�����ǵ�һ����˵�����Ӷ���ߡ�����


{	FwC("cg/fw/fwС̫��_ͨ��.png");}
//��С̫�ɡ�
<voice name="С̫��" class="С̫��" src="voice/ma02/0051340b35">
��Ϊ���������
��ѩ����£���������Ǹ��˵���ò�𣿡�


{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma02/0051350a12">
��С��һ׮������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma02_006.nss"



