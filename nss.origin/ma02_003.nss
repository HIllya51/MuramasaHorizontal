//<continuation number="250">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma02_003.nss_MAIN
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
	#bg004_�ɤӤ���a_01=true;
	#bg021_���L����g_01=true;
	#bg020_ɽ�}�ӵ�_01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$SelectGameName="@->"+$GameName+"_SELECT";
	call_scene $SelectGameName;

}

scene ma02_003.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma02_002vs.nss"

//����
	PrintBG("�ϱ���", 30000);

	OnBG(10,"bg004_�ɤӤ���a_01.jpg");
	FadeBG(0,true);

	FadeDelete("�ϱ���", 1000, true);

	SoundPlay("@mbgm23",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
������������ˡ�
��Ҫ˵������µĿ�ʼ������һ�������Ѿõ����ˣ�
����Ļ���ط���һְ�ص����ӵ�ʱ��


���ص���ǲ�ط��ٵ�����С��ׯ��ʵ����֣����Ҹо�
Ҳʮ���鷳�������Ա�Ǵ˴�ׯ����Ҳ���ǲ����е�
���ң������Ҳֻ�ǿ��ǵ���Щ��


�����ܿ죬��̬���ݱ�Ϊ���˳Ծ��ĵز���
���Ǹ����˳��࣬���Ų��ڸ�̤����ӣ����ټ�����
���ɲ����Ż�Ҫ��ɽ��

���ǵġ�
���д���������ɽ������Ź��صĿ���������������ʱ
���ǵ´�����һͳ����֮ʱ����������ɽ�з����˹���
�ı�ʯ��

����ʱ�Ĵ�������ϲ���ͣ��������ڿ��ˣ���Ҫ����
�ڳ����ء�
�����ǣ���ס��ɽ�е�Ϻ��һ��ȴ��������֮ǰ������
��ֹ��

���������˷��ֵı�ʯ������Ϻ�����ԣ�
��<RUBY text="��������">�������</RUBY>��ŭ�⡣
��������Щ�ھ��������ͬ������������Ӧ��

����Ȼ�����ⷬ��룬�������ǲ�����⣬��δ���ӡ�
������Ȼ����󹤿�ʼ�ھ�ӵ���
��������������һƶ��ϴ�Ĵ��ӣ�ͻȻ������ҡǮ����
����һʱȸԾ�������ɡ�

����������������Ӧ�����ˡ�

����˵�Ǹ��⾰���ǿ��¡�
�����ڿ�Ҫ�ӽ�������ĳ��ʱ�̣�ͻȻ��ɽ��ŷ���
���磬���籩���ϯ����Χ��������������������
��ȫ������

������ʯͷ������ɰ��������<RUBY text="����">����</RUBY>�����Ÿ�ʽ������
������ȷ�����ǣ��ܶ��˶����ˡ��ӵ�ʱ�ļ���������
Ҳȷʵ�ǲ������ɵ���ʵ��

�������Ǿ���ʧ�룬����Ϻ���峤��������ƽ���ⳡ
���ѡ�
����Ȼ�����̴��̫�����⣬������Ϻ��һ��δ����
����������

�����ǰ�һ�������ഫ�ı��ﰲ���ڿӵ��У�
��Ϊ��ʯƽ��<RUBY text="��������">�������</RUBY>��ŭ����
���������»���ӵ���
��Ҳ������Ч���˰ɣ�����ֻ������һ�α���ʧ�ˡ�

��������ˣ������ǲ��ð��ģ�����ɽ�Ͻ�����
���磬�и���Ϻ�ģ����Լ�������
�����ϰ�����Ҳ����������Ȼ�����Ѿ��ưܲ�����
��Ϻ�ĵ�����Ҳ��������࡭��

���������й����������¡�

�������࣬�ֿ�ʼ����������ɡ�
����ͷ��ʼ�ھ�Ѩ�ȷ�ʱ���ַѽ�Ǯ�����ǵ����¼��
�ƻ��ٴο����ȥ�Ĺſӡ�

����Ȼ�������˶�����˷��ԡ�
�������Ǵ�Ҷ������ű�Ӧ�Ĵ�˵���Ͼ��������Զ��
���ˣ������ж�����ʵ�ĳɷ֣������Ҷ��������ɡ�

��Ȼ��������˳�������˿������ȴ����ǵģ�Ӧ��
ֻ����Ϊ�󹤵Ĳп�����ɣ���<RUBY text="����">�Ǹ�</RUBY>�����ޣ�
����ô���ܰ�����黹�����أ�����ֻ��һС���֡�

�����ң����˵Ĵ�˵���������ʵ�Ļ�����
���Զ��׼������ܳ���ļƻ���η�չ������ֻ��
�õ����ҡ�

�����˵ķ��ԣ��õ��Ļ�����ѪȾ���С�
����֪�Ǻ�ԭ����ʹ����Ϊ�������������ļ�����
����ɱ�����Ͻ�峤Ҳ�ǡ����ԣ��Ҿ������ĵܵܡ�
��ʱҲ�����Ǹ��ӻ����ϰ塣

�������������ڶ�����������εֵ����ط��ٴ�����
Ļ������Ȼ���࣬�����⻹�м�������֮�ˡ����Գ�
֮Ϊ����һ��ɡ������쳣ǿ�󡭡�

�����������Ǳ�����˳��࣬��ʼ��ɽ�������ǳ����࣬
�����޷��ú���Ϣ���ڹ����Լ���Щ��������ԻΪָ��
���Ʋ��£���֪���ж�������ȥ����

�����ٵ���������������ӣ�Ҳ������
�����ӱ�������������ɺ޵��ǣ�ʩ����ҵȴ
һ����˳�������ƺ�ֻ����˳���һ�ˣ��������в���
����ʪ��ͷ֮�ˣ�ȴ��ֹ��һ����

�����������������������ʱ�򡭡�
��Ѳ��ٴ����������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����Lլ
	OnBG(10,"bg021_���L����g_01.jpg");
	FadeBG(1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
���峤�ҵĹ�ģ�������ȥ����ͨ�Ļ���ң�Ҳ��
�ܻ����������˱������������ʹ��ˣ�����˵����
Ե�����˵Ĳ���Ȩ�ƣ�����˵ֻ�ǵ�����Ϊ��������
ʣ�����������ɰɡ�

���Ͼ��ǻ���ң�û���������۵����ң���Ҳû��
Ϥ�Ĵ���ļҾߡ�
���������ӵ�װ�Ρ�����������峤����Ϊ������ס��
���ݿ��Կ������������ӵ�ƶ񤡣

�����������ڷ���ļ�ª���峤��������Щη����
����˵���ҵ�ƫ�ã����ֲ���װ�εķ��䷴������
��θ�ڡ����峤Ҳ������Ϊϲ�ò�Ū������������
������˵������Ҳ�����������˰ɡ�

������ʵ���ϣ��峤��������η����
Ҳ�ƺ����������ɡ�
����֪���������ˣ��ң�Ҳ�������֮����
�Ӹղ��𣬴峤�����߾��䵽����һλ�ÿ��ϡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������֦
	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
��һλ����Ů�ӡ�����������������ݣ�����û��
�κ����⡣�������㷢�������ġ������ֲֳ豭��
�������Ǵ�����Ȼ��΢Ц���ܸо������õĽ�����
�ټ���һ�����ģ���������������ϸ��ˡ�

�����续�����Ļ��壬������ǧ��С�㡣
��ֻ�����������Щ�������޷����ӵ�覴á�

����覴ö��֣�������ǡ������Ϊ��˿����������
�����������
����˵���ٺ��ʲ����������˲�����Ҫ��������ģ�
���������

����˵������ս��ʱ�������õļ��У����ִ��ľ�����
��Ȼ����Ʈɢ�Ŵ�³��Σ�ա��Լ��������Ϣ��Ȼ��
��������Ů��֮��ȴû�в���Υ�͸У����ǳ�����
˼�顣�������ְ���ĸо���

����������û���κβ�ͬ��<k>
��
���������������޴������ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����룺����֦�k�h�ã�
	PrintGO("�ϱ���", 15000);

	CreateColorEXmul("�}����", 5000, "#847000");
	Fade("�}����", 0, 400, null, true);

	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg020_ɽ�}�ӵ�_01.jpg");
	StR(1000, @0, @0,"cg/st/st����֦_���_�Ʒ�.png");
	FadeStR(0,true);

	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
�����ǳ��ʺ��������
�����������Σ�պͲ�������ʡ�
��������ò��Σ��������ʣ����Ǹ����ˡ�

����ʱ���峤Ҳ�ڳ���ֻҪ�����ǵ�ǹ���������
һĻ���˿̾Ͳ�������������װ������λ���˵�
��װ�������ˡ���Ȼ��ˣ��������ֳ���������
�ɾ�Ҫ��ᵽ�����Ͼ�����ʾ�Ĺ����ˡ�

������ͳ�͹������ˣ���ͽ�פ��˾���ͨ�ƣǣȣѡ�
��������ǰ���Ǿٹ���֮�Կ��ĵ��ˣ����ȴ��Ϊռ����
���ٴ�͵ģ������֮���š�

��ͬʱҲ�ǳ���������Ϊ���ͳ���ߣ�Ĭ����
���һķϵĴ��ڡ�
����ʹ��ѰС��ԭ�����ײ���Ҳ�Ҳ����κθö����Ǳ���
�øе����ɡ�

�����⣬Ҳ����������Ů�Ի��Ǵ����֮����κ����֡�

����Ϊ��Ȼ��Ȼ�Ľ��ۣ����в��ɱ���ظ��ֳ������ߡ�
�ѱ��ߵȴ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	PrintGO("�ϱ���", 15000);

	OnBG(100,"bg021_���L����g_01.jpg");
	FadeBG(0,true);

	StL(1000, @0, @0,"cg/st/st����֦_ͨ��_�Ʒ�c.png");
	FadeStL(0,true);

	FadeDelete("�ϱ���", 1000, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0048]
���ۺ���Щ���������������������ֻ������ѹ����
��������ߺͶ������ԡ�
��Ȼ����ǡǡȴ������������������Ů�ԣ�
����������������С���������Ԯ��֮�֡�

���峤���½����������������ȴ��֪��μ���˵��ȥ��
��Ҳ������֮�С�
��Ҫ���������ƽ�������Ҳ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(300,true);
	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��������
<voice name="����" class="����" src="voice/ma02/0030010a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
������С��������
������С����ֻҪ�ǵ޽����֮�ǵĲٿ���֮�����
����һ�����룬����Ҳ���������������ش��Ѹ�١�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֩��_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//��������
<voice name="����" class="��������" src="voice/ma02/0030020a01">
��ʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0030030a00">
��̸��ͣ���ˡ�
����Ϊ���˵�����Ӧ��˵��ʲô��
���Ҳ�֪����Ǻã�

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0030040a01">
����������
�������Ļ���������������ĺ��ѣ�
���ǹ����𡣡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0030050a00">
��ԭ����ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
��������ִ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma02/0030060a00">
�����Ǹ�������������

{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0030070e160">
��������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0030080a00">
��������

{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0030090e160">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
���Ի��սᡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��������
<voice name="����" class="����" src="voice/ma02/0030100a00">
�������أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0030110a01">
���ǡ��Ǹ�����������һЩ����Ц֮�ࡣ��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0030120a00">
�����ף�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
��ִ�С�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma02/0030130a00">
����֪�����������ǵ�����˭�𣿡�

{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0030140e160">
��ľ������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0030150a00">
������������

{	NwC("cg/fw/nw���L.png");}
//������㣯���L��
<voice name="����㣯���L" class="����������" src="voice/ma02/0030160e160">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
���Ի��жϡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma02/0030170a00">
�������أ���

{	FwC("cg/fw/fw����֩��_ͨ��.png");}
//��������
<voice name="����" class="��������" src="voice/ma02/0030180a01">
���Բ��𡣰�����������ˡ�
��������̸о����Լ�����һ��
�����������ص��¡���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0030190a00">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
����֮���ƺ�û�м������յı�Ҫ��
��Ů�ӷ��²豭��̧��ͷ��֮ǰ�ĳ�Ĭ�ƺ��������⣬
�������������ò�ˮ���ѡ�

���������������ȶ����Լ�����ͬ���ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0030200a03">
�������ϣ�������ǰ������������

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0030210a04">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
���ϸ�����������Դ�
����������˵��������Ϊ�����ҵ��Թ�����˵
������ͻ������ʵ�ⱳ���Ѿ���֤�ݵ�֧�֡�
˵����������������Ȼ�ġ�

��������ˣ�ͻȻƾ��һ�˳�ǹ���������޵�
���١��������������ߡ������䲿�µ���Ϊ��
����³ç�ġ���һ��û�иı䡣
������Ȼ�Ǹ�����֮�ˡ�

�����������ϸ���������κ���е���������
Ͷ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����֦_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0030220a03">
���������������������һ���ǱߵĴ��ˡ�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma02/0030230a00">
������֮������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
���Ժ�������ֱ�Ӵ�������߲�����û�����ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����֦_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//������֦��
<voice name="����֦" class="����֦" src="voice/ma02/0030240a03">
���ڴ�֮ǰ����Ȼ��Щ���ˣ���������������
��л��
���ղ�Σ�չ�ͷ���������ˣ���ָ�л����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//�����衿
<voice name="����" class="����" src="voice/ma02/0030250a04">
����Ҳ���Ը�л����
��������Щ��ͻ��������մ���������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����ô��
����λش�

������������ױ����Լ���������������
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

}

//���x�k�����äǤ��룯�狼��ʤ�

..//������ָ��
//���äǤ��롡"ma02_003a.nss"
//�狼��ʤ���"ma02_003b.nss"


//���x�k֫���`��
scene ma02_003.nss_SELECT
{
//���x�k֫ǰ���x
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

//��ǰ��״�B���x
	PrintGO("������", 30000);

	OnBG(100,"bg021_���L����g_01.jpg");
	FadeBG(0,true);

	FadeDelete("������", 0, true);
	SoundPlay("@mbgm23",0,1000,true);

//���x�k֫
	SetChoice02("��������","�����");
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
			ChoiceA02();
//�����äǤ��롡"ma02_003a.nss"
				$GameName = "ma02_003a.nss";
		}
		case @�x�k֫��
		{
			ChoiceB02();
//���狼��ʤ���"ma02_003b.nss"
				$GameName = "ma02_003b.nss";
		}
	}
}
