//<continuation number="2060">


chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma01_014.nss_MAIN
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
	#ev268_�䥯���Ȍ��Ť���һ��=true;

	#bg014_�`�}���A��_02=true;
	#bg015_�`�}·���Y_02=true;

	//����`�ȥե饰���x�k֫���Τ�GameName
	#voice_on_�c��һ��=true;
	#voice_on_ѩ܇�һ�i=true;

	$PreGameName = $GameName;

	$GameName = "ma01_015.nss";

}

scene ma01_014.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();



..//������ָ��
//ǰ�ե����롡"ma01_013.nss"


	PrintBG("�ϱ���", 30000);
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg014_�`�}���A��_02.jpg");

	SoundPlay("@mbgm22",1000,1000,true);
	DrawDelete("�ϱ���", 1000, 100, "blind_01_00_1", true);


//�����ͨ�ꡤϦ��

	SetNwC("cg/fw/nw��ݤ���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//������㣯��ݤ���
<voice name="����㣯��ݤ���" class="������Ů��" src="voice/ma01/0140010e021">
����ѽ�����컹û�������ء�
������������Ҳ�����ˡ���

{	FwC("cg/fw/fw���w_ͨ��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140020b56">
����������л�ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0021]
���߳����峣ȥ�ĵ꣬�һ�ȥ�ʹ�һ�ϡ�
��С�ĺ��ұ���������ն����������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140030b56">
��˵�ǻ�û���ء���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140040b43">
���᲻���е����ˣ���

{	FwC("cg/fw/fwС��_ͨ��a.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140050b33">
���Ǹ�����Ҳ�й����ɡ���

{	FwC("cg/fw/fw�ұ�_����.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140060b43">
�����ţ����������⸽����û��
�������ȫ�϶��ȺȾ�ɢɢ��
�������Ĺ����ˡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140070b56">
�����������������Ի��Ƿ����Զ�
̫ȱ������ô���ܳ�Ϊһ��ְҵ��
���ն������أ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140080b33">
����˵��΢���Ǳ�ȥ����һ�¡���

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140090b56">
�����𡣲������⸽�����˶Ըо����ļһ�
Ҳ��ϰ���ˣ�Ӧ��û����ɡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140100b43">
���ҵ������Ǹ��˲��Ǹо�����ء�
����ô˵�أ�<RUBY text="����">����</RUBY>���ã���

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140110b33">
�����������ݱȸо���⻹Ҫ���֡���
��������Ҳ��˵���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0111]
�����������˾���·�ϴ���ʱ�䡣 
����˵ʱ�����磬����������Щδ�����˽�ֹ����
��С�ƹݡ���������Ͳ���ѧ���ó��ֵĵط���

��Ȼ�����ͺ������������Ļ��ֲֽ�ͬ���������
����ǽ����˸��������������ع����Ĵ����ǡ�
����ҲûʲôǮ��
�����Ե���Ҳ�����أ�Ҳûʲô�������Ķ�����

��·�������Ķ������ˣ����д����ڴ����к���
û���ܵ�һ���𱸡�
����ž��ü�ʹ��ѧ���ڣ�����ʵ����Ҳ��������
�κ�����ɡ�

����������Ҫ˵��ִ������ֻ��������������ѡ�
ʮ��ƽ�͡�
��
�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140120b56">
�������ܾ��ý��죬���ղ�̫�ã���

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140130b43">
���ǰ���
��һֱ���õ����������ɫ����̫�ã�
���Ҵ�ʱ���Ͽ��ǿ���Ҳ̫���ˡ���

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140140b33">
�����еĵ��һֱ���š�׼���С�������
�����ܾ��ùֵֹ��ء�
���ѵ�����Ϊ�Ǹ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0141]
��С��ž����ס�죬��ɫ�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetComic(@0,@0,12);
	SetFwC("cg/fw/fwС��_�@��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140150b33">
���ն�����������Ӱ�죿��

{	DeleteComic();
	FwC("cg/fw/fw���w_�Ӥ�b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140160b56">
���ܡ�����Ӱ�쵽���̶ֳ���
���Ǹ��˵���������

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140170b43">
����ѽ�ǿ��൱����Ц�ء�
��������������������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���ܤ�
	OnSE("se���L_����_Ź��04",1000);
	Shake("@StL*", 300, 4, 0, 0, 0, 600, null, false);
	Move("@StL*", 300, @-40, @0, Dxl3, false);
	DeleteStL(300,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0171]
����֮�ȸ���˵��Ц���ұ�һȭ����Ѱ�����ڸ���Ѳ�ص�
�������Ե�������Ӱ��
���Ǹ�������ô������Ҳ����Ϊ��ֻ�Ǵ�����������ƻ�
�����ƽ�ȡ���Ȼ��ô���š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0172]
���ҷ��ֵģ��Ǳ�Ķ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140180b56">
������������ʲô�ԭ�����Ǹ�������

{	FwC("cg/fw/fwС��_ͨ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140190b33">
���Ǹ�����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140200b56">
��ֻ�Ǵ�����������ƻ�����ƽ�ȵļһ��

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140210b43">
���۷ɣ�
������������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 500, null);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0211]
��˳���ҵ����߿�ȥ���ұ����˵�ͷ��
�������֮���������ּһ

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("��ܞ", 1500, "#000000");
	Fade("��ܞ", 1000, 1000, null, true);

//���䥯��
	StC(1000, @0,@0,"cg/st/stҰľɽ�M_ͨ��_˽��.png");
	FadeStC(0,true);

	Wait(500);

	FadeDelete("��ܞ", 1000, true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0212]
�������޳ܵ��������´��Ŵ�����װ�ı��δ󺺡�
�������ģ��Ǻ����߳ܵش��ż��両��ĳ�����
��ҫʮ������ˡ�
����΢��Щ��������ŵģ���ɫ��̬��С�������ˡ�

���������߰����װ����ȴ���������ͳһӡ��
�ļ��ţ�Ѱ���ؿ���Ҳֻ����ôһ�֡�
������ĸ�����ɶȣ���ֱ���˾���������֮�֡�

��<RUBY text="�����">��������ҵ</RUBY>��
�������Ƕ�˵�����ǻ����Ǹ��������в�ͬ����
һ�����

�����Ǵ������߰��������ۼ������Ļ�������
ֻ�ᱻ��������Щû����֯�ļһ
����Ҫ�Ǵ�������ĺ��ӻ���������ᣬ�ǿ���
�ᱻ�����������ʵļ��Űɡ�

������֮�����ǲ����������Ĵ����� 
������ְҵ������᡻�����������֡�����᡻��

</PRE>
	SetTextEXL();
	TypeBeginLI();//�D�D= =�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0216]
���������뿴��֪����
�����ǻ��ž��Ǹ����������鷳��

���Ƕ���ᵽ����ʲô���ף�
��Ϊʲô����������Ҳ�ܳ�����

����������ȺȾ�ɢɢ����Ϊְҵ����ʵЩ��

������֮�������˴����鷳�����ǵ�����ϰ�ԣ�
�����ǽ����ŵĹ�����
����ôһ��Ҳ����˵��ͨ��

��һ����·һ�߽�����ײ��һ��Ҳ�ã�������
��Χɢ��Ҫ������ζҲ�ã���ȫû������߷�
����Ҳ�ã���������Щ������ƨһ������Ϊ��
��Ҫ�����Ŀ��ǡ�

�������ǵ���Ϊ���ɸе��ջ�
����Ϊ����֮������࣬Ӧ�öԵ͵�������ů
�ػ���������Ϊ�о����󡣿϶���ѧ�����ٵ�
�����ɡ�

���ǲ��ǣ����ǻ����������������̬��

</PRE>
	SetTextEXL();
	TypeBeginLIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorEX("��ܞ", 1500, "#000000");
	Fade("��ܞ", 1000, 1000, null, true);

	DeleteStC(0,true);

	Wait(500);

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140220b56">
�������ꡪ����

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(150,0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(0,false);
	FadeStR(0,true);

	FadeDelete("��ܞ", 1000, false);
	SetVolume("@mbgm*", 1000, 1000, null);

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140230b43">
����Ȼ��̫���ʲô���ˣ�Ҫ��ô�찡��
�����ƺ����������Ŷ����

{	FwC("cg/fw/fwС��_����.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140240b33">
��������ô�졣�ܿ���·����һ��
���Ķ���˵��ƣ�������֮��
�������߹�ȥ����

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140250b43">
��Ҳ�ԡ���

</PRE>
	SetTextEXC();
	TypeBeginTimeCIFO(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0251]
���ǳ�ʵ�ʵ�Ӧ�ԡ�

������Ἧ�Ž���·�ߵĵ��̣���һ����������
�ڵ����˹��������ĵ�ͷӭ����ǰ�м������ٽ�
��һ�ҡ����ظ�����������Ϊ��

��ʵ��������⡣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140260b43">
���������ձ����ѵ������𣿡�

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140270b56">
��Ҳ����˵�Ǹ�����Ұľɽ�鰡����

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140280b33">
��ʭ��ɽ����ʭ��ɽ��
��ע����Ұľ���롰ʭ�ӡ������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0281]
��С���³����������

������������̰�������������Ϊ����Ұ����
����ô�ۼ�����Ұ����������õ�����ʣ��
�ļһ�����ʭ�ӡ����������ˡ�

��Ұľɽ����ͨ���ֺ÷�������ޣ��õ�Ļ����Ӷ��λ��
��������֮һ��
����ǰֻ�Ǹ���С��������֯�����������޽Ӵ��ɹ���
���������úܿ졣

������Ѿ���ȫ������һ����֧���ߡ�
���������޵�Ȩ����Ϊ��ܣ�������ʱ��˰�����
ʩ���Ӷᡣ�����һ���Ͻɣ�ʣ�µ������Լ�������
���׵ļ������

������ʭ��֮����޴������ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwС��_ŭ��a.png");


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140290b33">
�������������������ˡ���

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140300b43">
��Ҫ�Ұ���ɦ����С�ġ�������������

{	FwC("cg/fw/fwС��_ŭ��b.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140310b33">
�������벻Ҫ����һ������ֻ�д�Ϣ���߰���ģ�
�������ù�������˵ġ�
�����������㵹����Դͷ������취����
Դͷ�ϡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140320b56">
��ι����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0321]
���ҵ�������Щ���ˡ�

��С��һ����ָ��Ұľɽ����ǰ��ˣ�һ�ߺ��ұ�˵�Ż���
���Ƕ��������Ű�ɫ��װ������һƳ�俴���ˡ�

�����˶��ѡ�
�������ǽ��˶��Ѿ��ܹ�ȥ��״����
��
��ʱ��̫���ˡ�

������������������ͻأ��˲���ð�����
����żȻ������ʲô������Ӧ��
��������ʲô�������Ƿ����ǽ���һ˲�ĳ�Ĭ
����Ե��ʱ��������������������

{	SetVolume("@mbgm*", 1000, 0, null);}
�����ŵĽ��٣�ֻ����ôһɲ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0330]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140330b33">
�����ǰ�ʭ�ӡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������
	DeleteStL(300,false);
	DeleteStR(300,true);

	WaitKey(700);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0331]
�����ţ���һ˲֮���ٶȽ��١�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0340]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140340b56">
���������ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0341]
��״����
���Ѿ���Ӳ��С�ġ�
�����߼��е�С�����ϵ������顣
������ѻȸ���������ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0350]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140350b56">
�����¿������˰���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0351]
���Դ����ظ����Զ��׼��ķ�����

��Σ�ա��ܹ���⵽Σ�ա�
����ȴ�޷�����˼����ȥ��

�����ߣ����߶�ء����ʸ������Ժ���
ȴ�޷�������еĺ��塣

����֪����Ǻá�
��˭�����ҵ����ӡ�

��ʲô�������ˡ�
��˭�����ҵļ��

�������ұ��ߴ����Һ�С�Ŀ�����ߡ�
�����ڻع�������ʱ���ĸ����Ѿ���������ǰ��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/stҰľɽ�M_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0360]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140360b54">
��С�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0361]
����ɫ��װ�����ˡ�
��һ���Ͽ�ı��飬����ȴ�ܺͰ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0370]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140370b54">
���ո�˵��ʲô�ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0371]
�����������ֻ�������������ݡ�
�����Զ���������ȫ��������վ�ڶ��������
�е����ġ�

���ѵ���û����ô������
�������ǵ��Է���ѧ����
����������Ҳ�޷��õ��κ����档

�������Ļ�����øϽ���Ǹ��
���Ҳ��ۿ��˿�С�ġ������Ҳ���������Ƶ����顣
����ǿǿ�أ����ڿ��ڡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StR*", 300, @45, @0, DxlAuto, false);
	SetFwC("cg/fw/fwС��_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0380]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140380b33">
���������Ǹ�������

{	FwC("cg/fw/fwҰľɽ�M_Ц��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140390b54">
���ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0391]
�����˰��ַ��ڶ��ߣ�һ���������塻�����ӡ�
���ں��������ͬ�￩��Ц�š�

��С��Ц��������
�����Ǳ�Ȼ�ġ��Ǽһ����û�����������ǣ�
����һ��������ô�ã�����������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	Move("@StR*", 300, @45, @0, DxlAuto, false);
	SetFwC("cg/fw/fwС��_�Ӥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0400]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140400b33">
���ǡ��Ǹ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StCR(1010, @30, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	Move("@StMR*", 300, @-60, @0, DxlAuto, false);
	FadeStCR(300,false);

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0410]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140410b43">
����������Ǹ������硣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0411]
��һ���ӣ���˭������С����ǰ��
�����ұ���

��������Ҫ���������˵�С�İɡ�
���������ұ�����������¾��ǻ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0420]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140420b43">
�����������Ҳû�����˼����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Х����ꥢ���ʹ������Ź����
	OnSE("se���L_����_Ź��01",1000);
	DeleteStCR(0,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0421]
������ι���ұ���

����ô��������û���ˡ�
������ƽʱ������������˵����ͣ����

��������˵ʭ�Ӷ�ֻ���ں���˵����ľϣ���������
֮��ġ�
����˵���߰��㵫��������ô���°ɡ�

�����˵�����������취�ɻ��ȥ��

����˵�������㵽����ȥ�ˣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0430]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140430b56">
����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0431]
������������ǰ��վ�ŵĵط����׶࣬
�ұ�ˤ�����
����֪Ϊ�ξ͵����ˡ�

���������ڸ�ʲô����
�����Ź�ͷˤ������

��ιι��������û�취����

������˵������ͷ��
��Ϊ�˺���װ��翹�⣿

������������ôһ�ְ�����
���á���������һ�����������հɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwҰľɽ�M_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0440]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140440b54">
��˭�����˴���!!
���ҿ����ڸ���λ����˵����
Сƨ��������һ��ȥ!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����������Σ�ϵ�£ǣͣ�
	SoundPlay("@mbgm34",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0441]
��������������������������

���Խ����ᡣ

���ұ����ڵ��ϡ���ӹ���ɡ����Ǳ��򵹵ġ�
����˵һ�仰�Ļ���Ҳû�С�����С����ǰ���¸�
˲����Ѿ���ȭͷ����˰ɡ�

�������һ��˼������ȷ��������̬��

���������һＴʹ��Ե���ѧ��Ҳ��ȫû��Ϣ��
���˵Ĵ��㡣
��������Ҫ�ú���ʰ���ǡ�

����ϸ�������󷽴���������������ȫ�޾���֮ɫ��ֻ��
���ȵ�С������΢΢���������Ӷ��ѡ�
�����Ǳ������������˵��������չ����������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0450]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140450b56">
����ô�죩

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0451]
���ұ�֧�����ӡ�
����Ȼ����Ͽ�ĶԴ������ı�����һ��������������£�
����Ҳû�н�һ���ж���������жϳ�������ʲôҲֻ��
����ķݶ���������ɡ�����ͬ�е��ҷ���������

��С�ĵ���ɫ��ȫ�԰ס�
����˵��һ��ǿ�ƣ�ȴ��������ǿ���ܹ�ֱ��ӭ��
��֪�������صı�����������ҡ�����͡�

�������������ϣ�����˵�����ȵ�СҲ����Ϊ����
������û�����ʹ�ȥ������ֵ�ñ����ˡ���ǰ�������
���������ۣ���־���ѵĻ���

���޷�ָ����Χ���ˡ�
����Ϊ�ض����˸���Ұľɽ�飬
����˵�䱳���������Ϊ�С�

����ô��
�����أ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0460]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140460b56">
�����塪���ܶ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0461]
����Ȼ����ҡʱ���еģ���ƮƮ�ĸо������š�
���������ܶ��ġ�

����������ô����
������ʲô��

���������ĸ��ˣ�
������С�����ܣ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0470]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140470b56">
�������ܡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0471]
��������������
������Ҳ�ǰ�����

�����ڣ������ž������Ұľɽ����ĸ��ˡ�
����ǰ��ѹ���Ե�ǿ�ߡ�

���޷����档
���޷�������

��ֻ��ͽ�͡�
��<RUBY text="����������������">���������޷�����</RUBY>��

����֮����ͷ��
���������ǰ����������Ч���ж���
���ſ�������̸��ֻ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0480]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140480b56">
�������ԡ��Բ��𡣡�

{	FwC("cg/fw/fwҰľɽ�M_ͨ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140490b54">
������������

{	FwC("cg/fw/fw���w_���a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140500b56">
����ʵ��������˵�����ġ�ֻ�ǣ���΢����
˵���˵�ʲô֮��ġ�
���Ǹ�������

{	FwC("cg/fw/fwҰľɽ�M_ͨ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140510b54">
���ţ�С�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0511]
����װ����ȫ�������ҡ�
��ֻ�Ǹ�����С�ģ�<RUBY text="����">�º�</RUBY>��˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwҰľɽ�M_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0520]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140520b54">
����ɲ���Ŷ����˵�����ǵĻ�����
���������ǰ��������ڰ�������Ļ�����¡���

//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140530b54">
����Ļ�����£��͵����������Ұ���Ŷ�� 
��˵���𣿡�

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140540b33">
���ԡ��ԡ�����

{	FwC("cg/fw/fwҰľɽ�M_Ц��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140550b54">
���ţ�û�����Խ������ǵĻ����ǲ��Եġ�
���õ�Ǹ�ɣ���

{	FwC("cg/fw/fwС��_�Ӥ�.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140560b33">
���ǡ����ԡ��Բ��𡣡�

{	FwC("cg/fw/fwҰľɽ�M_Ц��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140570b54">
���ţ����ء�Ҫ��ô���ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0571]
��˵��Ҫ��Ǹ������ȴ��С��ƴ��л��Ļ���
������š�
������װ��˼�������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0580]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140580b54">
����֮��С���ﰡ����

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140590b33">
���ǡ�����

{	FwC("cg/fw/fwҰľɽ�M_Ц��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140600b54">
�����·��ѵ��ɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0601]
����������!?

���󷽴���������һ��׾�ӵش��������ڡ�
��֧�ȵ�С�����˿�Ц��һ�¡�
��
�������ˣ����ڿ�Ϸ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0610]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140610b33">
����������������

{	FwC("cg/fw/fwҰľɽ�M_Ц��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140620b54">
���·���ȫ���ѵ���Ȼ��ȫ����ȥ�Ǳ߹��¡�
�����������ˡ��š����������ԭ�����ˡ���

//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140630b54">
��������ĺ��ӣ�
�ҿɲ����������ĳͷ���ʽ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0631]
��ι��
��������ʽ��ѧ�����ַ���
������˵����������Ϊ�ǲ��������ĳͷ���ʽ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwС��_�Ӥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0640]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140640b33">
����ô�ܡ����ҡ�����

{	FwC("cg/fw/fwҰľɽ�M_Ц��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140650b54">
�����õ��ɣ�����Ϊȫ����С����Ĵ�Ŷ����
���˴��¾�Ҫ�úõ�Ǹ�԰ɣ����Ͻ��Ѱɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0651]
��ȫ����ڵ������Ǻú�л����
�������ĸ�����Ȧ����֪����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0660]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140660b56">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0661]
��С��Ҫ���ˡ�

�������ס��������Ͼ�Ҫ�޳��������ӡ�
�������Ǵ�С����������δ�й��ĺ�����ޡ�

���������ڰ������������Ŀ޷���
����Ϊ��Ⱥ�һ

��Ұľɽ�顣
���ܹ��������ޡ�
�������ĸ��˶��ǿ�����ԶԶ����ǿ��ĺ����
�����顣

��Ӯ���ˡ�
����ʹ����Ҳ����Ӯ���ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0670]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140670b56">
������<RUBY text="����">����</RUBY>����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0671]
��<RUBY text="��������">��������</RUBY>��

��û��
������������

�������죬���������˺���Ҫ�Ļ���
������ʲô���ţ�

������������
����Щ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0680]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140680b56">
������<RUBY text="����">�޹�</RUBY>��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0681]
�����ˡ�
�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0690]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140690b56">
�����ܲ���Ӯ�����޹أ�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0691]
��<RUBY text="��������������������">��Ϊ����ս������ս��</RUBY>��
��<RUBY text="��������">�������</RUBY>��<RUBY text="����������������">û�б�Ҫ����ʤ��</RUBY>��

������סС�ĵ��֡�
���������������Լ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_����01",1000);
	DeleteStR(200,true);

	SetFwC("cg/fw/fwС��_���.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0700]
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140700b33">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0701]
����˶�Ӧ�����Լ���ǰ����һ����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	OnSE("se����_����_�᤺����01",1000);

	StCR(1010, @-30, @0,"cg/st/st���w_ͨ��_�Ʒ�.png");
	Move("@StMR*", 300, @-30, @0, DxlAuto, false);
	FadeStCR(300,true);

	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0710]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140710b54">
�����ʲô!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0711]
�����˵�̬���ٴ�˲����䡣
�����˲��𰡡����Ѿ�������Ǿ����ݼ��ĳ̶��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0720]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140720b56">
���ұ�����

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140730b43">
�������۷ɣ���

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140740b56">
����ͷ�ж���
��������С�����ܡ���

{	FwC("cg/fw/fwҰľɽ�M_ŭ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140750b54">
������!?��

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140760b56">
���ҵ�����Щ�һ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0761]
�����ӡ�
������ǰ�������µ���������������ν��

����ֻ��Ҫ���Ҹ����ġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0770]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140770b43">
���������Ҿ�������̫�����ˡ���

{	FwC("cg/fw/fw���w_�¸�.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140780b56">
�������ס���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0781]
����ȷ��������������������ô�������õ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0790]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140790b56">
�����ǣ�Ҫ������

{	FwC("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140800b43">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0801]
���ұ�û����˵ʲô��
������֮��һֱ����һ�Ե����Ӿ����Ǽ���һ����
���ɿ�������Ƶ��ұ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0810]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140810b43">
��С�ġ���

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140820b33">
���ҡ��ұ�������

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140830b43">
�����������£�һֱ���Ǳ��ܡ�����Ӧ��
ʲô�����롣�����ѵĻ���������ɡ�
���ף����᲻��˯�Ű�������ô�ɵĻ�����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140840b56">
��ι����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @60, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	OnSE("se����_����_�᤺����01",1000);
	Move("@StR*", 300, @30, @0, Dxl1, false);
	FadeStR(300,false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0841]
������Ϊ�ڱ�����ұ���վ��������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�ұ�_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0850]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140850b43">
�����۷�һ���˵�ס�����ǲ����ܵġ�
����ȫ��ֵһ�ᡣ��

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140860b43">
���������˵Ļ�������������к�����������
ʲô����Ҳ����û����о�����
�������Ǵ������ʲô����

{	FwC("cg/fw/fw���w_����.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140870b56">
������������ʲô������

{	FwC("cg/fw/fw�ұ�_Ц�a.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140880b43">
������֪����������Ҫ�����𣿡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0881]
���������ǰ��쵰��
����һ���������������°���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0890]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140890b54">
��������С��������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0891]
�������Ǳ�������ˡ�
��ս���ϣ�ѧ����������ͨ��ʭ�Ӷ���ĺ���������顣

����Ҫ��������С�����ǣ����������㡣

�������������ˡ�������װ�����ˣ�
�����ڳ����������ˡ����⿴����֪��
�����ж༤����ֻ��ʣ�µ�һ���ˣ�
������С���������ɰ���һ����Ϸ�ı��顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0900]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140900b56">
��С�ģ���������Ϳ��ܰ�����

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0140910b33">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0911]
��û�л�Ӧ��
������Ҳû�л�ͷȥ���Ĵ��ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0920]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140920b56">
����֮��û�����޳�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0921]
���е��������㡣

�����������������ķ��Ŀ�������̫���ˡ�
�������������������������㹻�ˡ�

�����������Ŀ޷�Ҳ�ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_�¸�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0930]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140930b56">
���ұ��������𣿡�

{	FwC("cg/fw/fw�ұ�_Ц�b.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140940b43">
����Ȼһ�㶼���ã�������Ȼ��̬����û�к�ת
�Ŀ����ԣ�ʲôʱ�򶼿�������˰ɡ�
�������������˵������Ӵ����

{	FwC("cg/fw/fw���w_���.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140950b56">
���������ǡ����𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0951]
���յ���ʵʿ�����ǵĻ�Ӧ������ǰ����һ������Ȼ��
ֻ��������ȫ������ѹ�������һ�������ơ�
����̤��һ���Ļ��������໥Ź��ľ����ˡ�

��û��Ӯ�Ŀ��ܡ�
���ض����䡣
��һ���ᱻ�ݺݽ�ѵ��

��������ˣ�������Ӧս֮ʱ��
��������һ����

��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 1000, 0, null);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0960]
//��������
<voice name="����" class="����" src="voice/ma01/0140960a00">
�����һ�¡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����ߣ���ӛ���ʥꥪ����
//�����ڤ��ʤ��ä����ˡ�����ϤĤ�Τ�äƤ������
//�������̤������ұ����Ƥ��褦�ʸ�äˤʤäƤ��롣
//��������Ź���ʤ��Ɯg����Τϡ����˽M�⤽������
//�ݤ�Z���Ƥ����������


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0961]
����������!?

���������ϵ�����������һ��̤����ǰ��ȥ��
�ұ�Ҳ�����Ƶ�״����
��û������������һ�٣�
Ҳ����Ϊ�����鱻��������ȥ��ע������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("��ܞ", 3000, "#000000");
	DrawTransition("��ܞ", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0962]
����æ�������ķ���ȥ��
����Ȼ����Ҳ֪��������������˭��

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStA(0,true);

	StC(1000, @0,@0,"cg/st/st����_ͨ��_˽��.png");
	FadeStC(0,true);

	WaitAction("��ܞ", null);

	DrawDelete("��ܞ", 300, 100, "slide_01_01_0", true);


	SetFwR("cg/fw/fw���w_�@��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0970]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0140970b56">
���ա�����

{	FwR("cg/fw/fw�ұ�_�@��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0140980b43">
���ն�����!?��

</PRE>
	SetTextEXR();
	TypeBeginRIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	CreateColorSP("��ܞ", 3000, "#000000");
	DrawTransition("��ܞ", 300, 0, 1000, 100, null, "cg/data/slide_01_01_1.png", true);

	DeleteStC(0,true);

	StL(1000, @0, @0,"cg/st/stҰľɽ�M_ͨ��_˽��.png");
	StR(1000, @30, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStL(0,true);
	FadeStR(0,true);

	Move("@StR*", 600, @-30, @0, DxlAuto, false);
	DrawDelete("��ܞ", 300, 100, "slide_01_01_0", true);

	SoundPlay("@mbgm16",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0981]
��û�л�Ӧ���ǵ�������
�ն������ֿ���Ⱥ�����ǵ�������
�̶��������µ�վ�����������ǰ��

��������������ľ���ֻ��һ�����ҡ�
��ΪӲ�������֮�䣬
�ն�������������ľ��������Ϣ���ŵĳ̶ȡ�
���Һ��ұ���æ������¡�

���ն�����ȫ�޽���֮ɫ��
��������һ�Σ�С���������ϵ�Ц����ʧ�ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_�o��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0990]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0140990b54">
����������һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0991]
������Ϊֹһֱ̬��ǿӲ�İ�ɫ��װ���ˣ�
����Ҳ��ɲ�Ǽ�¶������֮ɫ��
���ն��������Ӻܸߡ���װ����ȻҲ������
���ն�������Ҫ�����߳���ͷ��

������˵����ʮ�ֿ�㡣
�����ڸ��ǣ�����һ��ֻ������˿ɿ��ĺ󱳡�

������ȫȻ���⣬̫��������������һ������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1000]
//��������
<voice name="����" class="����" src="voice/ma01/0141000a00">
�����Ǿ��졣��

{	FwC("cg/fw/fwҰľɽ�M_ͨ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141010b54">
������!?������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1011]
�������ն������Ա����ţ����˻ָ���Щ���ơ�
��Ҳ�ǡ����𾯲����û�õĴ����ʡ�����
�����޼һյĹ�Ӷ��ݣ�����û��η������ɡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1020]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141020b56">
����������˲�ͬ��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1021]
������������ۡ�
�����������ս���Ǻŵ��ˡ�

����װ����Ӧ�е�η�塣
��������޷�ͬ�����������Ǻ�ս�������ԣ�

��������죬���������ǵ�ʱ��ͬ��
���Ǹ�ʱ�򣬴ն�����ֻ��Ϊ������ѧ����
����ʲô��û�����ѡ�

���������������޵��������������顣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1030]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141030b54">
������������!!��
��֪��֪�����ǿ����������޹��õİ�!?��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141040a00">
��������֮ǰ����֪����
����л���˵������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1041]
���ն�������һ��������ǵص���ͷ��
���������ƺ��֣�ȴʮ�ִ��ݡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_ŭ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1050]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141050b54">
������ˣ����!!��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141060a00">
���Ҳ�û����������ͼ����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1061]
��������Ȼ��ŭ�İ�ɫ��װ���ˣ�
�ͽ�����Ȼ��֮�Ĵն�������
�����ڣ����ʺ��������˵Ĵ�����ǡ�һͷ�ȡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1070]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141070b54">
�����㵽�״������!?��

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141080a00">
���Ǳߵ������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1081]
���ɴ�ؽ������뱩����Ϣ���Ե����ˣ�
�ն�����ָ�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1090]
//��������
<voice name="����" class="����" src="voice/ma01/0141090a00">
������һЩԵ�ɣ������������ұ���֮�¡����ǣ�
������������ʲô���⣬���н��������
������׼������������񡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1091]
���ٴ�ת����������ǰ����
�����Ŵն������������������ǵľ��벻�����ס�
�����ǰ�һ�������������ǡ����������ĸо���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwҰľɽ�M_�o��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1100]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141100b54">
�����񣿡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141110a00">
������������ʲô�����𣿡�

{	FwC("cg/fw/fwҰľɽ�M_ͨ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141120b54">
������!?��������Ȼ������!!
����ȺС��
��Ȼ��ˣŪ�������޹�Ӷ������!!��

//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141130b54">
��Ϊ�����Ҫ�������ⲻ�ǣ�
������ʲô�����!?��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141140a00">
��ԭ����ˡ�
��������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1141]
���ն�������ס�
�����ǵ�Ȼ����û�д����ò������ӡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1150]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141150b54">
����ô�������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141160a00">
������֮ǰ�����������ǵ�Ҫ��
�������ǣ�������Ҫ������л���

{	FwC("cg/fw/fwҰľɽ�M_ͨ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141170b54">
�������¹�
��������֮����˵����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141180a00">
���Ҿܾ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1181]
�����ڡ�
���ն��������׵ضԿ�����Щ�һ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1190]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141190b54">
����˵ʲô!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141200a00">
��һ�仵�����¹�л�ﲢ�����������
�����ƺ�Ҳ��������ʹ����¡�
��ϣ�������ܹ�������Ӧ�̶ȵ�л�
��Ǹ���������һ����Σ���

{	FwC("cg/fw/fwҰľɽ�M_ŭ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141210b54">
����ƨ��
����������Ұľɽ����������ô����ȥ!!��

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141220a00">
������ȥ�𣿡�

{	FwC("cg/fw/fwҰľɽ�M_ͨ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141230b54">
����Ȼ����ȥ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141240a00">
����ô����Ǹ�����������İ��ָ�ֽ��
������ʽ�����Σ���

{	FwC("cg/fw/fwҰľɽ�M_ͨ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141250b54">
����ƨ�ã�
��С������Ҳ�ʿɶ�ֹ�㣡��

{	FwC("cg/fw/fwҰľɽ�M_ŭ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141260b54">
������Ұľɽ�����ϣ����������޵ļһ�Ŷ!?
���������ô����������!!��

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141270a00">
������������ˡ�
���������ˣ��Ǿ��޿��κ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1271]
���ն�������������
����װ�в����˺���һ����

�����ˡ�
��������
���Ǳ����Ͳ��Ǻ����С����ܹ��Ը����ˡ�

���ն�������ǿ��
�������ܲ�ǿ��

������ˣ��̻����Һ���Ҫ�Ķ�����
�����ҲҪ����ʾ����

�������ưɣ�ʭ��ɽ��
��������һ�ã���ν��ǿ��ս������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���������������������}��ȥ�ǜg�ޤ��룿
	OnSE("se����_����_�᤺����01",1000);
	Move("@StR*", 300, @20, @60, Dxl2, false);
	DeleteStR(300,true);

	SetVolume("@mbgm*", 1000, 0, null);
	Wait(1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1276]
������
����������
������������������

������

������ʲô��
�����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_�o��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1280]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141280b54">
���������Ǹ�ʲô����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141290a00">
���¹򡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1291]
���ڴ���Ϲ����ţ���ͷ���ϵ��档
���ն�������ƽ���������ش�

���Ǹ���û��
�����¹��ء�
��������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw����_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1300]
//��������
<voice name="����" class="����" src="voice/ma01/0141300a00">
��ϣ���ܾʹ˵õ��½⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1301]
����������

���ȵȡ�
������ʲô����

�����ƴ������յģ���Ұľɽ��ı�Ц����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1310]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141310b54">
��ʲô�����ǣ�
��װ��ɷ�н��µ����ӣ�
ԭ��ֻ���������!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1311]
����װ��Ц�ü��ֱҡ��
�����ſ��ŵ�����Ҳ������Ц��

��������������Χ����Ⱥ��ҲʧЦ������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwҰľɽ�M_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1320]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141320b54">
����Ȼ�¹��ˣ������Ǵ���С�����¹��𣡡�

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141330a00">
���ǵġ���

{	FwC("cg/fw/fwҰľɽ�M_Ц��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141340b54">
���۹�����������!!
��ͷ�͵û������Ͱ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�������á�
	OnSE("se���L_����_Ź��01",1000);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1341]
��ƤЬ���ϴն������ĺ����ס�
������������

����ʹ��ˣ��ն�������Ȼһ��������
�����ɱ��˵ĽŲ����Լ�ͷ�ϣ�ƽ���ط��ڵ��档
��������û����һ����

����װ�еô���ߵ�������
���󷽵�����Ҳ���������
��
��֧�ȵ�����ֻ�����ޱ����ע���š�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������������
	CreateSE("SE01","se���L_����_Ź���B��01_L");
	MusicStart("SE01",0,1000,0,1000,null,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1346]
�����۱������Ǹ����������ɺ�������ߴ��š�
���ն�����ֻ�ǣ�һֱ�������Ǹ����ӡ�

��û��һ˿������
����ȫ�޵ֿ���

����������ʲô����

������ս��֮ʱ���Ǹ�ȥս����!?
����������������ʱ�򰡣�
���Է�����������֮���΢��ʭ�ӻ쵰����

��ս������
���㲻���������Ǻ�ս������˵��
  �ܸ����Ǻ�ս����
�ѵ����в��ܸ���ЩС���ս����������

������˵��ֻ�ǣ�
����ֻ�ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw���w_ŭ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1350]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141350b56">
��ֻ��˵˵������!?��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1351]
�������ն�����û��վ������

���������ߴ�
���������̤��
�����¹����̬��

�������湻�ѿ��ġ�
���ն�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("SE*", 100, 0, null);
	SetVolume("OnSE*", 100, 0, null);

	SetFwC("cg/fw/fwҰľɽ�M_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1360]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141360b54">
��������������
����һ�ͦ��Ȥ�����ã���������
������ˣ���Ϸ�����ɡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141370a00">
����Ϸ��ָ����

{	FwC("cg/fw/fwҰľɽ�M_Ц��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141380b54">
��ת��Ȧ�����������ԣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1381]
��ͣ�¡�
����ͣ�°���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D



	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1390]
//��������
<voice name="����" class="����" src="voice/ma01/0141390a00">
���ǶԹ���ģ���𣿡�

{	FwC("cg/fw/fwҰľɽ�M_ͨ��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141400b54">
��û������������!?��

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141410a00">
���������л���Ҫ��ֻ��ִ�С���

{	FwC("cg/fw/fwҰľɽ�M_Ц��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141420b54">
��������������!!����һ���
��<RUBY text="����">û־��</RUBY>����
�����ϣ���������������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141430a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1431]
��ͣ�°�����������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetVolume("@mbgm*", 2000, 0, null);
	SetNwC("cg/fw/nw������.png");

	#voice_on_�c��һ��=true;

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1440]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141440a02">
�������ʹ����ְɡ�
��ѩ�����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��һ���ǈ�
	CreateColorSP("��ܞ", 3000, "#000000");
	DrawTransition("��ܞ", 600, 0, 1000, 100, Axl1, "cg/data/slide_01_01_1.png", true);

	DeleteStA(0,true);

	CreateTextureSP("�}�ţ�25", 2500, -2040, -560, "cg/ev/resize/ev268_�䥯���Ȍ��Ť���һ��.jpg");


	WaitPlay("@mbgm*", null);

	Wait(600);

	SoundPlay("@mbgm17",0,1000,true);

	Move("�}�ţ�25", 2000, -504, @0, AxlDxl, false);
	DrawDelete("��ܞ", 1200, 100, "slide_01_01_0", true);

	WaitAction("�}�ţ�25", null);
	Move("�}�ţ�25", 4000, -504, -275, DxlAuto, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1441]
����Ȼ��������
��������ֵ����ˣ��߱��Ų������ڳ����κ��ˡ���
����˵��Խ�κ��˵Ĵ��ڸС�

��էһ����ֻ�Ǹ�Ůѧ����
�������������Ǵ�һ�㣬����ò�ɰ���
����ȥ�������׵�ӡ��

��Ȼ��������Ǳ�Ѱ����
��ǿ�Ƶ������׺ݵĳ̶ȡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureSP("�}�ţ�20", 2000, Center, Middle, "cg/ev/ev268_�䥯���Ȍ��Ť���һ��.jpg");
	FadeDelete("�}�ţ�25", 600, true);

	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1450]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0141450b43">
����һ����

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141460b56">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1461]
���ұ�����˵����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1470]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0141470b43">
��һ������������һ��ѧУ�ġ�
���������ǲ���ǰ���ӵĲ����Ż�˵ʲôҪ����
���ֵĴ��������ߺ��е�ʱ��ֻ��һ��
�������ǵġ����Ǹ���˵�еģ�

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141480b56">
�����Ǹ��˰�����<RUBY text="��������">�������</RUBY>��һ������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1481]
������˵�����Ĵ��š�
��һ���������˵����������������ת��Ĩ�ǡ�
������������鲻��ʲô��������֣�����
��ٵ��ǣ��Ӳ�֪ʧ�ܵ���ζ��

������Ϊ�����鷳���˸��û�����ѣ�������
���׽��˵���Ȯһ�㳣��Χ��������ߡ���Ȼ
û�����ʲô���£������Ƕ�����������ѧ����
��֪�����ֵ�ѧУ������������

�����׶����������޶�����������
��������ʵ����ֻҪ�����������������簵ɱ
һ�����Ϊ�ͼ���������������������ӡ���Ȼ
��ʵ��Σ�ֻ�б��˲�֪���ˡ�

�����ͷ�Χ���ԡ�
������ж�������Լ���������������Сʯ�ӻ�
�Ǵ���ʯ��ȫ�������ȥ�����ƺ������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwҰľɽ�M_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1490]
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141490b54">
���������˭!?��

{	FwC("cg/fw/fwһ��_ͨ��b.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141500a02">
����Ҫ����ʱ���ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1501]
����ɫ��װ�����ٴ�����ŭ�ţ�һ��ȴ������û����һ�ۡ�
���������ʼ������ֻע����֧�ȵ�С�����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1510]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141510a02">
���Ǽһﶼ��������Ǹ�ˡ��Ǿ��������˰ɡ�
����ʹ������Ҳ����õ�ʲôǮ�ơ�
�����Ƿ�����������Ӫҵ�� ��

{	#voice_on_ѩ܇�һ�i=true;
	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0141520a12">
�����ǰ��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1521]
����һ�Σ�С�������˿����ˡ�
��𤻬��������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwѩ܇�_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1530]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0141530a12">
�������ǿ����ӻ���ȥ�ġ�
������Ǯ�����ӵķ������ء���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1531]
�����ٶ���Ҫ��������
������С�����з·����ĵؼ�����ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1540]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141540a02">
�����ǣ�ûǮҲ���Ϊ�Ѱɣ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1541]
���ӻ��֣�һ��ָ��ֵ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1550]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141550a02">
������ĥ����ȥ����һ���ĵ��̶�����ʱЪҵ��
��Ҫ�Ǽ���ʧ�ܣ���ʲô���ɺ���ͷ������
����΢����һ�£���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1551]
��������
��
���������������С�������˷�����Ц����
�����˶��ѣ���û��˵ʲô��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1560]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141560a02">
������Ҫ���ӵĻ�Ҳ�㹻�˰ɡ���������ˣ�
�ô�Ҳ�Ǵ������ջ��µļһҲ��ͷ�ˡ�
���㹻��������������˰ɣ���Ҳ��������
��ʱ���ˡ���

//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141570a02">
���ҷ���������ļһ���һ������һʱ
���Ҳ���ҳ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1571]
����ô˵�ţ�һ��Ŀ����ȷ�ذ��Լ��ų����⡣
���������е����⴫�ﵽ���𡣲���һ���Ѵ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1580]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141580a02">
������֮��ȥ����Щ���Ƶ��ļһ��ǣ����ն���
Ǯ�ն��پ����˰ɡ�
��ѩ���һ�ء���

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�*", 600, true);

	StR(1000, @0, @0,"cg/st/stѩ܇�_ͨ��_˽��.png");
	FadeStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1581]
�����������Ϊֱ������������ֵĻ���
��ʵ���޷��뵽������ʲô������
��С����������������ط�Ц������

��������������������
��֧�ȵ�С�������ˡ���ѩ���һ�أ�������������Ц�š�
��
���ո�����һ����������

���������˺�ëֱ����

������Ц��һ��С�������˵�ת�����ߡ�
����������ȫ�⵽�����ӣ�ȴ����˼��س�Ĭ�ŵ�
��װ�У�Ť����Ц�š�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @0, @0,"cg/st/stҰľɽ�M_ͨ��_˽��.png");
	FadeStL(300,true);

	SetFwC("cg/fw/fwѩ܇�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1590]
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0141590a12">
�����٣��㲻����ɣ���

{	FwC("cg/fw/fwҰľɽ�M_�o��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141600b54">
��ѩ�������

{	FwC("cg/fw/fwѩ܇�_ͨ��.png");}
//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0141610a12">
������˵��Ҳ����û�е���������������ǲ��
Ҳ������ô��Ȥ�ɡ���
��������������ǸϽ�ȥ��������

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0141620a12">
����Ȼ�ҵ������ã����б���ʹ�ü�װ���ڼ�
�����ֶΡ���
��������Ǯ��������ѹ�ͽ��ɽ�ˣ���̶ֳ�
С�������˻������С���

//��ѩ܇�
<voice name="ѩ܇�" class="ѩ܇�" src="voice/ma01/0141630a12">
�����ּһ��΢�е��鷳�����𣿡�

{	FwC("cg/fw/fwҰľɽ�M_�o��.png");}
//��Ұľɽ�M��
<voice name="Ұľɽ�M" class="����������" src="voice/ma01/0141640b54">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1641]
����װ��¶��Щ��Ϊ�ѵ����ӣ�һʱ��Ĭ��
��Ȼ�������ƺ�Ҳû���ʸ���죬û���ʸ��С����
����˵�Ļ����߳�ŭ��ŭ�����ء�

�����գ��������Ե������Ų���
������������Ҳ�������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	DeleteStL(300,true);
	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1643]
��Ŀ���Ѿ��˲��������ˡ�
��С������������Ц�ţ�������ͬ�

{	SetVolume("@mbgm*", 2000, 0, null);}
�������ֵ����𽥣��ָ���ƽ�յ�ɫ�ʺ�������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1650]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0141650b43">
���۷ɡ���

{	FwC("cg/fw/fw���w_�@��a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141660b56">
�������ţ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1661]
����Ȼվ���ŵ��ұ��ұ���������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	CreateColorSP("�\Ļ��", 25000, "#000000");
//	DrawTransition("�\Ļ��", 600, 0, 1000, 100, null, "cg/data/slide_01_00_1.png", true);

//	DeleteStL(0,true);

	StL(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	StR(1000, @0, @0,"cg/st/stС��_ͨ��_�Ʒ�.png");
	FadeStL(300,false);
	FadeStR(300,true);

//	DrawDelete("�\Ļ��", 600, 1000, "slide_01_00_0", true);
	SoundPlay("@mbgm30",0,1000,true);


	SetFwC("cg/fw/fw�ұ�_ͨ��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1670]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0141670b43">
�������Ѿ�û����Ŷ��
��С�ģ��������𣿡�

{	FwC("cg/fw/fwС��_���.png");}
//��С�ġ�
<voice name="С��" class="С��" src="voice/ma01/0141680b33">
�������š�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1681]
���Ǳ��ƺ����һ����أ����Ƿſյ�״̬��
����Ҳ������Ȼ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1690]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141690b56">
����˵���ұ���������������û���°ɡ�
������Ǳ����˰��������𣿡�

{	FwC("cg/fw/fw�ұ�_ͨ��.png");}
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0141700b43">
�������е㻮�ơ�������ûʲô�󰭡�
������û�ϡ���

//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0141710b43">
�����ǻ���ء�
���������Ϸ�������ȭͷҲ��ʹ��
���ԶԷ��ܿ��˰ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1711]
���ұ�����ֵĵط�����š�
������������������ĵĻ���û��Ҫ�����˰ɡ�

��Ȼ��
�����Ӷ��˵�ʱ��Ӳ��ס�Ļ���������ͻ�ð��
��������Խ����˵�����໰�߲����ű�Ѫ���ұ���
�ҿ�����ѧ�����ı�Ӱ��

�����С�
�����ܾ�������ȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateColorSP("�\Ļ��", 15000, "BLACK");
	DrawTransition("�\Ļ��", 600, 0, 1000, 100, null, "cg/data/slide_01_00_0.png", false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1714]
����Ȼ��������ν�Ĳ���ѧ����ô�����Բ���
ϲ������������������ô˵��������֮��Ҫ��
������л����˵ʵ�ڲ���ʲô��������
������æ��ס������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("�\Ļ��", null);
	DeleteStL(0,true);
	DeleteStR(0,true);

	DrawDelete("�\Ļ��", 600, 100, "slide_01_00_1", true);


	SetFwC("cg/fw/fw���w_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1720]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141720b56">
���Ǹ�����һ������

{	FwC("cg/fw/fwһ��_ͨ��a.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141730a02">
��������

{	FwC("cg/fw/fw���w_Ц�a.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141740b56">
���ǳ���л����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1741]
��һ��ֻ����΢ת�������������ͷ��
����ͣ�½Ų���˫��ӳ��������

����Ϊ��ͨ�ģ��ʺ��˶��Ľ���Ь����Ȼ����ľ�졣
����֪Ϊ����΢������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1750]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141750a02">
�������š���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1751]
�����鷳�ƵĻش�
����ʱҲ���˴��������򿪿��ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
	FadeStR(300,true);

	SetFwC("cg/fw/fw����_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1760]
//��������
<voice name="����" class="����" src="voice/ma01/0141760a00">
�����֮�£�
���ǳ���л����

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141770a02">
��������˵������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1771]
�����Ǳߣ��������鷳��Ӧ����û�С�
���������߶�δ��Ͷȥ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1780]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141780a02">
��<RUBY text="����">û־��</RUBY>�ᴫȾ��
���������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141790a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	DeleteStR(300,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1791]
����ʲôҲû�з�����ĬĬ��ȥ��
��
����������

��Ƴ�����һ�ۣ�������˵��ȥ��
���������ڵ�̬���ϣ�������жԻ�����ͼ�Զ��׼���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	SetFwC("cg/fw/fwһ��_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1800]
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141800a02">
��Ұľɽ�ǰ����������á�
�����ǲ�����Ⱥ�����ѡ���

{	FwC("cg/fw/fw���w_ͨ��b.png");}
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141810b56">
����������

{	FwC("cg/fw/fwһ��_����.png");}
//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141820a02">
�����ǣ��Ǹ��������Ųص����ȵ����ˡ�
����ȥ�����Ǽһ��

//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141830a02">
���������������޹�Ӷ�����ʳ�ͣ�������˵
���ܣǣȣѵĹ�Ӷ���Ǹ����ֽ�ɫ��
��������Ȼ���ǻ�졣��

//��һ����
<voice name="һ��" class="һ��" src="voice/ma01/0141840a02">
���������Ǹ��ܴ�Ļ�졣Ҫ�ǲ�С���ǵ���
��֪�����ֳ�ʲô������
����ӽ���Ϊ����Ǻ��ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//���Y��ˤĤ��؄e�˘�
//�Σ��uƷ��Ǥ⤳����һ���ӣԤ�ʹ�鷺��
//	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	DeleteStL(300,true);



//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1841]
�������潫��Щ�������ǣ����漴ת����ȥ��
����˵��ʵ��̫���䵭����������һʱ֮��
��û�в����

�������ղŵĻ����Ҹ档

��Ӧ���ٸ�лһ�ΰɡ�
����Ȼ��ô�뵫�Ѿ����ˡ���ֻ��Ŀ�������ı�ӰԶȥ��


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StR(1000, @0, @0,"cg/st/st�ұ�_ͨ��_�Ʒ�.png");
	FadeStR(300,false);


//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1849]
������ص�����һ�¡�
��תͷһ�����ұ����ô�Ĵָָ��һ�ࡣ

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	WaitAction("@StR*", null);
	SetFwC("cg/fw/fw�ұ�_�@��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1850]
//���ұ���
<voice name="�ұ�" class="�ұ�" src="voice/ma01/0141850b43">
����ô�죿��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	CreateColorEX("�}��ܞ", 15000, "#000000");
//	Fade("�}��ܞ", 500, 1000, null, true);

//	DeleteStA(0,true);

//	StL(1000, @0, @0,"cg/st/st����_ͨ��_˽��.png");
//	FadeStL(0,true);

//	Fade("�}��ܞ", 500, 0, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1851]
����Ĵָָ��ģ��Ǵ��µ���Ӱ��
����ԡ�����Ǻ����������������ߣ����ƺ���
���������ʲô�����ӣ�������������ֱߵ�
�̵�ů����

����������ұ�����ʲô��
����ͬ�У����ǡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//	CreateColorEX("�}��ܞ", 15000, "#000000");
//	Fade("�}��ܞ", 500, 1000, null, true);

//	DeleteStA(0,true);

//	FadeDelete("�}��ܞ", 500, true);

	SetFwC("cg/fw/fw���w_���a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1860]
//�����w��
<voice name="���w" class="���w" src="voice/ma01/0141860b56">
����ȥ�ɡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1861]
������૵���
���Ѿ�������ʱ�֡����Ǳ����������ж���ʱ��
Ҳ����ˡ�

���������㲻���������Ҵ��Ҳ��˵��ͬ�Ļ��ɡ�
��
��û�з��Ե�������


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

	PrintGO("�ϱ���", 15000);

	CreateColorSP("�}��ܞ", 15000, "#000000");
	CreateTextureSP("�}����10", 10, Center, Middle, "cg/bg/bg015_�`�}·���Y_02.jpg");
	SoundPlay("@mbgm04",1000,1000,true);

	Delete("�ϱ���");

	FadeDelete("�}��ܞ", 2000, true);

	SetNwC("cg/fw/nw������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text1870]
//�����¡����Ϥʤ�
//��������
<voice name="����" class="��������" src="voice/ma01/0141870a01">
���������Ѱ�����������

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141880a00">
������ûʲô����

{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0141890a01">
������������ø���
���������Ⱥ���ӷֿ��ˡ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141900a00">
���š���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141910a00">
������������

{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0141920a01">
��������
����ô�ˡ��ڵ���ʲô�𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141930a00">
��Щ�����顣
�����죬���������Ǽ����塭����

{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0141940a01">
���š���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141950a00">
��������������ˡ��ѡ�����ô֪�����ǵ���
Ҳ����ϡ�档
���Ǽһ�����׼������ֵġ�������һ�����
�жϡ���

{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0141960a01">
�������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141970a00">
�������ϵĽ������ǰ�ѧ���������㲢����ս��
�������ǹ����з�����������ѡ����ܷ�����
�Ŀ����ԡ���

{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0141980a01">
������Ҳ�ԡ�
��ԭ�������ұ��о��䣬ȥ�ӽ��Ƕ����ġ���

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0141990a00">
��ֻ��з��Ǽ����壬�ͽ����ֿ������ų����⣬
�ǲ�����΢��Щ�����ˡ���

{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0142000a01">
����ô��˵�Ǹ���������������ǰ�������ڣ�
��ֻ�԰��������ŮΪĿ�ģ�
��û�а����Ƿ��������𣿡�

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0142010a00">
��Ҳ�����ֿ����ԡ�
����ô���룬<RUBY text="������">�Ǽһ�</RUBY>����û�̸���������ʲô����

{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0142020a01">
��������������֮�¶���ȫû��
���������Ҳ���ء�����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0142030a00">
���ǰ���
����Ϊ���ۣ�
����Ϊ������ȫ��������ѧ�����ܺ�Σ�ա���

{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0142040a01">
����ô����Ҫ��ô�죿����ͷ�ж�����

{	FwC("cg/fw/fw����_ͨ��b.png");}
//��������
<voice name="����" class="����" src="voice/ma01/0142050a00">
���������Ҫ����

{	NwC("cg/fw/nw������.png");}
//��������
<voice name="����" class="��������" src="voice/ma01/0142060a01">
���˽⡭����

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);


}

..//������ָ��
//�Υե����롡"ma01_015.nss"
