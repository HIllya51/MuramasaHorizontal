//<continuation number="1380">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_010.nss_MAIN
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
	#ev128_�����ι�_c02=true;
	#ev128_�����ι�_d02=true;

	#bg052_�����ҵ���_03b=true;
	#bg053_�����Ҥ�ͥ_03=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_011.nss";

}

scene ma05_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_009.nss"

//������
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����£���������������ҵġ�

�����ǲ�����֪���ҵ��г̡�
�����ֻ��żȻ<RUBY text="����">����</RUBY>�˰ɡ�

��Ȼ���������ڷ����ҵĵ��������������µؼ�����
�£���ֻ��˵�����ǻ��ж��⡣

���������������е�ĳһ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ɽ�\��
	StL(1000, @50, @0,"cg/st/st���I_ͨ��_�Ʒ�.png");
	FadeStL(300,true);
	SoundPlay("@mbgm22",0,1000,true);

	SetFwC("cg/fw/fw���I_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100010b31">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
������δ���ֻ�������Ҷ���¶��������΢Ц��

������¶����Ů������ֻ�е����죬����Ҷ��Ի�
�ǳ��ξ�����

��������ͷ���Ժ��н���������˦��һ�仰��


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma05/0100020a00">
��ʡ����ȥ�����ǱߵĹ����ˡ�
�����Ǹ�л����

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100030b31">
�����ţ� �Ǳߵ�ƽ��
���ղ�˵��ʲô����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100040a00">
��ûʲô��
��������ȫû�й�ϵ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���ǵģ���ȫ�޹ء�
���Ѿ�û�б�Ҫ�򱾼ұ��������¡�

������ʳ�������������ɽ���ǡ�
������Ҷ������Ӷ����������������˵��ɽ���¼���
���ˡ��Ļ������Ҿͳ�Ϊ�����С���ˡ�


�������ɣ��ҿ�û�������ľ�ҵԸ����
����Ȼ����ѡ���������Ϊ�������Ҿ�ֻ������ν����
ʵ��ν��ս�������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma05/0100050a00">
���ҹ�����ȷ��һ�¡�
�������ǵ������Լ���𣿡�

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100060b31">
����Ȼ�ǵá�
�����ɷ�һ�Լȳ�������׷����һ����ú�
����Լ���ġ���

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100070a00">
�����أ�
����ô�����������ô���£���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100080b31">
���ǺǺǡ�
��Լ��������������²���С��
���֡����԰ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100090a00">
��������

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100100b31">
����������ѽ���ź���
���������������ǣ�Ҳ�޷�������
���ҵĻ�ѽ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100110a00">
������ʲô��˼����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��������Ȼ�Ҳ�����û�з�����
�������Ƕ������������Ů��׷�ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100120b31">
��һĥ����

{	StCL(1000, @-120, @0,"cg/st/st���I��_ͨ��_�Ʒ�.png");
	Move("@StML*", 300, @60, @0, null, false);
	FadeStCL(300,false);
	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100130b32">
���ǣ���㡣��

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100140b31">
���������ڽ����糿��������һ֮β�ҵĻ���
֮λ�ø�һĥ�ˡ�
���������Ѿ������ˡ���

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100150b31">
������������
���������������ǣ���ʿ����˵һĥ��
���������Ҫ�ġ�ֻҪһĥ˵�����Ǿ�
ֻ�������ء���

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0100160e082">
���ٺ١���
�������������㻹�����ء���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100170a00">
������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0100180e080">
��ǰ������ˣ��ǳ���Ǹ��
����Ȼ����Ҳ����Υ�������������
���δ������������ˣ��ǰɣ���

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100190b31">
��û��ϵ����
��ָ��Ȩ�����峤һ�������ˡ�
�����������õ��ý��������
��ȥ��û�С���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100200b31">
��һĥ��
���벻Ҫ�����ң������
ȥ���ɣ���

{	FwC("cg/fw/fw���I��_��Ц.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100210b32">
����֪���ˣ���㣡��

//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100220b32">
����ô����������ô�����أ���


{//�������á�
	CreateSE("SE01","se���L_����_Ź��04");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��", 2000, "#FFFFFF");
	Wait(10);
	Shake("@StML*", 600, 2, 0, 0, 0, 1000, DxlAuto, false);
	Fade("�}��", 300, 0, null, false);
	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100230b32">
���ԡ��Բ��𡭡���

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100240b31">
�����������ˣ��ն�������
��������˼û����Ӧ����ڴ�����

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100250b31">
���������ҿ��Ǻú�����<RUBY text="����">Լ��</RUBY>��Ŷ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100260a00">
������������

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100270b31">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100280a00">
��������

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100290b31">
���ۣ���

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100300b31">
��Ŷ����������������
��������������������
��������������������
��������������������������

//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100310b31">
����������������������
��������������������
��������������������
����������������������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0100320e080">
������������������𣿡�

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0100330e082">
���������ˡ�
����Ȼ���ʲ���ô�ã����ǽ�������
���������������

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100340b31">
���Ǳߣ�����Ҫ�ڳ������Ÿе�������
��ʲô�㲥��Ŀ����

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\����
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0100350e080">
����������Ц��ʱ��̫����������

{	NwC("cg/fw/nwɽ�\��.png");}
//������㣯ɽ�\�¡�
<voice name="����㣯ɽ�\��" class="����������" src="voice/ma05/0100360e082">
���ȴ���ʱ����а���������������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100370a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
����������³������Ѿõ�һ������
�����ĵ������������㹻�ˡ�

������ԭ���Ҷ������Լ����û�м�����ȫ���ڴ���

������Լ����Ҫ��˵����Ҳ��Ԥ��֮�С�

��������ˣ��ҵ��׻���û�뵽���������֮�죬���
���ʡ�
�����ң����������ġ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma05/0100380a00">
��С���С�
����������ˡ���

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100390b31">
����ʧ�񰡡�������ǻۡ�
�����ˣ�������ô˵����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100400a00">
�����ɡ�
���޳ܡ�
����������

{	FwC("cg/fw/fw�����^ȥ_ŭ��b.png");}
//�������礦��礦������ĤҤ�Ĥ��ɤ��ͤ����󤫤�
//���֤Ĥ������夦�������ޤ��⤦�ޤ�����ᤤ�⤦
//�����㤳��Τ�����ΤƤ��������餯���ܤ��Ϥ��䤫
//����Τ��ޤΤϤ���
//��������
<voice name="����" class="����" src="voice/ma05/0100410a00">
��������С��������������˼���������������
�����ظ�����С�����õ��׶��䣬�ο��յĻ���
ľ�ҡ���

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100420b31">
������������

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100430b32">
����㣬������ڳ鴤�������𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������
	CreateSE("SE01","se���L_����_Ź��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��", 0, 1000, null, true);
	Wait(10);
	Shake("@StML*", 600, 3, 0, 0, 0, 1000, DxlAuto, false);
	Fade("�}��", 300, 0, null, false);

	SetFwC("cg/fw/fw���I��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100440b32">
���á���ʹ����㡭����

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100450b31">
������������
���ܼ�֮Ȯ���������ƿ��治���������
�ն���������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100460a00">
�������Լ�˵�������ô˵�ġ���

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100470b32">
���������ң�������ǽ�㰡������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ��Ф�����
	CreateSE("SE01","se���L_����_Ź��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��", 0, 1000, null, true);
	Wait(10);
	Shake("@StML*", 600, 4, 0, 0, 0, 1000, DxlAuto, false);
	Fade("�}��", 300, 0, null, false);

	SetFwC("cg/fw/fw���I��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100480b32">
����ʹ�������?!��

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100490b31">
��ι�����죡
���ܺã��ն�����

{	FwC("cg/fw/fw���I_ŭ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100500b31">
���Ҳ�û������㣡
����ֻ���������ǽƻ��ļ������ѡ�
�ǵģ�����Ȩ��֮�ƣ��������߳��ж�
�ǲ����õģ���

{	FwC("cg/fw/fw���I_����.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100510b31">
��������ˣ��㻹������Ȼ�ذڳ�ʤ�ߵ����ӡ�
��������֪�ܰ�����

{	FwC("cg/fw/fw���I��_ͨ��.png");}
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100520b32">
���Ǹղŵ��ǻ�˵����ʲôѽ��㡣��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//����������������������
	CreateSE("SE01","se���L_����_Ź���B��01_L");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}��", 0, 1000, null, false);
	Wait(10);
	DeleteStA(0,true);
	Fade("�}��", 300, 0, null, false);

	SetFwC("cg/fw/fw���I��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//�����I�ܡ�
<voice name="���I��" class="���I��" src="voice/ma05/0100530b32">
�����ۣ���

{	FwC("cg/fw/fw���I_��Ц.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100540b31">
���Ҳ����ˣ����Ұ���
��Ŷ��������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100550a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
����ͦ�����ŵ����졪������˵�������ϵ�ԭ���졪��
����ǰ��˼�����¾�ֻʣһ���ˡ�
������˵��ȥҲ�����õġ�

��Ҳ����˵���������˷�ʱ��Ҳ�������塣
����Ϊ�˷���ԭ·��ת�˸���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//��������
<voice name="����" class="����" src="voice/ma05/0100560a00">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100570a00">
��!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W
//���ܤ�
	SetVolume("SE*", 100, 0, null);
	OnSE("se���L_����_�����01",1000);
	CreateColorSP("�}��", 5500, "#FFFFFF");
	StR(1000, @0, @0,"cg/st/st����_ͨ��_��Ta.png");
	FadeStR(0,true);
	Wait(10);
	Fade("�}��", 600, 0, null, false);
	Move("@StR*", 400, @60, @0, AxlDxl, false);
	DrawDelete("�}��", 200, 1000, "slide_08_00_1", true);
	WaitAction("@StR*", null);
	WaitKey(600);

	StL(1000, @0, @0,"cg/st/st���I_���L_�Ʒ�.png");
	FadeStL(300,false);

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100580b31">
���ߡ�
����Ȼ�����е�ˮƽ�ġ�����

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100590a00">
������ʲô����������

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100600b31">
��ʲô��
���汿����ƽ�񡣡�

{	FwC("cg/fw/fw���I_ŭ��.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100610b31">
���Һô�Ҳ���Ǹ����ߣ���������
�ͼ��ļһ��ƭ�ˣ�����Ϊ������
�������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100620a00">
�������Ļ�����ȥ�и��ɣ���

{	FwC("cg/fw/fw���I_ͨ��b.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100630b31">
�����¹����¡�
�����ǣ����¹����¡���

{	FwC("cg/fw/fw���I_ͨ��a.png");}
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100640b31">
�����������ͷ�űȽ�ʡ�£�
�������Ҳ�����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100650a00">
�����⡭������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���W
//���ܤ���
	OnSE("se���L_����_�����01",1000);
	CreateColorSP("�}��", 5500, "#FFFFFF");
	Wait(10);
	DeleteStA(0,true);
	Fade("�}��", 600, 0, null, false);
	DrawDelete("�}��", 200, 1000, "slide_05_00_1", true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����Ȼ�뵱������Է���������ɱ��İ�����������ǰ��
����˵�����ڡ�
��������Ȼ�ģ����ǿ��֡�

����֮����ֻ����Ϊ�ϲ��ˡ�
�������ź�������ץס�����͵�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���I_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//�����I��
<voice name="���I" class="���I��" src="voice/ma05/0100660b31">
����һ�£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100670a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateSE("SEL01","se����_����_�ߤ�01_L");
	MusicStart("SEL01",0,1000,0,1000,null,true);
	CreateColorSP("�}�\", 2000, "#000000");
	DrawTransition("�}�\", 300, 0, 1000, 100, null, "cg/data/slide_01_03_0.png", false);
	Move("@StL*", 600, @-120, @0, Axl1, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
������������������
���Ų���׷�������ܿ����׷���ҵİɡ�

{	SetVolume("SE*", 3000, 0, null);}
���Է�����ȫ����װ���������Ҳ����ͬ��
������������������ܡ�

���Ų����������������
��
�������������˵Ŀ�������ߡ������Ǹ�Ů���죬
������ҹ���Լ���

������ʲô��ʿ����֣�
�����ֶ��������������ڡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//����
//��Ϧ
//�������ι⡤�k��
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureEX("�}��", 1100, Center, Middle, "cg/ev/ev128_�����ι�_c02.jpg");
	CreateTextureEX("�}�ţ�", 1000, Center, Middle, "cg/ev/ev128_�����ι�_c02.jpg");
	OnBG(100,"bg001_��a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1500, true);
	WaitKey(500);
	OnBG(100,"bg001_��a_02.jpg");
	FadeBG(1500,true);
	WaitKey(500);
	SoundPlay("@mbgm14",2000,1000,true);
	Fade("�}�ţ�", 1500, 1000, null, true);


	SetNwC("cg/fw/nw��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���⡿
<voice name="��" class="��" src="voice/ma05/0100680a14">
����������������������!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100690a00">
���⡭����
���侲���侲һ�㰡������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���Ф���
//���᤭�á��ܤ��á�
	CreateSE("SE01","se����_�n��_ܞ��03");//���ߩ`ע��
	CreateSE("SE01b","se����_����_�����01");//���ߩ`ע��
	MusicStart("SE01",0,1000,0,1000,null,false);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}��", 0, 500, null, true);
	SetBlur("�}��", true, 3, 500, 100, false);
	FadeFR2("�}��",0,500,300,0,0,20,Dxl3, false);

	SetNwC("cg/fw/nw��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���⡿
<voice name="��" class="��" src="voice/ma05/0100700a14">
��ߴ������������������������
������������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100710a00">
���⡢�⡭����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɤ���Ф���
//�������á�
//�������ι�k������֡��n����줿�������Ҥ�

	CreateSE("SE01","se����_����_���ڱ����");
	CreateSE("SE01b","se����_��_��܈��01");
	CreateSE("SE01c","se�M��_ճ���|_���띢���01");
	CreateTextureEX("�}�ݣ�", 2100, Center, Middle, "cg/ev/ev128_�����ι�_d02.jpg");
	CreateTextureSP("�}�ţ֣�", 2000, Center, Middle, "cg/ev/ev128_�����ι�_d02.jpg");
	OnSE("se����_����_�������Ƥ�01",1000);
	MusicStart("SE01",0,1000,0,1000,null,false);
	Fade("�}�ݣ�", 0, 500, null, true);
	FadeFR2("�}�ݣ�",0,500,300,0,0,30,Dxl3, true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	FadeFR3("�}�ݣ�",0,1000,300,0,0,50,Axl3, true);
	MusicStart("SE01c",0,1000,0,1000,null,false);
	FadeFR2("�}�ݣ�",0,500,300,0,0,40,Axl3, true);

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma05/0100720a00">
������ͣ�°�������

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100730a00">
������ͣ�£���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100740a00">
����ᱻ�ٵ��ģ�
����!!��

{	NwC("cg/fw/nw��.png");}
//���⡿
<voice name="��" class="��" src="voice/ma05/0100750a14">
��������������������������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ҹ
//������
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg001_��a_03.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	WaitKey(1000);
	FadeDelete("�}��ܞ", 1000, true);
	WaitKey(1000);
	OnBG(100,"bg052_�����ҵ���_03b.jpg");
	FadeBG(1000,true);

//�����㤭�`��
//�������SE��Ҫ��������ߥå�����i�����褦�ʸ����Ǿ����������夭�`��
	CreateSE("SE01","se�M��_냇��_�i��01");
	MusicStart("SE01",0,1000,0,1500,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
�������һƬ�ĵ����У�Ѹ�ٵذγ�һ����

�����������ߴ�������Ϊֱ�С�
��Ũ�ݹ����Ũ�����Ƶ����������µ���ĳ�ָ��ŵ�����
������

������ʱ��������������ľ�����������󣬸������˴�
����
�����ܷ����������ǵ��ݻ��Ǵ��񣬶������׾��ܿ��ϡ�

�������˵Ĺ���Ҳ�ǡ�
����Ȼû�г��Թ�������һ����ն�ϵİɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//��������
<voice name="����" class="����" src="voice/ma05/0100760a00">
���Ѿ�û�취�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
���Ҽᶨ���뷨��
����Ϊһ���ˣ����뷨�������Ҿ��ñ�Ť��η�壬Ȼ��
�����¶����ġ�

����Ҫնɱ��

��ɽ���ŵ����졣
����λ�ܵܡ�
��������е�����������˵Ļ���Ҳ������նɱ��

������һ��ɽ�����ΪȺ�����׵��ں�֮�ڣ��������ɢ��
����������ʱ���Ǳ�Ҳ�������޲��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͥ
	CreateTextureEX("�}����100", 100, -300, -460, "cg/bg/resize/bg053_�����Ҥ�ͥ_03l.jpg");
	Move("�}����100", 1000, -350, @0, null, false);
	Fade("�}����100", 0, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����������������ĸ��������
��Ȼ���������ǲ��еġ�

��������Ⱥ�һ��ɱ����ķ�����û�еġ�
��������Լ�������һ�ʤ�˾����������Լ�����һ���
ʲô�취�����ã�


��ֱ�������Լ���ʤΪֹ���������ʧ�ܵİɡ�
����ʹ��ˣ���Լ�ķ��ն���������˵Ҳ�㲻��ʲô��
�������ǵĻ�Լ����Ҳ��������ʵ�������Ǽ����Ʋá�


����Ҳ��������Ȼ��
����������ԱȲ�����ˣ�һ��ʼ����С���û������
��������׵ص��������ˡ�

��ֻҪ�ڸ��������ǻ�������������ѹС����һ��ʵ��
Ȼ���ڣ���ôֻҪ��һ���޷��Ʒ�������ʲô�ֶζ���
ͽ�͡�
�������þ�������ĵ��ң����ڿ��������ޱ��޴���

���Ҿ������Ժ�Ϊ���ݣ���Ȼ����Ϊ��Ⱥ����Ϊɽ����
��ʿ������������ǰ������ͽ�����ޡ������������
�Ľ���������Ϊ��ʿ����ַ����ӵ�и��ߵľ���߶�
�ء�

����������̫�޴��ˡ�
��������ǻ�ӵ������Լ���İ��ǣ���������һ�����
�Ի��������������ĵĻ����������缢����Ұ�ް�����
����ά�������أ�

����һ��ʼ��Ӧ�������׵ġ�
��������ͬ���ı����ݻ�������������ı���֮�⣬
û�б�Ľ��;����

������նɱ��
���ݻ�ɽ���ĺ��ģ���������ɢ��

�������Ҳ�����Ϊ��ĸ���̵��ĵ�·�Ǵ���ġ�
����ɱ��ʤ����ȷ����ν���������Ӧ����ˡ�


��Ȼ������Ҫ�����������е�ͨ��ҲҪ�����������˲�
�С�
��������һ������ǽ���ͨ����ġ����������õ�ֻ��
�����ķ���ǿ������С��ֻ�������

����������ķ�û��û�˵�Ŭ���Ļ���Ҳ�����������
֮��Ҳ���е�ͨ��
����������û������ʱ�䡣

����û�С�
��
����Ϊ��û�У�

�����ֶ�������ڣ�û��ȥ׷������������ˡ�
�����ԡ�����ҪΥ����ĸ�����

����������ԭ�¡�
����д������飬�������Լ��ķ��䡣

���������ӣ�Ϊ�Ʋ���������������Ϊ���������뱨��
��
����Ȼ���µ����ֺܼ�࣬��Ӧ���ܴ����ҵ���˼�ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ܞ�Q
	CreateColorEX("�}��ܞ", 5500, "#000000");
	CreateSE("SE01","se����_����_һ�i");
	CreateSE("SE02","se����_����_һ�i");
	MusicStart("SE01",0,500,0,1000,null,false);

	Fade("�}��ܞ", 1500, 1000, null, true);
	Move("�}����100", 0, -1100, -600, null, true);
	WaitKey(1000);
	MusicStart("SE02",0,500,0,1000,null,false);
	FadeDelete("�}��ܞ", 1500, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
����ȥ����������ͥԺ��
����ĸ�ĸо�����������ʱ��ͻȻ����Ҳ���ǲ���
�ܡ�Ȼ�������Ǹ��û��ᡣ

�����ţ��п�������
����ĸ�ڿ����д����ˡ���Ȼ����Ҫ���������������
�Ի����ڽ����еĻ���ֻҪע�ⲻ���������Ͳ��ᱻ��
�ֵİɡ�

����С������������Ų���
����Ȼ�Ž��˴�������Ͼ����Űѵ�����һ����ĸ��
���˿ɲ����ɻ���ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��������
<voice name="����" class="����" src="voice/ma05/0100770a00">
�����������Ǳ��Ҵ��˰���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
����Ŭ��������΢��������������
������������ɽ������İɡ�Ҫô���ǹ�������ʽ���¡�


�������ļ���������ĸ���ĵĻ��⡣
����Ȼһ��ô���Ҿ�ʮ�ֵ��ǣ������ʱ��ֻ��˵��ǧ��
�ѷ��ˡ��ںͱ���̸��֮ʱ����ʹ����ĸҲû����ԣע��
���Ұɡ�

��ʵ���ϣ��������߱�������ͥԺҲû���������ҡ�
������������������̾�˿�����

�������Ѿ�������ǰ��
�����ٴ�С�ĵ�̤��һ������<k>���д���������ײ������
��ͣ���˽Ų���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100780b52">
����Ѫ��Ů�˰�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������򤢤餫����󤭤�ȡ�äƤ�����������ĸ�ݤ�
//�����إ������Ƅӣ�
	Move("�}����100", 2500, 0, -381, Dxl1, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0320]
�����������Ļ��
��ͬʱ�ִ��ų���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100790b52">
������������������������Щ�����Ϊ
�ն��ҵ�ĸ�״��˵ļһ��ǡ�
  ���������ɱ�����ˣ���

{	FwC("cg/fw/fw�y_��˼.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0100800b46">
��������

{	FwC("cg/fw/fw����_����.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100810b52">
���޴�������
���������ͱ�ɵ��ž����������
��ɱ�𡣼�ʹ����ɱ�Է���ɽ��Ҳ
û����ͬ����������ɰɣ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0100820b46">
��������ô˵������

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100830b52">
�����ǰ�����˵����������Ҳչ¶��������
�ǿ�����û�п��������������ձ��ķ�����
��Ҳ�������������������ɱ�����ǵ�����
�����еģ�һ��Ҫ��ô�������ǡ���

//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100840b52">
�������Ƕ��Ի���͵������в�ͨ�ġ�
��ֻ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0100850a00">
������������

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0100860b46">
�����ԣ�ɱ�����ǡ�
������ɱ�����ǵĻ�һ�ж������ˣ����ҡ�
���������Ĳ�����ս�����Ǻ�ƽ����

//���y��
<voice name="�y" class="�y" src="voice/ma05/0100870b46">
��ɱ��ĳ���ˣ�Ϊ�˱����ֱ�ĳ������ɱ��
Ȼ��Ϊ�˱����ɱ�˵����ֱ���ɱ��
��ԩԩ�౨��ʱ�ˡ����ղ����԰Ρ�����

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100880b52">
�����Ը���ô�죿
�����Ȱ���Щ�һ�ɱ�����
���ͺ��ˡ��ҷ��������ࡣ
����η�壡��

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0100890b46">
��ɱ�ˣ���ɱ��Ȼ�󲻶��ظ���
���������ص�ƽ����������
ʲô���壿��

//���y��
<voice name="�y" class="�y" src="voice/ma05/0100900b46">
���������Եȵ�������ڡ�����

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100910b52">
��������Ӯ�ú�ƽ�Ľ�����
������˵��Ҳ��û��������𣿡�

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0100920b46">
���ҿɲ�����ô˵��
���������粻ɱһ�˶���ס��ƽ��
�м�ֵ����

{	FwC("cg/fw/fw����_����.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100930b52">
����������˵�λ��𡣴�����
��Ϊ�����ְ����Σ����Ҫ����������
��Ȫ�𡣡�

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0100940b46">
��������

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100950b52">
�����ǵģ�����Ů�˰���
�����벻������ĸ�����������¡�
������û��ѪԵ�����ӣ��Ͳ���
������ô�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
�����Ҳ�ͣ��ָ������
��
����֮��Ե���ĸ�Ļ�Ӧ�����ǳ���������ָ���
��ᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0100960b46">
��������Ϊ��ʿ���������ɱ�˵ġ�
����ȻҪ�����ϸ񡭡���

{	FwC("cg/fw/fw����_�@��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0100970b52">
��ʲô����

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0100980b46">
��ֹ��Ϊ�䡣
���Ⲣ���Ǽ����ɵ��¡���

//���y��
<voice name="�y" class="�y" src="voice/ma05/0100990b46">
������Ӧ��Ϊ�˶Ͼ����˵Ķ����ս��������
Ϊ�˶Ͼ����˵�������
����ʹ˵����Ҳ��һ�仰����Ҫ���Ļ��Ƕ�ô
��࡭��������ָ���������ס���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101000b46">
��������Ϊ��ʹ�����ϻ�������
���������ݡ�
������Ҳ���ò�����������ɡ���

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101010b52">
����������
���������ѵ���ͳ����

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101020b46">
���ѵ�����ȥ�����λ��𣬱��ң�
�����������������ز��Ļ������޷��۶�
��֮�еİɡ�����֮��һ�¾����۶ϡ�����
�Ⲣ�����䡣ֻ���������ѡ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101030b46">
������ֻ�������ٴε�ս����ֻ����ȷ����
�����ս�ս����
�����ҡ��������������ľ�������
���鰡����

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101040b52">
��һ�������İ�������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101050b46">
��������ʿ��˵������ע����
���Ծ�����˵�������־��ĵġ�����

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101060b52">
����������Ư����˵����
���治������ʿ�ĵ䷶����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
�������˵������п�������������������ô��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101070b52">
���ѵ�û����Ϊĸ�׵��κ��뷨����
���������֮�˵���ݽ������������ء���
������ľ���Щ�𣿡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101080b46">
���ǵİɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
����Щ�����������
��������ĸƽʱ��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0390]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101090b46">
����Ϊĸ�ף�ֻ��һ�������˰ɡ���

{	FwC("cg/fw/fw����_�@��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101100b52">
������������˵ʲô����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ɥ��󡣹Ą�
	CreateSE("SE01","se����_��_��Ġ����02");
	MusicStart("SE01",0,1000,0,1000,null,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
����������ͳ����?!

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101110b46">
���Ҷ��Ǻ���˵�ˡ�����������Ļ���
�һ�Ѻ�����������ȫ��ɱ����
��ʣ�����һ���������Լ�������ȻҪɱ����

//���y��
<voice name="�y" class="�y" src="voice/ma05/0101120b46">
���������ԣ����Ǻ��ӱ���������
�������Լ�����
������ֻ�����Թ����ء�����

//���y��
<voice name="�y" class="�y" src="voice/ma05/0101130b46">
��ͬ��������
���ҵ�������Ҫ��������ѡ��ĵ�·�ˡ�
����Ǻ���������·�����ˣ���Ҳ������
��������ʱ�����ң���Ͱ������ˡ���

{	FwC("cg/fw/fw����_�@��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101140b52">
�����������������
���������𣿡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101150b46">
����˵���İɡ���������ʿ������
������ν�û�����

//���y��
<voice name="�y" class="�y" src="voice/ma05/0101160b46">
�����ս��ʧ�ܣ���ʿ�ͻ�����
�����������������

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101170b52">
��ͳ������

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101180b46">
��˵��ɱ�ı������˿ɲ���������
��Ҳ�������ء�
���������ҼҺ��ӿ��Ǻ��ܸɵ�
����û��ϵ�İɡ���

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101190b52">
���������ž������и��������𣿡�

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101200b46">
���š���

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101210b52">
��������ʵ�Ϸ�Ҳ������������
��������ˣ����㿪��ЦҲ����������ȥ
����ɽ������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101220b46">
���š���Ҳ�����˼ҵ����������
����Ϊĸ�ף�����˰�����

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101230b52">
�����������´�����ֻ�п�������
����ʹ�����н���������ɹ���������
Ҳ��һ����˳������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101240b46">
����֪������

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101250b52">
����ôΪ�����ܶ��ϡ�����
�����Ӻ����Լ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
������Ϊ�Ρ�
��Ϊ�Σ���ĸ�ܶ���������

��Ϊ�Ρ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101260b46">
�������ظ�ͬ���Ļ��Ⱑ����

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101270b52">
��������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101280b46">
����Ϊ<RUBY text="��������">ֻ������</RUBY>�˰������ҡ�
��������������û���ܹ������ɽ����
�����ķ����˰�������

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101290b46">
��һ����ʼ��ɱ���������������޵�ѭ����
��Զ�س�����ȥ����ΪԹ����û�о�ͷ�İ���
��Ϊ���ս���һ�У��������ж�ô���ѣ�
��ֻ���ò�ɱ�ķ���������������ȥ����

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101300b46">
����Ϊ���������������������
����ʱ�����ƣ����ں����ø���
�鷳���ء�����

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101310b52">
���������ǡ�����

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101320b46">
����ֻ�����ڿ���ѡ��������״��
����ü�ޣ��Ⲣ������Ĵ�
������˵�ҷ���Ҫ��л��;���
����Լ���ء���

//���y��
<voice name="�y" class="�y" src="voice/ma05/0101330b46">
����ʹû�����Լ������Ҳ���׼��Ҫ
��ʼ���ɽ���������ˡ�
�����鷢չ������ز���Ȼ�󽫹������
Ҳһ������������治������

{	FwC("cg/fw/fw����_ͨ��.png");}
//�����ҡ�
<voice name="����" class="����" src="voice/ma05/0101340b52">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ͥ��

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
������<RUBY text="��������">ֻ������</RUBY>��

�������ɽ���ķ�������
��Ϊ�˾ȹ⡭��
��
��ֻ�ǣ�������

�������ǵġ�
��Ϊʲô����û��ע�⵽�ء�

���о��Ժ�����������ȵĶ��������·���̵�
ʯͷһ�����ȡ���ͻȻ��ȡ���ˡ�
��˼ά��������������ʶ�ָ�������

������ǰ��Ѱ�����Ķ��������ں���������һ�����
�ˡ�
������ɱ�˵��˵����죬����������

�����������ء�
����ȷ��ɽ���Ż�ʧȥͳ�졣

�����ǣ�������������ء�
����ɢ����ȥ���������޷���˱�֤����ֻ���ҹ���
�ֹ��ˡ�

����Ϊʧȥͳ�����ɸ����鷳�����壬��֮���ڸ���
Ƿ���ǵؿ�ʼ�����ӶᣬΪʲô���ܹ����Բ��ᷢ��
�������ء�
������˵���ֿ����Ը��߰ɡ�

��������δȻ������ô����
�����������������죬���԰�ɽ���Ÿ�ȫ������


����ô���ܡ�
������ô����������������

����˵�������Σ���һ��������;�������İɡ�
��Ȼ�����µ��ǡ����޴�����ѡ���С����ɽ����֮
������Եĵ��⡣

��ʲô��û�н����
��˭���Ȳ��ˡ�

��Ҫ�������¡���<k>
��
����ȷ������ɱ¾��

�������Ƕ���ɽ�������������
�����Ǳ���ֻ�ܶ����Ƿݶ��⡣

���������װ���
��������ʮ�����ѡ�Ҳ�����籾�����ԣ����������һ
����

�����ǣ���ĸ�Ѿ�������������·���ˡ�
����Ȼ�Լ���û���ж���ֻ��վ���ػ���������

������Ϊ�����˵��ң�ȴû�������ľ���
��������뷨̫�����ˡ�����������������֮�����Ͼ���


��Ȼ�������������¶����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//��������
<voice name="����" class="����" src="voice/ma05/0101350a00">
��ͳ���ˣ�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0101360a00">
����ԭ���ң�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�𤭤�02",1000);
	Move("�}����100", 1000, 0, -756, Dxl1, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
���Ұݵ���ͥԺ�������ϡ�
�����Ϸ��ķ����ͷ��

��Ȼ��������ӡ����Լ��

������ֹ��Ϊ�䡣
������������·��

����ɱһ�ˣ�����¶ˡ���
��Ϊ�˲�ʧȥ��ĸҲ��ʧȥ�⣡

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("�}ɫ100", 1500, "Black");

	Fade("�}ɫ100", 500, 1000, null, true);

//������
	OnBG(1000,"bg052_�����ҵ���_03b.jpg");
	FadeBG(0,true);
	Delete("�}����100");

	FadeDelete("�}ɫ100", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
����ҹ��˯���˵�����
���Ҳ���������ݾ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ҹ�դإե��`�ɣ�
//����������
	SetVolume("SE*", 3000, 0, null);
	SetVolume("@mbgm*", 3000, 0, null);
	CreateTextureEX("�}����", 1100, Center, InBottom, "cg/bg/resize/bg001_��a_03.jpg");
	Fade("�}����", 2000, 1000, null, false);
	Move("�}����", 6000, @0, 0, DxlAuto, true);
	WaitKey(1000);

	SetFwC("cg/fw/fw�y_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0101370b46">
������������!!
������ʲô����������������!!��

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0101380a00">
���������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0490]
��Ȼ���ҹ��������ĸ�Ĳҽ������ѣ���ĸ���һ����
ʹ������һ����
��ʧ�ߣ����Ǵ����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_011.nss"