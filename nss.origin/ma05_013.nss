//<continuation number="620">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_013.nss_MAIN
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
	#bg033_������һ��_01=true;
	#bg047_�������_�a_01=true;
	#bg001_��a_03=true;

	#ev128_�����ι�_e01=true;


	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_014.nss";

}

scene ma05_013.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_012.nss"

//���
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg047_�������_�a_01.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 1000, true);
	SoundPlay("@mbgm18",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
����������֮���Ѿ����������࣬��۵糸һ�㡣

��˵�����ң�
  ��ǿ׼����ʿ����Ǩ�롣

��ͬ��ĸһ�������ھ���˵����
����������Ϊ��ϲ��

����δ���л�����ص�ɽ������������
��ɽ�����������Ȼ��ֹ��

�����Ӿ�Υ�ػָ�ƽ����
��������ͬ���ҶԴ��µĹ��ס�

����Լ��
����ʼ����Ƹ����ҽ��

������
�����Ŵ���ҽ����е��ҽ����Ա��������ʿݰ�ٴ�͵�
����Ƨ������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//����β���
	PrintGO("�ϱ���", 25000);
	CreateColorSP("�}��ܞ", 10000, "#000000");
	OnBG(100,"bg033_������һ��_01.jpg");
	FadeBG(0,true);
	FadeDelete("�ϱ���", 1000, true);
	FadeDelete("�}��ܞ", 1000, true);

	SetNwC("cg/fw/nw��󥲥첩ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
//������㣯��󥲥첩ʿ��
<voice name="����㣯��󥲥첩ʿ" class="����������" src="voice/ma05/0130010e019">
��Ϊʲô����������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030a]
������в�ʿ������ȷ��˵�������ķ��롪��������
�ص�̾Ϣ����
��������֪�����Ѿ������ܽ���ҽ��֮��


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	CreateTextureEX("�}�ţ�", 3000, Center, Middle, "cg/ev/ev128_�����ι�_e01.jpg");
	Fade("�}�ţ�", 1000, 1000, null, true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030b]
�����֢״�������������˸��ơ�
����˵�����ͷ���Ծ���ʣ�������Ȼ��������һֱ��
��ʼ�ջ�֮��ȥ��������Ӱ��Ӧ��֮Ϊ���������ּ���
�Ѳ�֪��ʧ���˺δ���

����������Ҳ������Ұ�ް���������ˡ�
������Ҳ��Ϊƽ�ȡ�

������Ȼ����
��ֻ���۾������ޱ仯��

���ڰ���
���ն���
������һ���˫�ۡ�

�������κθ��飬�������˫����
��ֻ����������Ȼ��ʡ�

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}�ţ�*", 1000, true);

	SetNwC("cg/fw/nw��󥲥첩ʿ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
//������㣯��󥲥첩ʿ��
<voice name="����㣯��󥲥첩ʿ" class="����������" src="voice/ma05/0130020e019">
���������ƾ��Կ󶾲��Ŀ���֮������һ����
����ϵ�ʹ�ࡣ��ҩ�����������޵ġ�
����ͬѰ���ľ�ʹ����ʴ���ߵľ��񡪡���

//������㣯��󥲥첩ʿ��
<voice name="����㣯��󥲥첩ʿ" class="����������" src="voice/ma05/0130030e019">
���������ӵ�ʱ��Խ������ʴ��Խ���ء�
��������ҡ�ʧ�䡢�˸�ͻ�䡢
����˥�ˡ�������ѡ�����

//������㣯��󥲥첩ʿ��
<voice name="����㣯��󥲥첩ʿ" class="����������" src="voice/ma05/0130040e019">
�����ս����ֲ���ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130050a00">
����������
��ҽ��������

//��������
<voice name="����" class="����" src="voice/ma05/0130060a00">
�������á�����

{	NwC("cg/fw/nw��󥲥첩ʿ.png");}
//������㣯��󥲥첩ʿ��
<voice name="����㣯��󥲥첩ʿ" class="����������" src="voice/ma05/0130070e019">
��������

//������㣯��󥲥첩ʿ��
<voice name="����㣯��󥲥첩ʿ" class="����������" src="voice/ma05/0130080e019">
����֢���߿���������ҵ�ҽ��ˮƽ����һ�꣬
���˾��졣
���������Ϊ���˵�Ϥ�����Ϻͻ��߱�������ǿ
�͡���

//������㣯��󥲥첩ʿ��
<voice name="����㣯��󥲥첩ʿ" class="����������" src="voice/ma05/0130090e019">
����ˣ��Ҳ��ܶ��ԡ�
��Ҳ�п��ܳ��ֿ������漣����

//������㣯��󥲥첩ʿ��
<voice name="����㣯��󥲥첩ʿ" class="����������" src="voice/ma05/0130100e019">
���������巽�浱ǰ���赣�ġ�
��Ψ��������˥���������Ĳ���֢���˵��ǣ�
������ʱ�����ţ������𽥻ָ�����ܿ˷���
��Σ�ա���

//������㣯��󥲥첩ʿ��
<voice name="����㣯��󥲥첩ʿ" class="����������" src="voice/ma05/0130110e019">
�����������ģ�������Щ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130120a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	ClearWaitAll(2000, 2000);

//��ҹ
//���F�ȣ�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 15000, "#000000");
	OnBG(100,"bg002_��a_03.jpg");
	FadeBG(0,true);
	Delete("�ϱ���");
	FadeDelete("�}��ܞ", 2000, true);
	WaitKey(1000);
	OnBG(100,"bg053_�����Ҥ�ͥ_03.jpg");
	FadeBG(2000,true);
	SoundPlay("@mbgm14",0,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
���漣��

����δ��һ�仰����˼���롣
�������ǵ�һ�Ρ�

��Ȼ�󣬱㷢������
���漣��������������ö��ĵ��ʣ����ڲ���Ҫ������
˵�������ļ��Ķ�װ������֤�����������ս������ĺ�
������һ��ǿ�ļ���

��������Ҫ������˵�������ǵ��˶����ŷ�����ʧ����
���Կ�ף���Ϊ�޷�ȡ�����Եú��������ë�¡�
����֪ʵ���ϴ������޷������ĳ�����������Ȼ��

�������Ǳ�����ϣ��֮���ڡ�
��ǡǡ�෴��

���漣����ʾ�ġ���
����һ�����漣δ��֮ǰ�����˾����ľ��롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
//��������
<voice name="����" class="����" src="voice/ma05/0130130a00">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
��<RUBY text="����">�漣</RUBY>��
����֪������������ӵ���漣��

����֪���Լ�������Ǻá�
��֮ǰ��һ����֮ǰ�С�������в�ʿ����һ��ȷ��Ŀ
�ġ��뱾��Լ������Ϊ����ʵ�ֵ��ֶΣ��Խ��ɽ��
����ΪĿ�ġ�

��������û��Ŀ�ġ�
������Ŀ�Ļ����еġ���ֻ�ǲ�֪���������ܵ���Ŀ��
�ء�

������������
�����ܻ��ѹ���ģ�

��������˵��
������ܻ�����

��
��������������Ϊʲô��û����һЩ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
//��������
<voice name="����" class="����" src="voice/ma05/0130140a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
���ӹ���ͷ��һ�仰���������˲�ʿ�Ļ���
�����ǵ����������ء�

����������һЩ��
���������һЩ����ʿ�����Ļ���

����̬�Ͳ�����ô���ء�

�����ܸ��ڹ⡪���������֮ǰ��

����������ҡ���
���ټӰѾ��Ļ���

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	StL(1000, @-60, @0,"cg/st/st�y_ͨ��_˽��.png");
	Move("@StL*", 300, @60, @0, DxlAuto, false);
	FadeStL(300,false);

	SetFwC("cg/fw/fw�y_Ц��.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130150b46">
��Ӵ����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130160a00">
������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
��ͻȻ�������˼����̧��ͷ����
������̧��ͷ��Ų��������֪��ʱ����������ͷ����
���ŵ��档
������ĸ��ֹ�˲��ֱ�ӹ��ڵص��ҡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130170b46">
����ô�ˡ�
����ɫ����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130180a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
����װ��֪��ı����������
����Ȼһ�۾Ϳ�������αװ��ȴ�������ӡ�

��û��ֱ���������ڵ����������ٴδ������ߡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
//��������
<voice name="����" class="����" src="voice/ma05/0130190a00">
�������Բ���
��ͳ���ˡ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130200b46">
��Ϊ�ε�Ǹ�������ӡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130210a00">
��������΢��
�����ҵ�����������Щ�����������
����ʿ��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130220a00">
��Ҳ����Щ���ƹ⡭��
�������������ˡ���

{	FwC("cg/fw/fw�y_��˼.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130230b46">
��������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130240a00">
���Բ��𡣡�

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
������֮�⣬�޻���˵��
����ν�ء�һζ��л�

����Ӧ����·�Ե����������ն��ҾȻ��Ѷ�ʮ���ꡣ
����˴����£������Ա�

���Դˣ����������Ļر�΢����΢��
�������޷��Ȼ�����Ҫ�ļ̳��ˡ�

�����Ǹ����
��Ϊʲô��û����Ϊһ�������õ������ء�����û�е���
��ı��£���������Ҳ����ν��

������ֻ��԰׷������������洦�ɼ���ţ����������
���ٱ�����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130250b46">
������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�����å��㥢����ޤ�������ʤ�һ��
	SetVolume("@mbgm*", 100, 1, null);
	CreateSE("SE01","se���L_����_Ź��05");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��ܞ", 5000, "#FFFFFF");
	WaitKey(100);
	Delete("�}��ܞ");
	CreatePlainEX("�}��д",1000);
	SetBlur("�}��д", true, 3, 500, 200, false);
	FadeFR4("�}��д",0,1000,300,0,0,40,DxlAuto, true);
	Delete("�}��д");

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130260b46">
��ɵ���ӡ���

{	FwC("cg/fw/fw�����^ȥ_��ʹ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130270a00">
����������ð�����ˡ�ͳ���ˡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130280b46">
������һ�㡣
������˵����������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130290a00">
��������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130300b46">
���ղţ���˯���ˡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130310a00">
����������

{	SetVolume("@mbgm*", 5000, 1000, null);
	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130320b46">
���ܡ��������غ����š�
��˯�ú�������ӡ���

//���y��
<voice name="�y" class="�y" src="voice/ma05/0130330b46">
���Ѿ���һ�궼û�м����ˡ�
�������������˯������

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130340a00">
��������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130350b46">
�����԰�����
����������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130360a00">
���ǡ�����

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130370b46">
�������Է�������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0180]
����ĸ�ĺǳ⣬���Ų�ͬ��ȭͷ�����ᡣ
��������ˣ���ʹ�����ѹ�����

��������
�����������ҷ�������

�����Լ��������е�����������ζ��
  ����Ϊ�Լ�����Ϊ������ѡ�������

�������
�����ܷ�����

����������ҵ�������������������ѡ�����������
��������
���������ϵ�����������

������������
����������ƾ���ʿ��̾����������������һ���ʱ
�䣡

���뵽�����������ͷɥ���������˷�ʱ�䡣
������������й��򡪡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130380b46">
������Ҫ�ȹ���
���Һ��㡣��

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130390a00">
���ǡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130400b46">
����<RUBY text="����">����</RUBY>�⡣
��������㣬��������������ת����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130410a00">
��������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130420b46">
���Ҳ���л�㡣
�����Ǽ��˸��������顣��

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130430a00">
���ǡ�������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130440b46">
����ֵ����
�����ã���û�����ӣ�Ҳû��һ�겻�񡣡�

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130450b46">
����һֱ����ǰ�ߡ�
��Ҫ����������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130460a00">
��������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130470b46">
��ͣ�½Ų����ع˹�������������ȻӦ��ѡ��
��·�������������ڻ���ʲô���ء�
��Ӧ�ÿ�ǰ����ǰ������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130480a00">
���ǡ�
��û��ʱ�����ͣ�½Ų�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
��������ĸ�Ļ������������˵�ͷ��
��û������Ӧ�����ģ�������������ǰ�ߡ�

��η��·;�ڰ���������ǰ�����к��ã�
���ռ���ͬ�Ĳ������������ҳ������Ĳ�����Ѱ����Ч
�����Ʒ����������������黹�кܶࡣ

����ɵɵ������ͥԺ��ʱ�򣬾�Ӧ���������Լ�������
�������顣
�������Ҽ�ֱų�������ɾ�ҩ��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_������.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130490b46">
�����Ǹ����˲��ĵĺ��ӡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130500a00">
�������ǡ�
������ô���˻�������˲��ġ�
��̫�������ˣ��ò�������

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130510b46">
�����ܲ����ɡ������ӡ�
�������أ����˲��ĵĺ��Ӹ��ɰ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
����ĸ���΢Ц�����������ҵ�ͷ��
������������ȣ����Ƕ�ô��ǿ����

��������飬ȴû��ѧ�����ļ�ǿ����ʵ���Ҳ�������
�ա�
�����٣���������������������ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_Ц�a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
//��������
<voice name="����" class="����" src="voice/ma05/0130520a00">
������в�ʿӦ���ڱ��Ҷ�����
�����ձ�ȥ�ݷã�ϸϸ��һ�ʹ�Ĳ��顣��

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130530b46">
�����š���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130540a00">
����֮�����졭����

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130550b46">
���š���

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0130560a00">
��ʵ���ǳŲ�ס�ˣ���ЪһЪ����

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//���Ф�
	SetVolume("@mbgm*", 100, 0, null);
	CreateSE("SE01","se����_�n��_ܞ��03");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorSP("�}��ܞ", 5000, "#000000");

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130570b46">
���ţ���

{	FwC("cg/fw/fw�y_��˼.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130580b46">
������������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130590b46">
���ף�
����������ͷ��Ѫ����ֹŶ�������ң����ӵ�
����ҲŤ���úܿ��š���

//���y��
<voice name="�y" class="�y" src="voice/ma05/0130600b46">
�����񱻴����������Ƶġ�����

{	FwC("cg/fw/fw�y_�@��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130610b46">
������������

</PRE>
	SetTextEXC();
	TypeBeginTimeCI(0);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//��ҹ��
	CreateTextureEX("�}����", 5100, Center, InBottom, "cg/bg/resize/bg001_��a_03.jpg");
	Fade("�}����", 2000, 1000, null, false);
	Move("�}����", 12000, @0, 0, DxlAuto, false);

	SetFwC("cg/fw/fw�y_�Ӥ�.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0130620b46">
��ѽ����!?
�������������㣬���ӡ�����
����������ɱ�˷�������!!��

</PRE>
	SetTextEXC();
	TypeBeginTimeCIO(0,150);//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


//������Фä�
	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_014.nss"