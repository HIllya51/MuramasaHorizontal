//<continuation number="750">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma03_011a.nss_MAIN
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
	#bg037_����������`��a_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName

	$�衩������ = true;
	if($ma03_011_routeFlag == true){$ma03_011_routeFlag=false;}
	else{$Others_Flag++;SetHex();}

	$PreGameName = $GameName;

	$GameName = "ma03_012.nss";

}

scene ma03_011a.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma03_011.nss"

//�񤳤Έ������ޤ�

	SoundPlay("@mbgm16",0,1000,true);

	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg037_����������`��a_01.jpg");
	FadeBG(0,true);
	StR(1000, @+50, @0,"cg/st/st����_ͨ��_˽��.png");

	Delete("�ϱ���");
	Move("@StR*", 300, @+30, @0, null, false);
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
��Ϊ�˱�������˵�ǽ�ߣ������������Ǽ���������
��һ��һ�����ܴ��и��ܵ����顣û��һ�����Ǵ���
���⶯�ֲ����ġ�

�����ܽ���εĴ�ͣǣС���ս����ι���ͳһѡ��Ȩ
��ʤ���������У���ôʤ�����ɻ��ڴ��װ�׾�����
��ʷ�п��²���֮����
�����Ǿ�����绯�Ľ�������

����������뷨��������ɾ�Ҳ��������Ȼ��
��
������������֪�ǲ��Ǵ����

�����������ӵ������а���Щ��<RUBY text="��">��</RUBY>����Ϣ��
������ע����ǰ���������ҫ��ͬʱ���ƺ���η��
�ŴӺ�׷�϶�����ʳ���޵�Ӱ�ӡ���

����֪Ϊ�λ��������ĸо���
��Ī�����ڱ��δ�����ܾͽ�ɢ�����˵����
����Ҳû��˵������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);
	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0010a07">
�����š�
�����Ƶ�ǡ���ô��ء���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0020a00">
����������

{	NwC("cg/fw/nw������.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0030a07">
����Ҳ������Ϊ�ɣ�
�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
�����Դ���һ����ͻ��������
��תͷ��ȥ�����ӳ�������ģ���ɢ��
��ϡ�й���ķ�˿��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩�衤��װ��Ұ��ñ��

	CreateColorSP("�\Ļ��", 16000, "BLACK");
	DrawTransition("�\Ļ��", 300, 0, 1000, 100, null, "cg/data/slide_01_01_0.png", true);

	DeleteStR(0,true);

	StL(1000, @0, @0,"cg/st/st�衩��_ͨ��_��װ.png");
	FadeStL(0,true);

	DrawDelete("�\Ļ��", 300, 100, "slide_01_01_1", true);


	SoundPlay("@mbgm22",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
��������һ��С�ɵ���Ӱ���������·����ƥ���˰ɡ�
�������ж�����ݡ�����ȥ�������֡��о�Ҳ�����
����Ա�������ǹ��ڵĻ�Ҳ���������Ĳ��֡�

����Ȼ��������δı�档
��������ο���ʱ����������ֶ���������

����δ��ױ������ɫ�Ĵ���
������˲�䣬��������Ȼ�ס�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0040a07">
��֪��ԭ���𣿡�

{	FadeStR(300,false);
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0050a00">
��ʲô����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0060a07">
����ô���ŵ�ԭ�򰡡�
����������Ϊ��õ���ڶ����أ�
������Щ�ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0070a00">
��������

{	NwC("cg/fw/nw�����å�.png");}
//������㣯�����åա�
<voice name="����㣯�����å�" class="����������" src="voice/ma03/011a0080e010">
���ǡ��Ǹ�����
��Ҫ�Ѷӳ������𣿡������뿪��һ�ᡣ��

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0090a07">
�����������������������ҡ�
��ֻ����΢��͵��һ�¶��ѡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����սս����ǰ��ѯ�ʵĹ�����Ա����ش򷢵���
������������Ա��̬�ȣ�˳���������߿�ȥ���Ҳ�����
���֡�

���������¡�
��Ҳ����˵���������ӵ�б��ٰ�������������ϯ
����ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="����" src="voice/ma03/011a0100a00">
�����������Ǿ������������Ա�ն�������
��ˡ����ͻ�����ǣ���

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0110a07">
���⡫������
���ͽ��ҵ���ʵ۰ɡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0120a00">
���˽⡣
������ʵ۱��¡���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���衩�衤��ǰ���å�
	Move("@StL*", 150, @-300, @0, Dxl1, false);
	DeleteStL(150,true);

	CreateTextureEX("�}st100", 1500, -500, 0, "cg/st/resize/st�衩��_ͨ��_��װ_ex.png");
	Move("�}st100", 200, -169, @0, Dxl1, false);
	Fade("�}st100", 150, 1000, null, true);

	SetFwR("cg/fw/fw�衩���װ_�n�y.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0130a07">
���㲻���²���������ϵ��ˣ�
����ûɶ��й���ġ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("�}st100", 200, -300, @0, Dxl1, false);
	FadeDelete("�}st100", 150, true);

//������
	StL(1000, @-100, @0,"cg/st/st�衩��_ͨ��_��װ.png");
	Move("@StL*", 300, @+100, @0, Dxl1, false);
	FadeStL(300,true);

	SetFwC("cg/fw/fw�衩���װ_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0140a07">
����Ǹ���ղŵĲ��㡣
���ҵ������ʵ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
������ӿڴ���ȡ����Ƭ�ݹ�����
�����������ؽӹ���Ƭ���Ķ��������ϵ��������С�

�������������ӹ���ɫ��Ұ֮��
��
���������������������׻�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ƣ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma03/011a0150a00">
�������ǳ���Ǹ��
�����ʴ��ĵ������������֡���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0160a07">
�������׻���
��������׻��ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0170a00">
����ô�ӹ���ɫ��Ұ֮���ǡ���

{	FwC("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0180a07">
��ְҵ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0190a00">
��ԭ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���������Ǹ�ʲô��ְҵ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0200a07">
����ô���ء����硣
��������Щ����Σ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0210a00">
��ȷʵ�о���������Ŀ������ڡ�
�����������׵��ǡ����ڵ�������ϣ�����ʲ
ô���Ե�Ҫ���𡣡�

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0220a07">
���⵱Ȼ�С�
��������ʤ�����ԭ�����⣬���о�����ʧ�ܵ�
ԭ�򡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0230a00">
��������������ʲôԭ���𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
�����õ�׷�ʼ�������
�����뵽�Լ��������Ŀ�ģ�Ҳ���ò�˳�ƶ�Ϊ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0240a07">
����ȻҲ������������
������˵������Щ�����ڴ����ı�����ս������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0250a00">
����������

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0260a07">
�����ǲ����<RUBY text="��">Ǯ</RUBY>�������������������
�����������Ϸ��е�������Ҫ��ǮҲ
û�취�����ǣ�����������������
�������յ�Ĺ����������������

//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0270a07">
��Ҳ���ù����������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0280a00">
����������
����<RUBY text="��������">���ֶ���</RUBY>�𣿡�

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0290a07">
���������С�
����Щ��Ǯ���ʵ��˼��������ζ��ʳ��
�϶�����Ź��ɣ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0300a00">
��ȷʵ��
��װ�׾����ǵ���������������˶�֮һ������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0310a00">
�������<RUBY text="������">���ʻ�</RUBY>�ɹ��Ļ���
����ζ�ž޴������ɡ���

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0320a07">
�����������˼����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0330a00">
����ô˵����Ƿ����ɰɡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0340a07">
�������ն����½��������߿ռ�Ҳһ����
˽�˶�����վ�������ߡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0350a00">
���ƽ����ء���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0360a07">
��������Щ������һɫȫ�ǡ�
������Ӧ�����辩����������ӪίԱ���
���ᶼ������Ŷ������Ȼ���������Լ���
˾���ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0370a00">
�����Ҳվ�������Ǳ��𡣡�

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0380a07">
����Ȼ�߲�һ��ʼ��Щ��ִ����������������ˡ�
������Ҳ��û�취���°ɣ�������Ҹ��辩���ԣ�
�϶�Ҳ���ﲻ�����ǵĺ�̨����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0390a00">
��������̨����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0400a07">
���辩�糤�����ɷ��Ǵ�ͣǣ�������
���˵��̴󽫡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0410a00">
�������ߡ���
��С�����������׵��н��𡣡�

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0420a07">
����һ����ҵ֮����еֿ����������⸺��
�е�̫�����𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0430a00">
��û�����顣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���������������޵ľ�˾��٣���ָ�����µ�˾���
����Ȼ��ȷ��˵��ǰ��Ӧ�ó�Ϊ���죬��������Ӧ��Ϊ
��������

�����������������ܹźӡ�����С��������ܥԽ�����
�S����ض��ĵ㡣������Ϊ��Ҫ���������ܱߵ����ľ�
����Ȩ��
��������֮�ϵ�ֻ����ΪĻ��֮�����������졣

����Ȼ������ʽ���൱��ͬ�����ڵľ������̽�⡢
���ݴ��׸���½�����ظ����������ĸ������߱�
������һ���ʵ��Ȩ����
������˵���ض��Ĺ�����һ������Ĵ��ڡ�

��������Ļ�������ԡ��ó¾ɵķ�ʽ���Ļ���
����˵��������ͬ������һ�����߸ɲ���
����Ȼ�辩�������й�ϵ����Ȼ��ֺ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//��������
<voice name="����" class="����" src="voice/ma03/011a0440a00">
��������˵������Ȼ�ܹ��ֿ�������ز�����

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0450a07">
���������������
����������ø�����һ���ɣ���

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0460a00">
��ԭ����ˡ�
���Ѿ����������𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���ڴ���Ѿ���ȫ�Ĳ���������
���뽫�䵱��������˶�������ʵ����Щ
<RUBY text="������">ͭ��ζ</RUBY>̫�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//��������
<voice name="����" class="����" src="voice/ma03/011a0470a00">
���뵽��㣬����Ҳ����ƫ�����һ������

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0480a07">
����Ҳ��ͬ�С���Ȼ��Ҳϲ������
������װ�׾���Ҳ�������ʵ��̫ӹ�ף�
���Եġ���

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0490a07">
����������˵�Ǹ���з����
������һ�������ɵ�����Ť����̬������ߵ�
����ȴһ��Ҳ���ں�����

{	FwC("cg/fw/fw�衩���װ_ŭ��.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0500a07">
���У����ԲŸ�������ô���鷳������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0510a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������˵˭�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0520a07">
��������������Ҳ���ܷ�����
�����һ���֪���������Ρ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0530a00">
������������������̨����

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0540a07">
���ƽ��Ĳ������˵�Ŀ���Ǵ�׬һ�ʶ԰ɣ�
����ô�����к�̨�����绹������
������Ҫ��һ����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0550a00">
���������Լ��ǡ�
����������۶������Ҫ��û����Ļ���
���κ����塣��

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0560a07">
�����ǡ���Ҫ���ڲ��֧�֡�
��Ҫ�ǹ���Ҳ��Ĳ�����б���군������

{	FwC("cg/fw/fw�衩���װ_�n�y.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0570a07">
�������������޳���Ҳû��ϵ��
������Ҳ������ǿ����������������
������Ȼ���ǿ���������������������ͨ��
ֱ����˰���ÿ졣��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0580a00">
��������ϣ��ƽ�������ʲô�ƻ��ء���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0590a07">
����ȡ���Ե�������
��ƾ�������������£���ڡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
��<RUBY text="�٣��������">������</RUBY>������¶�������ı��鿴���ҡ�
���ҵ��ͷ��ֱ���˵��ػش����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma03/011a0600a00">
����������ͳһ���ߡ�
����һ�ش�ͣǣ���ʤ���ٹڡ���

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0610a07">
���ţ���ȷʵ�����������ء�
������辩��ϧͨ������㼯�ʽ�
��ͻ�����µķ�ʽ���
����ŵ����չ��롣Ͷ�뵽����˵ز�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0620a00">
�����Բ���ʧ�ܵ�ʤ���𡣡�

{	FwC("cg/fw/fw�衩���װ_ͨ��a.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0630a07">
�����һ��Ҳ�ǡ�
���Է�������˵����ù��ڵ�֧�־���ʤ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�����Ŷ�ʱ��ɢ��
���������ԭ������幤ҵ�Ļ�����������һ���쳣
���ŵ����ơ�

���ⳡս������Ļ�����Ϊһ���˶���װ�׾����ͻ���
ʧ��
�����ÿ���˶��������ľ���

���ҿ������ڴ�ĥ����Ļ�·�١�
�����ܿ����ٴΣ�������Ȼ����ô��С��

����Ҫ���Լ�СС�ı��ϳ������׵����룬���Ȱ�װ
�׾��������ǵ�Ը��ȥ���衣
���ⲻ�ܲ�˵��һ���ص���

���������������ò�У�ȴ�Ҳ����κ�η�ӣ��Ի�����
ƣ�͡�
��ֻ�ܿ���ĳ��һ����ǰ�Ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma03/011a0640a00">
�������˲������Ů��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
����ɸп���Ϊ��Ȼ��ռ�����ҵ����ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ʥ��`�øжȣ�
//$Another_Flag = $Another_Flag++;
	$ma03_011_routeFlag = true;
	$Others_Flag++;

	judgment_of_count();


	SetFwC("cg/fw/fw�衩���װ_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0650a07">
���õġ��Ҳ��Ҫ������
���������ĵ�����Ҫ�졣��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0660a00">
�������𡣡�

{	FwC("cg/fw/fw�衩���װ_Ц�.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0670a07">
��˵����Ҳ���ǹ����ɡ�
����Ȼֻ�ǵ�����͸���������¶�������������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0680a00">
�������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
��������Ȼ����һ����ݵ��ˡ�
��������������ҵ�Ĺ���֮���ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�衩���װ_Ц�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0690a07">
����ô�����硣�١�������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0700a00">
���õġ�
�������������Ȥ�����飬��������л����

{	FwC("cg/fw/fw�衩���װ_ͨ��b.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0710a07">
���Ǹ���
�������������硣��΢������һ�¡���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma03/011a0720a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
��С��˵�ţ������������֡�
��������ָʾ�����±�������������ȥ��

����ʱ�䡣
�������ǻ�ļ�����ζ������ֱ������ʶ���Լ�֮ǰ��
<RUBY text="����">���</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
//���ӣţ��ڸ���
//��͎�
	CreateColorEX("�}��ܞ", 5000, "#000000");
	Fade("�}��ܞ", 300, 1000, null, true);

	DeleteStA(0,true);

	CreateTextureSP("�}����100", 1500, Center, Middle, "cg/bg/bg037_����������`��a_01.jpg");
	Zoom("�}����100", 0, 1500, 1500, null, true);
	SetShade("�}����100", HEAVY);

	CreateTextureEX("�}st100", 1500, -169, 0, "cg/st/resize/st�衩��_ͨ��_��װ_ex.png");
	Fade("�}st100", 0, 1000, null, true);

	CreateVOICE("�衩��","ma03/011a0735a07");
	MusicStart("�衩��",0,1000,0,1000,null,false);

	MusicStart("�衩��",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("�衩��");
	WaitKey($�Еr�g);

	SetVolume("�衩��", 500, 0, null);

	DrawDelete("�}��ܞ", 300, 100, "circle_02_00_1", true);

	SetFwR("cg/fw/fw����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//��������
<voice name="����" class="����" src="voice/ma03/011a0730a00">
��������������

{	FwR("cg/fw/fw�衩���װ_���.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0740a07">
���ն�������
�������ƽ�����֮�ˡ���

{	FwR("cg/fw/fw�衩���װ_����.png");}
//���衩�衿
<voice name="�衩��" class="�衩��" src="voice/ma03/011a0750a07">
������Ĵ��ڱ�ʾ�����л��
��������Ȼ��������ô��������ˣ��ø��ˡ���

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	CreateTextureSP("�}����100", 1500, Center, Middle, "cg/bg/bg037_����������`��a_01.jpg");

	FadeDelete("�ϱ���", 300, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
����������˵�š�
���ƿ����ӣ�<RUBY text="����">��Ů</RUBY>����
˵�ټ�һ�㣬�ӻ����뿪�ˡ�

���ͳ���ʱһ������ͻ����ʧ��
��ֻʣ������Ȼ��������ͣ��ԭ�ط�㶡�

������ת������Ļ���
����ΪʲôҪ����˵�����������ء�

��Ϊʲô����ֵ�������ǣ�
���о���ȥ������δı�桭��

�����˲������ĵط��ܶ࣬������������Ѱ˼
Ҳ���Ǹ��취��
�������·��Ů����֮���뿪���⡣

��ʱ�������޵ġ�
��������ȥ�����ط�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�ե饰�k��
//$���Έ������ޤ� = true;

	ClearWaitAll(1000, 2000);

}

..//������ָ��
//�Υե����롡"ma03_012.nss"