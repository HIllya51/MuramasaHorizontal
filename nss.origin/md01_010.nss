//<continuation number="830">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_010.nss_MAIN
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
	#bg094_�m��ͥ_01=true;
	#ev001_�y�Ǻ��¼�����`����=true;
	#bg054_�����Ҽ���b_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_011.nss";

}

scene md01_010.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_009.nss"

//��m�С�ͥ���飿
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg094_�m��ͥ_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm30",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
�����������Ŷ������ĵط���
����ĳ����լۡ����ͥ���������ĸо���

��������ҡ�����������ڵء�
������վ������ǰ��̨���ϣ��������ҡ�

����ֻ����ô�ࡣ
����Χ��Ȼ���д��ڸУ����ƺ�������Զ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ͩ`��ץ�`�ȡ�����
	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100010b47">
�����˴���֮����������𡣡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100020a01">
���ǡ����ǡ�
���ˡ��˷��������¡�����

{	NwC("cg/fw/nw������.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100030b47">
���ް����˷ǹ���֮������ǳ���֮ͥ��
���������ò���֮���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100040a01">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
���������¡�
����ô����λ�ǵ����𡣴�����ϳ��ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ͩ`��ץ�`�ȡ��ۡ�
	SetNwC("cg/fw/nw��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100050b47">
����Ӧ���š�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100060a01">
��������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100070b47">
������������š������˶Ͼ���
���κμ̳нԽ�����

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100080b47">
�����ж���������ξ����������Ϊ�ա���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100090a01">
����������
���ң�֪������

//��������
<voice name="����" class="��������" src="voice/md01/0100100a01">
���뵽����һ�巸�µ�������������ѡ���
��������������Ҳ�����Զԡ���

//��������
<voice name="����" class="��������" src="voice/md01/0100110a01">
����л�������µĴȱ�������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100120b47">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
�����ŶϾ���
���������͵ļ�ֵ�ۿ���������¾����ж�ô���ء�
�ִ��������޷�֪���ġ�

������ܴӴ���˫�ֵĲ����С���
�������䵽��ɰ֮�ϵ�ˮ�Σ����ܹ��Ʋ���ɡ�

��һ�ж�����Ϊ���Ϊ�������ֻ���<k>

��<RUBY text="����">�ֻ�</RUBY>��
�������������ֳ����⾰��Ҳӳ�����ҵ����С�

����֪����
���ϱ���ʱ�����ĲҾ硪���������ص���ʵ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����Ķ�ev001��
	CreateTextureEX("�}��", 4000, Center, Middle, "cg/ev/ev001_�y�Ǻ��¼�����`����.jpg");
	CreateSE("SEL01","se����_����_�ϑ�01");
	MusicStart("SEL01",2000,1000,0,1000,null,true);
	Fade("�}��", 1600, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
����������������һ���¹ʣ�����һ�б�÷��

������ʼ������ı�������������ʱ����״��������
˵�������ι̵�Ȩ��������
������˵��ͳ���ߣ������ӽ��ڵ���
�������������ϵ��������

�������׵ܵ��������β��ܡ��������ڵܵܵ���������
��ͳ���˾��ӡ�
��������ϸ΢�ı仯��������ϵ�ı䶯���������˵��ˡ�
���컹�ǲ��µ��ˣ�Ҳ��Ӻ�������

�����Ƿ��������ոյõ������󲻾õ��¡�
���̿ͳ��ų�սǰ��æ�ң�Ǳ��������ߣ�ͻȻ������
Ϯ����

����Ϥս����������������ذε���ն��̿͡���
������ɱ���ˡ�

�������Ľ��ɴ�����Լ�����Ǿ��Եġ�
����ɱ������֮�����Լ���־�޹صط�ת���⣬ն
����վ����ߵ�ͬ�顣

����նɱ���ڹ�˽����֧���Լ��ģ������ܵĵܵܡ�

����������һ�쿪ʼ���������ͳ�Ϊ���ļ��š�
���������������Ŀ����ͷš�����ͬ����֮����
���Լ��ķ��������ȫ����

���������ſ��֮Ⱥ��������桪��
�����ж����������ϳ�������Ϊ�˴ӿ���֮����������
��������������һ����ȫ���������Լ��ľ���Ӱ��֮�£�
����֮��û������������

�������ϳ�����ǰ��δ�еĵ������������

��һ�������ƻ�ɱ����ǰһ�е�ħ��֮Ⱥ��
����һ������ÿ��ɱ��һ���б�֮��Ҳ��ɱ��������
ս֮ս�ѵı�����š�

���Ǿ���ĩ��֮�ࡣ
������������У����������������������صĵ���һ
���������׵ظ��£����ŵ���;���ı˰���

���������˶����ˣ������˶��ٴ��򡭡�
��û����֪����ȷ�����������Ҳû������Ҫȥ�˽�ɡ�

��������֮�У�����ֻ��Ϊ�˻�������������������֮
������Ĳ�״����ֻ�ܴ�Ȼ������

������������ʼ������ͱ������������ϳ�֮��������
��ʮ����ս�����ձ����ܣ��Ͼ���ս��֮Դ�����е���
�����ڴ��֮�У�ʳ����֮è�����˸��Ӳ��١�����

������ĳ��ɮ�˵�̾Ϣ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	SetVolume("SE*", 1000, 0, null);
	FadeDelete("�}��", 1000, true);

	SetNwC("cg/fw/nw��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100130b47">
��������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100140a01">
��������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100150b47">
����֪��һ������Ϊ��
����Ϊƽ������������

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100160b47">
������Դ���޲������ڿ��Ѷ���ս�����
���ء���
�������뱱�����ͣ��²����ˡ���

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100170a01">
������������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100180b47">
����֮���ཫ����Ǵ�ɡ���

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100190b47">
��������������ˣ����������޼縺��𢣬��
��һ��Ϊ���������ֻ���ʵ��ԭ�¡�
����֮�游��ĸ�ס�����

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100200b47">
��ʼ������ѷ��鲻����Ӱ��
���ľ֮�������������ˡ�������δ��
�𡭡���

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100210b47">
���䡭��������˷��ò��ˡ���

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100220a01">
����������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100230b47">
�����ڽ����������١���
�����ǡ���

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100240a01">
�������롢���һ�¡���
�����£���

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100250b47">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100260a01">
����һ��������Ҫ����������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100270b47">
�����⡭�����������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100280a01">
������Ϻ����˵����Ϊ�����������⡣
������ս������Ϊ����ҲΪ���⡣��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100290a01">
���������ǡ���
���ѳɽ���֮����ս��֮��ĵط�������Ϊ
��м������ΪϺ�ģ���Ϊ����ʦ������ʤ����
���͵�����ʹ�࣡��

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100300b47">
����������
���ǰ�������

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100310b47">
������������ս�����������ٴ�װ���ǿֲ���
�С���
������Ϊ���޻�Ӧ���𡣡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100320a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="��������" src="voice/md01/0100330a01">
�������ؽ�������ս������
�����ǲ���ʵ�֣��ǻ��ǽ����ӡ����Զ��˯��
���������ɡ���

//��������
<voice name="����" class="��������" src="voice/md01/0100340a01">
�������һ��������
���ҿ��������Լ����׼�����Ը������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100350b47">
��������

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100360a01">
��֮ǰ������Ҳ��ͬ�ˡ���
���游��ĸ�ײ��޶��⡣����ֻ����Ҫ�ս���
������

//��������
<voice name="����" class="��������" src="voice/md01/0100370a01">
��ȷʵ��ˣ�
����ʹ�ҵ��游������ʲô������Ը��Ҳ����
Ӧ������ȷ�ġ�������

//��������
<voice name="����" class="��������" src="voice/md01/0100380a01">
�����<RUBY text="ĸ��">����</RUBY>��Ϊ����ӭ������ҵĽ�֡���
��<RUBY text="Ը��">����</RUBY>Ҳ���⵽���ۣ���

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100390b47">
������������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100400a01">
����ʹ��������Ҳ���ԡ�
����ʹ���뺣��Ҳ���ԡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100410a01">
��ֻ�����٣���һ����Ҫ������

{	SetVolume("@mbgm*", 2000, 0, null);
	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100420b47">
��������

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100430b47">
���������У������ڳ���
�����뺣�У�������𡣡�

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100440b47">
��������֮���й��ڴ�͡���
�������ع������δ����֪����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100450a01">
��������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100460b47">
����������
��Ը���׼�֮���������񡣡�

{	FwC("cg/fw/fw����_ŭ��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100470a01">
���ǡ����ǣ���

//��������
<voice name="����" class="��������" src="voice/md01/0100480a01">
������ܵõ����µĿ�ˡ����ʱ�����ԡ���

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100490b47">
���ơ�
�����ˣ����������������ꡣ��

{	SoundPlay("@mbgm14",0,1000,true);}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100500b47">
�����콣�С���

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100510a01">
������?!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetNwC("cg/fw/nw��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100520b47">
������ȼ����֮���С���

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100530b47">
���������ͬ����ɽ��֮�С�
��Ը����Զ����

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100540b47">
��Ȼ��������ͬ��֮����������
����Ӧ֪֮����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100550a01">
��������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100560b47">
�����������Ƴ���ӡ֮�˵ö���������
������ӦѰ��֮<RUBY text="��">�ٿ���</RUBY>����

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100570b47">
�����Ҽ��Ӷ�����
���������游֮Ը���������������ƽ֮����
�ɡ������統�������ֶ�����֮ʱ������

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100580b47">
����������������������

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100590a01">
������������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100600b47">
�������޷���ɣ���ֻ�����ٶ�����������

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100610b47">
���ش��ޣ�������
�����ܻ��������𡭡�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100620a01">
���ҡ������ܣ�
����һ�����ձ���˵��ȥ������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100630b47">
���ơ���

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100640b47">
���޸���һ�顣
����ɽ��У������˽�Ե��ֻ���ڶ������֮
ʱ����

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100650b47">
���ڴ�֮ǰ���������κ��˽����嵶�񡣡�

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100660a01">
���ǡ���

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100670b47">
����
�����游֮�ط����콣�У�����Ӧ�߱���ɵ�
֮������

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100680b47">
����������֮������������Ӧ�ɿء���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��������
<voice name="����" class="��������" src="voice/md01/0100690a01">
�������ǡ�����

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100700b47">
������Ϊ����Ϊ���游Ψһ֮��������

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100710b47">
����֮�游��֮������
����ʹ��Ը��ȷ����ǿ���������֮����ʵΪ
�����Լ�����

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100720b47">
���ʡ������ˡ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100730a01">
������������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100740b47">
���������������ꡣ
������֮ʹ�ã�����֮����������

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100750b47">
�������к����ɣ��ƴ˽�֮ʱ�����ѷ���֮��
��Ϊ����Ҳ����

{	FwC("cg/fw/fw����_�@��a.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100760a01">
������!!��

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100770b47">
������֮����
�����������꣡��

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100780a01">
���ǡ�������

{	NwC("cg/fw/nw��.png");}
//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100790b47">
�������š�����

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100800b47">
������Ը��ǧ��������ξ������
��Ը������������ٸ��ա�����

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100810b47">
����������֮ĩ����ʹ�õ���š���Ը��ʱ��
Ҳ�����游֮Ը����ʹ��������

//���ϳ��ۡ�
<voice name="�ϳ���" class="����������" src="voice/md01/0100820b47">
��Ը������������භ����
���������������Ը����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="��������" src="voice/md01/0100830a01">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 100, "#000000");
	Delete("�ϱ���");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��������������������<RUBY text="��">��ȥ</RUBY>�����ˡ�

��������Ϊ�˽��С���
����ĸ��һ���и���һλ��ʿ����ӡ������ɽ֮�С�

������Ů���������֩�롣
���������У��ڳ�˯�жȹ������������¡�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺����y�Ǻ�
	CreateColorEXadd("�}��ܞ", 10000, "#FFFFFF");
	Fade("�}��ܞ", 600, 1000, null, true);

	CreateTextureSP("�}���뱳��", 7000, Center, Middle, "cg/bg/bg054_�����Ҽ���b_02.jpg");
	StL(8100, @0, @0,"cg/st/st�����ǰ_ͨ��_˽��.png");
	StR(8000, @0, @0,"cg/st/3d�y�Ǻ�_����_ͨ��b.png");
	Rotate("@StR*", 0, @0, @180, @0, null,true);
	Request("@StR*", Smoothing);
	FadeStA(0,true);
	CreateColorEXmul("�}����Ļ", 8100, "#847000");
	Fade("�}����Ļ", 0, 400, null, true);
	Fade("�}��ܞ", 300, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
������������������ֱ����һ�졣

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Fade("�}��ܞ", 400, 1000, null, true);
	ClearWaitAll(2000, 5000);

}

..//������ָ��
//�Υե����롡"md01_011.nss"