//<continuation number="1640">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_017.nss_MAIN
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
	#bg025_ɽ�}��ɭa_01=true;
	#bg004_�ɤӤ���a_01=true;
	#bg021_���L����g_01=true;
	#bg002_��a_01=true;

	#ev943_�����֣���ɽ=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma02_018.nss";

}

scene ma02_017.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_016.nss"

//����ɽ��ɭ��ɽ���⤹����
	PrintBG("�ϱ���", 30000);
	OnBG(100,"bg025_ɽ�}��ɭa_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����λ�ڰ�ɽ����Ϻ�ļҵķ�������������һƬ������

���ر��������ۿ�����û��������ע��Ķ��������۲�
ľ֮�̣�ȷʵ�纣��һ�㡣
��
�����ǣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��������
<voice name="����" class="��������" src="voice/ma02/0170010a01">
����������̫���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170020a00">
��������


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0170030a01">
�����֡��ѡ���Σ�ն�����ߵġ������õ�
�о���
�������ٽ������ˡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��������������ƽʱ���Խ�Ӳ��
������Ϊ�������Ϊ��������µ�Ӱ����

�������Ļ��������ͺ��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//��������
<voice name="����" class="����" src="voice/ma02/0170040a00">
���ڽ���֮���𣿡�


{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0170050a01">
������Ҳû����ô���ȡ�
������˵���������������졭����


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170060a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ɵ�����������
  ��Ȼ���Ͳ���Ϊ��̬������ת����������
״�����Ԥ����Ҫ�Ͼ��öࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="��������" src="voice/ma02/0170070a01">
����ȥ��΢�����������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170080a00">
���á���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
�������أ�������ɭ�ֶ�ȥ��
����һ��Ŀ������������Ӱ�����ˣ�һ�����㡣

��������������û�м�ֵ�ġ�
���Ѿ������յ������ͬ�ˡ����˲�����һֱͣ����
��ͬ�ĵط���

����Ƭɭ�ֹ��ڿ�㣬����Ŀ�����������Ч�ʡ�

�����Ǳ��������ԡ�
��������Ƭ����ĳ��Ǳ���ŵĵ��ˣ��ϳ����ķ�
������

���������ס�
��������ô˵�������ڵ�Ŀ��������ʱ�䡣��һ��Ӧ
����ȷ���ġ����˶���ѩ���һ���ڣǣȣѻ����
������֦������������·�����ˡ�

������Ѳ����ڴ��е��ڼ�ط����ǲ��ܳ��֡���
�������Ļ��ͻ�ʧȥ�ǣȣ����������ߡ�
������ֻҪ�������ˣ�֮��Ϳ���Ϊ����Ϊ��

�����ڴ��ӵ�����˵��Ѳ��ٵ����ڼ������ܳ�����
���پ���δ�����ԡ�һ�����뿪���ط��ٻָ���������
����Ҳ�ͱ�����ѡ���ʹһʱ�����ɹ�����Ҳ����
���ӷ���Ļ������װ���塣

��Ҳ����������
���������Ļ�������Ѳ��ٽ��е���ȥ�ط��ٵ�ȫ
�����Ρ����ڴ�����˵ֻ�����ڲ���ʤ����
����Ȼ������˵�������в�ͬ����������һ���ġ�

�������ҷ���˵������ʤ����
�����ڵط�����˵����ǴƷ�֮ʱ��
��
���������<RUBY text="������">����</RUBY>��������ȫ����˰ɡ�

���Ǹ��������������ء�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170090b55">
���������á���


{	SoundPlay("@mbgm26",0,1000,true);
	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170100a00">
���ⲻ����Դ̫��������
�������ˡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170110b55">
������Ҳ�����ˡ�
�����ڹ۲�����𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170120a00">
���ǡ�
���ҵ��Ļ��д������𡣡�


{	FwC("cg/fw/fw��Դ̫_΢Ц.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170130b55">
���Ǻǣ�������ô˳���ġ�
�����Ҽ�ʹ�����˴��̣���ŮɽҲ�Ѿ���ȥ
¥�ա������ǰ���Ҳ�Ǵ����ġ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170140a00">
����ȷ����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170150b55">
�������ڼ����𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170160a00">
������
�������ϴ���ˣ�ȥɭ����۲�״���ˡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170170b55">
����������
�������ʵ�����޹ص����飬���á���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170180a00">
���õġ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170190b55">
�������ǽ��н�Ե�ܾ��˰ɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170200a00">
����û��ô�á�
���Ǿ������ǰ���¡���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170210b55">
������ŶŶ���������ꣿ
����ôս���ľ���Ҳ��Ӧ�ء�������


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170220a00">
���ⲻ��˵��
����Ϊ�����겢��ƽ�����¶ȹ��ġ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170230b55">
��װ��ս�������Ƕ����أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170240a00">
��һʮ�Żء���


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170250b55">
�������������������˰���
�������һ���Ƕ�������������ɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170260a00">
���ǰ�����
���������������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170270b55">
�����ǣ���Ȼװ�״�������
�������ã����ƺ�����ô����
���а�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170280a00">
������������ô˵��
���Ҳ��������ⷬ�������⡣��


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170290b55">
����������Ļ�������ӵ���ǵط��ٵ����ߣ�
������һ�����͵Ϯ����ܡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170300a00">
���ǵġ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
������ҹ���˵����׹��Ĵ���ʼĩ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw��Դ̫_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170310b55">
��������ֻ��Ƭ��ȴ����ָ�ֻ���ʵ����ð����
������������ʧ�ܵ�ԭ��Ӧ�����뽣��֮��
�з���ɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170320a00">
���������磿��


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170330b55">
�������ҹ۲������ǳ�ɫ�Ľ��У�
�ܾ��á����š�
���о�����������û����Ϻá���


{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170340a00">
����������
����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
���������ϣ��뷨�ķ���Ÿո�������
����Դ̫���˿����ǻ��۰���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//��������
<voice name="����" class="����" src="voice/ma02/0170350a00">
�����������ص��ġ�
������ȷʵ�����������Ѿ��ڽ���ˡ���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170360b55">
������˵����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170370a00">
���Ҹ���˵�����ˣ�������Ҫ���ֶ�����뷨��
����ʹ���жۻ���
������Ҫ����Ϊ���ߵ��Ծ�����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170380b55">
����������
�������ǲ��еİɡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170390a00">
�������𣿡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170400b55">
�������ǵ��ߡ���������ʵ��
����Ҳ������������ӵ��<RUBY text="��">���</RUBY>��
���߰�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170410a00">
����û�й�ϵ����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170420b55">
���������á���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170430a00">
��������û���ģ����߾��ǵ��ߡ�
�������߲��ݵ��ߣ�Ϊ���ݵĺ�����𡣿��ǡ�
������β��ݲ�ʵʩ�����н������õ��Ľ����
��Щȫ�ǲ����ߵ�ְ�𡣡�


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170440a00">
�����ߣ�ֻ�豻ʹ�á���


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170450b55">
����������
��������Σ���������ִ������𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170460a00">
���ǵġ���


{	FwC("cg/fw/fw��Դ̫_��˼.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170470b55">
������
���������ˡ��Ҳ�����˵�ˡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170480a00">
����л�������Ҹ档
������ԭ����ʧ��Ļش𡣡�


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170490b55">
����������ͷ�Ӳ�����Խ�ˡ�
�����ц������µ���ͷ�ӵ���ɧ�������ϡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170500a00">
�����������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170510b55">
�����ǽ���˵���������Ļ��ɡ�
�����ã����뵽ʲô�Ը��ط���һ���
�ð취���𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170520a00">
������û�С�
���ܳ�Ϊ��������뷨һ����û���������


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170530b55">
�����𡭡�
����ô����Ҫ��һ���ҵ�һ���뷨�𣿡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170540a00">
���õġ���˵����


{	FwC("cg/fw/fw��Դ̫_ͨ��.png");}
//����Դ̫��
<voice name="��Դ̫" class="��Դ̫" src="voice/ma02/0170550b55">
�������Ҿͼ�Ҫ��˵��
���������룬��һ���ն��ɵ�����
�Ϲ�����������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetVolume("SE*", 1500, 0, null);
	SetVolume("OnSE*", 1500, 0, null);
	SetVolume("@mbgm*", 1500, 0, null);

	CreateColorEX("�}��ܞ", 15000, "#000000");
	Fade("�}��ܞ", 1000, 1000, null, true);

	WaitPlay("@mbgm*", null);
	WaitKey(500);

//����
//�����Lլ

	CreateTextureSP("�}����100", 110, Center, Middle, "cg/bg/bg004_�ɤӤ���a_01.jpg");

	FadeDelete("�}��ܞ", 1000, true);

	WaitKey(500);

	OnBG(100,"bg021_���L����g_01.jpg");
	FadeBG(0,true);

	CreateSE("SE01","se�ճ�_����_���饤���_��01");
	MusicStart("SE01",0,1000,0,750,null,false);
	DrawDelete("�}����100", 1000, 100, "blind_01_00_1", true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0129]
���ڴ峤��ָ���°ݷ�����֦�ķ���ʱ������Է�
���ú��Ƿ�æ�����ӵ������ô��Ŷ��䡣
����������ѡ���˰ݷõ�ʱ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SoundPlay("@mbgm23",0,1000,true);

	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//�����衿
<voice name="����" class="����" src="voice/ma02/0170560a04">
���ⲻ�Ǵն������
����ӭ��ӭ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170570a00">
�����Ǻ����æ�����ӡ�
���һ����´������ȽϺðɣ���


{	FwC("cg/fw/fw����_Ц�.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0170580a04">
��û���ǻ��¡�
����������������������ݲ�����
���ԵĻ��峤����Ҳ��һ�𡣡�


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170590a00">
���벻�ÿ�����
����ô��ʧ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���ڶԷ���ʾ��ϯ���¡�
�����Ż������ܣ����Ͼ������˻��ҵ�ԭ��

������֦���ֳ�ĳ�����ߣ�������������һ���
���塣��ͬ˺��ֽ��ĳ�����������ǴӸ�������
�������ġ�
�������ߵ����

��Ȼ����ϸ�������������Ļ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//�����衿
<voice name="����" class="����" src="voice/ma02/0170600a04">
���ն����ˣ�����ͨӢ���𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170610a00">
������ͨ�������΢�õ�ĳ̶Ȱɡ�
����Ϊ�ҵĳ�������<RUBY text="�����">�����й�</RUBY>����΢��һЩ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0170620a04">
��������ѽ��
���ǿ����ǡ������Ⱑ����һֱ��Ϊ��
һ���Ǵ���Ĵ���ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170630a00">
����ֻ���ķ�֮һ��<RUBY text="�Σ��£��������">�´�½</RUBY>Ѫͳ����
�����ڳ����ؽ���������ꡣ
�������ɴ���Ĵ����Ҳ��������Ȼ�ġ���


//��������
<voice name="����" class="����" src="voice/ma02/0170640a00">
����Ի��Ҵ�����Ҳû��ô�����ء�
̫����������������ֻ������ֻ��
Ƭ���


{	SetVolume("@mbgm*", 2000, 0, null);
	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0170650a04">
��ԭ����ˡ�
����ôˡɴ��ð��������Ϊ�����롣��


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0170660a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Խ����ܥ�����ȫ�Ƥ���
//��Ӣ��Ԓ�餷���ƥ����ȥܥå����������ˣ�

	SoundPlay("@mbgm34",0,1000,true);

	SetFwH("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170670a04">
��������ȷ�ر��������������ξ��
�����µ��ж������޵���Լ�����¼��ǰ�
��ζ���������������Ҳ������⡣��Ҫ
�����һ������Ľ��͡���

{	FwH("cg/fw/fw����_���.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170680a04">
����ѽ��������ô�����ء������������ȡ
��ʨ������ս��һ�������˵��ж��ء�
�����͵Ļ�һ�仰������Ŷ����

{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170690a04">
��˵����������


{	FwH("cg/fw/fw����_Ц�.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170700a04">
����Ϊ��а��ĵط��������ҽ���Ͱ��ˡ���


{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170710a04">
����������<RUBY text="�ʣ������塡�����">���ʽ��Ц��</RUBY>����


{	FwH("cg/fw/fw����_ͨ��a.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170720a04">
����ѽ�������ɲ��У��Ʋ���������
����Ȼ�������ֵ���Ҫ���������
�ķ��׶���֪���ꡪ�����䲻�ţ�
���������������̽����ɡ���


//��������ݳ����ӣ�򡡣ã��죡��ȫ�ǥ��ک`���Ϥ���ȥХ��ä��㤦��
{	FwH("cg/fw/fw����_Ц�.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170730a04">
���ڼ�Χ��Ȧ<RUBY text="�ӣ�򡡣ã���">դ��</RUBY>�ء�
��<RUBY text="�ȣ����">�٣�</RUBY><RUBY text="�ӣ�򡡣ã��죡">�桡����</RUBY>
���������ˣ������������仰��Ȥζ���ڡ���

{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170740a04">
������������л���ĺ��⣬����������һ��
Ҳ�޷���⡣�ҷ�����
��Ȼ���أ�����Ҫ����û��û�˵أ�������
���޵Ĺ���ʱ���˷��ڸ���һ���������𣿡�


{	FwH("cg/fw/fw����_�դ�.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170750a04">
����ѽ�����˷�������ʱ�䰡��
���ܱ�Ǹ�ڰ�æ֮��ռ����������ʱ�䡣
�ʹ˽����ɡ���ô���������ټ�������

{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170760a04">
���ȸ��ұ����꣡��


{	FwH("cg/fw/fw����_Ц�.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170770a04">
��а��ĵط��١�����

{	FwH("cg/fw/fw����_����.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170780a04">
������˵����ˣ�
�����¿�ʼ�������׶���˵������


{	FwH("cg/fw/fw����_ͨ��a.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170790a04">
���ܾúܾ���ǰ��ĳ���ط�����һλ��үү
�������̡�
����үүȥɽ���ݣ�������ȥ�ӱ�ϴ��
��������

{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170800a04">
������ʲô����


{	FwH("cg/fw/fw����_ͨ��a.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170810a04">
��Ϊ�������߲����巳���Ҵ��㽫��ε��¼�
���¼ӹ��ı�Ϊ������ʽ������������
�����ţ�����������ĳ����ߵ����벻���ľ�
��չ��Ŷ����

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����_�ϱ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0166a]
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170820a04">
������<RUBY text="�ϣˣ��ϣˣ��Σ������롡�������">֪���ˣ�֪���ˡ����ˡ�</RUBY>
����Ȼ���²�������ǡ������������Ļ���
�Ǿ�û�취�ˡ���ֻ�ܵ������������յ��鱨��
���жϡ���


{	FwH("cg/fw/fw����_ͨ��a.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170830a04">
��һ��ʼ����ô�����ͺ����
��<RUBY text="��������">Ӣ����ʿ</RUBY>����Ǻܰ����ˡ�Ϊ��
�ķ�����ô��<RUBY text="����������">û�õĹ���</RUBY>����


{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170840a04">
�����������Ҳ�����������������ȱ�ݵ��ˡ�
����˵�һᱣ�����ǡ�
������<RUBY text="��������塡�������">��������</RUBY>��һ���֡�����Ӧ�ø�л�ҡ���


{	FwH("cg/fw/fw����_Ц�.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170850a04">
���ҷ������ĵظ�л����
����Ҫ��л������������ϱ���������ˡ���
˵�������������ǰ�����ܲ�ס�������ض���
�������ӣ��Ѿ��޺����𣿡�


{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170860a04">
�������������ֲڶ����������ӵĻ����޺��ˡ�
������������������������²��ص��ġ�
���������������̸̸���µ��°ɡ���


{	FwH("cg/fw/fw����_�դ�.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170870a04">
����ѽ�����Ļ������쳹���
������Ϊ���ڰ뵺��һ�������𣿡�

{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170880a04">
���治����û���չ��ܵ�����
�������ڽ����ҽ���һ�£���


{	FwH("cg/fw/fw����_�դ�.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170890a04">
�������������������Ļ����С�
�������Һ����š���ν�����ҿ����ھ�����
û�з�������޷��������Դ�硣��


{	FwH("cg/fw/fw����_ͨ��b.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170900a04">
��ֻ�������Ѳ����������
���Ǹ��ʸ��𣿡�


{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170910a04">
���ѵ��㲢����û�����ǣȣѵķ�����
��������������Ļ�������Ρ����µ��ж�
��ȷΥ������һ���롣��


{	FwH("cg/fw/fw����_Ц�.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170920a04">
��Ҫ˵���룬�ҵ�Ȼ�Ǻú�����˵ġ�
��<RUBY text="��������������������">Ϊȷ����͹���İ�ȫ</RUBY>��<RUBY text="��������">����Ļ��</RUBY>
<RUBY text="��������������">����һ�н�����</RUBY>��
�����������ķ���ɣ���

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0167a]
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170930a04">
������������


{	FwH("cg/fw/fw����_Ц�.png");}
//������֦���{��ͨ�U��
//�룺����������Σ���090930��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170940a04">
������Ȼ�Ը÷���������顣
��Ļ��Ҳ��������֯����ȻҲ��<RUBY text="����">ż��</RUBY>
�����󣬵���������Ϊ�˶����мල�ģ���


{	FwH("cg/fw/fw����_��.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170950a04">
��Ѳ�����һ�ƶȱ�����ˡ�
��ʵ��Ѳ��Ļ��ͳ����������д���㽫��
�������ⲻ�Ǻܰ���
�����������������������


{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170960a04">
��������������


{	FwH("cg/fw/fw����_ͨ��a.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170970a04">
��������������ô�ˣ�
����˵�Ļ������ﲻ�Ե��𣿡�


{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170980a04">
�����������ٽ��й�ͨҲ�ǰ׷�������
��������ξ������������ֹѲ�����񡣡�


{	FwH("cg/fw/fw����_���.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0170990a04">
����ѽѽ��
���⵽�ף�����Ϊʲô�أ���

{	FwH("cg/fw/fw����_�ϱ�.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0171000a04">
����û����������˵����
���������������ξ��������������̵�
˾��D�D��

</PRE>
	SetTextEXH();
	TypeBeginTimeHI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwH("cg/fw/fw����_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0168a]
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0171010a04">
����ѽ����ιι����ι��ι��
����ô���أ�ͨ��״��ͻȻ���
��ô��⡣����ȫ������������
���ˡ���

{	FwH("cg/fw/fw����_����.png");}
//�����֥ǥ���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0171020a04">
����ξ����


{	FwH("cg/fw/fw����_���.png");}
//������֦���{��ͨ�U��
//�����衿
<voice name="����" class="����" src="voice/ma02/0171030a04">
����ѽ��ѽ����������ô�죿��

</PRE>
	SetTextEXH();
	TypeBeginTimeHIO(0,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������`���|��
	OnSE("se���L_�|��_����01",1000);
	SetVolume("@mbgm*", 100, 0, null);
	CreateColorSP("�}ɫ��", 10000, "#FFFFFF");
	Wait(200);
	FadeDelete("�}ɫ��", 200, true);

	Wait(1000);

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0178]
//��������
<voice name="����" class="����" src="voice/ma02/0171040a00">
������������


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171050e160">
������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171060a03">
��ɴ�����������ˡ��������ߵ绵���ˡ�
�������ͽӲ���˾���ָʾ�ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0171070a04">
����������ͻ���¹ʰ���
������û�а취����Ϊ���ڷǳ�״���µĴ�ʩ��
���С������Լ����ж��������ж�����


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171080a03">
������֮�������������
����������ͷ�ۡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���򿪴����������̴�ǹ�����ƶ�����
������ξ�ñ�ʹ��������̾����
��������󣬱������һ������������ߵ��
ð�Ż𻨡�

������������������
�����߰��㰡��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStR(300,true);

	SoundPlay("@mbgm18",0,1000,true);

	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171090a03">
����ѽ���������ˡ�
����ӭ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171100a00">
�����������ˡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171110a03">
����Ȼ���������ˣ��Ǿͺð��ˡ�
�������������������Ҿ�Ҫ���Լ����ж���
�ж��ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171120a00">
�������ǣ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171130a03">
��Ѳ���ԭ���ϱ���ȷ����˾�������ֶΡ�
�������ǳ����޸����ߵ磬����޲��˵Ļ���
���ò��ػ����ˡ���


//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171140a03">
������ͻ���һ��ʱ�����������ߵ�ɡ�
��Ȼ�����죬����һ��ʱ�䡪��Ů�˲�����ʲ
ô�¶���Ҫʱ����׼����������·��Ҳ�п���
����·�������ر�������


//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171150a03">
���ӵ��ҵı��棬��һ�ε�Ѳ��ٽ��ڵڶ���
�糿�������������ͻᵽ����Ӳ�����ȡ��
������ȡ�Ĵ�ʩ��
��������������Ǹ������ӣ���ô������������


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171160a03">
���������Ѹ�ٲ�ȡ�ж��Ļ���������������
������ְ�����������Ա�������ɳ���������
Ҫһ�졣
���ҵĺ����п������������ϵ����


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171170a00">
������Ҳ����˵��
��ʣ���ʱ�����ֻ��������졣����
ֻ������ҹ��������ɡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171180a00">
����������֮ǰ�򵹵ط��١���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171190a03">
��������������


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171200e160">
���ǡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0171210a04">
�����š�
�������ø����������ء���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171220a03">
���ǰ�������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171230a00">
�������������ˡ�
�������Ļ�����Ҳ������˵�ˡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0171240a04">
����Ҫ˵ʲô����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171250a00">
���ղţ���Դ̫����Ϊ�ҳ��˸������⡣
����ξ���¡��峤���ˣ�����Ϊ�������λ��
����������ǰ���ݷá���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171260a03">
����ѽ������������
������˵���Ҷ�ȫ���������Ҹ���Щʲô�أ���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171270e160">
����Ҳ����˵����
��ֻҪ���ܾ�������ӡ�����


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171280a00">
���ǵġ�
����ô����˵��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);

//����
	CreateTextureEX("�}����100", 5000, Center, Middle, "cg/bg/bg002_��a_01.jpg");
	Fade("�}����100", 1000, 1000, null, true);

	DeleteStA(0,true);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0199]
������������������������������������������������
������������������������������������������������
������������������������������������������������
������������������������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitPlay("@mbgm*", null);

//�����Lլ
	FadeDelete("�}����100", 1000, true);

	SoundPlay("@mbgm24",0,1000,true);

	SetFwC("cg/fw/fw����֦_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171290a03">
������ӵ���������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171300a00">
���ǵġ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0171310a04">
�����ǣ���ʹ����ӵ�������


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171320e160">
������ǵط���ȡ��ʵȨ�Ļ������ǻ�����
�ڿ��𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
���д����ʺ�������
�����Լ�Ҳ˵�ˡ�

��������ת����Դ̫���˵����⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�a��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//��������
<voice name="����" class="����" src="voice/ma02/0171330a00">
���ǵط���Ϊ�β�ί��רҵ���˽���
��ҵ�أ���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171340e160">
��������


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171350a00">
��רҵ���˵��ھ�Ӧ�û�������ȷ�Ŷԡ���
������ˣ���ȴѡ������Ϊ�ط��������Ӹ��Σ�
�����ô���Ϊ���ھ���һ�鷳�İ취����


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171360e160">
�����ǡ���
����Ϊ��רҵ���˵Ļ����û����ɣ���


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171370a03">
������������


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171380a00">
�����£�����������
����֮Ҳ����˵����ʵ������ˡ�����
�ط��ٵ��ʽ�û����ô��ԣ����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171390a00">
�����ǹ�Ա�ڴ�������ж�������û��
�޴����֧Ԯ�ĺۼ���
�������ʽ����Ƿ���ǿ�Ƚ�����뵽
�İɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0171400a04">
������ԭ����ˣ�
���������ˡ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171410a00">
���ھ���ҵ�Ľ�չ״���ѽӽ�Ԥ������
��β��������ʱ������ӵ��Ļ�������
�أ�
����ҵֻ�����¿�ʼ����


//��������
<voice name="����" class="����" src="voice/ma02/0171420a00">
����Ȼ����������Ҳ����Ԥ��ļ�������ʹ
�Ͷ����ɱ�����Ϊ�㣬��Ҳ�����൱������
���ټ�֮��ǣȣ�֮��Ĺ�ϵҲ���붨��Ͷ��
�ʽ�ȥ��㡣��


{	FwC("cg/fw/fw����֦_����.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171430a03">
��������ô���ʽ��ǵط�������һ��
��벻������
���������ɣ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171440a00">
���ǵġ�
�������Ļ�����������ǿ�ʼ����ӵ���
��ҵ����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0171450a04">
���ط��ٴ��˾Ͳ��ò�Ϊ����ֹ��ҵ������
������������ư����ն����ˣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171460a00">
���ⶼ����Դ̫����������ġ�
����ֻ������������ѡ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0171470a04">
���������ǡ���
����С������ο��ǵ��أ���ɴ����Ϊ��
�ܹ��Ǹ����ߡ���


{	FwC("cg/fw/fw����֦_ͨ��a.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171480a03">
����Ҳ�޳ɡ�
��һ��Ҫ����Դ̫���˵�л���С���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171490e160">
��ȷʵ����
����ô�������ܰ���ʲôæ�𣿡�


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171500a00">
����Ȼ����峤�����������������´��ж�
ָʾ����ѡ��׳������ȥ����������ҵ��
��û��ʱ���ˡ����������š���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171510e160">
���ǡ��ǣ���


{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171520a00">
���ط������ǳ��ֵĻ�����Ҫ��ԥ�Ͽ��ӡ�
��������ҵ��Ա���״����


//��������
<voice name="����" class="����" src="voice/ma02/0171530a00">
����Ե�Ϯһ��Ҫ���Ӧ�䣬�м�ǧ��
��Ҫ�Կ�ͣ������


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171540e160">
����֪���ˡ���


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171550a03">
�����Ҹ�ʲô�أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171560a00">
����Я���л��ڡ�ը��֮��İɣ�
��û�еĻ���ǹҲû��ϵ����


{	FwC("cg/fw/fw����֦_ͨ��b.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171570a03">
��Ҫ����ʹ���أ���


{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171580a00">
�������ڵص���������ҵ����ӵ����ǲ���
���ǵط��ٽ����ġ�Ǳ���еĵط���Ҳ����
��ע�ⲻ����
������Ҫʹ�û�������


//��������
<voice name="����" class="����" src="voice/ma02/0171590a00">
��ͨ����ը�������ط��ٵ�ע������֪ͨ����
���ǽ�Ҫ�Կӵ�ʵʩ������ҵ��
����ʹʵ��ʵʩ�����ѣ�����ҲҪ���ǵط���
�����ɵ���������Ū�����ŵĶ�������


{	FwC("cg/fw/fw����֦_Ц�.png");}
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0171600a03">
��ԭ����ˡ�ԭ����ˡ�
��������ˡ������Ұɡ���


{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171610a00">
���������ˡ���


{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0171620e160">
����������һ������
���������ڡ�����


{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0171630a04">
���ǵģ��峤���ˡ�
�������͡�����


{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0171640a00">
������һ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
������ʣ�µ����⣬<RUBY text="������������">��ֻ��һ����</RUBY>��
��
�������ڳ������У�ֻ����һ��������С���ֹ�
������¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���֥�å�������
//���LħС̫�ɣ���ɽ

	SetVolume("SE*", 2500, 0, null);
	SetVolume("OnSE*", 2500, 0, null);
	SetVolume("@mbgm*", 2500, 0, null);

	CreateColorEX("�}��ܞ", 15000, "#000000");
	Fade("�}��ܞ", 2000, 1000, null, true);

	CreateTextureEX("�}��", 15100, Center, Middle, "cg/ev/ev943_�����֣���ɽ.jpg");
	Fade("�}��", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
���������⡣
�������������ܴ������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"ma02_018.nss"