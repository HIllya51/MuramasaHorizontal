//<continuation number="940">

chapter main
{

	if($GameStart != 1)
	{
		$GameName = ModuleFileName();
		$GameContiune = 1;
		Reset();
	}

}

scene ma05_008.nss_MAIN
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

	//����`�ȥե饰���x�k֫���Τ�GameName
	$PreGameName = $GameName;

	$GameName = "ma05_009.nss";

}

scene ma05_008.nss
{
	$������ץȥЩ`����� = "  Version $Revision: 1 $";
	$������ = ModuleFileName();
	$������ = $SYSTEM_present_process;
	SystemInit();

..//������ָ��
//ǰ�ե����롡"ma05_007.nss"


//����ܞ
//��͎�
	PrintBG("�ϱ���", 30000);
	CreateColorSP("�}��ܞ", 1500, "#000000");
	OnBG(100,"bg052_�����ҵ���_01.jpg");
	FadeBG(0,true);
	StR(1000, @0, @0,"cg/st/st�y_ͨ��_˽��.png");
	FadeStR(0,true);
	Delete("�ϱ���");

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0010]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080010b46">
��������������

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080020a00">
��������������

</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	FadeDelete("�}��ܞ", 600, true);
	SoundPlay("@mbgm18",2000,1000,true);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0020]
����������վ�ŷ����˺ܾá�
��ѭ��������ͷ������ĸ��վ���ſڣ����ĵؿ����ҡ�


���о�����Ҳû������á����������ܵ�ȷ��ˡ�

��ͻȻ��ص���ʵ�ĸо���������Щ��֪���롣

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0030]
//��������
<voice name="����" class="����" src="voice/ma05/0080030a00">
������ʮ�ֱ�Ǹ���ղ�����
��ϰ�ġ�
����΢�����˵����顭��̫��רע
�ˡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080040b46">
��������������
���ţ���Ҫ�ʿɶ�ֹ������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080050a00">
���ǡ�
�����������ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0040]
���Ϲ���ʱ�򣬱�����ʪ�˵�����������ͷ��
�����������ġ���Ȼ�ǹ��˺ܳ�ʱ������ӡ�


������˫�ۣ�������ذ��ָ�����ȥ��
����Ȼ�������壬��Ϊ�˻ָ�ƽ������������ʽ�Ǳز�
���ٵġ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0050]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080060b46">
������������
������Ҳ˵������Ϊ�ѵĻ�������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080070a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0060]
���Ѿ������������ڱ��ҵľ�����
����ĸ������û�л���ϲ�ء�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_��˼.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0070]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080080b46">
�����㽫�������������߻��𡭡�
���Ƕ��ҵķ���𡣻��ǽ���<RUBY text="��������������">���ڵ�ʱ������</RUBY>�ء�
���������֣�������ʲô���뷨����Ȼ����
һ����ȥ���ɽ��ʲô�ġ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080090a00">
���������Ҵ��˱�ʾ��������Ҫ������������
��Э��Ҳ�޷�����

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080100b46">
���Է�Ҳ��֪���㲻����ô���İɡ�
��Ϊ�Ѿ������˺ܳ�ʱ���ˡ�
��֪���˻���ô˵���Ǹ�����ͷ����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080110a00">
��������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0080]
���Ҳ����񶨵����ݣ�Ψ�бտڲ��ԡ�
����ȷ���Ҳ���������������ǣ��������ɽ������
�������ӹ�ͬ�����⣬����κͱ��ҵ޽�Լ��������
���˵����塣

����Ӧ���ñ������ֵ��Ҵ��������Σ�ա�
��ԭ����ˣ���λ���˼ң���ſ�͸������������ɡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_�^ȥ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0090]
//��������
<voice name="����" class="����" src="voice/ma05/0080120a00">
���������ǣ����Ҵ��˻�����Լ���ġ�
����λ���������ǻ����еġ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080130b46">
��������㵹�ǿ������š�
�����������ѵ������Ҫ���𣿡�

{	FwC("cg/fw/fw�����^ȥ_���L.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080140a00">
���ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0100]
�����ڿ����ĵ�·��
���������ȹ�ĵ�·��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0110]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080150b46">
����Ⱥɽ���ɲ����������߾ͻ�Թ��ߵ�
Ŷ����������ô���׵��¡���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080160a00">
��ԭ���Ǵ������̸��ʼ���Ե�
�����ǡ�
�����²������ô�򵥡���

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080170b46">
�����ܻ�������

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080180a00">
����������ܡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080190b46">
�����Ǻ�ʹ���Ŷ��
������û���Թ�������Ҳ��֪������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080200a00">
����ô���һ�ע�ⲻ���Լ������ġ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080210b46">
���������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080220a00">
�����¡�
��һ���˴���ɽ�����С���ֻ����ô����
�ͺ����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0120]
���������һֻ�֡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw����_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0130]
//��������
<voice name="����" class="����" src="voice/ma05/0080230a00">
������������
��ָ�ⶼ�����ˡ���

{	FwC("cg/fw/fw�y_ʹЦ.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080240b46">
����������˵������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080250a00">
�����ǡ�
��Ϊ�˾ȹ⡣��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0140]
��ֹͣ������
����ָ��£��

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�����^ȥ_���L.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0150]
//��������
<voice name="����" class="����" src="voice/ma05/0080260a00">
�������ѡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080270b46">
����������
�������������ŵĶ��Ӱ�����

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080280a00">
����ԭ���ҡ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080290b46">
��Ҫ�����������������ӵ�ĺ��Ӿͺ��ˡ���

{	FwC("cg/fw/fw����_Ц�b.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080300a00">
�����ǽ߾�ȫ����ͳ����ѧϰ�ġ���

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080310b46">
������ֻ�����ֲ��ɰ���˵����ʽ���������ء�
�����ǵġ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080320b46">
���������ˡ�
����������Ҳ��һ��ȥ����

{	FwC("cg/fw/fw����_ͨ��a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080330a00">
���������С���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080340b46">
����ʹ������ҲҪȥ��
����ô���ö���һ����ȥ�����ĵط�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080350a00">
�������ĸ�׵Ĺ��ȱ����Ѿ��ݱ����
������⡣��

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080360b46">
�����ĸ���ö��Ӷ���һ��������װ�ӶἯ
�ţ��ǲŻᱻ��ΪŰ����һ�������ķ���
�ء���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080370a00">
��Ӧ�����Ƕ��ӵĲ�����Ϊ�ɡ�
�����������ⲻ������ؼ�����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080380a00">
�����Ҵ����´�������ǿ��Լ�������⡣
  ���ܽ���ͳ���˵���������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080390b46">
�����ǣ���˵�˿��Խ������ϵ�
�˰ɡ�
����Ҳ�����ϵ��ˡ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080400a00">
��������

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080410b46">
���Ǻǣ���׾�Ķ���ѽ��
��Ҫ������ʤ��ĸ�׻���ʮ�ꡪ����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080420a00">
�����Ҵ��ˣ���û��˵���ϵ��ˡ�
��˵�������ϵ�<RUBY text="����">����</RUBY>����

//��������
<voice name="����" class="����" src="voice/ma05/0080430a00">
�����������ɣ�ͳ���ˡ���

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080440b46">
��������û��ʮ�밡����
����˵�Ǹ�����ͷ������ô������
�𣡡�

{	FwC("cg/fw/fw����_ƣ��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080450a00">
�����ҡ���ͳ���ˡ�
���������¹�һ���ˡ���

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080460b46">
��������

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080470a00">
���Ҳ��ڵ�ʱ�����������⡣
���������ˡ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080480b46">
����������
��������

{	FwC("cg/fw/fw�y_ŭ��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080490b46">
�����ˣ���

//���y��
<voice name="�y" class="�y" src="voice/ma05/0080500b46">
���ɶ�
��һ��Ҳ���ɰ�!!��

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������
	CreateSE("SE01","se����_����_����01");
	MusicStart("SE01",0,1000,0,1000,null,false);
	CreateColorEX("�}��ܞ", 1500, "#000000");
	Fade("�}��ܞ", 200, 1000, null, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0160]
���ӽ�ͻȻ���رա�
������ֱ�������ҵ�ͷ��ӵס���Ѿ����˺ü��롣


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ʹЦ.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0170]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080510b46">
�����ǲ�Т�ӡ�
����������ĸ��˵�Ļ�����

{	FwC("cg/fw/fw����_������.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080520a00">
���ǳ���Ǹ����

{	FwC("cg/fw/fw�y_ʹЦ.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080530b46">
�����������ĺ����������ˡ���

{	FwC("cg/fw/fw����_�a��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080540a00">
���Һܾ�������
��ͳ���ˡ���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080550b46">
����˵ɵ���ˡ�
��Ҫ�������� ���ӡ�ֻ��һ���£���
��˵��ȥ���ɡ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080560a00">
���ǡ���

{	FwC("cg/fw/fw�y_������.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080570b46">
��ƽ����������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080580a00">
���ǡ�
���һᾡ������Ŭ������

{//��������
	CreateSE("SE01","se���L_����_Ź��02");
	MusicStart("SE01",0,1000,0,1000,null,false);
	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080590b46">
���Ŵ����㡣
������Ϊ��������˵���ֻ��𣿡�

{	FwC("cg/fw/fw����_Ц�a.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080600a00">
��������һ��������ġ�
��ͳ���ˡ���

{	FwC("cg/fw/fw�y_Ц��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080610b46">
������񻰡���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//������͎�
	FadeDelete("�}��ܞ", 600, false);

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0190]
���Ҵ�ӵ�����Եֿ�����������ĸ���н�ų�����ȡ��
ӵ���ģ���һ��̾Ϣ��
�����ǻ�ȥʲô�����Ƶģ�����һ�ᣬ��ĸ�ٴ�ֱ���ҡ�


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0200]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080620b46">
��ʲôʱ��ȥ����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080630a00">
������Ҳ�С���

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080640b46">
����˾�أ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080650a00">
���Ѿ�����ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0210]
������ֱ����ɽ���Ӷ��ߵ���Ʒ�������֮ǰ������Ҳ
��չ���ˡ�
������ȥ�ϰ࣬Ҳ���¿�����

�����ҽ��ɽ������Ҳ�����˾�������档
�������˵��Ҫ���ݼ�ʱ���糤������˵�ؾʹ�Ӧ�ˣ�
�����Ҵ�н���ݼ١�

����������˵���������ڴ��ı��֣�������Ϊ��Ԥ��
ɥ�ѵ�����ռ���Ϸ硣
����ʱ���糤��������������������ı�����һ�Ⱦţ�
���Է�����ռ���ơ�

����Ҳ���޿��κε��¡�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0220]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080660b46">
��������û��һ�����Բߣ���

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080670a00">
����û�С���

{	FwC("cg/fw/fw�y_�@��.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080680b46">
��û�������Ӵ?!��

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080690a00">
���ȼ������롣��

{	FwC("cg/fw/fw�y_ʹЦ.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080700b46">
����������
����Ȼ��������������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080710a00">
���������õ��ġ���

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080720b46">
����˵�����ˡ�
����ô������ֻ��һ�����顣��

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080730b46">
���Ⲣ������Ϊһλĸ�ף�������Ϊ�����
ǰ����
��������Ȼ˵����ô����������
������˼����

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080740a00">
���ǡ�
��ϴ����������

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0230]
���Ҷ����������ˣ�׼��������
����ĸ��Ȼ˵�������Ŀ����ף���˵�����Ľ���Ӧ����
���������ļ�ֵ��

����Ҳ�Ǵ��Լ��ĸ�������ѧϰ��Ұ�����ġ�
����Ů��һ��������ϣ�����м�Ұ����ʱ��������Ȼ��
��ʹ�죬������ҲĬ���ˣ�ԭ��������ֻ��Ϊ��ĸ�Ѿ�
����������

��������������ԶԶ��Խӹ�ŵ�����
����ĸһ���������Ⱪ¶���졣����ƽ������Ȼ��Ȼ��
������̬���������ļ���������������ŵĹ���ƥ�С�


����Ȼ�����Ľ��飬��һ�����ܵ�����
����ĸ��ϴ�������ȴ��ŵ��ҿ����ˡ�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_����.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0240]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080750b46">
������ɱ��Ŷ����

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080760a00">
��������

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080770b46">
��˭�����ܡ�
��ɱ��һ���˶����С���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080780a00">
�������ǡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0250]
����ȷ����ɱ����Ϊ�������ĳ��衣
����ʹ������ô˵����Ҳ�ᾡ���ܵر��⡣

��Ȼ�������������Ͳб��϶�ռ��ѹ�������Ƶ�ɽ��
�ţ�������Ϊ���֣���ֲ�ɱ����Ӧ��������
������Ϊ��Ҳ̫���ˡ�

�����Ĵ�������������

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0260]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080790b46">
��������
������Ϊ��ɱ�����ˣ�ս���ͽ������𣿡�

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080800a00">
��������

{	FwC("cg/fw/fw�y_ͨ��b.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080810b46">
�����ǲ��Եġ�
�����෴����

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080820b46">
�����ɱ�����ˣ�ս��<RUBY text="��������������">�����޷��ս�</RUBY>����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080830a00">
�������ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0270]
����ģ������
����Ȼ��������ĸ��˵�Ļ������ǡ���


</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��b.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0280]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080840b46">
����������˵Ļ����һ�ɱ������
��������ˡ�
��һ�������Ź������ԡ���

{	FwC("cg/fw/fw����_�@��.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080850a00">
������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080860b46">
���������������ɱ��ĳ���ˡ�
��Ҳ���Ǹ��˵�������Ҳ�ᷢͬ����
��Ŷ����

{	FwC("cg/fw/fw�y_����.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080870b46">
����������Ļ����������ҲҪɱ��
�������Ļ���Ҳ���´Σ�����˵��ֵ�
֮���Ҳ�������𰡡�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080880a00">
������������

{	FwC("cg/fw/fw�y_ͨ��a.png");}
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080890b46">
��û��û�˰ɣ���

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080900a00">
���ǡ�����

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0290]
��������ĸ���ԡ�
���Ҷ��Լ��ķ�ǳ�е�������

��ֻҪɱ��һ���ˣ��ͻ�������������ȥ��Թ�ޡ�
��һ������������ȴ������ǵľ��ǻ����ɱ�����ӡ�


����������һ�˷�������飬Ҳ�޷���ǣ�����ϵ���
���ˡ�
��ɽ����С��˫�����������������ߡ�

�������ǣ��ų����Ѷ�Ҫ�ܿ��������Ľ�֡���

����ֹ�ǽ�����⣬��ֱ���Ǳ�ĩ���á�

</PRE>
	SetTextEXC();
	TypeBeginCI();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

	SetFwC("cg/fw/fw�y_ͨ��a.png");

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0300]
//���y��
<voice name="�y" class="�y" src="voice/ma05/0080910b46">
������˵��Ӧ�ң���������
��������Σ�����Ҫ���κ���ɥ������

//���y��
<voice name="�y" class="�y" src="voice/ma05/0080920b46">
��Ҳ�������Լ�����

{	FwC("cg/fw/fw����_����.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080930a00">
������������

{	FwC("cg/fw/fw����_�^ȥ.png");}
//��������
<voice name="����" class="����" src="voice/ma05/0080940a00">
���ǡ�
��ͳ���ˡ���

</PRE>
	SetTextEXC();
	TypeBeginCIFO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D

//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D
<PRE @box0>
[text0310]
��������ؾϹ���
������ҹ��������磬�����ȴ��˽�����


</PRE>
	SetTextEXC();
	TypeBeginCIO();//�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D�D


	ClearWaitAll(2000, 2000);

}

..//������ָ��
//�Υե����롡"ma05_009.nss"