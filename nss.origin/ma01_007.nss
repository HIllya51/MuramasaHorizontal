//<continuation number="950">




chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_007.nss_MAIN
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
	#bg013_�`�}���a_02=true;
	#bg013_�`�}���a_03=true;
	#bg006_���w�β���_03a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma01_008.nss";

}

scene ma01_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_006.nss"

	PrintBG("�ϱ���", 30000);
	CreateColorSP("��ܞ", 1500, "#000000");

	Delete("�ϱ���");

//��Ϧĺ����`�}
//��ҹ���`�}
//�����w�β���

	CreateTextureSP("�}����30", 1030, Center, Middle, "cg/bg/bg013_�`�}���a_02.jpg");
	CreateTextureSP("�}����20", 1020, Center, Middle, "cg/bg/bg013_�`�}���a_03.jpg");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg006_���w�β���_03a.jpg");

	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");

	FadeStL(0,false);
	FadeStR(0,true);

	FadeDelete("��ܞ", 600, true);
	WaitKey(300);

	FadeDelete("�}����30", 1000, true);
	WaitKey(400);

	SoundPlay("@mbgm27",1000,1000,true);
	FadeDelete("�}����20", 1000, true);

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070010b56">
������Ҳ����˵����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070020b43">
�����ƺ����ٻص������ָ�������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070030b33">
����������¸��������ְɣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070040b43">
���š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
������һ��ĵ��飬��С�Ľ����鱨�ı���ᡣ
���������ҵķ��䡣

��С�ĵ�Ȼ���������Խ����Լ��ķ��䣬�ұ�����΢�е�
�ż�̫�ߡ���������ô˵��Ҳֻ���ͷ�����
����û�취��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070050b43">
���۷ɣ���������־���úò���������
�涪�ˡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070060b56">
���������˰���������˵����

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070070b33">
�������ع��𣿡�

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070080b43">
�����ۣ��Ծ��Ĺ���۷ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
����������ڵİɻ쵰��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070090b56">
���Թ�������
������ѭ���㼣ֻ��׷�ٵ�����Ϊֹ��֮��
�㲻֪�����ˡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070100b43">
������˵֮����ʵ���ɼ�Ҳֻ��
�۾���������ô�̵ľ����ˡ���

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070110b33">
��ͦ�������
��һ��ʱ��͵õ���ô���鱨����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070120b56">
���Լ������óԾ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���������Ů�Ӻ��ϸ��˵Ķ����������֮����Ѳ飬
˳���ü�ֱ������һ����˳���ݡ�
������ǰ�����Ѿ�ȷ�ϣ����ڳ�վǰ���˼��ҵ���֮��
��̤�ϻؼҵ�·��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070130b43">
�����ǲ���˼���ء����������Ƭ���֣�
������Ӧ��ֻ��ȥ��סլ����Ŷԡ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070140b56">
���Ǳ�Ҳû��Ŀ���ߡ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070150b33">
��ȷ�������������𣿡�

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070160b56">
�����˶����С�ƹݽ֡��кü�����ǰ��ҹ��
��������ȥ�ˡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070170b43">
����һֱ��������ؼң�����������
��������ڣ�Ҳ����û�����ֿ��ܡ����ɡ���


