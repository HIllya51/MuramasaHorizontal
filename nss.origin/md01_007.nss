//<continuation number="1530">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene md01_007.nss_MAIN
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
	#bg023_��Դ̫�μ�_03a=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "md01_008.nss";

}

scene md01_007.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"md01_006.nss"

//���Y�����
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg023_��Դ̫�μ�_03a.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	SoundPlay("@mbgm26",0,1000,true);

	StL(1000, @0, @0,"cg/st/st�։�_ͨ��_˽��a.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fw�։�_�^����].png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070010b16">
���������ˡ�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070020b30">
�����������δ�����
���껹����������ȥ��Ϣ�ɡ���

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070030b16">
���Ҳ�Ҫ����
���������˲�Ҫ�������塣��

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070040b16">
�����ƹ��ȣ��������к�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070050b30">
������������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070060b16">
�����������������𡣡�

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070070b30">
�����ޡ�����

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070080b30">
����ô�������ɰ�������
�������ˡ���������������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070090b30">
������ԭ�¡�������

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070100b16">
�����ǣ��ϳ�Ҳ��һ������

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070110b30">
���ꡢ��˵ʲô?!��

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070120b16">
������Ҳ���˺ܶ�ͬ��������¡�
���������и��ӱ��ɵġ�����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070130b30">
�������ܣ���

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070140b16">
������ġ�
���Ҿ���Ҫ�����ϳ����صĻ��
���Ժ��������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070150b16">
���ܶ��˶���Ϊ����ı������Ʒ��
�����д󲿷ֶ����޹����������ڡ���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070160b30">
������������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070170b30">
����ô�ᡭ���ⲻ���ܡ�
���ľ�������ǣ����������������¡�����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070180b16">
����Ұ��Щ�ˣ������ǻ��ˡ�
����Ҷ��Ǻ�ΰ����ˡ���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070190b16">
�����ǣ�֮ǰ��Ҳ˵����
������Ƕ�������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070200b16">
�����ڵ����磬���Ǻ�����ȥ�����µ����硣��


{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070210b30">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwʼ�����_���d.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070220b30">
����ô���������Ǻá�����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070230b16">
��������

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070240b30">
���᲻֪��˭��ͬ�顣
���᲻֪��˭�ǵ��ˡ���

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070250b30">
���᲻֪��ʲô����ȷ��
���᲻֪��ʲô�Ǵ��󡣡�

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070260b30">
���᲻֪��������ʲô��������

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070270b16">
���������ˡ�����

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070280b30">
���ᡭ��
����Ϊ��ʲô���������콣���ء�����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070290b16">
��������

{	FwC("cg/fw/fw�։�_�^����_.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070300b16">
��Ϊ�˾�����������硭��
���ѵ����������𣿡�

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070310b30">
���᲻֪�����ȥ����
����Ȼ���ϳ��Ĵ��嶼�޷����š�����

{	FwC("cg/fw/fw�։�_�^����].png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070320b16">
���������ˡ�
��������ϸ���ҽ�����˵�Ļ�����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070330b16">
���ұ���Ҫ�̸�����£�
��ʵ��ʣ��һ����
�������Ҿͽ��������㡣��

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070340b30">
����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���։����թ`���Ѥ�
//���˥��飽�ե��롣�֪�Ԥ�տ�������t�ߡ����N����
//���֤����Ф��ˤϤʤ��褦�ˡ�
	SetVolume("@mbgm*", 1000, 0, null);
	CreatePlainSP("�}��д", 10000);
	StL(1000, @0, @0,"cg/st/st�։�_ͨ��_˽��b.png");
	CreateSE("SE01","se����_����_�����p��01");
	FadeStL(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��д", 300, true);
	SoundPlay("@mbgm14",0,1000,true);

	SetFwC("cg/fw/fw�։�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//���ܥ����ϡ��˥���ե��롹��ʤ뤿���ʥ������
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070350b16">
�������������֡���
������<RUBY text="����������">��ɡ���÷</RUBY>����

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070360b30">
����ɡ�������

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070370b16">
�����ѳƺ��ɡ����ǽ������ΰɡ�
���ҳ����Ĺ��ȣ������Ժʹ����ȫ��ͬ����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070380b16">
����Ϊ������������Զ��Զ����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070390b30">
���������δ��ˣ������õ����𣿡�

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070400b16">
������
��Ҫ�����ø�Զ����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070410b30">
���Ǵ������������ġ�������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070420b16">
���ǰ�������������ͷ�Ĺ��ȡ�
�����ǣ����ﲢ�Ǿ�������

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070430b16">
���ҳ����Ĺ��ȣ����Ƿ���ս����
�������ڵĴ��һ������

//�룺������˽������090930��
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070440b16">
�����ԣ���Ϊ��Ѱ���ƽ����԰���������С���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070450b30">
��������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070460b16">
���������������Ķ����Ҳ������ֹ��ȡ�
�������ĸ����ң����ظ��Ŷ��ݵĺ�ƽ�볤��
����������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070470b16">
����������̽Ѱ��ƽ�����磬�𽥿�ʼ���ǵ���
Ӧ��Ѱ�����������ƽ�ķ�����
�����ǡ������������㡣��

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070480b30">
��������ֻ��һ�����ʦ��
���������ڻ���ʧ�˷��򡣡�

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070490b30">
�����޷��������δ��ˡ���

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070500b16">
������
���������������������������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070510b16">
�����о�����ĺ��ӡ���
���Ǵ����漣��Ƭ��ʥ���ߡ���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070520b16">
����߹�Ľ���֮����������ѩ�����ԭ�
���������������س�Ϊ��԰�ɡ���

{	FwC("cg/fw/fw�։�_����.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070530b16">
���ԡ���
��ӵ����ȷ֮�ĵĶ���ʦ��׷����������¶�
��֮ʱ��ʹ���ʱ��һ���������������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070540b30">
��������
����Ǹ���᲻���ס�����

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070550b30">
���ᡭ�����˽���������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�։�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070560b16">
���һ�����㡣
���������ˣ������á���

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070570b16">
��������ʵ���ҵ�<RUBY text="��">����</RUBY>�ɡ�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070580b30">
������������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070590b16">
���ܾ���ǰ����
��<RUBY text="����">ϣ��</RUBY>��һλ���ߣ���<RUBY text="����������">��������</RUBY>����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070600b16">
���������������֮������
�����������ʷ�ϣ��ܹ���Ϊ����������ǵ�
�ˣ�ֻ����һ�ˡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070610b30">
������ġ�����
����������ǰ˵�����Ǽ����𡣡�

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070620b30">
�����Ǹ���˵�������ɴ�������������������
<RUBY text="����">Դ��</RUBY>���ɵġ�����

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070630b16">
���������ڶ������յ��뷨�����ŷ�չ����
�ۡ�
����Ȼ������<RUBY text="����">����</RUBY>����
����ȴԶ����<RUBY text="����">����</RUBY>����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070640b30">
����������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070650b16">
��������˵�ġ�
��������������Ԫ�غ����������ɵġ�����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070660b16">
�����ء����������������ա�����Ԫ���ڡ�����
�������½�ϣ����������������������룬
������ֳ����������
����������˵�ġ���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070670b16">
������˵���࣬��������Ԫ�ؼ���ƽ����
����������϶������ġ�
�����ұȡ�������ǿ�ġ�������֮��������ʹ
�ͼ�������������Ϯ��������������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070680b30">
��������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070690b16">
���������ۣ���������˵���������������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070700b30">
����ô���δ��ˣ������������ģ�
�����У�а���أ���

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070710b16">
�������а��
��������𡣡�

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070720b30">
���š�
����һ��Ҫ�����ᡣ��

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070730b16">
������û�еġ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwʼ�����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070740b30">
��ʲô����

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070750b16">
�����ֶ������������ڡ���

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070760b30">
������������û�аɣ���

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070770b16">
�������ǰ���
��ʵ����ʲôҲû�У����ֻ��Ϊ���������
��������Ҳ����˵���С���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070780b30">
����������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������㤫���㡣�ե饹���Ȥ��ʂ�
	CreateSE("SE01","se����_����_�ե饹���ʂ�");
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetFwC("cg/fw/fw�։�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0052a]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070790b16">
���������ˡ�
�����ڣ��������ﴴ����һ�����硣��

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070800b16">
������<RUBY text="����">��ƿ</RUBY>�м������κ�ˮ���裬
���ϸ��ӡ�
�������յ������У�ֻ����ˮ�Ϳ�������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070810b30">
��������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070820b16">
������������û���ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 300, 0, null);

//���������
	CreateSE("SEL01","se�M��_냇��_�ե饹���᤹��");
	MusicStart("SEL01",0,1000,0,1000,null,true);

	WaitKey(1000);

	SetFwC("cg/fw/fw�։�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0052b]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070830b16">
��������������������Ч����
����ϵ�����ˮ���룬ˮ��Ϊˮ�����������
�ϣ��λָ���Ϊ�ᾧ����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070840b30">
���š�����

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070850b16">
����ô��
���ƺͶ񣬻��������ء�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070860b30">
��������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070870b16">
���뻻�����ǵ�������˼���ɡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070880b30">
���������κ�ˮ����ġ�������֮������
�����Ƕ�ɣ���

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070890b16">
���ǰ���
�����ǵ���ϵ��������Ķ������������
����˵�����ɡ�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070900b30">
�����κ�ˮ�γ���ˮ�ġ����������壬������
����Ļ���а���𡭡���

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070910b16">
�����Ǵ������ˡ�
������ϸ������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070920b16">
���κ�ˮ��Ȼ�����ˣ���֮��ˮ�Ϳ�����ϣ�
��������������

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070930b30">
�������ţ���

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070940b16">
��ˮ�Ϳ���֮�䣬�С������������á�
��Ҳ����˵������Ҳ���ơ���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070950b30">
������������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070960b16">
����Σ����������������ȴ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������äݤ�����ˮ��������
	CreateSE("SE01","se�M��_냇��_�ե饹����䤹");

	SetVolume("SEL*", 300, 0, null);
	MusicStart("SE01",0,1000,0,1000,null,false);

	$�Еr�g=RemainTime("SE01");
	WaitKey($�Еr�g);

	SetFwC("cg/fw/fw�։�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070970b16">
����������ȴ����
��ˮ���Ϊˮ�ζ����¡���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0070980b16">
��ˮ���ܽ����Σ��ٴγ�Ϊ��ˮ����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0070990b30">
��������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071000b16">
����Ϊ��������ˮ��������ȴ�����аɡ�
��������Ϊ�������ֽ��ˣ��������Ƕ��С���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071010b30">
���ء����ء�����

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071020b16">
���������ˡ����������𡣡�

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071030b16">
������񡪡���

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071040b30">
������ֻ��<RUBY text="��������">��������</RUBY>���ѣ���

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071050b16">
���ǵġ�
��ĳ����Ϊ�����ض��ĽǶȿ������Ϊ�ƣ���
�ӷ����������Ϊ�񡣡�

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071060b16">
��������˶��ѡ���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071070b30">
������������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071080b16">
����������ȴ���ƶ������ش�����⡣
������ʶ�ء�������������ʶ�ء���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071090b30">
��Ϊʲô��������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071100b16">
��Ϊ��Ҫ�϶����Լ������ġ��������񶨶���
�������ġ�����������

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071110b30">
��������

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071120b16">
�����ֶ��ƣ����������������ĵĶ�ħ���䡣��

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071130b16">
���������ˡ������Ѿ������˰ɡ�
��Ϊʲô��ƽ�޷���Զ������ȥ��
��Ϊʲôս����һ�δ��ظ�����

{	FwC("cg/fw/fw�։�_����.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071140b16">
��������Ϊ����
��ˮֻ׷������ˮ�İ�������ֻ׷�����ڿ�
���İ�������ֻ׷�������εİ�����

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071150b30">
������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�։�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071160b16">
���������ˡ�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071170b30">
����ô������

//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071180b30">
����Ҫ�������硪����

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071190b16">
����Ҫ���𡰶��ơ�����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071200b16">
�����������˽�������շ��ֵ�����ɡ���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071210b16">
�������Ǵ������н�ų�����
�����Ǹ�������ֻ�����Լ��İ�������������
�����н�ų�������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071220b16">
������������漣�ġ���ֻ�н��С�
����Ҫ������Ľ��У���

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071230b30">
����������
���������𡭡�����

{	FwC("cg/fw/fwʼ�����_���d.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071240b30">
��������������������ΰ������𡭡���

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071250b16">
������������

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071260b16">
�����м�����
��֪ʶ����Ҳ�̸����㡣��

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071270b16">
�����ң��������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������Ƭ��ȡ��������ե�å�����`ħ��������
	CreateSE("SE01","se����_냇��_���Q01");
	MusicStart("SE01",0,1000,0,1500,null,false);
	CreateColorSPadd("�}ɫ��", 5000, "#FFFFFF");
	Wait(30);
	FadeDelete("�}ɫ��", 600, false);

	SetFwC("cg/fw/fwʼ�����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071280b30">
�����ǣ�
��ˮ�������������ǡ���?!��

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071290b30">
�������ᡢ�᲻֪����
�������ܣ���Ȼ��Ϻ�Ĳ�֪���Ŀ���!!��

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071300b16">
����֪��Ҳ��������Ȼ�ġ�
��������ǵ��Ͻ���һ���Ķ���������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071310b16">
��<RUBY text="�̣���� �ӣ����">ʥ����Ƭ</RUBY>��
���������Ѫ�⡣��

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071320b30">
�������񡭡�?!
�������������ף���ȷʵ���ǡ����˲��õĶ�
��!!��

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071330b16">
���ԡ�
����ʯͷ���������˲�������������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071340b16">
����������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф��á���`�֤�ڤ���
	CreatePlainSP("�}��д", 10000);
	StL(1000, @0, @0,"cg/st/st�։�_ͨ��_˽��c.png");
	CreateSE("SE01","se����_����_�����p��01");
	FadeStL(0,true);
	MusicStart("SE01",0,1000,0,1000,null,false);
	FadeDelete("�}��д", 300, true);

	SetFwC("cg/fw/fwʼ�����_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071350b30">
���֡����δ��ˡ���
����������?!��

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071360b16">
��������

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071370b30">
������ʯͷ����һ������

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//�룺����������ʯ����090930��
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071380b16">
���š�
���õ����ʯͷ֮���ҾͲ���˥�ϡ�������
�����𽥱�����⸱ģ������

{	FwC("cg/fw/fw�։�_ͨ��.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071390b16">
����ȫ��仯֮ǰ���������㡭��
���ܹ���һ�ж������㣬����̫���ˡ���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071400b16">
�������ҡ���
��������������ҵ�ʹ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��������������։�
	CreateSE("SE01","se����_�n��_ܞ��01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	Shake("@StL*", 300, 4, 0, 0, 0, 1000, DxlAuto, false);
	Move("@StL*", 300, @10, @30, null, false);
	DeleteStL(300,true);

	SetFwC("cg/fw/fwʼ�����_ꓤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071410b30">
�����δ��ˣ���

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071420b16">
������̫���ˡ���
����ʵ�ڻ���̫���ˡ�����

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071430b16">
�������ܹ������ˡ�����

{	FwC("cg/fw/fwʼ�����_ͨ��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071440b30">
�������ԣ�
���������������ʯͷ������

{	FwC("cg/fw/fw�։�_�Ŀ.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071450b16">
�����С�
���Ǹ�Ҫ������ʹ�á���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071460b16">
��Ϊ�˶������ߵĽ��С���

{	FwC("cg/fw/fwʼ�����_ꓤ���.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071470b30">
���ɡ����ǡ�����

{	FwC("cg/fw/fw�։�_����.png");}
//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071480b16">
�������ˡ�
��һ�ж������и������ˡ���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071490b16">
��Ҫ������Ӷ����н�š���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071500b16">
������ֻ�ǵ��˵İ�������ȫԱ�İ�����
�����ᷢ�����������ﶼ���޸��ҵؽ�ϣ�׷
���ձ�֮���ĵ�·�����������ȥ�ɣ���

//���։���
<voice name="�։�" class="�։�" src="voice/md01/0071510b16">
����һ��������
������֮�����������������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ԥ��Ԥ����ҤӸ����
//���Ѥ���`�󡣳Z��ɢ�ä�
	CreateSE("SE01","se����_�z_���٥�_�ҤӸ��");//���ߩ`ע��
	CreateSE("SE01b","se����_�z_װ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSPadd("�}�ե�å����", 5000, "#FFFFFF");
	Wait(30);
	Fade("�}�ե�å����", 100, 0, null, true);
	MusicStart("SE01b",0,1000,0,1000,null,false);
	Fade("�}�ե�å����", 0, 1000, null, true);
	WaitKey(200);
	FadeDelete("�}�ե�å����", 1500, true);

	SetFwC("cg/fw/fwʼ�����_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071520b30">
���֡����δ��ˡ�����

{	FwC("cg/fw/fwʼ�����_�@��.png");}
//��ʼ�������
<voice name="ʼ�����" class="ʼ�����" src="voice/md01/0071530b30">
�����δ��ˡ�������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���ե��`�ɥ�����
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"md01_008.nss"