{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070180b56">
������ÿ�춼����ƫƫ����û�г��֣�
�����ò���˼�顭������ô˵�ˣ�
Ӧ����ȷ���˰ɣ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070190b43">
���š���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070200b33">
�����������������𣿡�

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070210b56">
�������Ǹ�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
����Ȼ��������׼��ȥ����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070220b56">
�����������үү�����ذɡ���


{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070230b33">
���������Ǹ�����үү����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
��С�ĳ�ü����������������Ȼ��

���ɼҸ����������������������ʱ�ľ�������أ�
������������������ü��Ρ�

��ÿ�ζ�ס����ȥ·�ģ��������ֵ�ӵ���ߣ�
����үү��
���˳��׵ۡ�

����������Ϊ��·ͨ��ʹ�û���������
��Ϊ����������ͨ�У������ľ���Ҳ�����й�
���ҵĶ���������Ϊ��һ���׵۶��ң���������
�����ǵ����ֳ�үүȴ��������Ͽɡ�

�������Լ���ʮֻҰ����ʹ����˵��������������Ե�
����ŭ�ж������߽��й�����
����֮��ս����������ñ������ƣ�ѡ����
ɢ��ս������ȻΪ�����۵з�ս��չ�����λ�ս��

��������ͨ������������ٲã�����������Ҳ��
���������ǰ��������Ǻ����ˡ��԰˸�������Ϊ����
ȫ�߳��ˡ�
���ڶ����׵۶��������սᡣ

����Ϊ�����������£������Ǹ�үү��������˵���Ǹ�
���Źء�
��������֪�ǲ���������͵�Ե�ʣ���˵�������ʱ��
����ʵ���ڼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_���b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070240b56">
���������컹ͦ����������ء���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070250b43">
�����Ҿ�����������лٻ����ֵļһ
��һ�������Ǿ��϶������Ƿ���һͨŭ��
������������ȫ̸���ϻ�������

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070260b33">
������ʲô��Ц���°ɡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
�����ǵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070270b56">
����֮��������׼үү���ڵ�ʱ��
��ȥ�����Ǳ߰ɡ�
�����������޷���չ�ˡ���

//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070280b56">
����ô�����Ǳߵ������Σ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070290b33">
�������š�
������Ȼ���Ű��ɵ����Ѷ�����һ�顭����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��һ��С�ĵı�����Ѿ����֪��������
���ֲ��ܲ��ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070300b56">
����Ȼ����

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070310b33">
���ɹ�Ϊ�㡣ǰ���ɺ��ұ��ֿ��Ժ�
û���˿�������
�����������˺ܶ಻�����εĴ��ԣ�
�ǲ��Ǻ�˭˭˭˽����֮��ġ�����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070320b43">
��˽�������أ�����û��ĳ���ض������ˣ���

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070330b33">
�����ݲ�ͬ�˵�˵������ǧ��ٹ֡�
��˳��һ�ᣬ����۷�Ҳ�ں���֮�С���

{	FwC("cg/fw/fw���w_���b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070340b56">
������������ûʧ�١���

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070350b43">
��ֻ��һ����ʧ����˽�������ǲ���
Ҳ�Ϳ����϶��ǰ�ܼ���ء�
���۷ɣ��ɷ�һ����Ĺ��Ӹ����ǿ�������

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070360b56">
���ܸо�����������������֧��������ʧ�ѵ�
��һʱ������Ҫ���ˣ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070370b33">
�������ǵȻ�������㡣
�����С���һ���£�Ҳ���������Ĵ������

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070380b56">
���ţ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070390b33">
���е㡭����̫�õĴ��ԡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070400b43">
����������˭���ɲ�����ʲô��ʲô����
��������עĿ�ء���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070410b56">
����˵�������ļһ����ǰ��ʼ���аɡ�
������������£��������ǵĻ�Ҳ���ǰ취����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���������������������һ��Ĵ��ڡ�
����Ȼ��ǰҲ��������������������ȴ
˵�š����������������ν����˰�Ķ����ء�����
����Ҳ�Ͳ�����ô���⡣

����Ȼ��Щû��������������ڱ�������ж�
���ӻ�Ծ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070420b33">
������������
�����ǹ����ɵĴ��ԡ�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070430b56">
��ʲô������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070440b33">
������˵�����Ǻ����й�ϵ�Ĳ��õĴ��ԡ�
�������������ʧ�����¼��ܶ�԰ɣ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070450b43">
�����Ȳ����ӵ����򡣡�

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070460b56">
�����ܽ�ʲô�Ȳ��ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ȼȷʵ�Ȳ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_�Ӥ�.png");
	SetVolume("@mbgm*", 2000, 0, null);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070470b33">
����ʧ�����ɡ���
���ܶ��˶��ڴ���
�ǲ��������޵�ū��ó��֮��ġ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070480b56">
������������

{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070490b43">
������������

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070500b33">
������˵С���Ӱ������п����������
����Ů�Ӿ���ʧ�١���Ȼʵ����β��������
�����˵���½ȥ���պá�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��С��˵�������Ĭ�ˡ�
��Ҳû�����ٿ��ڡ�

{	SoundPlay("@mbgm35",2000,1000,true);}
�����������޵�ū��ó�ס�
�����£�ֻ�Ǻ���֤�ݵĴ��԰ɡ�

��ֻҪ�Ƕ������ޱ��з��е��ˣ�˭�������뵽����
��˵�������Ҷ������޺��޷��е�������������ڡ�
������˵��������ҥ�������Ҳ��������Ȼ��

��Ҳ������νƫ���Ķ�����

��Ȼ����ʹ��ˡ�
�������޵�ū�����ף���˻�������������ʵ���塪��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070510b43">
������Ҳ������ȫ�������ء���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070520b56">
���ұ�������


{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070530b43">
��ԭ����ˡ������Ļ�����ܷ���
������˾ͱ��û��ô����˼���ˡ�
����Ϊ���治�����Ա����߼��ˣ�����
���Թ��������

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070540b33">
���ȵȡ�����

{	FwC("cg/fw/fw���w_ŭ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070550b56">
���ұ�����

{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070560b43">
��ϣ������ƽ��������˵��
������ֻ���˷�ʱ�䡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
�����ڼ����������Һ�С�ģ��ұ�����������
����һ����Ͱˮ��
�����������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070570b43">
��Ŀ����Ů�˺ͺ��ӡ�����Ҳ�ܺ���
������ץ������Ҫ���ѵĹ����٣�����Ҳ�Ƚ�
���ɡ���Ȼ�����ڴ����ǳ�Ϊ�ͳ�������һ��
���Ͷ���������

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070580b43">
��Ӧ��Ҳ���������Ͷ�����ū���ɡ���

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070590b56">
��������

{	FwC("cg/fw/fwС��_�Ӥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070600b33">
������������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070610b43">
�������ū���г������������ء�
�Ϻ�����ۡ������ǰ��š�
��Ŀ�ĵز��ö�֪����Ҳ������
�����������ߴ�½�в�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���ұ������ؼ���˵�š�
����Ȼ����ֹ������ȴ�޷���ֹ��

�������ף���������ŵĶ����ϸ���
������ͬ���ĵ���
����ʹ���ϣ�����Ҳ�޷���ʧ��

����ġ�����������
������һ�����ʵ��
������Ҫ˵�����ٵ�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070620b33">
�����������


{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070630b43">
���š���

{	FwC("cg/fw/fwС��_�Ӥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070640b33">
�������ֻ�����Ŷ���������������
��ķ����ˡ���
�����Ǹ���ô���أ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
������ô���ء�
�����������̬��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070650b43">
��������֮���ȵ����������ɡ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070660b33">
��������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070670b43">
���ɵ�ʵ�������Σ�������ʵ��
һ����֪��
������Ҫȷ���������

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070680b43">
�������ܲ���Ҽ���Ҳ�޼����¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
���ұ�û�лش�
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070690b56">
����֮����������֮������ٰɡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070700b43">
���ǰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
�������ͬ���ұ����ͷ��
��С�ĳ�Ĭ��

��˼���ŵ����⣬һ����ȫԱһ�¡�

��<RUBY text="��������������">�޷��ֿ�������</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_�@��.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070710b43">
��С�ġ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070720b33">
��������

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070730b43">
��������������ʲô�𣿡�

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070740b33">
�������������š�
��˵����������һ�����ұȽ����⡣��

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070750b56">
��ʲô�£���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070760b33">
���ǽ������ϣ�������ѧУ��;��
��˵���˿����˹��ˡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070770b43">
�����ˣ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070780b56">
���ұ����̶ֳ��𣿡�

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070790b43">
���������۷ɣ��ú��ÿ���Ц����̬��˵����
������ô����˵������Ҫ��������

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070800b56">
�������ҿ�������ġ�����Ҳ���ǿ���Ц��
���ϰɡ���

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070810b33">
�����ء��������������ģ��ƺ�Ӧ������
��Լ�����ұ���ô��֡���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070820b56">
���൱���ء���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070830b43">
��Ϊ�˻Ự˳�����������ҳ�Ĭ��
���Ҳ�û�н��������ʵ��Ҫ��������¼��Ŷ��
����ô����ʲô�����ˣ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070840b33">
�������š������ǡ�������
�ǳ������о��ġ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070850b56">
��Ŷ����

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070860b33">
����˵�ǰ��ڴ󽫾��أ����ǰ��������أ�
�Ǳ����̶ֳȺڰ��������ֽ�͸���ˡ���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070870b43">
��û��ô���������������ء���

{	FwC("cg/fw/fwС��_ŭ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070880b33">
��һ��ɢ�������˺��µ��׶�����
һ����ѧУ��Χ�ǻ�֮��ġ���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070890b56">
���ǿ��湻���ɵġ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
���Ҳ�������첲������һ�䡣
����һ������ѧУ������Ҳ����˵��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0070900b33">
����ʲô������ϵ�𣿡�

{	FwC("cg/fw/fw�ұ�_���.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070910b43">
�������֮ǰ�Ĵ�����ϵ���������Կ���Ϊ
���ִ�з�����׼��һ�������ء���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070920b56">
�������ǣ�ֻҪץס������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070930b43">
���п��ܾ����ҵ��ɵ������ˡ���ֻ��
�п���Ŷ��
���ֽ׶β���ʲô��ֻ���Ʋ��ء���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0070940b56">
����Ȼ��Ҳ���ס�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
���������ڸе���������һ��ͨ��ǰ���ĵ�·��
����ʹ������·����������

//��ҹ���`�}
{	CreateTextureEX("�}����50", 1050, 2000, 0, "cg/bg/bg013_�`�}���a_03.jpg");
	Move("�}����50", 0, Center, Middle, null, true);
	Fade("�}����50", 2000, 1000, null, false);}
��������죬��Ҳû�лؼҡ�

�����ǿ�ʼ���͡�
����û�����ϰ������ߵ��׽�ͬ�鲻��
����˼尾֮�¡�

�������������͵Ľ��ǡ�
��˵ʵ��������˯����ʱ�䶼�᲻�á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0070950b43">
����ҹ�����Ҳûʲô��Ŷ��
��Ҫ�Ǳ����ִ�ץ����ʲô���������ˡ�
�侲�㣬�۷ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�������ס�
���Һ����ף����ǡ�

��������������û�°ɣ�
���϶�ֻ�����������Űɣ�

���Ͽ��������
�����ڻ����Ļ����Ҿ�Ц��ԭ���㡣

������˵������ı���������Щ������ץ������
��������������ң�
���Ҿ͡���

���ɶ�

��������һ���ҹ�������һ���Ρ�
�μ��Լ��Ͳ���ʶ�İ�������չ�����Ӵ��ս����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000,3000);


}

..//������ָ��
//�Υե����롡"ma01_008.nss"
